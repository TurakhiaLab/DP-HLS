#include <string>
#include <vector>
#include <array>
#include <map>
#include <chrono>
#include "params.h"
#include "seq_align_multiple.h"
#include "host_utils.h"
#include "solutions.h"
#include "debug.h"

// Query    : TGAAAGACGGAGGCTACTCTAGTGACTATGGCCCAGGGAGAACTCGTGATACGTAAACACACGACGCACACGCTGGTTAT
// Reference: TCTTAACTCCGAGCTGATAGGTATCTGTCCGGTTCAGCGACAAAGACGGTATCGCAGTGACCATCGCCCCCATTAGGTGCTACGAGGGTAGACCCTAAGACATTGGTCCATCCGGATCTTACGGCCCTGCTACTCCCAAGGTACTAACGGTTCACGCTAA
// Solution Aligned Query    : _________________________________________________________________________________TGAAAGACGGAGGCTACTCTAGTGACTATGGCCCAGGGAGAACTCGTGATACGTAAACACACGACGCACACGCTGGTTAT
// Solution Aligned Reference: TCTTAACTCCGAGCTGATAGGTATCTGTCCGGTTCAGCGACAAAGACGGTATCGCAGTGACCATCGCCCCCATTAGGTGCT_ACGAGGGTAGACCCTAAGACATTGGTCCATCCGGATCTTACGGCCCTGCTACTCCCAAGGTACTAACGGTTCACGCTAA
// Solution Runtime: 16ms
// All scores match!
// Kernel 0 Aligned Query    : _TGAAAGACGGAGGCTACTCTAGT____GACTAT___GGC___CCA___GGG___AGA___ACT___CGT___GAT___ACG___TAA_____________________________________ACA___CAC___GAC___________________________________________GCA___CAC___GCT___GGT___TAT_______
// Kernel 0 Aligned Reference: TCTTAACTCCGAGCTGATAGG___TATC___TGTCCG___GTT___CAG___CGA___CAA___AGA___CGG___TAT___CGC___AGTGACCATCGCCCCCATTAGGTGCTACGAGGGTAGA___CCC___TAA___GACATTGGTCCATCCGGATCTTACGGCCCTGCTACTCCCAAGG___TAC___TAA___CGG___TTC___ACGCTAA

// Query    : AGGGTAGTTCATGCATTTTAGGCAAGCCTGCTCCTACCCGCAGTTCCTGCGCCTATCGCCCTTAAACGAATAGGTTCAGA
// Reference: AGCATACCATAGCGTCTAGCTGGGAAGACAATCGGCAAAAGACGCATCCTCCAAGGCCACTCCAATGAACAGAACACTCGAATAAAAGAGCCAATGGCAAAACTGTTCAACCGGTTCAAAGCGAAACCCATACCTTGCTATTAGGGAGGAACAGCACCCC
// Solution Aligned Query    : _________________________________________________________________________________AGGGTAGTTCATGCATTTTAGGCAAGCCTGCTCCTACCCGCAGTTCCTGCGCCTATCGCCCTTAAACGAATAGGTTCAGA
// Solution Aligned Reference: AGCATACCATAGCGTCTAGCTGGGAAGACAATCGGCAAAAGACGCATCCTCCAAGGCCACTCCAATGAACAGAACACTCGA_ATAAAAGAGCCAATGGCAAAACTGTTCAACCGGTTCAAAGCGAAACCCATACCTTGCTATTAGGGAGGAACAGCACCCC
// Solution Runtime: 17ms
// All scores match!
// Kernel 0 Aligned Query    : AGGG____TAG___TTCATG___CATTTTA___GGC___AAG___CCT___GCT___CCT___ACC___CGC___AGT___TCC___TGC___GCC___TAT___CGC___CCT___TAA__________________________________ACG___AAT___AGG___TTC___AGA_____________________________________________________
// Kernel 0 Aligned Reference: ___AGCAT___ACC___ATAGCG__TC___TAG___CTG___GGA___AGA___CAA___TCG___GCA___AAA___GAC___GCA___TCC___TCC___AAG___GCC___ACT___CCAATGAACAGAACACTCGAATAAAAGAGCCAAT___GGC___AAA___ACT___GTT___CAACCGGTTCAAAGCGAAACCCATACCTTGCTATTAGGGAGGAACAGCACCCC

