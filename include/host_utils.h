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

#include "params.h"

using namespace std;

namespace Random {
    // Generate a random sequence of length `length` with alphabet size `alphabet_size`.
    // The alphabet is [0, alphabet_size).
    template <int N>
    string Sequence(char alphabet[N], int length) {
        string seq = "";
        for (int i = 0; i < length; i++) {
            seq += alphabet[rand() % N];
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

}

/**
 * @brief Fucntino to reconstruct the alignment result from the an array of traceback navigations. 
 * 
 * @tparam T 
 * @param query 
 * @param reference 
 */
map<string, string> ReconstructTraceback(string query, string reference, 
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

#endif // !HOST_H