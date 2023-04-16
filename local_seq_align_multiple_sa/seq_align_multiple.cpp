#include <gmp.h>

#define __gmp_const const

#include <stdio.h>
#include <math.h>
#include "params.h"
#include <cstdlib>
#include <iostream>
#include "ap_int.h"
#include "seq_align_multiple.h"

using namespace std;

void PE(ap_uint<2> local_ref_val, ap_uint<2> local_query_val, type_t up_prev, type_t left_prev, type_t diag_prev,
        type_t *score,
        type_t Ix_prev, type_t *Ix,
        type_t Iy_prev, type_t *Iy,
        type_t *final) {

#pragma HLS inline

#ifdef LINEAR

    type_t d = opening_score  + left_prev;
    type_t i = opening_score + up_prev;
    type_t temp_pe = 0;

    type_t match = (local_query_val == local_ref_val) ? diag_prev + match_score : diag_prev + mismatch_score;

    type_t max_value = (( (d > i) ? d : i ) > match ) ? ( ( d > i) ? d : i ) : match ;

    *score = (max_value < temp_pe) ? temp_pe : max_value;

    *final = *score;

#endif

    const type_t a1 = left_prev + opening_score;
    const type_t a2 = Iy_prev + extend_score;
    const type_t a3 = up_prev + opening_score;
    const type_t a4 = Ix_prev + extend_score;

    *Iy = a1 > a2 ? a1 : a2;
    *Ix = a3 > a4 ? a3 : a4;

    const type_t temp = 0;

    const type_t match = (local_query_val == local_ref_val) ? diag_prev + match_score : diag_prev + mismatch_score;

    const type_t max_value = (((*Iy > *Ix) ? *Iy : *Ix) > match) ? ((*Iy > *Ix) ? *Iy : *Ix) : match;

    *score = (max_value < temp) ? temp : max_value;

    *final = *score;

}

