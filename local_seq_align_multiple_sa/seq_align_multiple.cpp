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

void PE (ap_uint<2> local_ref_val, ap_uint<2> local_query_val, type_t up_prev, type_t left_prev, type_t diag_prev, type_t *score,
		type_t Ix_prev, type_t *Ix,
		type_t Iy_prev, type_t *Iy,
		type_t *final){

    #pragma HLS inline

#ifdef LINEAR

	type_t d = opening_score  + left_prev;
	type_t i = opening_score + up_prev;
	type_t temp_pe = 0;

	type_t match = (local_query_val == local_ref_val) ? diag_prev + match_score : diag_prev + mismatch_score;

	type_t max_value = (( (d > i) ? d : i ) > match ) ? ( ( d > i) ? d : i ) : match ;

	//*traceback = (max_value == (diag_prev + match_score)) ? 11 : (max_value == d)? 10 : (max_value == i) ? 1 : 2;

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

    const type_t max_value = (( (*Iy > *Ix) ? *Iy : *Ix ) > match ) ? ( ( *Iy > *Ix) ? *Iy : *Ix ) : match ;

    *score = (max_value < temp) ? temp : max_value;

    *final = *score;

    //printf("local_ref_val is %c, local_query_val is %c, int up_prev is %d, int left_prev is %d, int diag_prev is %d, int *score is %d, final_value is %d \n", local_ref_val, local_query_val, up_prev, left_prev, diag_prev, *score, *final);

}

void seq_align (ap_uint<2> query[query_length], ap_uint<2> reference[ref_length], type_t *dummy){

/*#pragma HLS INTERFACE s_axilite port=query bundle=BUS_A
#pragma HLS INTERFACE s_axilite port=reference bundle=BUS_A
#pragma HLS INTERFACE s_axilite port=dummy bundle=BUS_A*/

    type_t temp = 0;

    type_t dp_matrix[query_length][ref_length];
    type_t dp_mem[3][PE_num];
    type_t Iy_mem[2][PE_num];
    type_t Ix_mem[2][PE_num];
    type_t last_pe_score[ref_length];
    type_t last_pe_scoreIx[ref_length];

#pragma HLS_RESOURCE variable=dp_matrix core=RAM_1P_BRAM


    for (int pp = 0; pp < query_length; pp ++){
           for (int rr = 0; rr < ref_length; rr ++)
           {
               dp_matrix[pp][rr] = 0;
           }
    }

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


    const type_t zero_fp = 0;

#pragma HLS ARRAY_PARTITION variable=dp_mem dim=0 complete
#pragma HLS ARRAY_PARTITION variable=Iy_mem dim=0 complete
#pragma HLS ARRAY_PARTITION variable=Ix_mem dim=0 complete
#pragma HLS ARRAY_PARTITION variable=dp_matrix dim=1 cyclic factor=16	// will need to change to 16 later

    ap_uint<2> local_query[PE_num];
    ap_uint<2> local_reference[ref_length];

    for(int i = 0; i < ref_length; i ++){

    	local_reference[i] = reference[i];
    }

#pragma HLS ARRAY_PARTITION variable=local_query dim=0 complete
#pragma HLS ARRAY_PARTITION variable=local_reference cyclic factor=16

    int is_uneven = (query_length % PE_num != 0) ? true : false;

    kernel: for(int qq = 0; qq < query_chunks; qq ++){

        kernel1: for (int ii = 0; ii < (PE_num + ref_length - 1); ii ++){

		#pragma HLS PIPELINE II=1

        if (ii < PE_num){

        	local_query[ii] = query[qq*PE_num + ii];
        }

        cbuff: for (int ix = 0; ix < PE_num; ix++)

		#pragma HLS UNROLL
        {
            dp_mem[0][ix] = (ii == 0)? zero_fp :  dp_mem[1][ix];
            dp_mem[1][ix] = (ii == 0)? zero_fp :  dp_mem[2][ix];
            dp_mem[2][ix] = zero_fp;//(ii == 0)? zero_fp : dp_mem[2][ix];
            Ix_mem[0][ix] = (ii == 0)? zero_fp :  Ix_mem[1][ix];
            Ix_mem[1][ix] = zero_fp;//(ii == 0)? zero_fp : Ix_mem[1][ix];
            Iy_mem[0][ix] = (ii == 0)? zero_fp :  Iy_mem[1][ix];
            Iy_mem[1][ix] = zero_fp;//(ii == 0)? zero_fp : Iy_mem[1][ix];
        }

        temp = (ii == 0) ? zero_fp : temp;

        int diagonal_length = (is_uneven && qq == query_chunks-1) ? (query_length % PE_num) : PE_num;

        peloop:for(int kk = 0; kk < PE_num; kk ++){

		#pragma HLS UNROLL
        	// valid bit to detect whether all PEs have been used up
        	bool valid = !is_uneven || (is_uneven && kk+1 <= diagonal_length);

        	if (valid) {

				if ((ii-kk) >= 0 && (ii-kk) < ref_length){

				 if (kk == 0) {

					PE(local_reference[ii], local_query[kk], last_pe_score[ii], dp_mem[1][kk], temp, &dp_mem[2][kk], last_pe_scoreIx[ii], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk], &dp_matrix[kk+qq*PE_num][ii-kk]);

					temp = last_pe_score[ii];
				 }
				 else
				 {
					PE(local_reference[ii-kk], local_query[kk], dp_mem[1][kk-1], dp_mem[1][kk], dp_mem[0][kk-1], &dp_mem[2][kk], Ix_mem[0][kk-1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk], &dp_matrix[kk+qq*PE_num][ii-kk]);
				 }

				 if (ii > PE_num - 2 && kk == PE_num -1) {

					 last_pe_score[ii-PE_num+1] = dp_mem[2][PE_num-1];
					 last_pe_scoreIx[ii-PE_num+1] = Ix_mem[1][PE_num-1];
				 }
				}
        	}
        }

     }
  }

    type_t max_dp = 0;
    int max_row_value = 0;
    int max_col_value = 0;

    /*pe1: for (int x = 0; x < query_length; x ++){

       pe2: for (int y = 0; y < ref_length; y ++){

            if (dp_matrix[x][y] > 0)
            {
                max_dp = dp_matrix[x][y];
                max_row_value = x;
                max_col_value = y;
            }

        }

    }*/

    type_t max_score = dp_matrix[max_row_value][max_col_value];
    *dummy = max_score;

    //printf("max_score is %d\n", max_score);

    /*type_t max_score = dp_matrix[max_row_value][max_col_value];
    int col_value = max_col_value;
    int row_value = max_row_value;

    traceback_logic: while (dp_matrix[row_value][col_value] > 0){

            if (tb[row_value][col_value] == 2){

                max_score = max_score + mismatch_score;
                row_value = row_value - 1;
                col_value = col_value - 1;
            }

            else if (tb[row_value][col_value] == 11){

                max_score = max_score + match_score;
                row_value = row_value - 1;
                col_value = col_value - 1;

            }
            else if (tb[row_value][col_value] == 10){

                max_score = max_score + opening_score;
                col_value = col_value - 1;

            }
            else if (tb[row_value][col_value] == 1){

                max_score = max_score + extend_score;
                row_value = row_value - 1;

            }

            if ((row_value+1 ) == 0 || (col_value+1) == 0) break;
    }

    *dummy = max_score;*/

   /*printf("\n printing dp matrix\n");

   for (int r = 0; r < query_length; r ++)
    {
        for (int s = 0; s < ref_length; s ++){

            printf("%d\t", dp_matrix[r][s]);
        }
        printf("\n");
    }*/

}

