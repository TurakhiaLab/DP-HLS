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
	//initializing query sequence
	//FIXME - this can also be randomized
    //char query_string[query_length] = {'C', 'A', 'G', 'A' , 'C', 'C', 'T', 'A', 'C', 'A', 'G', 'A' , 'C', 'C', 'T', 'A', 'C', 'A', 'G', 'A' , 'C', 'C', 'T', 'A', 'C', 'A', 'G', 'A' , 'C', 'C', 'T', 'A'};

    //char reference_string[ref_length] = {'C', 'C', 'G', 'T', 'A', 'C', 'T', 'A', 'C', 'C', 'G', 'T', 'A', 'C', 'T', 'A', 'C', 'C', 'G', 'T', 'A', 'C', 'T', 'A', 'C', 'C', 'G', 'T', 'A', 'C', 'T', 'A'};

    //generating random reference sequence of given length specified in params.h
    srand(time(NULL));

    char reference_string[ref_length];
    char query_string[query_length];

    char alphabet[4] = { 'A', 'C', 'G','T'};
 
    for (int i = 0; i < ref_length; i++){
        reference_string[i] = alphabet[rand() % 4];
        query_string[i] = alphabet[rand() % 4];
    }

    ap_int<16> dummy;

    printf("Start of function call\n");

    //calling sequence alignment function
    seq_align(query_string, reference_string, &dummy);

    return 0;

}