void seq_align(ap_uint<2> query[query_length], ap_uint<2> reference[ref_length], type_t dp_mem[3][PE_num],
               type_t Ix_mem[2][PE_num],
               type_t Iy_mem[2][PE_num], type_t last_pe_score[ref_length], type_t last_pe_scoreIx[ref_length],
               type_t *dummy) {
    
#pragma HLS inline

    type_t temp = 0;

    type_t dp_matrix[query_length][ref_length];  // declare dp matrix

    // initialize the dp matrix to 0
    for (int pp = 0; pp < query_length; pp++) {
        for (int rr = 0; rr < ref_length; rr++) {
            dp_matrix[pp][rr] = 0;
        }
    }

    const type_t zero_fp = 0;

// partition array for better access
#pragma HLS ARRAY_PARTITION variable=dp_mem dim=0 complete
#pragma HLS ARRAY_PARTITION variable=Iy_mem dim=0 complete
#pragma HLS ARRAY_PARTITION variable=Ix_mem dim=0 complete
#pragma HLS ARRAY_PARTITION variable=dp_matrix dim=1 cyclic factor=PE_num

    ap_uint<2> local_query[PE_num];  // each PE process a element in query
    ap_uint<2> local_reference[ref_length];  // a group of PE process all references by shifting

    // initialize local reference from reference
    for (int i = 0; i < ref_length; i++) {
        local_reference[i] = reference[i];
    }

#pragma HLS ARRAY_PARTITION variable=local_query dim=0 complete  // local query is at PE num so a complete partition assign each PE a distinct memory
#pragma HLS ARRAY_PARTITION variable=local_reference cyclic factor=16

    // iterating through the chunks of the larger dp matrix
    kernel:
    for (int qq = 0; qq < query_chunks; qq++) {  // query_chunks = query_length/PE_num
        // iterating through every wavefront
        kernel1:
        for (int ii = 0; ii < (PE_num + ref_length - 1); ii++) {

#pragma HLS PIPELINE II=1

            if (ii < PE_num) {

                local_query[ii] = query[qq * PE_num + ii];  // iterate through the local query as they are in different chunks
            }

            // shifting wavefronts
            cbuff:
            for (int ix = 0; ix < PE_num; ix++)
#pragma HLS UNROLL
            {
                dp_mem[0][ix] = (ii == 0) ? zero_fp : dp_mem[1][ix];
                dp_mem[1][ix] = (ii == 0) ? zero_fp : dp_mem[2][ix];
                dp_mem[2][ix] = zero_fp;//(ii == 0)? zero_fp : dp_mem[2][ix];
                Ix_mem[0][ix] = (ii == 0) ? zero_fp : Ix_mem[1][ix];
                Ix_mem[1][ix] = zero_fp;//(ii == 0)? zero_fp : Ix_mem[1][ix];
                Iy_mem[0][ix] = (ii == 0) ? zero_fp : Iy_mem[1][ix];
                Iy_mem[1][ix] = zero_fp;//(ii == 0)? zero_fp : Iy_mem[1][ix];
            }

            temp = (ii == 0) ? zero_fp : temp;

            // computing scores
            peloop:
            for (int kk = 0; kk < PE_num; kk++) {

#pragma HLS UNROLL

                if ((ii - kk) >= 0 && (ii - kk) < ref_length) {

                    if (kk == 0) {

                        PE(local_reference[ii], local_query[kk], last_pe_score[ii], dp_mem[1][kk], temp, &dp_mem[2][kk],
                           last_pe_scoreIx[ii], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],
                           &dp_matrix[kk + qq * PE_num][ii - kk]);

                        temp = last_pe_score[ii];
                    } else {
                        PE(local_reference[ii - kk], local_query[kk], dp_mem[1][kk - 1], dp_mem[1][kk],
                           dp_mem[0][kk - 1], &dp_mem[2][kk], Ix_mem[0][kk - 1], &Ix_mem[1][kk], Iy_mem[0][kk],
                           &Iy_mem[1][kk], &dp_matrix[kk + qq * PE_num][ii - kk]);
                    }

                    if (ii > PE_num - 2 && kk == PE_num - 1) {

                        last_pe_score[ii - PE_num + 1] = dp_mem[2][PE_num - 1];
                        last_pe_scoreIx[ii - PE_num + 1] = Ix_mem[1][PE_num - 1];
                    }
                }
            }

        }
    }

    type_t max_dp = 0;
    int max_row_value;
    int max_col_value;

    pe1:
    for (int x = 0; x < query_length; x++) {

        pe2:
        for (int y = 0; y < ref_length; y++) {

            if (dp_matrix[x][y] > 0) {
                max_dp = dp_matrix[x][y];
                max_row_value = x;
                max_col_value = y;
            }

        }

    }

    type_t max_score = dp_matrix[max_row_value][max_col_value];
    *dummy = max_score;

    /* printf("\n printing dp matrix\n");

    for (int r = 0; r < query_length; r ++)
     {
         for (int s = 0; s < ref_length; s ++){

             printf("%d\t", dp_matrix[r][s]);
         }
         printf("\n");
     }*/

}

void seq_align_multiple(ap_uint<2> query_string_comp[N_BLOCKS][query_length],
                        ap_uint<2> reference_string_comp[N_BLOCKS][ref_length],
                               type_t dp_mem[N_BLOCKS][3][PE_num],
                               type_t Ix_mem[N_BLOCKS][2][PE_num],
                               type_t Iy_mem[N_BLOCKS][2][PE_num],
                               type_t last_pe_score[N_BLOCKS][ref_length],
                               type_t last_pe_scoreIx[N_BLOCKS][ref_length],
                               type_t dummies[N_BLOCKS]){

#pragma HLS array_partition variable=query_string_comp type=block factor=N_BLOCKS
#pragma HLS array_partition variable=reference_string_comp type=block factor=N_BLOCKS
#pragma HLS array_partition variable=dp_mem type=block factor=N_BLOCKS
#pragma HLS array_partition variable=Ix_mem type=block factor=N_BLOCKS
#pragma HLS array_partition variable=Iy_mem type=block factor=N_BLOCKS
#pragma HLS array_partition variable=last_pe_score type=block factor=N_BLOCKS
#pragma HLS array_partition variable=last_pe_scoreIx type=block factor=N_BLOCKS

    type_t dummies_inner[N_BLOCKS];

    // to be unrolled
    for (int block_i = 0; block_i < N_BLOCKS; block_i++){
#pragma HLS unroll
        seq_align(query_string_comp[block_i],
                  reference_string_comp[block_i],
                  dp_mem[block_i],
                  Ix_mem[block_i],
                  Iy_mem[block_i],
                  last_pe_score[block_i],
                  last_pe_scoreIx[block_i],
                  &dummies[block_i]);
    }

    for (int block_i = 0; block_i < N_BLOCKS; block_i++){
        dummies[block_i] = dummies_inner[block_i];
    }

}





