#include <vector>
#include <string>
#include <array>
#include <iostream>
#include <fstream>
#include <nlohmann/json.hpp>
#include "host_utils.h"
#include "solutions.h"
#include "params.h"
#include "seq_align_multiple.h"

using json = nlohmann::json;

// Define length of actual alignment sequences
#define MAX_QUERY
#define MAX_REFERENCE

// Define a navigation to character mapping that is used to print the traceback in terms of navigations U, L, M and etc.
std::string navigation_to_char(tbp_t nav)
{
    if (nav == AL_NULL)
    {
        return "P";
    }
    else if (nav == AL_INS)
    {
        return "L";
    }
    else if (nav == AL_MMI)
    {
        return "D";
    }
    else if (nav == AL_DEL)
    {
        return "U";
    }
    else
    {
        return "X";
    }
}

int main()
{
    std::ofstream output_file("/home/centos/workspace/DP-HLS/output.txt");

    std::array<std::array<float, 5>, 5> transitions_{{// Placeholder profile data
                                                      // Each sub-vector represents a column in the profile, with scores for each alphabet character
                                                      // Example: for DNA {A, T, C, G, _}
                                                      {5, -2, -2, -2, -2},
                                                      {-2, 5, -2, -2, -2},
                                                      {-2, -2, 5, -2, -2},
                                                      {-2, -2, -2, 5, -2},
                                                      {-2, -2, -2, -2, 0}}};

    struct Penalties_sol
    {
        std::array<std::array<float, 5>, 5> transition;
        float linear_gap;
    };

    // initialize a dummy debugger
    Container debugger[N_BLOCKS];

    // Solution Penalties
    Penalties_sol penalties_sol;
    penalties_sol.transition = transitions_;
    penalties_sol.linear_gap = -40;

    Penalties penalties_b[N_BLOCKS];
    tbr_t tb_streams_b[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH][N_BLOCKS];
    tbr_t tb_streams_h[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];
    idx_t tb_is[N_BLOCKS];
    idx_t tb_js[N_BLOCKS];

    // Set the penalties
    for (int i = 0; i < N_BLOCKS; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            for (int k = 0; k < 5; k++)
            {
                penalties_b[i].transition[j][k] = transitions_[j][k];
            }
        }
        penalties_b[i].linear_gap = penalties_sol.linear_gap;
    }

    // We assume the gene data is stored in a json file as a dictionary where each entry is like:
    // "species_name": "dna_sequence"
    // Open the JSON file
    std::ifstream json_file("/home/centos/workspace/DP-HLS/testbench/data/profile_alignment_json/gene_4.fa.json");

    // Parse the JSON file
    json data;
    json_file >> data;

    // Iterate through the JSON object
    // put the species name and genes into vectors
    std::vector<string> species_names;
    std::vector<string> dna_sequences;
    for (auto &element : data.items())
    {
        species_names.push_back(element.key());
        dna_sequences.push_back(element.value());
    }

    // show num species
    std::cout << "Number of species: " << species_names.size() << std::endl;

    // initialize the query and reference sequences
    std::vector<string> query_c_h;     // in character format, on host
    std::vector<string> reference_c_h; // in character format, on host

    std::vector<std::array<int, 5>> query_n_h;     // in number format, on host
    std::vector<std::array<int, 5>> reference_n_h; // in number format, on host

    char_t query_d[MAX_QUERY_LENGTH][N_BLOCKS];         // in number format, on device
    char_t reference_d[MAX_REFERENCE_LENGTH][N_BLOCKS]; // in number format, on device
    idx_t qry_len_d[N_BLOCKS];                          // length of the query sequence
    idx_t ref_len_d[N_BLOCKS];                          // length of the reference sequence

    // we use the first block to align all the sequences
    // Iterating through the map with an index
    reference_c_h.push_back(dna_sequences[0]);
    reference_n_h = HostUtils::Sequence::MultipleSequencesToProfileAlign(reference_c_h, reference_c_h[0].length());

    // prepare very first reference sequence
    for (int seq_id = 1; seq_id < dna_sequences.size(); seq_id++)
    {
        // print something to terminal
        output_file << "Aligning " << species_names[seq_id - 1] << std::endl;

        query_c_h.clear();
        query_c_h.push_back(dna_sequences[seq_id]);
        query_n_h = HostUtils::Sequence::MultipleSequencesToProfileAlign(query_c_h, query_c_h[0].length());

        // Align using kernel
        for (int b = 0; b < N_BLOCKS; b++)
        {
            for (int i = 0; i < MAX_QUERY_LENGTH; i++)
            {
                for (int j = 0; j < 5; j++)
                {
                    if (i < query_c_h[0].size()) query_d[i][b][j] = query_n_h[i][j];
                    else query_d[i][b][j] = 1;
                }
            }
        }
        for (int b = 0; b < N_BLOCKS; b++)
        {
            for (int i = 0; i < MAX_REFERENCE_LENGTH; i++)
            {
                for (int j = 0; j < 5; j++)
                {
                    if (i < reference_c_h[0].size()) reference_d[i][b][j] = reference_n_h[i][j];
                    else reference_d[i][b][j] = 1;
                }
            }
        }

        // print out the profile of block 0
        // output_file << "Profile prepared" << std::endl;
        // for (int i = 0; i < reference_n_h.size(); i++)
        // {
        //     for (int j = 0; j < 5; j++)
        //     {
        //         output_file << reference_n_h[i][j] << " ";
        //     }
        //     output_file << std::endl;
        // }

        // Set the lengths of the sequences
        for (int i = 0; i < N_BLOCKS; i++)
        {
            qry_len_d[i] = query_c_h[0].size();
            ref_len_d[i] = reference_c_h[0].size();
        }

        output_file << "Data prepared" << std::endl;
        // Call the kernel
        seq_align_multiple_static(query_d, reference_d, qry_len_d, ref_len_d,
                                  penalties_b, tb_is, tb_js, tb_streams_b, debugger);

        // print something
        output_file << "Alignment done" << std::endl;

        // transpose the output


        // Reconstruct the alignment
        HostUtils::IO::SwitchDimension(tb_streams_b, tb_streams_h);
        std::vector<string> alignments = HostUtils::Sequence::ReconstructTracebackProfile<tbr_t, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(query_c_h, reference_c_h,
                                                                    (int) qry_len_d[0], (int) ref_len_d[0], tb_streams_h[0]);

        // print something
        output_file << "Reconstruction done" << std::endl;
        // print alignments
        for (auto &alignment : alignments)
        {
            output_file << alignment << std::endl;
        }

        reference_c_h = alignments;
        reference_n_h = HostUtils::Sequence::MultipleSequencesToProfileAlign(reference_c_h, reference_c_h[0].length());

    }

    // declare the solution score matrix, solution traceback matrix, and solution traceback vector
    array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> sol_score_mat;
    array<array<char, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> sol_tb_mat;
    std::vector<char> sol_alignments;

    // Align with the solution algorithms
    // profile_alignment_solution<
    // Penalties_sol,
    // MAX_QUERY_LENGTH,
    // MAX_REFERENCE_LENGTH, N_LAYERS>
    // (query, reference,
    // penalties_sol,
    // sol_score_mat,
    // sol_tb_mat,
    // sol_alignments);

