#include <string>
#include <vector>
#include <array>
#include <map>
#include "params.h"
#include "seq_align_multiple.h"
#include "host_utils.h"
#include "solutions.h"
#include "debug.h"
#include <tuple>
#include <queue>

using namespace std;

#define INPUT_QUERY_LENGTH 1024
#define INPUT_REFERENCE_LENGTH 1024


struct Penalties_sol
{
    float linear_gap;
    float match;
    float mismatch;
};

#define NUM_SEQUENCES 100

// query, reference, i_curr, j_curr, traceback
typedef std::tuple<std::vector<char_t>, std::vector<char_t>, int, int, std::vector<tbr_t>> sequence_tuple;

int main(){

#ifdef CMAKEDEBUG
    Container debuggers[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        debuggers[i] = Container();
    }
#endif
    
    // Initialize the batch of input sequences
    char alphabet[4] = {'A', 'T', 'G', 'C'};
    std::vector<std::string> query_strings(NUM_SEQUENCES);
    std::vector<std::string> reference_strings(NUM_SEQUENCES);
    for (int i = 0; i < NUM_SEQUENCES; i++) {
        query_strings[i] = Random::Sequence<4>(alphabet, INPUT_QUERY_LENGTH);
        reference_strings[i] = Random::Sequence<4>(alphabet, INPUT_REFERENCE_LENGTH);
    }

    // Initialize the kernel penalty scores. 
    Penalties penalties[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        penalties[i].linear_gap = -1;
        penalties[i].match = 3;
        penalties[i].mismatch = -1;
    }

    // Initialize the solution penalty scores
    Penalties_sol penalties_sol[N_BLOCKS];
    for (Penalties_sol &penalty : penalties_sol) {
        penalty.linear_gap = -1;
        penalty.match = 3;
        penalty.mismatch = -1;
    }

    std::vector<std::vector<char_t>> query_buff;
    std::vector<std::vector<char_t>> reference_buff;

    for (int n = 0; n < NUM_SEQUENCES; n++)
    {
        std::vector<char_t> query_seq;
        std::vector<char_t> reference_seq;
        for (int i = 0; i < query_strings[n].size(); i++) { query_seq.push_back(HostUtils::Sequence::base_to_num(query_strings[n][i])); }
        for (int i = 0; i < reference_strings[n].size(); i++) { reference_seq.push_back(HostUtils::Sequence::base_to_num(reference_strings[n][i])); }
        query_buff.push_back(query_seq);
        reference_buff.push_back(reference_seq);
    }

    std::queue<sequence_tuple> working_seqs;  
    for (size_t i = 0; i < NUM_SEQUENCES; i++) {
        sequence_tuple seq_tuple = std::make_tuple(
                query_buff[i], reference_buff[i], 
                query_strings[i].size(), reference_strings[i].size(), std::vector<tbr_t>());
        working_seqs.push(seq_tuple);
    }

    std::queue<sequence_tuple> finished_seqs;

    // declare device input query, reference, and seq_length buffers that are used in the kernel computation
    char_t reference_d[MAX_REFERENCE_LENGTH][N_BLOCKS];
    char_t query_d[MAX_QUERY_LENGTH][N_BLOCKS];
    idx_t qry_lengths[N_BLOCKS], ref_lengths[N_BLOCKS];

    // declare device output buffers of traceback streams, and traceback starting indecis
    tbr_t tb_streams[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH][N_BLOCKS];
    idx_t tb_is[N_BLOCKS];
    idx_t tb_js[N_BLOCKS];

    // temporary buffer between the computations
    int i_curr[N_BLOCKS];
    int j_curr[N_BLOCKS];
    std::vector<tbr_t> tmp_tb_streams[N_BLOCKS];
    std::vector<char_t> tmp_query_buff[N_BLOCKS];
    std::vector<char_t> tmp_reference_buff[N_BLOCKS];

    while (!working_seqs.empty()) {
        // populate the device buffers with the current working sequences
        int block_count = 0;
        for (size_t b = 0; b < N_BLOCKS; b++) {
            if (!working_seqs.empty()) {
                sequence_tuple seq_tuple = working_seqs.front();
                working_seqs.pop();

                i_curr[b] = std::get<2>(seq_tuple);
                j_curr[b] = std::get<3>(seq_tuple);
                // std::cout << "i_curr[" << b << "]: " << i_curr[b] << std::endl;
                // std::cout << "j_curr[" << b << "]: " << j_curr[b] << std::endl;
                int i_start = 0 > i_curr[b] - MAX_QUERY_LENGTH ? 0 : i_curr[b] - MAX_QUERY_LENGTH;
                int j_start = 0 > j_curr[b] - MAX_REFERENCE_LENGTH ? 0 : j_curr[b] - MAX_REFERENCE_LENGTH;

                tmp_tb_streams[b] = std::get<4>(seq_tuple);
                tmp_query_buff[b] = std::get<0>(seq_tuple);
                tmp_reference_buff[b] = std::get<1>(seq_tuple);

                HostUtils::Sequence::single_seq_to_device<char_t, MAX_QUERY_LENGTH, N_BLOCKS>(std::get<0>(seq_tuple), i_start, i_curr[b], b, query_d);
                HostUtils::Sequence::single_seq_to_device<char_t, MAX_REFERENCE_LENGTH, N_BLOCKS>(std::get<1>(seq_tuple), j_start, j_curr[b], b, reference_d);
                qry_lengths[b] = i_curr[b] - i_start;
                ref_lengths[b] = j_curr[b] - j_start;
                block_count++;
            }
            else {
                break;
            }
        }

        seq_align_multiple_static(
            query_d, reference_d, qry_lengths, ref_lengths, penalties, tb_is, tb_js, tb_streams
#ifdef CMAKEDEBUG
            , debuggers
#endif
        );

        for (size_t b = 0; b < block_count; b++) {
            int i_offset = qry_lengths[b] - tb_is[b];
            int j_offset = ref_lengths[b] - tb_js[b];
            // std::cout << "i_offset: " << i_offset << ", j_offset: " << j_offset << std::endl;
#ifndef NO_TRACEBACK
            int tb_wt_cnt = 0;
            while (tb_streams[tb_wt_cnt][b] != AL_END){
                tmp_tb_streams[b].push_back(tb_streams[tb_wt_cnt][b]);
                tb_wt_cnt++;
            }
#endif
            i_curr[b] = i_curr[b] - i_offset;
            j_curr[b] = j_curr[b] - j_offset;
            if (i_curr[b] == 0 || j_curr[b] == 0){  // then the aligment is finished, move everything to the finished queue
                finished_seqs.push(std::make_tuple(
                    tmp_query_buff[b], tmp_reference_buff[b], 
                    i_curr[b], j_curr[b], tmp_tb_streams[b]));
            } else {
                working_seqs.push(std::make_tuple(
                    tmp_query_buff[b], tmp_reference_buff[b], 
                    i_curr[b], j_curr[b], tmp_tb_streams[b]));
            }
        }
    }

    std::cout << "Alignment finished" << std::endl;

    // reconstruct solution and kernel alignments
    std::vector<std::map<string, string>> solution_alignments;
    std::vector<map<string, string>> kernel_alignments;

    while (!finished_seqs.empty()) {
        sequence_tuple seq_tuple = finished_seqs.front();
        finished_seqs.pop();

        tbr_t single_tb_stream[INPUT_QUERY_LENGTH + INPUT_REFERENCE_LENGTH];
        std::vector<tbr_t> single_tb_vec = std::get<4>(seq_tuple);
        for (int i = 0; i < single_tb_vec.size(); i++) {
            single_tb_stream[i] = single_tb_vec[i];
        }

        // Recover query and reference strings from vector<char_t> format
        string query_str = "";
        string reference_str = "";        
        for (const auto& ch : std::get<0>(seq_tuple)) {
            query_str += HostUtils::Sequence::num_to_base(ch);
        }
        for (const auto& ch : std::get<1>(seq_tuple)) {
            reference_str += HostUtils::Sequence::num_to_base(ch);
        }

        array<array<array<float, INPUT_REFERENCE_LENGTH>, INPUT_QUERY_LENGTH>, N_LAYERS> sol_score_mat;
        array<array<char, INPUT_REFERENCE_LENGTH>, INPUT_QUERY_LENGTH> sol_tb_mat;
        std::map<string, string> alignments;
        global_linear_solution<Penalties_sol, INPUT_QUERY_LENGTH, INPUT_REFERENCE_LENGTH, N_LAYERS>(query_str, reference_str, penalties_sol[0], sol_score_mat, sol_tb_mat, alignments);
        solution_alignments.push_back(alignments);

        kernel_alignments.push_back(HostUtils::Sequence::ReconstructTraceback<tbr_t, INPUT_QUERY_LENGTH, INPUT_REFERENCE_LENGTH>(
            query_str, reference_str,
            INPUT_QUERY_LENGTH, INPUT_REFERENCE_LENGTH, 
            single_tb_stream));
    }

    std::cout << "\nWARNING: The tiling algorithm is not equivalent to the larger global alignment. The solution alignment shouldn't be exactly the same as the kernel alignment.\n" << std::endl;

    // Print kernel 0 traceback
    for (int i = 0; i < NUM_SEQUENCES; i++) {
        cout << "Kernel " << i << " Traceback, Start Row: " << INPUT_QUERY_LENGTH << ", Start Column: " << INPUT_REFERENCE_LENGTH << endl;
        cout << "Solution Aligned Query    : " << solution_alignments[i]["query"] << endl;
        cout << "Solution Aligned Reference: " << solution_alignments[i]["reference"] << endl;
        cout << "Kernel   Aligned Query    : " << kernel_alignments[i]["query"] << endl;
        cout << "Kernel   Aligned Reference: " << kernel_alignments[i]["reference"] << endl;
    }

    return 0;
}
