#include <stdio.h>
#include <math.h>
#include "params.h"
#include <cstdlib>
#include <iostream>
#include "ap_int.h"
#include "ap_fixed.h"
#include <cmath>

using namespace std;

//processing element
void PE (char local_ref_val, char local_query_val, ap_int<16> up_prev, ap_int<16> left_prev, ap_int<16> diag_prev, ap_int<16> *score,
		//ap_int<16> Ix_prev, ap_int<16> *Ix,
		//ap_int<16> Iy_prev, ap_int<16> *Iy,
		ap_int<16> *traceback, ap_int<16> *final){

//#pragma HLS inline

//Calculating Iy and Ix matrix current score
    /**Iy = ((left_prev + opening_score) > (Iy_prev + extend_score)) ?
                (left_prev + opening_score) : (Iy_prev + extend_score);//d
    *Ix = ((up_prev + opening_score) > (Ix_prev + extend_score)) ?
                (up_prev + opening_score) : (Ix_prev + extend_score);//i*/

    ap_int<16> d = left_prev + opening_score;
    ap_int<16> i = up_prev + opening_score;

    ap_int<16> ma = diag_prev + match_score;//match score
    ap_int<16> mi = diag_prev + mismatch_score;//mismatch score
    ap_int<16> temp = 0;

    ap_int<16> match = (local_query_val != local_ref_val) ? mi : ma;//find if its a match or mismatch by comparing current query vs reference letter

   // Write back results
   // comparing max values between Ix, Iy and match/mismatch
    ap_int<16> max_value = (( (d > i) ? d : i ) > match ) ? ( ( d > i) ? d : i ) : match ;

    //calculating traceback value
    *traceback = (max_value == ma) ? 11 : (max_value == d)? 10 : (max_value == i) ? 1 : 2;

    //calculating absolute value of max score - stored in dp_mem for further computation
    *score = (max_value < temp) ? temp : max_value;

    //final score to be stored in final dp_matrix
    *final = *score;

    //printf("local_ref_val is %c, local_query_val is %c, int up_prev is %d, int left_prev is %d, int diag_prev is %d, int *score is %d, *final_value is %d \n", local_ref_val, local_query_val, up_prev, left_prev, diag_prev, *score, *final);

}

