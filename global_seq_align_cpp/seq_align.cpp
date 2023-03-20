#include <stdio.h>
#include <math.h>
#include "params.h"
#include <cstdlib>
#include <iostream>
#include "ap_int.h"
#include "seq_align.h"

using namespace std;

void PE (char local_ref_val, char local_query_val, type_t up_prev, type_t left_prev, type_t diag_prev, type_t *score,
		//type_t Ix_prev, type_t *Ix,
		//type_t Iy_prev, type_t *Iy,
		type_t *final){

    #pragma HLS inline

//#ifdef LINEAR

	type_t d = opening_score  + left_prev;
	type_t i = opening_score + up_prev;
	const type_t temp_pe = 0;

	type_t match = (local_query_val == local_ref_val) ? diag_prev + match_score : diag_prev + mismatch_score;

	type_t max_value = (( (d > i) ? d : i ) > match ) ? ( ( d > i) ? d : i ) : match ;

	//*traceback = (max_value == (diag_prev + match_score)) ? 11 : (max_value == d)? 10 : (max_value == i) ? 1 : 2;

    *score = max_value;//(max_value < temp_pe) ? temp_pe : max_value;

    *final = *score;

//#endif

	/*const type_t a1 = left_prev + opening_score;
	const type_t a2 = Iy_prev + extend_score;
	const type_t a3 = up_prev + opening_score;
	const type_t a4 = Ix_prev + extend_score;

	*Iy = a1 > a2 ? a1 : a2;
	*Ix = a3 > a4 ? a3 : a4;

    const type_t temp = 0;

    const type_t match = (local_query_val == (char) local_ref_val) ? diag_prev + match_score : diag_prev + mismatch_score;

    const type_t max_value = (( (*Iy > *Ix) ? *Iy : *Ix ) > match ) ? ( ( *Iy > *Ix) ? *Iy : *Ix ) : match ;

    //*score = (max_value < temp) ? temp : max_value;

    *score = max_value;

    *final = *score;*/

    //printf("local_ref_val is %c, local_query_val is %c, int up_prev is %d, int left_prev is %d, int diag_prev is %d, int *score is %d, final_value is %d \n", local_ref_val, local_query_val, up_prev, left_prev, diag_prev, *score, *final);

}

void seq_align (char query[query_length], char reference[ref_length], type_t *dummy, type_t dp_mem[3][PE_num], /*type_t Ix_mem[2][PE_num],
		type_t Iy_mem[2][PE_num],*/ type_t last_pe_score[ref_length], /*type_t last_pe_scoreIx[ref_length],*/ type_t dp_matrix[query_length][ref_length])
{

    type_t temp = 0;

    const type_t zero_fp = 0;

#pragma HLS ARRAY_PARTITION variable=dp_mem dim=0 complete
//#pragma HLS ARRAY_PARTITION variable=Iy_mem dim=0 complete
//#pragma HLS ARRAY_PARTITION variable=Ix_mem dim=0 complete
#pragma HLS ARRAY_PARTITION variable=query cyclic factor=6
#pragma HLS ARRAY_PARTITION variable=dp_matrix dim=1 cyclic factor=6
#pragma HLS ARRAY_PARTITION variable=reference cyclic factor=12

    int fix = 0;

    kernel: for(int qq = 0; qq < query_chunks; qq ++){

        kernel1: for (int ii = 0; ii < (PE_num + ref_length - 1); ii ++){

		#pragma HLS PIPELINE II=1

        cbuff: for (int ix = 0; ix < PE_num; ix++)

		#pragma HLS UNROLL
        {
            dp_mem[0][ix] = (ii==0)? zero_fp : dp_mem[1][ix];
            dp_mem[1][ix] = (ii==0)? zero_fp : dp_mem[2][ix];
            dp_mem[2][ix] = zero_fp;
  /*          Ix_mem[0][ix] = (ii == 0)? zero_fp :  Ix_mem[1][ix];
            Ix_mem[1][ix] = zero_fp;
            Iy_mem[0][ix] = (ii == 0)? zero_fp :  Iy_mem[1][ix];
            Iy_mem[1][ix] = zero_fp;*/
        }

        dp_mem[1][0] = (ii == 0) ? mismatch_score*(fix+1) : (int) dp_mem[1][0];
       // Iy_mem[1][0] = (ii == 0) ? mismatch_score*(fix+1) : Iy_mem[1][0];

        temp = (ii == 0) ? mismatch_score*fix : (int) temp;

        peloop:for(int kk = 0; kk < PE_num; kk ++){

		#pragma HLS UNROLL

        	if ((ii-kk) >= 0 && (ii-kk) < ref_length){

                if (kk == 0) {

        		    PE(reference[ii], query[fix], last_pe_score[ii], dp_mem[1][0], temp, &dp_mem[2][0], /*last_pe_scoreIx[ii], &Ix_mem[1][0], Iy_mem[0][0], &Iy_mem[1][0],*/ &dp_matrix[fix][ii]);
        		    temp = last_pe_score[ii];
        		    //printf("reference = %c and query = %c\n", reference[ii], query[kk+fix]);
                }
                else
                {
                	if ((ii-kk) == 0){

                	    PE(reference[0], query[kk+fix], dp_mem[1][kk-1], mismatch_score*(kk+fix+1), mismatch_score*(kk+fix), &dp_mem[2][kk], /*Ix_mem[0][kk-1], &Ix_mem[1][kk], mismatch_score*(kk+fix+1), &Iy_mem[1][kk],*/&dp_matrix[kk+fix][ii-kk]);
                	}
                	else{
                		PE(reference[ii-kk], query[kk+fix], dp_mem[1][kk-1], dp_mem[1][kk], dp_mem[0][kk-1], &dp_mem[2][kk], /*Ix_mem[0][kk-1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk], */&dp_matrix[kk+fix][ii-kk]);
                		//printf("reference = %c and query = %c\n", reference[ii-kk], query[kk+fix]);
                	}
                }

                if (ii > PE_num - 2 && kk == PE_num -1) {

            	    last_pe_score[ii-PE_num+1] = dp_mem[2][PE_num-1];
            	    //last_pe_scoreIx[ii-PE_num+1] = Ix_mem[1][PE_num-1];
                }
            }
        }
    }
    fix = fix + PE_num;
}

    type_t max_dp = 0;
    int max_row_value;
    int max_col_value;
    
    pe1: for (int x = 0; x < query_length; x ++){

       pe2: for (int y = 0; y < ref_length; y ++){

            if (dp_matrix[x][y] > max_dp)
            {
                max_dp = dp_matrix[x][y];
                max_row_value = x;
                max_col_value = y;
            }
                
        }

    }

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

    for (int r = 0; r < query_length; r ++)
    {
        for (int s = 0; s < ref_length; s ++){

            printf("%d\t", (int) dp_matrix[r][s]);
        }
        printf("\n");
    }

}






