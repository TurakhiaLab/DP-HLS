#ifndef PARAMS_H
#define PARAMS_H

#include <ap_fixed.h>



#define MAX_QUERY_LENGTH 32
#define MAX_REFERENCE_LENGTH 32

#define PE_NUM 8

#define numofreads 1

#define corner_case (MAX_QUERY_LENGTH%PE_NUM != 0)
#define query_chunks (MAX_QUERY_LENGTH/PE_NUM)
#define extra_pe_num (MAX_QUERY_LENGTH%PE_NUM)

#define MT 10
#define NT 6

//#define DEBUG

#define N_BLOCKS 4

#define TB_PH 0  // this is place holder
#define	TB_LEFT 1
#define	TB_DIAG 2
#define	TB_UP 3
#define	TB_IX 4
#define	TB_IY 5


#define ALIGN_TYPE AlignLocalLinear

#define TB_LINE_SIZE 64  // This defines the length of a line of TB pointers. Must be larger than PE_num


#define chunk_width 16  // this must larger than PE_num

typedef ap_uint<3> char_t;
typedef ap_fixed<MT, NT> type_t;  // alias type_t with ap_fixed<M,N>
typedef ap_uint<16> addr_t;  // define a address type to resolve the pointer to pointer problems
typedef ap_uint<3> tbp_t;

typedef ap_uint<8> idx_t;

#define zero_fp ((type_t)0)

#define linear_gap_penalty (type_t) (-2)
#define opening_score -2
#define extend_score -2
#define mismatch_score (type_t) (-1)
#define match_score (type_t) 3

// #define DEBUG_OUTPUT_PATH "/mnt/c/Users/Yingqi/OneDrive/GitHub/DP-HLS/debug/"
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/"
#define DEBUG_FILENAME "debug_kernel"

typedef char_t ref_buf[chunk_width];

// inflated ones takes care of corner case scenarios
#define inflated_query_length (query_chunks *PE_NUM + corner_case *PE_NUM)
#define inflated_query_chunks (query_chunks + corner_case)

#define N_LAYERS 1

//enum tbp_t {
//	TB_LEFT,
//	TB_DIAG,
//	TB_UP,
//	TB_IX,
//	TB_IY
//};

#endif
