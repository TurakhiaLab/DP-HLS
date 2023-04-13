#include <stdio.h>
#include "seq_align.h"
#include "params.h"

int main ()
{
    char query_string[query_length] = {'A', 'G', 'G', 'T'};

    //char reference_string[ref_length] = {'C', 'A', 'G', 'C', 'G', 'T', 'T', 'C'};

    //int dp_matrix[query_length][ref_length];

    //int max_score;

    srand(time(NULL));

    char reference_string[ref_length];

    char alphabet[26] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G',
                          'H', 'I', 'J', 'K', 'L', 'M', 'N',
                          'O', 'P', 'Q', 'R', 'S', 'T', 'U',
                          'V', 'W', 'X', 'Y', 'Z' };
 
    for (int i = 0; i < ref_length; i++){
        reference_string[i] = alphabet[rand() % 26];  
        //printf("res is %c\t", res[i]);
    }

    int dummy;

    seq_align(query_string, reference_string, &dummy/*traceback, Ix_matrix, Ix_matrix, final_matrix*/ );

    //printf("max score is %d\n", max_score);

    return 0;

}
