#include <gmp.h>

#define __gmp_const const

#include <stdio.h>
#include "seq_align_multiple.h"
#include "params.h"
#include <cstdlib>
#include <iostream>
#include "ap_int.h"
#include "ap_fixed.h"
#include <hls_stream.h>

using namespace hls;

int main() {

    srand(time(NULL));

    char reference_string[N_BLOCKS][ref_length];
    char query_string[N_BLOCKS][query_length];
    hls::stream<type_char, ref_length> reference_string_comp[N_BLOCKS];
    hls::stream<type_char, query_length> query_string_comp[N_BLOCKS];

    char alphabet[4] = { 'A', 'C', 'G', 'T' };

    for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
        for (int i = 0; i < ref_length; i++) {
            reference_string[block_i][i] = alphabet[rand() % 4];
        }
    }

    for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
        for (int i = 0; i < query_length; i++) {
            query_string[block_i][i] = alphabet[rand() % 4];
        }
    }

    for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
        for (int p = 0; p < ref_length; p++) {
            type_char symb = 0;
            switch (reference_string[block_i][p])
            {
            case 'A':
                symb = 0;
                break;
            case 'C':
                symb = 1;
                break;
            case 'G':
                symb = 2;
                break;
            case 'T':
                symb = 3;
                break;
            }
            reference_string_comp[block_i].write(symb);

        }
    }

    for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
        for (int p = 0; p < query_length; p++) {
            type_char symb = 0;
            switch (query_string[block_i][p])
            {
            case 'A':
                symb = 0;
                break;
            case 'C':
                symb = 1;
                break;
            case 'G':
                symb = 2;
                break;
            case 'T':
                symb = 3;
                break;
            }
            query_string_comp[block_i].write(symb);
        }
    }

    // dummy is used to hold the max_score in seq_align_multiple.cpp

    type_t dummies[N_BLOCKS];

    seq_align_multiple(query_string_comp, reference_string_comp, (&dummies)[N_BLOCKS]);

    return 0;

}