void seq_align (char query[query_length], char reference[ref_length], ap_int<16> *dummy)
{

	printf("Inside function call\n");
	char local_query[query_length];
    char local_ref[ref_length];

    //partioning dp_mem, Iy_mem and Ix_mem completely to remove all data dependencies
    //dp_mem has 3 rows - which stores current computed dp_matrix diagonal along with past two diagonal values
    //Ix_mem and Iy_mem has 2 rows - which stores current computed diagonal value of Ix and Iy matrix along with previous diagonal value
    ap_int<16> dp_mem[3][PE_num];
	#pragma HLS ARRAY_PARTITION variable=dp_mem dim=0 complete
   /* ap_int<16> Iy_mem[2][PE_num];
	#pragma HLS ARRAY_PARTITION variable=Iy_mem dim=0 complete
    ap_int<16> Ix_mem[2][PE_num];
	#pragma HLS ARRAY_PARTITION variable=Ix_mem dim=0 complete*/

    //initializing matrices
    ap_int<16> dp_matrix[query_length][ref_length];

    local_dp_matrix_loop: for (int mm = 0; mm < query_length; mm ++){
        for (int nn = 0; nn < ref_length; nn++)
        {
            //#pragma HLS PIPELINE II=1
            dp_matrix[mm][nn] = 0;
            //printf("%c\t ", local_ref[g]);

        }
    }

    ap_int<16> tb[query_length][ref_length];

    //printf("Query and ref seuqnence\n");

    //having local values of query and reference length
    local_query_loop: for (int k = 0; k < query_length; k ++){
        #pragma HLS PIPELINE II=1
        local_query[k] = query[k];
        //printf("%c\n", local_query[k]);
    }

    //printf("\n");

    local_ref_loop: for (int g = 0; g < ref_length; g ++){
        #pragma HLS PIPELINE II=1
        local_ref[g] = reference[g];
        //printf("%c\n", local_ref[g]);
    }

    //printf("\n");

    local_dpmem_loop: for (int gg = 0; gg < 3; gg ++){
        for (int ij = 0; ij < PE_num; ij++)
        {
            //#pragma HLS PIPELINE II=1
            dp_mem[gg][ij] = 0;
            //printf("%c\t ", local_ref[g]);

        }
    }

    /*local_Ixmem_loop: for (int mm = 0; mm < 2; mm ++){
        for (int nn = 0; nn < PE_num; nn++)
        {
            //#pragma HLS PIPELINE II=1
            Ix_mem[mm][nn] = 0;
            //printf("%c\t ", local_ref[g]);

        }
    }

    local_Iymem_loop: for (int pp = 0; pp < 2; pp ++){
        for (int rr = 0; rr < PE_num; rr ++)
        {
            //#pragma HLS PIPELINE II=1
            Iy_mem[pp][rr] = 0;
            //printf("%c\t ", local_ref[g]);

        }
    }*/

    int fix = 0;
    int incr = 0;
    int incr2 = 0;
    int incr3 = 0;
    int itrend = 9;

    ap_fixed<M,N> last_pe_score[ref_length];
    ap_fixed<M,N> temp;

kernel: for(int qq = 0; qq < query_chunks; qq++){

    incr2 = 0;
    incr3 = 0 ;

	//kernel computation
    kernel1: for (int ii = 0; ii < (ref_length + PE_num - 1); ii ++){//loop for each diagonals

    //printf("%d iteration\n", ii);

    #pragma HLS PIPELINE II=1

    	incr = (ii%2 == 0 && ii>=PE_num) ? incr+1:incr;
    	incr2 = (qq > 0 && ii%2 == 0 && ii>((qq-1)*PE_num)) ? incr2+1 : incr2;
    	incr3 = (qq > 0 && ii%2 == 0 && ii>=itrend-1+(qq-1)*PE_num) ? incr3+1 : incr3;

        peloop:for(int kk = 0; kk < PE_num; kk ++){//chain of PEs computing together

        //printf("%d PE iteration\n", kk);

		#pragma HLS UNROLL

        	if(qq == 0){

        		//printf("first part of dp matrix\n");

        		if ((ii-kk) >= 0 && (ii-kk) < ref_length){//we don't need all PEs for every diagonal

        			if (ii < PE_num){

        				if (kk == 0) {//for first PE

        					//printf("local_ref[ii-kk] is %c, index is %d, local_query[kk] is %c, index is %d\n", local_ref[ii-kk], ii-kk, local_query[kk+fix], kk+fix);
        					PE(local_ref[ii-kk], local_query[kk+fix], 0, dp_mem[1][kk], 0, &dp_mem[2][kk],/* 0, &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],*/ &tb[kk+fix][ii-kk], &dp_matrix[kk+fix][ii-kk]);
        				}
        				else {

        					//printf("local_ref[ii-kk] is %c, index is %d, local_query[kk] is %c, index is %d\n", local_ref[ii-kk], ii-kk, local_query[kk], kk);
        					PE(local_ref[ii-kk], local_query[kk+fix], dp_mem[1][kk-1], dp_mem[1][kk], dp_mem[0][kk-1], &dp_mem[2][kk], /*Ix_mem[0][kk-1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],*/ &tb[kk+fix][ii-kk], &dp_matrix[kk+fix][ii-kk]);
        				}
        			}

        			else { //FIXME
        					
        				if (kk >= incr){
        				//printf("local_ref[ii-kk] is %c, index is %d, local_query[kk] is %c, index is %d\n", local_ref[ii-kk], ii-kk, local_query[kk+fix], kk+fix);
        				PE(local_ref[ii-kk], local_query[kk+fix], dp_mem[1][kk-1], dp_mem[1][kk], dp_mem[0][kk-1], &dp_mem[2][kk], /*Ix_mem[0][kk-1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],*/ &tb[kk+fix][ii-kk], &dp_matrix[kk+fix][ii-kk]);

        				}
        			}

                }



            }

            else if (qq == (query_chunks-1)){

            	//printf("last part of dp matrix\n");

            	       if ((ii-kk) >= 0 && (ii-kk) < ref_length){//we don't need all PEs for every diagonal

            	        	if (ii >= (qq-1)*PE_num && ii < (qq-1)*PE_num + 2*(PE_num-1) && kk <= incr2){

            	        			if (kk == 0) {//for first PE

            	        				if (ii == 0) {//for subsequent query blocks, for first PE in first diagonal, up_prev is taken from previous query block, diag_prev and left_prev values are zero
            	        					   //printf("incr2 value is %d\n", incr2);
            	        				    PE(local_ref[ii-kk], local_query[kk+fix], last_pe_score[0], 0, 0, &dp_mem[2][kk],/* last_pe_scoreIx[0], &Ix_mem[1][kk], 0, &Iy_mem[1][kk],*/&tb[kk+fix][ii-kk], &dp_matrix[kk+fix][ii-kk]);

            	        				    temp = last_pe_score[0];
            	        				}
            	        				else {//for subsequent query blocks, for first PE in next diagonals, up_prev and diag_prev are taken from previous query block, left_prev taken from previous computed diagonal in same query block
            	        					 	//printf("incr2 value is %d\n", incr2);
            	        				    PE(local_ref[ii-kk], local_query[kk+fix], last_pe_score[ii], dp_mem[1][kk], temp /*last_pe_score[ii-1]*/, &dp_mem[2][kk], /*last_pe_scoreIx[ii], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk], */&tb[kk+fix][ii-kk], &dp_matrix[kk+fix][ii-kk]);

            	        				    temp = last_pe_score[ii];//up_prev value will become diag_prev value for next diagonal computation
            	        				}

            	        			}
            	        			else {

            	        				//printf("local_ref[ii-kk] is %c, index is %d, local_query[kk] is %c, index is %d\n", local_ref[ii-kk], ii-kk, local_query[kk], kk);
            	        				PE(local_ref[ii-kk], local_query[kk+fix], dp_mem[1][kk-1], dp_mem[1][kk], dp_mem[0][kk-1], &dp_mem[2][kk], /*Ix_mem[0][kk-1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],*/ &tb[kk+fix][ii-kk], &dp_matrix[kk+fix][ii-kk]);
            	        			}
            	        	}

            	        	else if (ii>= (qq-1)*PE_num + 2*(PE_num-1)){ //FIXME

            	        		//printf("local_ref[ii-kk] is %c, index is %d, local_query[kk] is %c, index is %d\n", local_ref[ii-kk], ii-kk, local_query[kk+fix], kk+fix);
            	        		PE(local_ref[ii-kk], local_query[kk+fix], dp_mem[1][kk-1], dp_mem[1][kk], dp_mem[0][kk-1], &dp_mem[2][kk], /*Ix_mem[0][kk-1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],*/ &tb[kk+fix][ii-kk], &dp_matrix[kk+fix][ii-kk]);

            	        	}

            	        }

            }

        	else {

            	//printf("middle part of dp matrix\n");

            	       if ((ii-kk) >= 0 && (ii-kk) < ref_length){//we don't need all PEs for every diagonal

            	        	if (ii >= (qq-1)*PE_num && ii < (qq-1)*PE_num + 2*(PE_num-1) && kk <= incr2){

            	        			if (kk == 0) {//for first PE

            	        				if (ii == 0) {//for subsequent query blocks, for first PE in first diagonal, up_prev is taken from previous query block, diag_prev and left_prev values are zero
            	        					   //printf("incr2 value is %d\n", incr2);
            	        				    PE(local_ref[ii-kk], local_query[kk+fix], last_pe_score[0], 0, 0, &dp_mem[2][kk],/* last_pe_scoreIx[0], &Ix_mem[1][kk], 0, &Iy_mem[1][kk],*/&tb[kk+fix][ii-kk], &dp_matrix[kk+fix][ii-kk]);

            	        				    temp = last_pe_score[0];
            	        				 }
            	        				 else {//for subsequent query blocks, for first PE in next diagonals, up_prev and diag_prev are taken from previous query block, left_prev taken from previous computed diagonal in same query block
            	        					 	 //printf("incr2 value is %d\n", incr2);
            	        				    PE(local_ref[ii-kk], local_query[kk+fix], last_pe_score[ii], dp_mem[1][kk], temp /*last_pe_score[ii-1]*/, &dp_mem[2][kk], /*last_pe_scoreIx[ii], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk], */&tb[kk+fix][ii-kk], &dp_matrix[kk+fix][ii-kk]);

            	        				    temp = last_pe_score[ii];//up_prev value will become diag_prev value for next diagonal computation
            	        				}

            	        			}
            	        			else {

            	        				//printf("local_ref[ii-kk] is %c, index is %d, local_query[kk] is %c, index is %d\n", local_ref[ii-kk], ii-kk, local_query[kk], kk);
            	        				PE(local_ref[ii-kk], local_query[kk+fix], dp_mem[1][kk-1], dp_mem[1][kk], dp_mem[0][kk-1], &dp_mem[2][kk], /*Ix_mem[0][kk-1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],*/ &tb[kk+fix][ii-kk], &dp_matrix[kk+fix][ii-kk]);
            	        			}
            	        	}

            	        	else if (ii >= (qq-1)*PE_num + 2*(PE_num-1) && ii < itrend-1+(qq-1)*PE_num){ //FIXME

            	        		//printf("local_ref[ii-kk] is %c, index is %d, local_query[kk] is %c, index is %d\n", local_ref[ii-kk], ii-kk, local_query[kk+fix], kk+fix);
            	        	    PE(local_ref[ii-kk], local_query[kk+fix], dp_mem[1][kk-1], dp_mem[1][kk], dp_mem[0][kk-1], &dp_mem[2][kk], /*Ix_mem[0][kk-1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],*/ &tb[kk+fix][ii-kk], &dp_matrix[kk+fix][ii-kk]);

            	        	}
                			else if (ii >= itrend-1+(qq-1)*PE_num){ //FIXME

                				if (kk >= incr3){
                					//printf("incr3 value is %d\n", incr3);
                					//printf("local_ref[ii-kk] is %c, index is %d, local_query[kk] is %c, index is %d\n", local_ref[ii-kk], ii-kk, local_query[kk+fix], kk+fix);
                				    PE(local_ref[ii-kk], local_query[kk+fix], dp_mem[1][kk-1], dp_mem[1][kk], dp_mem[0][kk-1], &dp_mem[2][kk], /*Ix_mem[0][kk-1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],*/ &tb[kk+fix][ii-kk], &dp_matrix[kk+fix][ii-kk]);

                				}
                			}
            	       }
            }

        	if (ii > PE_num - 2 && kk == PE_num -1) {//for each query block, last PE scores for each diagonal will be saved and used by next query block

                last_pe_score[ii-PE_num+1] = dp_mem[2][PE_num-1];
            }


        }

        for (int ix = 0; ix < PE_num; ix++)//each time, three diagonal values stored in dp_mem will be shifted one by one, recent one shifted in 2nd row, the older one will be shifted out from 0th row
        #pragma HLS UNROLL
        {
            dp_mem[0][ix] = dp_mem[1][ix];
            dp_mem[1][ix] = dp_mem[2][ix];
            //Ix_mem[0][ix] = Ix_mem[1][ix];
            //Iy_mem[0][ix] = Iy_mem[1][ix];
        }

    }

    fix = fix + PE_num;
}


    //finding max score in dp_matrix for traceback computation
    ap_int<16> max_dp = 0;
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

	 //storing row and col of max_score for originating the traceback
    ap_int<16> max_score = dp_matrix[max_row_value][max_col_value];
    int col_value = max_col_value;
    int row_value = max_row_value;

    //traceback logic (checking till matrix score will become 0)
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

    for (int aa=0; aa < query_length; aa++){

    	for (int bb=0; bb < ref_length; bb ++){

    		printf("%d ", dp_matrix[aa][bb]);
    	}
    	printf("\n");
    }

    *dummy = max_score;//final alignment score

}



