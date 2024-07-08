#include <string>
#include <vector>
#include <array>
#include <map>
#include <chrono>

#ifndef VPP_CLI
#include "../kernels/sdtw/params.h" // FIXME: Temporarily being the DTW Kernel
#include "../include/seq_align_multiple.h" // FIXME: Temporarily being the DTW Kernel
#include "../include/host_utils.h"
#include "../include/debug.h"
#else
#include "params.h"
#include "seq_align_multiple.h"
#include "host_utils.h"
#include "debug.h"
#endif


/**
 * @brief This kernel have very large stack size for simulation since the input reference length is around 60k
 * Thus, it need to set the stack size ulimit -s 16777216 before successfully simulation. 
 */

using namespace std;

// the dataset they prepared for artifact evaluation uses 8 bits insigned integers
#define INPUT_QUERY_LENGTH 500
// #define INPUT_REFERENCE_LENGTH 59800  // this is the actual reference length in the dataset, but it can't be simulated with Vitis HLS
// #define INPUT_REFERENCE_LENGTH 30000  // this is the actual reference length in the dataset
#define INPUT_REFERENCE_LENGTH 1000

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


void ReadSFInputFromFile(const std::string& filename, std::vector<int>& integers) {
    std::ifstream inputFile(filename);
    if (!inputFile.is_open()) {
        std::cerr << "Error: Could not open file " << filename << std::endl;
        return;
    }

    std::string line;
    while (std::getline(inputFile, line)) {
        std::stringstream ss(line);
        int number;
        while (ss >> number) {
            integers.push_back(number);
        }
    }

    inputFile.close();
}

int main(){

    // queries in the datasets are 500 in length
    // references are about 60k in length 

    // Reference and Query Strings
    std::vector<int> query_h;
    std::vector<int> reference_h;

    char_t query_d[MAX_QUERY_LENGTH][N_BLOCKS];
    char_t reference_d[MAX_REFERENCE_LENGTH][N_BLOCKS];

    // Read the input files
    ReadSFInputFromFile("/home/centos/workspace/baseline/SquiggleFilter/design/sv_sim_datasets/ref.txt", reference_h);
    ReadSFInputFromFile("/home/centos/workspace/baseline/SquiggleFilter/design/sv_sim_datasets/human_raw0.txt", query_h);

#ifdef CMAKEDEBUG
    // Initialize Debugger
    Container debuggers[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        debuggers[i] = Container();
    }
#endif
    Penalties penalties[N_BLOCKS];

    // Allocate query and reference buffer to pass to the kernel
    char_t reference_buff[MAX_REFERENCE_LENGTH][N_BLOCKS];
    char_t query_buff[MAX_QUERY_LENGTH][N_BLOCKS];

    // Allocate lengths for query and reference
    idx_t qry_lengths[N_BLOCKS], ref_lengths[N_BLOCKS];

    // Fill the lengths of the query and reference
    for (int b = 0; b < N_BLOCKS; b++)
    {
        qry_lengths[b] = std::min((int) query_h.size(), INPUT_QUERY_LENGTH);
        ref_lengths[b] = std::min((int) reference_h.size(), INPUT_REFERENCE_LENGTH);
    }

    // copy the reference and query
    for (int b = 0; b < N_BLOCKS; b++)
    {
        for (int i = 0; i < ref_lengths[b]; i++)
        {
            reference_buff[i][b] = reference_h[i];
        }
        for (int i = 0; i < qry_lengths[b]; i++)
        {
            query_buff[i][b] = query_h[i];
        }
    }

    // initialize traceback starting coordinates
    idx_t tb_is[N_BLOCKS];
    idx_t tb_js[N_BLOCKS];

    type_t scores[N_BLOCKS];

    cout << "Kernel Started" << endl;
    // Actual kernel calling
    seq_align_multiple_static(
        query_buff,
        reference_buff,
        ref_lengths,
        penalties,
        tb_js,
        scores
#ifdef CMAKEDEBUG
        , debuggers
#endif
        );


    // // Get the solution scores and traceback
    // array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> sol_score_mat;
    // array<array<string, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> sol_tb_mat;
    // map<string, string> alignments;
    // // print_matrix<float, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(sol_score_mat[0], "Solution Score Matrix Layer 0");
    // // print_matrix<char, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(sol_tb_mat, "Solution Traceback Matrix");
    // cout << "Solution Aligned Query    : " << alignments["query"] << endl;
    // cout << "Solution Aligned Reference: " << alignments["reference"] << endl;
    // // Display solution runtime
    // std::cout << "Solution Runtime: " << std::chrono::duration_cast<std::chrono::milliseconds>(sol_end - sol_start).count() << "ms" << std::endl;

#ifdef CMAKEDEBUG
    // Cast kernel scores to matrix scores
    debuggers[0].cast_scores();
    // print_matrix<float, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(debuggers[0].scores_cpp[0], "Kernel 0 Scores Layer 0");
    // debuggers[0].compare_scores(sol_score_mat, query.size(), reference.size());  // check if the scores from the kernel matches scores from the solution
#endif

    // reconstruct kernel alignments
    array<map<string, string>, N_BLOCKS> kernel_alignments;
    int tb_query_lengths[N_BLOCKS];
    int tb_reference_lengths[N_BLOCKS];
    string query_string_blocks[N_BLOCKS];
    string reference_string_blocks[N_BLOCKS];
    // for global alignments, adjust the lengths to be the lengths - 1
    for (int i = 0; i < N_BLOCKS; i++) {
        tb_query_lengths[i] = (int) tb_is[i];
        tb_reference_lengths[i] = (int) tb_js[i];
    }

    // Print kernel alignment scores
    for (int i = 0; i < N_BLOCKS; i++) {
        cout << "Kernel " << i << " Traceback" << endl;
        cout << "Alignment Scores: " << scores[i] << endl;
    }
}