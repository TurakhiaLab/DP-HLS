#include <gmp.h>

#define __gmp_const const

#include <stdio.h>
#include <math.h>
#include "params.h"
#include <cstdlib>
#include <iostream>
#include "ap_int.h"
#include "seq_align_multiple.h"
#include "shift_reg.h"
#include <hls_stream.h>


using namespace hls;

// requires a completely partition array into it
template <class T>
void shift(T (&arr)[PE_num], T data){
    for (int i = 1; i < PE_num; i++){
#pragma HLS unroll
        arr[i] = arr[i-1];
    }
    arr[0] = data;
}

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

void seq_align(stream<ap_uint<2>, query_length> &query_stream, stream<ap_uint<2>, ref_length> &reference_stream, type_t *dummy) {


	//*dummy = (query[query_length-1] == reference[ref_length-1])?1:5;
    type_t temp = 0;

    type_t dp_matrix[query_length][ref_length];  // declare dp matrix
    type_t dp_mem[3][PE_num];
    type_t Iy_mem[2][PE_num];
    type_t Ix_mem[2][PE_num];
    type_t last_pe_score[ref_length];
    type_t last_pe_scoreIx[ref_length];
    

    ShiftRegister<ap_uint<2>, PE_num> query;  // declare shift register for query
    ShiftRegister<ap_uint<2>, PE_num> reference;
//#pragma HLS ARRAY_PARTITION variable=query dim=1 complete

    //stream<ap_uint<2>, ref_length> reference_abstream[2];

    //for (int i = 0; i < ref_length; i++){
    //    reference_abstream[0].write(reference_stream.read());
    //}

    local_dpmem_loop: for (int gg = 0; gg < 3; gg ++){
             for (int ij = 0; ij < PE_num; ij++)
             {
                 dp_mem[gg][ij] = 0;
             }
         }

        local_Ixmem_loop: for (int mm = 0; mm < 2; mm ++){
             for (int nn = 0; nn < PE_num; nn++)
             {
                 Ix_mem[mm][nn] = 0;
                 Iy_mem[mm][nn] = 0;
             }
         }

        for(int ip = 0; ip < ref_length;ip ++){

        	last_pe_score[ip] = 0;
        	last_pe_scoreIx[ip] = 0;
        }


    // initialize the dp matrix to 0
    for (int pp = 0; pp < query_length; pp++) {
        for (int rr = 0; rr < ref_length; rr++) {
            dp_matrix[pp][rr] = 0;
        }
    }

    ap_uint<2> local_reference[ref_length];  // a group of PE process all references by shifting

    for (int i = 0; i < ref_length; i++){
        local_reference[i] = reference_stream.read();
    }

    const type_t zero_fp = 0;

// partition array for better access
#pragma HLS ARRAY_PARTITION variable=dp_mem dim=0 complete
#pragma HLS ARRAY_PARTITION variable=Iy_mem dim=0 complete
#pragma HLS ARRAY_PARTITION variable=Ix_mem dim=0 complete
#pragma HLS ARRAY_PARTITION variable=dp_matrix dim=1 cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=local_reference cyclic dim=1 factor=32
    // ap_uint<2> local_query[PE_num];  // each PE process a element in query


//#pragma HLS ARRAY_PARTITION variable=local_query dim=0 complete  // local query is at PE num so a complete partition assign each PE a distinct memory

    // iterating through the chunks of the larger dp matrix
    kernel:
    for (int qq = 0; qq < query_chunks; qq++) {  // query_chunks = query_length/PE_num

        for (int i = 0; i < PE_num; i++){
#pragma HLS PIPELINE II=1
            query.shift(query_stream.read());
        }

        // iterating through every wavefront
        kernel1:
        for (int ii = 0; ii < (PE_num + ref_length - 1); ii++) {

#pragma HLS PIPELINE II=1
//#pragma HLS dependence variable=query type=intra false


            //reference.shift(reference_abstream[qq % 2].read());
            //reference_abstream[(qq+1)%2].write(reference.read(0));

            if (ii < PE_num) {
                //query.shift(query_stream.read());
                // local_query[ii] = query[qq * PE_num + ii];  // iterate through the local query as they are in different chunks
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
//#pragma HLS protocol fixed

                if ((ii - kk) >= 0 && (ii - kk) < ref_length) {

                    if (kk == 0) {

                        PE(local_reference[ii], query[kk], last_pe_score[ii], dp_mem[1][kk], temp, &dp_mem[2][kk],
                           last_pe_scoreIx[ii], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],
                           &dp_matrix[kk + qq * PE_num][ii - kk]);

                        temp = last_pe_score[ii];
                    } else {
                        char c = 'c';
                        PE(local_reference[ii - kk], query[kk], dp_mem[1][kk - 1], dp_mem[1][kk],
                           dp_mem[0][kk - 1], &dp_mem[2][kk], Ix_mem[0][kk - 1], &Ix_mem[1][kk], Iy_mem[0][kk],
                           &Iy_mem[1][kk], &dp_matrix[kk + qq * PE_num][ii - kk]);
                    }  // reversed access

                    if (ii > PE_num - 2 && kk == PE_num - 1) {

                        last_pe_score[ii - PE_num + 1] = dp_mem[2][PE_num - 1];
                        last_pe_scoreIx[ii - PE_num + 1] = Ix_mem[1][PE_num - 1];
                    }
                }
            }

        }
    }

    type_t max_score = dp_matrix[0][0];
    *dummy = max_score;

    /* printf("\n printing dp matrix\n");

    for (int r = 0; r < query_length; r ++)
     {
         for (int s = 0; s < ref_length; s ++){

             printf("%d\t", dp_matrix[r][s]);
         }
         printf("\n");
     }
*/
}

void seq_align_multiple(stream<ap_uint<2>, query_length> (&query_string_comp)[N_BLOCKS],
                        stream<ap_uint<2>, ref_length> (&reference_string_comp)[N_BLOCKS],
                               type_t dummies[N_BLOCKS]){

#pragma HLS INTERFACE mode=axis port=query_string_comp
#pragma HLS INTERFACE mode=axis port=reference_string_comp

#pragma HLS array_partition variable=query_string_comp type=block dim=1 factor=8
#pragma HLS array_partition variable=reference_string_comp type=block dim=1 factor=8

#pragma HLS array_partition variable=dummies type=complete

    type_t dummies_inner[N_BLOCKS];

#pragma HLS array_partition variable=dummies_inner type=complete

    // to be unrolled
    for (int block_i = 0; block_i < N_BLOCKS; block_i++){
#pragma HLS UNROLL
        seq_align(query_string_comp[block_i],
                  reference_string_comp[block_i],
                  &dummies_inner[block_i]);
    }

    for (int block_i = 0; block_i < N_BLOCKS; block_i++){
#pragma HLS UNROLL
        dummies[block_i] = dummies_inner[block_i];
    }

}





