#include <stdio.h>
#include "seq_align.h"
#include "params.h"
#include <cstdlib>
#include <iostream>
#include "ap_int.h"
#include "ap_fixed.h"

using namespace std;

int main ()
{
    char query_string[query_length] = {'G', 'A', 'T', 'T', 'A', 'G', 'C', 'T', 'A', 'C', 'G', 'T'};

    char reference_string[ref_length] = {'A', 'G', 'T', 'A', 'C', 'G', 'C', 'T', 'A', 'C', 'G', 'T'};

    /*srand(time(NULL));

    //char reference_string[ref_length];
    //char query_string[query_length];

    char alphabet[4] = { 'A', 'C', 'G','T'};
 
    for (int i = 0; i < ref_length; i++){
        reference_string[i] = alphabet[rand() % 4];
        query_string[i] = alphabet[rand()%4];
    }*/

    type_t dummy;

    type_t dp_mem[3][PE_num];
    type_t Iy_mem[2][PE_num];
    type_t Ix_mem[2][PE_num];
    type_t dp_matrix[query_length][ref_length];
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

    	last_pe_score[ip] = (ip+1)*mismatch_score;
    	last_pe_scoreIx[ip] = (ip+1)*mismatch_score;
    }

    seq_align(query_string, reference_string, &dummy, dp_mem, /*Ix_mem, Iy_mem,*/ last_pe_score, /*last_pe_scoreIx,*/ dp_matrix);

    return 0;

}

