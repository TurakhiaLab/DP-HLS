#include <stdio.h>
#include <math.h>
#include "params.h"

void PE (char local_ref_val, char local_query_val, int up_prev, int left_prev, int diag_prev, int *score, int *traceback, int *final){

//    printf("char local_ref_val is %c, char local_query_val is %c, int up_prev is %d, int left_prev is %d, int diag_prev is %d, int *score is %d \n", local_ref_val, local_query_val, up_prev, left_prev, diag_prev, *score);
    
    //#pragma HLS inline

    int d = left_prev + deletion_score;
    int i = up_prev + insertion_score;
    //int max_val = (d > i) ? d : i;

    int match = (local_query_val == local_ref_val) ? diag_prev + match_score : diag_prev + mismatch_score;

    int max_value = (((d > i) ? d : i) > match ) ? ((d > i) ? d : i) : match ;

  //  printf("d is %d, i is %d, max_val is %d, match is %d, max_value is %d\n", d, i, max_val, match, max_value );

    *traceback = (max_value == (diag_prev + match_score)) ? 11 : (max_value == d)? 10 : (max_value == i) ? 1 : 2;

    // Write back results
    *score = (max_value < 0) ? 0 : max_value;

    *final = *score;

   // printf("score is %d\n", *score);

    //printf("local_ref_val is %d, local_query_val is %d, int up_prev is %d, int left_prev is %d, int diag_prev is %d, int *score is %d, Ix_prev is %d, int Ix_diag_prev is %d, int *Ix is %d, int Iy_prev is %d, int Iy_diag_prev is %d, int *Iy is %d, int *traceback_val is %d, int *final_value is %d \n", local_ref_val, local_query_val, up_prev, left_prev, diag_prev, *score, Ix_prev, Ix_diag_prev, *Ix, 
      //      Iy_prev, Iy_diag_prev, *Iy, *traceback_val, *final_value);

}

void seq_align (char query[query_length], char reference[ref_length], int *dummy)
{

    char local_query[query_length];
    //#pragma HLS ARRAY_PARTITION variable=local_query dim=0 complete
    char local_ref[ref_length];
    //#pragma HLS ARRAY_PARTITION variable=local_ref dim=0 complete
    int dp_mem[3][PE_num];
	#pragma HLS ARRAY_PARTITION variable=dp_mem dim=0 complete
    int tb[query_length][ref_length];
    int dp_matrix[query_length][ref_length];

   // printf("query sequence is:\n");

    local_query_loop: for (int k = 0; k < query_length; k ++){
        #pragma HLS PIPELINE II=1
        local_query[k] = query[k];
     //   printf("%c\t ", local_query[k]);
    }

   // printf("\nref sequence is:\n");

    local_ref_loop: for (int g = 0; g < ref_length; g ++){
        #pragma HLS PIPELINE II=1
        local_ref[g] = reference[g];
     //   printf("%c\t ", local_ref[g]);
    }

    local_dpmem_loop: for (int gg = 0; gg < 3; gg ++){
        for (int ij = 0; ij < PE_num; ij++)
        {
            //#pragma HLS PIPELINE II=1
            dp_mem[gg][ij] = 0;
            //printf("%c\t ", local_ref[g]);

        }
    }

    kernel: for (int ii = 0; ii < (ref_length + PE_num-1); ii ++){

        #pragma HLS PIPELINE II=1

        for(int kk = 0; kk < PE_num; kk ++){
		#pragma HLS UNROLL

            if ((ii-kk) >= 0 && (ii-kk) < ref_length){

                if (kk == 0) PE(local_ref[ii-kk], local_query[kk], 0, dp_mem[1][kk], 0, &dp_mem[2][kk], &tb[kk][ii-kk], &dp_matrix[kk][ii-kk]);

                else PE(local_ref[ii-kk], local_query[kk], dp_mem[1][kk-1], dp_mem[1][kk], dp_mem[0][kk-1], &dp_mem[2][kk], &tb[kk][ii-kk], &dp_matrix[kk][ii-kk]);

            }
        }

        for (int ix = 0; ix < PE_num; ix++)
#pragma HLS UNROLL
        {
            dp_mem[0][ix] = dp_mem[1][ix];
            dp_mem[1][ix] = dp_mem[2][ix];
        }
    }

    int max_dp = 0;
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

    	int max_score = 0;
        int col_value = max_col_value;
        int row_value = max_row_value;
        //printf("%d\t", max_score);


        traceback_logic: while (dp_matrix[row_value][col_value] > 0){


            if (tb[row_value][col_value] == 2){

                max_score = max_score + mismatch_score;
                //printf("%d\t", final_matrix[row_value][col_value]);
                row_value = row_value - 1;
                col_value = col_value - 1;
            }

            else if (tb[row_value][col_value] == 11){

                max_score = max_score + match_score;
                //printf("%d\t", final_matrix[row_value][col_value]);
                row_value = row_value - 1;
                col_value = col_value - 1;

            }
            else if (tb[row_value][col_value] == 10){

                max_score = max_score + deletion_score;
                //printf("%d\t", final_matrix[row_value][col_value]);
                col_value = col_value - 1;

            }
            else if (tb[row_value][col_value] == 1){

                max_score = max_score + insertion_score;
                //printf("%d\t", final_matrix[row_value][col_value]);
                row_value = row_value - 1;

            }

            if (dp_matrix[row_value][col_value] == 0) break;
        }

    *dummy = max_score;

    /*printf("\nprinting final dp Matrix\n");
    for (int r = 0; r < query_length; r ++)
    {
        for (int s = 0; s < ref_length; s ++){

            printf("%d\t", tb[r][s]);
        }
        printf("\n");
    }*/

}






