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
    //char query_string[query_length] = {'G', 'A', 'T', 'T', 'A', 'G', 'C', 'T', 'A', 'C', 'G', 'T'};//, 'C', 'A', 'G', 'A' , 'C', 'C', 'T', 'A'};

    //char reference_string[ref_length] = {'A', 'G', 'T', 'A', 'C', 'G', 'C', 'T', 'A', 'C', 'G', 'T'};

    srand(time(NULL));

    char reference_string[N_BLOCKS][ref_length];
    char query_string[N_BLOCKS][query_length];
    ap_uint<2> reference_string_comp[N_BLOCKS][ref_length];
    ap_uint<2> query_string_comp[N_BLOCKS][query_length];

    char alphabet[4] = {'A', 'C', 'G', 'T'};

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
            ap_uint<2> symb = 0;
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
            reference_string_comp[block_i][p] = symb;

        }
    }

    for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
        for (int p = 0; p < query_length; p++) {
            ap_uint<2> symb = 0;
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
            query_string_comp[block_i][p] = symb;
        }
    }

    // bad naming, dummy is used to hold the max_score in seq_align_multiple.cpp
//    type_t dummy_3;
//    type_t dummy_4;
    type_t dummies[N_BLOCKS];

    type_t dp_mem[N_BLOCKS][3][PE_num];  // two of dp_mem, one for each block
    type_t Iy_mem[N_BLOCKS][2][PE_num];
    type_t Ix_mem[N_BLOCKS][2][PE_num];

//    type_t dp_mem2[3][PE_num];
//    type_t Iy_mem2[2][PE_num];
//    type_t Ix_mem2[2][PE_num];

    type_t last_pe_score[N_BLOCKS][ref_length];
    type_t last_pe_scoreIx[N_BLOCKS][ref_length];

//    type_t last_pe_score2[ref_length];
//    type_t last_pe_scoreIx2[ref_length];

    // notice that the block iter loop could be merged for the initialization
    local_dpmem_loop:
    for (int block_i = 0; block_i < N_BLOCKS; block_i++){
        for (int gg = 0; gg < 3; gg++) {
            for (int ij = 0; ij < PE_num; ij++) {
                dp_mem[block_i][gg][ij] = 0;
                // dp_mem2[gg][ij] = 0;
            }
        }
    }


    local_Ixmem_loop:
    for (int block_i = 0; block_i < N_BLOCKS; block_i++){
        for (int mm = 0; mm < 2; mm++) {
            for (int nn = 0; nn < PE_num; nn++) {
                Ix_mem[block_i][mm][nn] = 0;
                // Ix_mem2[mm][nn] = 0;
            }
        }
    }


    local_Iymem_loop:
    for (int block_i = 0; block_i < N_BLOCKS; block_i++){
        for (int pp = 0; pp < 2; pp++) {
            for (int rr = 0; rr < PE_num; rr++) {
                Iy_mem[block_i][pp][rr] = 0;
                // Iy_mem2[pp][rr] = 0;
            }
        }
    }

    for (int block_i = 0; block_i < N_BLOCKS; block_i++){
        for (int ip = 0; ip < ref_length; ip++) {

            last_pe_score[block_i][ip] = 0;
            last_pe_scoreIx[block_i][ip] = 0;
//        last_pe_score2[ip] = 0;
//        last_pe_scoreIx2[ip] = 0;
        }
    }


//    ap_uint<2> chunk1[query_length];
//    ap_uint<2> chunk2[query_length];
//    ap_uint<2> ref1[ref_length];
//    ap_uint<2> ref2[ref_length];

//    for (int j = 0; j < query_length; j++) {
//        chunk1[j] = query_string_comp[0 * query_length + j];
//        chunk2[j] = query_string_comp[1 * query_length + j];
//        //printf("\nchunk1[%d] and chunk2[%d] is %d and %d", j, j, chunk1[j], chunk2[j]);
//        // chunk3[j] = query_string_comp[2*query_length + j];
//        //chunk4[j] = query_string_comp[3*query_length + j];
//    }

//    for (int jj = 0; jj < ref_length; jj++) {
//        ref1[jj] = reference_string_comp[0 * ref_length + jj];
//        ref2[jj] = reference_string_comp[1 * ref_length + jj];
//        // printf("\nref1[%d] and ref2[%d] is %d and %d", j, j, ref1[j], ref2[j]);
//        // chunk3[j] = query_string_comp[2*query_length + j];
//        //chunk4[j] = query_string_comp[3*query_length + j];
//    }

//    seq_align_multiple(chunk1, chunk2, ref1, ref2, dp_mem, dp_mem2, Ix_mem, Ix_mem2, Iy_mem, Iy_mem2, last_pe_score,
//                       last_pe_score2, last_pe_scoreIx, last_pe_scoreIx2, &dummy_3, &dummy_4);


    seq_align_multiple(query_string_comp, reference_string_comp, dp_mem, Ix_mem, Iy_mem, last_pe_score, last_pe_scoreIx, (&dummies)[N_BLOCKS]);

    //printf("max score is %d\n", dummy);

    return 0;

}
