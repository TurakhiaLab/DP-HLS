#include <gmp.h>

#define __gmp_const const

#include <stdio.h>
#include "../include/seq_align_multiple.h"
#include "../include/params.h"
#include <cstdlib>
#include <iostream>
#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>
#include <hls_streamofblocks.h>

using namespace hls;

int main() {

    srand(time(NULL));

    const int input_qry_length = 123;  // assume we know the length some how
    const int input_ref_length = 128;


    char reference_string[N_BLOCKS][input_ref_length];
    char query_string[N_BLOCKS][input_qry_length];

    stream<char_t, max_reference_length> reference_string_comp[N_BLOCKS];
    stream<char_t, max_query_length> query_string_comp[N_BLOCKS];
    stream<tbp_t, max_reference_length+inflated_query_length> tb_streams[N_BLOCKS];

    char alphabet[4] = { 'A', 'C', 'G', 'T' };

    for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
        for (int i = 0; i < max_reference_length; i++) {
            reference_string[block_i][i] = alphabet[rand() % 4];
        }
    }

    for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
        for (int i = 0; i < max_query_length; i++) {
            query_string[block_i][i] = alphabet[rand() % 4];
        }
    }


    for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
        for (int p = 0; p < max_reference_length; p++) {
            char_t symb = 0;
            switch (reference_string[block_i][p])
            {
            case 'A':
                symb = 1;
                break;
            case 'C':
                symb = 2;
                break;
            case 'G':
                symb = 3;
                break;
            case 'T':
                symb = 4;
                break;
            }
            reference_string_comp[block_i].write(symb);

        }
    }

    for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
        for (int p = 0; p < max_query_length; p++) {
            char_t symb = 0;
            switch (query_string[block_i][p])
            {
            case 'A':
                symb = 1;
                break;
            case 'C':
                symb = 2;
                break;
            case 'G':
                symb = 3;
                break;
            case 'T':
                symb = 4;
                break;
            }
            query_string_comp[block_i].write(symb);
        }
    }

    int query_lengths[N_BLOCKS];
    int reference_lengths[N_BLOCKS];

    for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
        query_lengths[block_i] = input_qry_length;
        reference_lengths[block_i] = input_ref_length;
	}

    type_t dummies[N_BLOCKS];

    seq_align_multiple(query_string_comp, reference_string_comp, tb_streams, query_lengths, reference_lengths, dummies);

    return 0;

}
