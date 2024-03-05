/**
 * @file host_utils.h
 * @author Yingqi Cao (yic033@ucsd.edu)
 * @brief Contains helper functions to write the host side code of the kernel. 
 * @version 0.1
 * @date 2023-11-03
 * 
 * @copyright Copyright (c) 2023
 * 
 */

#ifndef HOST_H
#define HOST_H

#include <string>
#include <vector>
#include <array>
#include <complex>
#include <random>
#include <map>

#include "params.h"

using namespace std;

namespace Random {
    
    // Generate a random sequence of length `length` with alphabet size `alphabet_size`.
    // The alphabet is [0, alphabet_size).
    template <int N>
    string Sequence(char alphabet[N], int length) {
        std::random_device rd;
    
        // Use the seed from random_device to seed the random engine
        std::mt19937 rng(rd());
        
        // Create a uniform distribution for random numbers between 1 and 100
        std::uniform_int_distribution<int> dist(1, 100);

        string seq = "";
        for (int i = 0; i < length; i++) {
            seq += alphabet[dist(rng) % N];
        }
        return seq;
    }

    template <typename T>
    std::vector<T> SequenceComplex(int length) {
        std::vector<T> seq;
        for (int i = 0; i < length; i++) {
            seq.push_back(T(rand(), rand()));
        }
        return seq;
    }

    /**
     * @brief A function that generates a random sequence in the format of the input of profile alignment. 
     * Each element of the output vector is an array of length 5. Each element in the array is the count 
     * of A, T, C, G, and _ in the column. The integers in the array should be non negative and sum up to WID
     * 
     * @tparam WID Number of sequences in the aligned sequences. 
     * @return std::vector<std::array<int, N>> 
     */
    template <int WID> 
    std::vector<std::array<int, 5>> SequenceProfileAlignment(int len) {
        std::vector<std::array<int, 5>> profile;
        for (int i = 0; i < len; i++) {
            int remaining = WID;
            std::array<int, 5> col;
            for (int j = 0; j < 4; j++) {
                col[j] = rand() % remaining;
                remaining -= col[j];
            }
            col[4] = WID - remaining;
            profile.push_back(col);
        }
        return profile;
    }

}

// function to convert the sequences to the format of the input of the profile alignment kernel
std::vector<std::array<int, 5>> MultipleSequencesToProfileAlign(std::vector<string> seq, int len);

/**
 * @brief Fucntino to reconstruct the alignment result from the an array of traceback navigations. 
 * 
 * @tparam T 
 * @param query 
 * @param reference 
 */
std::map<string, string> ReconstructTraceback(string query, string reference, 
    int query__start_idx, int reference_start_idx,
    tbr_t (&tb_streams)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH]);


/**
 * @brief Function to reconstruct the alignment result from the array of the traceback navigations for all blocks. 
 * 
 * @tparam NB Number of Blocks
 * @param query 
 * @param reference 
 */
template <int NB>
array<map<string, string>, NB> ReconstructTracebackBlocks(string query[NB], string reference[NB], 
    int query_start_idx[NB], int reference_start_idx[NB],
    tbr_t (&tb_streams)[NB][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH])
{
    // declare the result data structure
    array<map<string, string>, NB> alignments;

    for (int i = 0; i < NB; i++) {
        alignments[i] = ReconstructTraceback(query[i], reference[i], 
            query_start_idx[i], reference_start_idx[i], tb_streams[i]);
    }

    return alignments;
}

/**
 * @brief Reconstruct the traceback for profile alignmetnt from the array of traceback navigations.
 * 
 * @param querys 
 * @param references 
 * @param query_start_idx 
 * @param reference_start_idx 
 * @return std::vector<string> 
 */
std::vector<string> ReconstructTracebackProfile(std::vector<string> querys, std::vector<string> references, 
    int query_start_idx, int reference_start_idx, 
    tbr_t (&tb_streams)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH]);

#endif // !HOST_H