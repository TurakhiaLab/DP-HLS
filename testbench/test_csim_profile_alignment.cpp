#include <iostream>
#include <vector>
#include <string>
#include <array>
#include "host_utils.h"
#include "solutions.h"
#include "params.h"
#include "seq_align_multiple.h"

// Define length of actual alignment sequences
// 88 to 89 result in error 
#define TEST_QUERY_LENGTH 190
#define TEST_REFERENCE_LENGTH 200

#undef TESTBENCH_PRINT_SCORES

// Define a navigation to character mapping that is used to print the traceback in terms of navigations U, L, M and etc. 
std::string navigation_to_char(tbp_t nav) {
    if (nav == AL_NULL) {
        return "P";
    } else if (nav == AL_INS) {
        return "L";
    } else if (nav == AL_MMI) {
        return "D";
    } else if (nav == AL_DEL) {
        return "U";
    } else {
        return "X";
    }
}

int main() {
    std::array<std::array<float, 5>, 5>  transitions_{{
        // Placeholder profile data
        // Each sub-vector represents a column in the profile, with scores for each alphabet character
        // Example: for DNA {A, T, C, G, _}
        {-0.1, -0.2, -0.3, -0.4, -0.5},
        {-0.5, -0.4, -0.3, -0.2, -0.1},
        {-0.1, -0.1, -0.1, -0.1, -0.1},
        {-0.2, -0.2, -0.2, -0.2, -0.2},
        {-0.3, -0.3, -0.3, -0.3, -0.3}
    }};

    struct Penalties_sol {
        std::array<std::array<float, 5>, 5> transition;
        float linear_gap;
    };

    Penalties_sol penalties_sol;
    penalties_sol.transition = transitions_;
    penalties_sol.linear_gap = -3;

    // Generate a sample profile alignment sequence
    auto query = Random::SequenceProfileAlignment<20>(TEST_QUERY_LENGTH);
    auto reference = Random::SequenceProfileAlignment<20>(TEST_REFERENCE_LENGTH);

    // Print the generated sequences
    std::cout << "Query: " << std::endl;
    for (auto col : query) {
        for (auto count : col) {
            std::cout << count << " ";
        }
        std::cout << std::endl;
    }
    std::cout << "Reference: " << std::endl;
    for (auto col : reference) {
        for (auto count : col) {
            std::cout << count << " ";
        }
        std::cout << std::endl;
    }
    

    // declare the solution score matrix, solution traceback matrix, and solution traceback vector
    array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> sol_score_mat;
    array<array<char, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> sol_tb_mat;
    std::vector<char> sol_alignments;

    // Align with the solution algorithms
    profile_alignment_solution<
    Penalties_sol,
    MAX_QUERY_LENGTH, 
    MAX_REFERENCE_LENGTH, N_LAYERS>
    (query, reference, 
    penalties_sol,
    sol_score_mat, 
    sol_tb_mat, 
    sol_alignments);

#ifdef TESTBENCH_PRINT_SCORES
    // Print the solution score matrix
    std::cout << "Solution Score Matrix: " << std::endl;
    for (int i = 0; i < TEST_QUERY_LENGTH; i++) {
        for (int j = 0; j < TEST_REFERENCE_LENGTH; j++) {
            std::cout << sol_score_mat[0][i][j] << " ";
        }
        std::cout << std::endl;
    }
#endif

    // print the solution alignment
    std::cout << "Solution Alignment: ";
    for (auto c : sol_alignments) {
        std::cout << c;
    }
    std::cout << std::endl;

    // Allocate the buffer to hold the input and output of the kernel
    char_t query_b[N_BLOCKS][MAX_QUERY_LENGTH];
    char_t reference_b[N_BLOCKS][MAX_REFERENCE_LENGTH];
    idx_t qry_len_b[N_BLOCKS];
    idx_t ref_len_b[N_BLOCKS];


    Penalties penalties_b[N_BLOCKS];
    idx_t tb_is_b[N_BLOCKS], tb_js_b[N_BLOCKS];
    tbr_t tb_streams_b[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];

    // Copy the generated sequences to the buffer
    for (int b = 0; b < N_BLOCKS; b++){
        for (int i = 0; i < TEST_QUERY_LENGTH; i++) {
            for (int j = 0; j < 5; j++) {
                query_b[b][i][j] = query[i][j];
            }
        }
    }
    for (int b = 0; b < N_BLOCKS; b++){
        for (int i = 0; i < TEST_REFERENCE_LENGTH; i++) {
            for (int j = 0; j < 5; j++) {
                reference_b[0][i][j] = reference[i][j];
            }
        }
    }

    // Set the lengths of the sequences
    for (int i = 0; i < N_BLOCKS; i++) {
        qry_len_b[i] = TEST_QUERY_LENGTH;
        ref_len_b[i] = TEST_REFERENCE_LENGTH;
    }

    // Set the penalties
    for (int i = 0; i < N_BLOCKS; i++) {
        for (int j = 0; j < 5; j++) {
            for (int k = 0; k < 5; k++) {
                penalties_b[i].transition[j][k] = transitions_[j][k];
            }
        }
        penalties_b[i].linear_gap = penalties_sol.linear_gap;
    }

    // initialize a dummy debugger
    Container debugger[N_BLOCKS];

    // Call the kernel
    seq_align_multiple_static(query_b, reference_b, qry_len_b, ref_len_b, penalties_b, tb_is_b, tb_js_b, tb_streams_b, debugger);
    // print the result traceback
    std::cout << "Result Traceback: " << std::endl;
    for (int i = 0; i < N_BLOCKS; i++) {
        std::cout << "Block " << i << "           : ";
        for (int j = 0; j < TEST_QUERY_LENGTH + TEST_REFERENCE_LENGTH; j++) {
            std::cout << navigation_to_char(tb_streams_b[i][j]);
        }
        std::cout << std::endl;
    }

#ifdef TESTBENCH_PRINT_SCORES
    debugger[0].cast_scores();
    // print scores of block 0
    std::cout << "Scores of block 0: " << std::endl;
    for (int i = 0; i < TEST_QUERY_LENGTH; i++) {
        for (int j = 0; j < TEST_REFERENCE_LENGTH; j++) {
            std::cout << debugger[0].scores_cpp[0][i][j] << " ";
        }
        std::cout << std::endl;
    }
#endif

    return 0;
}
