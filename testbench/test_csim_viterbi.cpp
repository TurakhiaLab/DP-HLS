#include <string>
#include <vector>
#include <array>
#include <map>
#include <chrono>
#include <math.h>
#include "params.h"
#include "dp_hls_common.h"
#include "seq_align_multiple.h"
#include "host_utils.h"
#include "solutions.h"
#include "debug.h"
#include "solution_viterbi.h"
#include <bitset>

using namespace std;

#define INPUT_QUERY_LENGTH 256
#define INPUT_REFERENCE_LENGTH 256

struct Penalties_sol {
    double log_1_m_2_lambda;
    double log_mu;
    double log_lambda;
    double log_1_m_mu;
    double transition[5][5];
};


#define MU 0.2
#define LAMBDA 0.05

int main(){
    char alphabet[4] = {'A', 'T', 'G', 'C'};
    std::string query_string = Random::Sequence<4>(alphabet, INPUT_QUERY_LENGTH);
    std::string reference_string = Random::Sequence<4>(alphabet, INPUT_REFERENCE_LENGTH);

    float transition_[5][5] = {
        {0.2, 0.01666, 0.01666, 0.01666, 0.25},
        {0.01666, 0.2, 0.01666, 0.01666, 0.25},
        {0.01666, 0.01666, 0.2, 0.01666, 0.25},
        {0.01666, 0.01666, 0.01666, 0.2, 0.25},
        {0.25, 0.25, 0.25, 0.25, 0}
    };

    float log_transitions_[5][5];
    for (int i = 0; i < 5; i++){
        for (int j = 0; j < 5; j++){
            log_transitions_[i][j] = log(transition_[i][j]);
        }
    }

    // Struct for Penalties in kernel
    Penalties penalties[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        penalties[i].log_mu = log(MU);
        penalties[i].log_lambda = log(LAMBDA);
        penalties[i].log_1_m_mu = log(1 - MU);
        penalties[i].log_1_m_2_lambda = log(1 - 2 * LAMBDA);
        for (int j = 0; j < 5; j++){
            for (int k = 0; k < 5; k++){
                penalties[i].transition[j][k] = log_transitions_[j][k];
            }
        }
    }

    // Struct for penalties in solution
    Penalties_sol penalties_sol[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i ++) {
        penalties_sol[i].log_mu = log(MU);
        penalties_sol[i].log_lambda = log(LAMBDA);
        penalties_sol[i].log_1_m_mu = log(1 - MU);
        penalties_sol[i].log_1_m_2_lambda = log(1 - 2 * LAMBDA);
        for (int j = 0; j < 5; j++){
            for (int k = 0; k < 5; k++){
                penalties_sol[i].transition[j][k] = log_transitions_[j][k];
            }
        }
    }

    // Reference and Query Strings
    std::vector<char> query(query_string.begin(), query_string.end());
    std::vector<char> reference(reference_string.begin(), reference_string.end());
 
#ifdef CMAKEDEBUG
    // Initialize Debugger
    Container debuggers[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        debuggers[i] = Container();
    }
#endif

    // Assert actual query length and reference length should be smaller than the maximum length
    try {
        if (query.size() > MAX_QUERY_LENGTH) throw std::runtime_error("Query length should less than MAX_QUERY_LENGTH, "
            "actual query len " + std::to_string(query.size()) + ", Allocated qry len: " + std::to_string(MAX_QUERY_LENGTH));
        if (reference.size() > MAX_REFERENCE_LENGTH) throw std::runtime_error("Reference length should less than MAX_REFERENCE_LENGTH, "
            "actual ref len " + std::to_string(reference.size()) + ", Allocated ref len: " + std::to_string(MAX_REFERENCE_LENGTH));
    } catch (const std::exception &e) {
        std::cerr << "Exception: " << e.what() << std::endl;
        throw;
    }

    // Allocate query and reference buffer to pass to the kernel
    char_t reference_buff[MAX_REFERENCE_LENGTH][N_BLOCKS];
    char_t query_buff[MAX_QUERY_LENGTH][N_BLOCKS];

    // Allocate lengths for query and reference
    idx_t qry_lengths[N_BLOCKS], ref_lengths[N_BLOCKS];

    // Fill query buffer and references buffer for all blocks.
    // Each buffer is of MAX size, but only the actual length
    // elements is filled.
    for (int b = 0; b < N_BLOCKS; b++)
    {
        for (int i = 0; i < query.size(); i++)
        {
            query_buff[b][i] = HostUtils::Sequence::base_to_num(query[i]);
        }
        for (int i = 0; i < reference.size(); i++)
        {
            reference_buff[b][i] = HostUtils::Sequence::base_to_num(reference[i]);
        }
    }

    // Fill the lengths of the query and reference
    for (int b = 0; b < N_BLOCKS; b++)
    {
        qry_lengths[b] = query.size();
        ref_lengths[b] = reference.size();
    }

    type_t scores[N_BLOCKS];

#ifndef NO_TRACEBACK
    tbr_t tb_h[N_BLOCKS][MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH];
    tbr_t tb_d[MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH][N_BLOCKS];
#endif

    // initialize traceback starting coordinates
    idx_t tb_is[N_BLOCKS];
    idx_t tb_js[N_BLOCKS];

    // Actual kernel calling
    seq_align_multiple_static(
        query_buff,
        reference_buff,
        qry_lengths,
        ref_lengths,
        penalties,
        tb_is, tb_js
#ifndef NO_TRACEBACK
        , tb_d
#endif
#ifdef SCORED
        , scores
#endif
#ifdef CMAKEDEBUG
        , debuggers
#endif
        );
    

    // Print the query and reference strings
    cout << "Query    : " << query_string << endl;
    cout << "Reference: " << reference_string << endl;

    // Get the solution scores and traceback
    array<array<array<double, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> sol_score_mat;
    array<array<string, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> sol_tb_mat;
    map<string, string> alignments;
    viterbi_solution<Penalties_sol, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH, N_LAYERS>(query_string, reference_string, penalties_sol[0], sol_score_mat, sol_tb_mat, alignments);
    cout << "Solution Aligned Query    : " << alignments["query"] << endl;
    cout << "Solution Aligned Reference: " << alignments["reference"] << endl;
    // Display solution runtime

#ifdef CMAKEDEBUG
    // Cast kernel scores to matrix scores
    debuggers[0].cast_scores();
    debuggers[0].compare_scores_double(sol_score_mat, query.size(), reference.size(), 0.5);  // check if the scores from the kernel matches scores from the solution
#endif

    // reconstruct kernel alignments
    array<map<string, string>, N_BLOCKS> kernel_alignments;
    int tb_query_lengths[N_BLOCKS];
    int tb_reference_lengths[N_BLOCKS];
    string query_string_blocks[N_BLOCKS];
    string reference_string_blocks[N_BLOCKS];
    // for global alignments, adjust the lengths to be the lengths - 1
    for (int i = 0; i < N_BLOCKS; i++) {
        tb_query_lengths[i] = tb_is[i];
        tb_reference_lengths[i] = tb_js[i];
        query_string_blocks[i] = query_string;
        reference_string_blocks[i] = reference_string;
    }

#ifndef NO_TRACEBACK
    HostUtils::IO::SwitchDimension(tb_d, tb_h);

    for (int i = 0; i < N_BLOCKS; i++){
        cout << "Block " << i << " Traceback Pointers" << endl;
        for (int j = 0; j < MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH; j++){
            cout << bitset<4>(tb_h[i][j].to_int()) << " ";
        }
        cout << endl;
    }

    kernel_alignments = HostUtils::Sequence::ReconstructTracebackBlocks<tbr_t, N_BLOCKS, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(
        query_string_blocks, reference_string_blocks,
        tb_query_lengths, tb_reference_lengths, 
        tb_h);

    // print out the scores as well
    for (int i = 0; i < N_BLOCKS; i++){
        cout << "Kernel " << i << "Traceback" << endl;
        cout << "Kernel   Aligned Query    : " << kernel_alignments[0]["query"] << endl;
        cout << "Kernel   Aligned Reference: " << kernel_alignments[0]["reference"] << endl;
    }
#endif

    // print the scores for all blocks
    for (int i = 0; i < N_BLOCKS; i++) {
        // std::exp(scores[i].to_float())
        cout << "Block " << i << " Score: " << scores[i].to_float() << endl;
    }
}