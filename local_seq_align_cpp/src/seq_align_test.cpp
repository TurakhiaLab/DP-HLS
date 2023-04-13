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

    char reference_string[ref_length];
    char query_string[2*query_length];
    ap_uint<2> reference_string_comp[ref_length];
    ap_uint<2> query_string_comp[2*query_length];

    char alphabet[4] = { 'A', 'C', 'G','T'};
 
    for (int i = 0; i < ref_length; i++){
        reference_string[i] = alphabet[rand() % 4];
    }

    for (int i = 0; i < 2*query_length; i++){
           query_string[i] = alphabet[rand() % 4];
       }

    for (int p = 0; p < ref_length; p ++){

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

    for (int p = 0; p < 2*query_length; p ++){

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

    type_t dummy[2];

    type_t dp_mem[3][PE_num];
    type_t Iy_mem[2][PE_num];
    type_t Ix_mem[2][PE_num];

    type_t last_pe_score[ref_length];
    type_t last_pe_scoreIx[ref_length];

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
        }
    }

    local_Iymem_loop: for (int pp = 0; pp < 2; pp ++){
        for (int rr = 0; rr < PE_num; rr ++)
        {
            Iy_mem[pp][rr] = 0;
        }
    }

    for(int ip = 0; ip < ref_length;ip ++){

    	last_pe_score[ip] = 0;
    	last_pe_scoreIx[ip] = 0;
    }


    seq_align_multiple(query_string_comp, reference_string_comp, dp_mem, Ix_mem, Iy_mem, last_pe_score, last_pe_scoreIx, dummy);

    //printf("max score is %d\n", dummy);

    return 0;

}
