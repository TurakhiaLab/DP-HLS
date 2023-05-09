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

#define extra_PE_num query_length%PE_num

#define N_BLOCKS 8


#define TB_PH 0  // this is place holder
#define	TB_LEFT 1
#define	TB_DIAG 2
#define	TB_UP 3
#define	TB_IX 4
#define	TB_IY 5

#define zero_fp 0

#define TB_LINE_SIZE 64  // This defines the length of a line of TB pointers. Must be larger than PE_num

typedef ap_uint<2> char_t;
typedef ap_fixed<M, N> type_t;  // alias type_t with ap_fixed<M,N>

typedef ap_uint<2> tbp_t;
typedef ap_uint<3> tbp_line_t[TB_LINE_SIZE];

//enum tbp_t {
//	TB_LEFT,
//	TB_DIAG,
//	TB_UP,
//	TB_IX,
//	TB_IY
//};

#endif
