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

    const int input_qry_length = 17;  // assume we know the length some how
    const int input_ref_length = 15;


    char reference_string[N_BLOCKS][MAX_REFERENCE_LENGTH];
    char query_string[N_BLOCKS][MAX_QUERY_LENGTH];

    stream<char_t, MAX_REFERENCE_LENGTH> reference_string_comp[N_BLOCKS];
    stream<char_t, MAX_QUERY_LENGTH> query_string_comp[N_BLOCKS];
    stream<tbp_t, MAX_REFERENCE_LENGTH+MAX_QUERY_LENGTH> tb_streams[N_BLOCKS];

    char alphabet[4] = { 'A', 'C', 'G', 'T' };

    for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
        for (int i = 0; i < MAX_REFERENCE_LENGTH; i++) {
            reference_string[block_i][i] = alphabet[rand() % 4];
        }
    }

    for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
        for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
            query_string[block_i][i] = alphabet[rand() % 4];
        }
    }

    const char* qry = "AGTCTAGGCGAATCGGCCCTTGTATATCGGGG"; //CCGTAGACCCGAACTTCGCGGTACACCTTCTGAAACCGTCCCTAATCCGACGAGCGCCTTGAGAACG";
    const char* ref = "TGCCGCGACCGTCCCTAATCCGACGAGCGCCT"; // TGAGAACGTAGTCTAGGCGAATCGGCCCTTGTATATCGGGGCCGTAGACCCGAACTTCGCGGTACAC";

    for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
        const char* qry_ptr = qry;
        const char* ref_ptr = ref;
        for (int i = 0; i < MAX_REFERENCE_LENGTH; i++) {
            reference_string[block_i][i] = *ref_ptr++;
            query_string[block_i][i] = *qry_ptr++;
        }
    }


    for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
        for (int p = 0; p < MAX_REFERENCE_LENGTH; p++) {
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
        for (int p = 0; p < MAX_QUERY_LENGTH; p++) {
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

    // for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
    //     for (int i = 0; i < MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH; i++) {
    //         if (!tb_streams[block_i].empty()) printf("%d ", tb_streams[block_i].read());
    //     }
    //     printf("\n");
    // }

    return 0;

}