void seq_align_multiple(ap_uint<2> chunk1[query_length], ap_uint<2> chunk2[query_length], ap_uint<2> chunk3[query_length], ap_uint<2> chunk4[query_length],
		ap_uint<2> chunk5[query_length], ap_uint<2> chunk6[query_length], ap_uint<2> chunk7[query_length], ap_uint<2> chunk8[query_length],
		ap_uint<2> ref1[ref_length], ap_uint<2> ref2[ref_length], ap_uint<2> ref3[ref_length], ap_uint<2> ref4[ref_length],
		ap_uint<2> ref5[ref_length], ap_uint<2> ref6[ref_length], ap_uint<2> ref7[ref_length], ap_uint<2> ref8[ref_length],
		type_t *dummy1_out, type_t *dummy2_out, type_t *dummy3_out, type_t *dummy4_out,
		type_t *dummy5_out, type_t *dummy6_out, type_t *dummy7_out, type_t *dummy8_out){

/*#pragma HLS INTERFACE s_axilite port=chunk1 bundle=BUS_A
#pragma HLS INTERFACE s_axilite port=chunk2 bundle=BUS_A
#pragma HLS INTERFACE s_axilite port=ref1 bundle=BUS_A
#pragma HLS INTERFACE s_axilite port=ref2 bundle=BUS_A
#pragma HLS INTERFACE s_axilite port=dummy3 bundle=BUS_A
#pragma HLS INTERFACE s_axilite port=dummy4 bundle=BUS_A*/

	type_t dummy1, dummy2, dummy3, dummy4;
	type_t dummy5, dummy6, dummy7, dummy8;

	seq_align(chunk1, ref1, &dummy1);
	seq_align(chunk2, ref2, &dummy2);
	seq_align(chunk3, ref3, &dummy3);
	seq_align(chunk4, ref4, &dummy4);
	seq_align(chunk5, ref5, &dummy5);
	seq_align(chunk6, ref6, &dummy6);
	seq_align(chunk7, ref7, &dummy7);
	seq_align(chunk8, ref8, &dummy8);

	*dummy1_out = dummy1;
	*dummy2_out = dummy2;
	*dummy3_out = dummy3;
	*dummy4_out = dummy4;
	*dummy5_out = dummy5;
	*dummy6_out = dummy6;
	*dummy7_out = dummy7;
	*dummy8_out = dummy8;
}
