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
#include "../include/initial.h"
using namespace hls;

int main() {

    srand(time(NULL));

    srand(time(NULL));

    BlockInputs input;

    const int input_qry_length = 15;  // assume we know the length some how
    const int input_ref_length = 17;


    char reference_string[MAX_REFERENCE_LENGTH];
    char query_string[MAX_QUERY_LENGTH];

    char_t reference_string_comp[MAX_REFERENCE_LENGTH];
    char_t query_string_comp[MAX_QUERY_LENGTH];
    tbp_t tb_streams[MAX_REFERENCE_LENGTH+MAX_QUERY_LENGTH];

    char alphabet[4] = { 'A', 'C', 'G', 'T' };


    const char* qry = "AGTCTAGGCGAATCGGCCCTTGTATATCGGGG"; //CCGTAGACCCGAACTTCGCGGTACACCTTCTGAAACCGTCCCTAATCCGACGAGCGCCTTGAGAACG";
    const char* ref = "TGCCGCGACCGTCCCTAATCCGACGAGCGCCT"; // TGAGAACGTAGTCTAGGCGAATCGGCCCTTGTATATCGGGGCCGTAGACCCGAACTTCGCGGTACAC";


    const char* qry_ptr = qry;
    const char* ref_ptr = ref;
    for (int i = 0; i < MAX_REFERENCE_LENGTH; i++) {
        reference_string[i] = *ref_ptr++;
        query_string[i] = *qry_ptr++;
    }
    

    for (int p = 0; p < MAX_REFERENCE_LENGTH; p++) {
        char_t symb = 0;
        switch (reference_string[p])
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
        input.reference[p] = symb;

    }
 
    for (int p = 0; p < MAX_QUERY_LENGTH; p++) {
        char_t symb = 0;
        switch (query_string[p])
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
        input.query[p] = symb;
    }



    assign_qry_local_linear(input.init_col_score);
    assign_ref_local_linear(input.init_row_score);

    hls::stream<BlockInputs> inputs_stm;
    hls::stream<BlockOutputs> outputs_stm;

    inputs_stm.write(input);

    seq_align_multiple(inputs_stm, outputs_stm);

    BlockOutputs output = outputs_stm.read();

    // for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
    //     for (int i = 0; i < MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH; i++) {
    //         if (!tb_streams[block_i].empty()) printf("%d ", tb_streams[block_i].read());
    //     }
    //     printf("\n");
    // }


    return 0;

}