using namespace std;

#define INPUT_QUERY_LENGTH 80
#define INPUT_REFERENCE_LENGTH 160

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

struct Penalties_sol
{
    float extend;
    float open;
    float match;
    float mismatch;
    float long_extend;
    float long_open;
};

int main(){
    // std::string query_string = "AGTCTG";     // CCGTAGACCCGAACTTCGCGGTACACCTTCTGAAACCGTCCCTAATCCGACGAGCGCCTTGAGAACG";
    // std::string reference_string = "TGCCGAT";       // TGAGAACGTAGTCTAGGCGAATCGGCCCTTGTATATCGGGGCCGTAGACCCGAACTTCGCGGTACAC";
    char alphabet[4] = {'A', 'T', 'G', 'C'};
    std::string query_string = Random::Sequence<4>(alphabet, INPUT_QUERY_LENGTH);
    std::string reference_string = Random::Sequence<4>(alphabet, INPUT_REFERENCE_LENGTH);

    // choose scores such that (long_extend < extend && open+extend < long_open+long_extend)

    // Struct for Penalties in kernel
    Penalties penalties[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        penalties[i].extend = -3;
        penalties[i].open = -4;
        penalties[i].match = 4;
        penalties[i].mismatch = -1.5;
        penalties[i].long_extend = -2;
        penalties[i].long_open = -16;
    }

    // Struct for penalties in solution
    Penalties_sol penalties_sol[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++) {
        penalties_sol[i].extend = -3;
        penalties_sol[i].open = -4;
        penalties_sol[i].match = 4;
        penalties_sol[i].mismatch = -1.5;
        penalties_sol[i].long_extend = -2;
        penalties_sol[i].long_open = -16;
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
            query_buff[i][b] = base_to_num(query[i]);
        }
        for (int i = 0; i < reference.size(); i++)
        {
            reference_buff[i][b] = base_to_num(reference[i]);
        }
    }

    // Fill the lengths of the query and reference
    for (int b = 0; b < N_BLOCKS; b++)
    {
        qry_lengths[b] = query.size();
        ref_lengths[b] = reference.size();
    }

    // Allocate traceback streams
    tbr_t tb_streams_h[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];
    tbr_t tb_streams_d[MAX_REFERENCE_LENGTH +MAX_QUERY_LENGTH][N_BLOCKS];

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
        tb_is, tb_js,
        tb_streams_d
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
    auto sol_start = std::chrono::high_resolution_clock::now();
    global_two_piece_affine_solution<Penalties_sol, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH, N_LAYERS>(query_string, reference_string, penalties_sol[0], sol_score_mat, sol_tb_mat, alignments);
    auto sol_end = std::chrono::high_resolution_clock::now();
    // print_matrix<float, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(sol_score_mat[0], "Solution Score Matrix Layer 0");
    // print_matrix<char, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(sol_tb_mat, "Solution Traceback Matrix");
    cout << "Solution Aligned Query    : " << alignments["query"] << endl;
    cout << "Solution Aligned Reference: " << alignments["reference"] << endl;
    // Display solution runtime
    std::cout << "Solution Runtime: " << std::chrono::duration_cast<std::chrono::milliseconds>(sol_end - sol_start).count() << "ms" << std::endl;

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
        tb_query_lengths[i] = tb_is[i];
        tb_reference_lengths[i] = tb_js[i];
        query_string_blocks[i] = query_string;
        reference_string_blocks[i] = reference_string;
    }
    HostUtils::IO::SwitchDimension(tb_streams_d, tb_streams_h);
     kernel_alignments = HostUtils::Sequence::ReconstructTracebackBlocks<tbr_t, N_BLOCKS, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(
        query_string_blocks, reference_string_blocks,
        tb_query_lengths, tb_reference_lengths, 
        tb_streams_h);

    // Print all kernel traceback 
    for (int i = 0; i < N_BLOCKS; i++) {
        cout << "Kernel " << i << " Aligned Query    : " << kernel_alignments[i]["query"] << endl;
        cout << "Kernel " << i << " Aligned Reference: " << kernel_alignments[i]["reference"] << endl;
    }

}
