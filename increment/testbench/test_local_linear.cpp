#include "../include/seq_align_multiple.h"
#include "../include/params.h"

int main(){

    const int input_qry_length = 115;  // assume we know the length some how
    const int input_ref_length = 197;

    idx_t qry_lengths[N_BLOCKS];
    idx_t ref_lengths[N_BLOCKS];

    char reference_string[N_BLOCKS][MAX_REFERENCE_LENGTH];
    char query_string[N_BLOCKS][MAX_QUERY_LENGTH];

    char_t reference_string_comp[N_BLOCKS][MAX_REFERENCE_LENGTH];
    char_t query_string_comp[N_BLOCKS][MAX_QUERY_LENGTH];
    tbp_t tb_streams[N_BLOCKS][MAX_REFERENCE_LENGTH+MAX_QUERY_LENGTH];

    char alphabet[4] = { 'A', 'C', 'G', 'T' };


    const char* qry = "AGTCTAGGCGAATCGGCCCTTGTATATCGGGG"; //CCGTAGACCCGAACTTCGCGGTACACCTTCTGAAACCGTCCCTAATCCGACGAGCGCCTTGAGAACG";
    const char* ref = "TGCCGCGACCGTCCCTAATCCGACGAGCGCCT"; // TGAGAACGTAGTCTAGGCGAATCGGCCCTTGTATATCGGGGCCGTAGACCCGAACTTCGCGGTACAC";


    const char* qry_ptr = qry;
    const char* ref_ptr = ref;
    for (int b = 0; b < N_BLOCKS; b++){
    for (int i = 0; i < MAX_REFERENCE_LENGTH; i++) {
        reference_string[b][i] = *ref_ptr++;
        
        }
        for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
            query_string[b][i] = *qry_ptr++;
        }
    }


    
    for (int b = 0; b < N_BLOCKS; b++){
    for (int p = 0; p < MAX_REFERENCE_LENGTH; p++) {
        char_t symb = 0;
        switch (reference_string[b][p])
        {
        case 'A':
            symb = 1;
            break;
        case 'C':
            symb = 2;
            break;
        case 'G':
            symb = 3;
            break;
        case 'T':
            symb = 4;
            break;
        }
        reference_string_comp[b][p] = symb;

    }}
 
    for (int b = 0; b < N_BLOCKS; b++){
    for (int p = 0; p < MAX_QUERY_LENGTH; p++) {
        char_t symb = 0;
        switch (query_string[b][p])
        {
        case 'A':
            symb = 1;
            break;
        case 'C':
            symb = 2;
            break;
        case 'G':
            symb = 3;
            break;
        case 'T':
            symb = 4;
            break;
        }
        query_string_comp[b][p] = symb;
    }
    }

    for (int b = 0; b < N_BLOCKS; b++){
        qry_lengths[b] = input_qry_length;
        ref_lengths[b] = input_ref_length;
    }

    seq_align_multiple_static(
        query_string_comp,
        reference_string_comp,
        qry_lengths,
        ref_lengths,
        tb_streams
    );

    return 0;
}