#ifdef TESTBENCH_PRINT_SCORES
    // Print the solution score matrix
    std::cout << "Solution Score Matrix: " << std::endl;
    for (int i = 0; i < TEST_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < TEST_REFERENCE_LENGTH; j++)
        {
            std::cout << sol_score_mat[0][i][j] << " ";
        }
        std::cout << std::endl;
    }
#endif

    // print the solution alignment
    // std::cout << "Solution Alignment: ";
    // for (auto c : sol_alignments) {
    //     std::cout << c;
    // }
    // std::cout << std::endl;

    // print the result traceback
    // std::cout << "Result Traceback: " << std::endl;
    // for (int i = 0; i < N_BLOCKS; i++) {
    //     std::cout << "Block " << i << "           : ";
    //     for (int j = 0; j < TEST_QUERY_LENGTH + TEST_REFERENCE_LENGTH; j++) {
    //         std::cout << navigation_to_char(tb_streams_b[i][j]);
    //     }
    //     std::cout << std::endl;
    // }

#ifdef TESTBENCH_PRINT_SCORES
    debugger[0].cast_scores();
    // print scores of block 0
    std::cout << "Scores of block 0: " << std::endl;
    for (int i = 0; i < TEST_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < TEST_REFERENCE_LENGTH; j++)
        {
            std::cout << debugger[0].scores_cpp[0][i][j] << " ";
        }
        std::cout << std::endl;
    }
#endif

    // print the entire aligned profile
    output_file << "Aligned Profile: " << std::endl;
    for (int i = 0; i < reference_c_h.size(); i++)
    {
        output_file << reference_c_h[i] << std::endl;
    }
    return 0;
}
