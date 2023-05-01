#ifndef PARAMS_H
#define PARAMS_H

#include <ap_fixed.h>

#define opening_score -1
#define extend_score -1
#define mismatch_score -1
#define match_score 2

#define query_length 1024
#define ref_length 1024

#define PE_num 32

#define numofreads 1

#define query_chunks query_length/PE_num

#define M 10
#define N 6


#define N_BLOCKS 8

typedef ap_uint<2> char_t;
typedef ap_fixed<M, N> type_t;  // alias type_t with ap_fixed<M,N>

enum tbp_t {
	TB_LEFT, TB_DIAG, TB_UP, TB_IX, TB_IY
};

#endif
