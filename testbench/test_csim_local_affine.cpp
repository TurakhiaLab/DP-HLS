#include <string>
#include <vector>
#include <array>
#include <map>
#include "params.h"
#include "seq_align_multiple.h"
#include "host_utils.h"
#include "solutions.h"
#include "debug.h"

using namespace std;

#define INPUT_QUERY_LENGTH 256
#define INPUT_REFERENCE_LENGTH 256

char_t base_to_num(char base)
{
    switch (base)
    {
    case 'A':
        return 0;
    case 'C':
        return 1;
    case 'G':
        return 2;
    case 'T':
        return 3;
    default:
        return 0;
#ifdef CMAKEDEBUG
        throw std::runtime_error("Unrecognized Nucleotide " + std::string(1, base) + " from A, C, G, and T.\n"); // or throw an exception
#endif
    }

}

int main(){
    // std::string query_string = "AGTCTG";     // CCGTAGACCCGAACTTCGCGGTACACCTTCTGAAACCGTCCCTAATCCGACGAGCGCCTTGAGAACG";
    // std::string reference_string = "TGCCGAT";       // TGAGAACGTAGTCTAGGCGAATCGGCCCTTGTATATCGGGGCCGTAGACCCGAACTTCGCGGTACAC";
    char alphabet[4] = {'A', 'T', 'G', 'C'};
    std::string query_string = Random::Sequence<4>(alphabet, INPUT_QUERY_LENGTH);
    std::string reference_string = Random::Sequence<4>(alphabet, INPUT_REFERENCE_LENGTH);

    // Struct for Penalties in kernel
    Penalties penalties[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        penalties[i].extend = -1;
        penalties[i].open = -1;
        penalties[i].match = 3;
        penalties[i].mismatch = -1;
    }

    // Struct for penalties in solution
    Penalties_sol penalties_sol[N_BLOCKS];
    for (Penalties_sol &penalty : penalties_sol) {
        penalty.extend = -1;
        penalty.open = -1;
        penalty.match = 3;
        penalty.mismatch = -1;
    }

    // Reference and Query Strings
    std::vector<char> query(query_string.begin(), query_string.end());
    std::vector<char> reference(reference_string.begin(), reference_string.end());
 
    // Initialize Debugger
    Container debuggers[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        debuggers[i] = Container();
    }

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
    char_t reference_buff[N_BLOCKS][MAX_REFERENCE_LENGTH];
    char_t query_buff[N_BLOCKS][MAX_QUERY_LENGTH];

    // Allocate lengths for query and reference
    idx_t qry_lengths[N_BLOCKS], ref_lengths[N_BLOCKS];

    // Fill query buffer and references buffer for all blocks.
    // Each buffer is of MAX size, but only the actual length
    // elements is filled.
    for (int b = 0; b < N_BLOCKS; b++)
    {
        for (int i = 0; i < query.size(); i++)
        {
            query_buff[b][i] = base_to_num(query[i]);
        }
        for (int i = 0; i < reference.size(); i++)
        {
            reference_buff[b][i] = base_to_num(reference[i]);
        }
    }

    // Fill the lengths of the query and reference
    for (int b = 0; b < N_BLOCKS; b++)
    {
        qry_lengths[b] = query.size();
        ref_lengths[b] = reference.size();
    }

    // Allocate traceback streams
    idx_t tb_is[N_BLOCKS], tb_js[N_BLOCKS];
    tbr_t tb_streams[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];

    // Actual kernel calling
    seq_align_multiple_static(
        query_buff,
        reference_buff,
        qry_lengths,
        ref_lengths,
        penalties,
        tb_is, tb_js,
        tb_streams
#ifdef CMAKEDEBUG
        , debuggers
#endif
        );

    
    // Print the query and reference strings
    cout << "Query    : " << query_string << endl;
    cout << "Reference: " << reference_string << endl;

    // Get the solution scores and traceback
    array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> sol_score_mat;
    array<array<string, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> sol_tb_mat;
    map<string, string> alignments;
    local_affine_solution(query_string, reference_string, penalties_sol[0], sol_score_mat, sol_tb_mat, alignments);
    // print_matrix<float, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(sol_score_mat[0], "Solution Score Matrix Layer 0");
    // print_matrix<char, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(sol_tb_mat, "Solution Traceback Matrix");
    cout << "Solution Aligned Query    : " << alignments["query"] << endl;
    cout << "Solution Aligned Reference: " << alignments["reference"] << endl;

    // Cast kernel scores to matrix scores
    debuggers[0].cast_scores();
    // print_matrix<float, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(debuggers[0].scores_cpp[0], "Kernel 0 Scores Layer 0");
    debuggers[0].compare_scores(sol_score_mat, query.size(), reference.size());  // check if the scores from the kernel matches scores from the solution

    // reconstruct kernel alignments
    array<map<string, string>, N_BLOCKS> kernel_alignments;
    int tb_query_lengths[N_BLOCKS];
    int tb_reference_lengths[N_BLOCKS];
    string query_string_blocks[N_BLOCKS];
    string reference_string_blocks[N_BLOCKS];
    // for global alignments, adjust the lengths to be the lengths - 1
    for (int i = 0; i < N_BLOCKS; i++) {
        tb_query_lengths[i] = qry_lengths[i] - 1;
        tb_reference_lengths[i] = ref_lengths[i] - 1;
        query_string_blocks[i] = query_string;
        reference_string_blocks[i] = reference_string;
    }
    kernel_alignments = ReconstructTracebackBlocks<N_BLOCKS>(
        query_string_blocks, reference_string_blocks,
        tb_is, tb_js, 
        tb_streams);

    // Print kernel 0 traceback
    cout << "Kernel 0 Traceback" << endl;
    cout << "Kernel   Aligned Query    : " << kernel_alignments[0]["query"] << endl;
    cout << "Kernel   Aligned Reference: " << kernel_alignments[0]["reference"] << endl;

}