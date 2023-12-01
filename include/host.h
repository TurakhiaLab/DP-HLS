/**
 * @file host.h
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

#include "params.h"
#include <string>
#include <vector>
#include <complex>

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

#endif // !HOST_H