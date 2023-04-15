#include <gmp.h>

#define __gmp_const const

#include <stdio.h>
#include "seq_align_multiple.h"
#include "params.h"
#include <cstdlib>
#include <iostream>
#include "ap_int.h"
#include "ap_fixed.h"


using namespace std;

int main() {

    srand(time(NULL));

    char reference_string[N_BLOCKS * ref_length];
    char query_string[N_BLOCKS * query_length];
    ap_uint<2> reference_string_comp[N_BLOCKS * ref_length];
    ap_uint<2> query_string_comp[N_BLOCKS * query_length];

    char alphabet[4] = {'A', 'C', 'G', 'T'};

    for (int i = 0; i < N_BLOCKS * ref_length; i++) {
        reference_string[i] = alphabet[rand() % 4];
    }

    for (int i = 0; i < N_BLOCKS * query_length; i++) {
        query_string[i] = alphabet[rand() % 4];
    }

    for (int p = 0; p < N_BLOCKS * ref_length; p++) {

        if (reference_string[p] == 'A') {
            reference_string_comp[p] = 0;
        } else if (reference_string[p] == 'C') {
            reference_string_comp[p] = 1;
        } else if (reference_string[p] == 'G') {
            reference_string_comp[p] = 2;
        } else if (reference_string[p] == 'T') {
            reference_string_comp[p] = 3;
        }
    }

    for (int p = 0; p < N_BLOCKS * query_length; p++) {

        if (query_string[p] == 'A') {
            query_string_comp[p] = 0;
        } else if (query_string[p] == 'C') {
            query_string_comp[p] = 1;
        } else if (query_string[p] == 'G') {
            query_string_comp[p] = 2;
        } else if (query_string[p] == 'T') {
            query_string_comp[p] = 3;
        }
    }

    // dummy is used to hold the max_score in seq_align_multiple.cpp

    type_t dummies[N_BLOCKS];

    type_t dp_mem[N_BLOCKS][3][PE_num];  // two of dp_mem, one for each block
    type_t Iy_mem[N_BLOCKS][2][PE_num];
    type_t Ix_mem[N_BLOCKS][2][PE_num];


    type_t last_pe_score[N_BLOCKS][ref_length];
    type_t last_pe_scoreIx[N_BLOCKS][ref_length];

    // notice that the block iter loop could be merged for the initialization
    local_dpmem_loop:
    for (int block_i = 0; block_i < N_BLOCKS; block_i++){
        for (int gg = 0; gg < 3; gg++) {
            for (int ij = 0; ij < PE_num; ij++) {
                dp_mem[block_i][gg][ij] = 0;
            }
        }
    }

    local_Ixmem_loop:
    for (int block_i = 0; block_i < N_BLOCKS; block_i++){
        for (int mm = 0; mm < 2; mm++) {
            for (int nn = 0; nn < PE_num; nn++) {
                Ix_mem[block_i][mm][nn] = 0;
            }
        }
    }

    local_Iymem_loop:
    for (int block_i = 0; block_i < N_BLOCKS; block_i++){
        for (int pp = 0; pp < 2; pp++) {
            for (int rr = 0; rr < PE_num; rr++) {
                Iy_mem[block_i][pp][rr] = 0;
            }
        }
    }

    for (int block_i = 0; block_i < N_BLOCKS; block_i++){
        for (int ip = 0; ip < ref_length; ip++) {

            last_pe_score[block_i][ip] = 0;
            last_pe_scoreIx[block_i][ip] = 0;
        }
    }


    seq_align_multiple(query_string_comp, reference_string_comp, dp_mem, Ix_mem, Iy_mem, last_pe_score, last_pe_scoreIx, &dummies);

    //printf("max score is %d\n", dummy);

    return 0;

}
