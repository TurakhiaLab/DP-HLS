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

int main ()
{
    //char query_string[query_length] = {'G', 'A', 'T', 'T', 'A', 'G', 'C', 'T', 'A', 'C', 'G', 'T'};//, 'C', 'A', 'G', 'A' , 'C', 'C', 'T', 'A'};

    //char reference_string[ref_length] = {'A', 'G', 'T', 'A', 'C', 'G', 'C', 'T', 'A', 'C', 'G', 'T'};

    srand(time(NULL));

    char reference_string[8*ref_length];
    char query_string[8*query_length];
    ap_uint<2> reference_string_comp[8*ref_length];
    ap_uint<2> query_string_comp[8*query_length];

    char alphabet[4] = { 'A', 'C', 'G','T'};
 
    for (int i = 0; i < 8*ref_length; i++){
        reference_string[i] = alphabet[rand() % 4];
    }

    for (int i = 0; i < 8*query_length; i++){
           query_string[i] = alphabet[rand() % 4];
       }

    printf("Query string: %s\n", query_string);
    printf("Reference string: %s\n", reference_string);

    for (int p = 0; p < 8*ref_length; p ++){

    	if (reference_string[p] == 'A'){
    		reference_string_comp[p] = 0;
    	}
    	else if (reference_string[p] == 'C'){
    	    reference_string_comp[p] = 1;
    	}
    	else if (reference_string[p] == 'G'){
    	    reference_string_comp[p] = 2;
    	}
    	else if (reference_string[p] == 'T'){
    	    reference_string_comp[p] = 3;
    	}
    }

    for (int p = 0; p < 8*query_length; p ++){

    	if (query_string[p] == 'A'){
    		query_string_comp[p] = 0;
    	}
    	else if (query_string[p] == 'C'){
    	    query_string_comp[p] = 1;
    	}
    	else if (query_string[p] == 'G'){
    	    query_string_comp[p] = 2;
    	}
    	else if (query_string[p] == 'T'){
    	    query_string_comp[p] = 3;
    	}
    }

    type_t dummy1, dummy2, dummy3, dummy4;
    type_t dummy5, dummy6, dummy7, dummy8;

	ap_uint<2> chunk1[query_length];
	ap_uint<2> chunk2[query_length];
	ap_uint<2> ref1[ref_length];
	ap_uint<2> ref2[ref_length];
	ap_uint<2> chunk3[query_length];
	ap_uint<2> chunk4[query_length];
	ap_uint<2> ref3[ref_length];
	ap_uint<2> ref4[ref_length];
	ap_uint<2> chunk5[query_length];
	ap_uint<2> chunk6[query_length];
	ap_uint<2> ref5[ref_length];
	ap_uint<2> ref6[ref_length];
	ap_uint<2> chunk7[query_length];
	ap_uint<2> chunk8[query_length];
	ap_uint<2> ref7[ref_length];
	ap_uint<2> ref8[ref_length];

	for (int j = 0; j < query_length; j++) {
	    chunk1[j] = query_string_comp[0*query_length + j];
	    chunk2[j] = query_string_comp[1*query_length + j];
	    chunk3[j] = query_string_comp[2*query_length + j];
	    chunk4[j] = query_string_comp[3*query_length + j];
	    chunk5[j] = query_string_comp[4*query_length + j];
	    chunk6[j] = query_string_comp[5*query_length + j];
	    chunk7[j] = query_string_comp[6*query_length + j];
	    chunk8[j] = query_string_comp[7*query_length + j];
	}

	for (int jj = 0; jj < ref_length; jj++) {
	    ref1[jj] = reference_string_comp[0*ref_length + jj];
	    ref2[jj] = reference_string_comp[1*ref_length + jj];
	    ref3[jj] = reference_string_comp[2*ref_length + jj];
	    ref4[jj] = reference_string_comp[3*ref_length + jj];
	    ref5[jj] = reference_string_comp[4*ref_length + jj];
	    ref6[jj] = reference_string_comp[5*ref_length + jj];
	    ref7[jj] = reference_string_comp[6*ref_length + jj];
	    ref8[jj] = reference_string_comp[7*ref_length + jj];
	}

	seq_align_multiple(chunk1, chunk2, chunk3, chunk4, chunk5, chunk6, chunk7, chunk8, ref1, ref2, ref3, ref4, ref5, ref6, ref7, ref8, &dummy1, &dummy2, &dummy3, &dummy4,  &dummy5, &dummy6, &dummy7, &dummy8);
    //seq_align_multiple(chunk, ref, dummy);
	//seq_align_multiple(chunk1, chunk2, ref1, ref2, dp_mem, dp_mem2, Ix_mem, Ix_mem2, Iy_mem, Iy_mem2, last_pe_score, last_pe_score2, last_pe_scoreIx, last_pe_scoreIx2, &dummy_3, &dummy_4);

    //printf("max score is %d\n", dummy8);

    return 0;

}
