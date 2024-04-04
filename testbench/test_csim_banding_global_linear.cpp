#include <string>
#include <vector>
#include <array>
#include <map>
#include <fstream>
#include <iostream>
#include "params.h"
#include "seq_align_multiple.h"
#include "host_utils.h"
#include "solutions.h"
#include "debug.h"

using namespace std;

char tbp_to_char(tbp_t tbp){
    if (tbp == TB_DIAG) return 'D';
    else if (tbp == TB_UP) return 'U';
    else if (tbp == TB_LEFT) return 'L';
    else if (tbp == TB_PH) return 'P';
    else return 'X';
}

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
    float linear_gap;
    float match;
    float mismatch;
};

int main(){

    // Create debug file
    ofstream debug_file(DEBUG_OUTPUT_FILE);

    // std::string query_string = "TACAGAC";     // CCGTAGACCCGAACTTCGCGGTACACCTTCTGAAACCGTCCCTAATCCGACGAGCGCCTTGAGAACG";
    // std::string reference_string = "TGCTATTC";       // TGAGAACGTAGTCTAGGCGAATCGGCCCTTGTATATCGGGGCCGTAGACCCGAACTTCGCGGTACAC";
    char alphabet[4] = {'A', 'T', 'G', 'C'};
    std::string query_string = Random::Sequence<4>(alphabet, INPUT_QUERY_LENGTH);
    std::string reference_string = Random::Sequence<4>(alphabet, INPUT_REFERENCE_LENGTH);
    // Ref T  G  C  T  A  T  T  C
    // Qry TACAGAC

    Penalties penalties[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        penalties[i].extend = -1;
        penalties[i].open = -1;
        penalties[i].linear_gap = -1;
        penalties[i].match = 3;
        penalties[i].mismatch = -1;
    }

    Penalties_sol penalties_sol[N_BLOCKS];
    for (Penalties_sol &penalty : penalties_sol) {
        penalty.extend = -1;
        penalty.open = -1;
        penalty.linear_gap = -1;
        penalty.match = 3;
        penalty.mismatch = -1;
    }


    std::vector<char> query(query_string.begin(), query_string.end());
    std::vector<char> reference(reference_string.begin(), reference_string.end());
#ifdef CMAKEDEBUG
    Container debuggers[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        debuggers[i] = Container();
    }
#endif

    try {
        if (query.size() > MAX_QUERY_LENGTH) throw std::runtime_error("Query length should less than MAX_QUERY_LENGTH, "
            "actual query len " + std::to_string(query.size()) + ", Allocated qry len: " + std::to_string(MAX_QUERY_LENGTH));
        if (reference.size() > MAX_REFERENCE_LENGTH) throw std::runtime_error("Reference length should less than MAX_REFERENCE_LENGTH, "
            "actual ref len " + std::to_string(reference.size()) + ", Allocated ref len: " + std::to_string(MAX_REFERENCE_LENGTH));
    } catch (const std::exception &e) {
        std::cerr << "Exception: " << e.what() << std::endl;
        throw;
    }

    char_t reference_buff[N_BLOCKS][MAX_REFERENCE_LENGTH];
    char_t query_buff[N_BLOCKS][MAX_QUERY_LENGTH];

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

    for (int b = 0; b < N_BLOCKS; b++)
    {
        qry_lengths[b] = query.size();
        ref_lengths[b] = reference.size();
    }

    tbr_t tb_streams[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];
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
        tb_streams
#ifdef CMAKEDEBUG
        , debuggers
#endif
        );

    debug_file << "Kernel call done" << endl;

    // print the original traceback to file
    for (int b = 0; b < N_BLOCKS; b++)
    {
        debug_file << "Block " << b << " Traceback" << endl;
        for (int i = 0; i < tb_is[b] + tb_js[b]; i++)
        {
            debug_file << tbp_to_char(tb_streams[b][i]);
        }
        debug_file << endl;
    }

    // retrive the solution
    array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> sol_score_mat;
    array<array<char, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> sol_tb_mat;
    map<string, string> alignments;
    fixed_banding_global_linear_solution<Penalties_sol, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH, N_LAYERS, BANDWIDTH>(query_string, reference_string, penalties_sol[0], sol_score_mat, sol_tb_mat, alignments);
    debug_file << "Solution Aligned Query    : " << alignments["query"] << endl;
    debug_file << "Solution Aligned Reference: " << alignments["reference"] << endl;

#ifdef CMAKEDEBUG
    // Print kernel 0 scores
    debuggers[0].cast_scores();
    debuggers[0].compare_scores(sol_score_mat, query.size(), reference.size());
#endif


    // reconstruct kernel alignments
    array<map<string, string>, N_BLOCKS> kernel_alignments;
    int tb_query_lengths[N_BLOCKS];
    int tb_reference_lengths[N_BLOCKS];
    string query_string_blocks[N_BLOCKS];
    string reference_string_blocks[N_BLOCKS];
    // for global alignments, adjust the lengths to be the lengths - 1
    for (int i = 0; i < N_BLOCKS; i++) {
        // print tbis, tbjs
        debug_file << "tb_is[" << i << "]: " << tb_is[i] << endl;
        debug_file << "tb_js[" << i << "]: " << tb_js[i] << endl;
        tb_query_lengths[i] = tb_is[i];
        tb_reference_lengths[i] = tb_js[i];
        query_string_blocks[i] = query_string;
        reference_string_blocks[i] = reference_string;
    }
    kernel_alignments = HostUtils::Sequence::ReconstructTracebackBlocks<tbr_t, N_BLOCKS, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(
        query_string_blocks, reference_string_blocks,
        tb_query_lengths, tb_reference_lengths, 
        tb_streams);
    // Print kernel 0 traceback
    debug_file << "Kernel 0 Traceback" << endl;
    debug_file << "Kernel Aligned Query    : " << kernel_alignments[0]["query"] << endl;
    debug_file << "Kernel Aligned Reference: " << kernel_alignments[0]["reference"] << endl;

    // print out the scores
    // print_matrix<float, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(scores_sol[k], "Solution Score Matrix, Layer: " + std::to_string(k));
    fprint_matrix<float, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(debug_file, sol_score_mat[0], query_string, reference_string, "Solution Score Matrix, Layer: " + std::to_string(0));
    fprint_matrix<float, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(debug_file, debuggers->scores_cpp[0], query_string, reference_string, "Kernel Score Matrix, Layer: " + std::to_string(0));
    return 0;
}