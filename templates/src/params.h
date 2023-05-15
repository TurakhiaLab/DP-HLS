#ifndef PARAMS_H
#define PARAMS_H

#include <ap_fixed.h>

#define linear_gap_penalty {{ linear_gap_penalty }}
#define opening_score {{ opening_score }}
#define extend_score {{ extend_score }}
#define mismatch_score {{ mismatch_score }}
#define match_score {{ match_score }}

#define query_length {{ query_length }}
#define ref_length {{ reference_length }}

#define PE_num {{ pe_num }}
#define numofreads 1

#define query_chunks query_length/PE_num

#define M 10
#define N 6

#define extra_PE_num query_length%PE_num

#define N_BLOCKS {{ num_blocks }}

#define TB_PH 0  // this is place holder
#define	TB_LEFT 1
#define	TB_DIAG 2
#define	TB_UP 3
#define	TB_IX 4
#define	TB_IY 5


#define TB_LINE_SIZE 64  // This defines the length of a line of TB pointers. Must be larger than PE_num

typedef ap_uint<2> char_t;
typedef ap_fixed<M, N> type_t;  // alias type_t with ap_fixed<M,N>

typedef ap_uint< {{ traceback_bits }} > tbp_t;
typedef ap_uint<3> tbp_line_t[TB_LINE_SIZE];

#define zero_fp (type_t) 0

#define corner_case 1

#define query_chunks query_length / PE_num
#define extra_PE_num query_length % PE_num

// inflated ones takes care of corner case scenarios
#define inflated_query_length query_chunks *PE_num + corner_case *PE_num
#define inflated_query_chunks query_chunks + corner_case

#define ALIGN_TYPE {{ align_type }}
#define PE_TYPE {{ pe_type }}

//enum tbp_t {
//	TB_LEFT,
//	TB_DIAG,
//	TB_UP,
//	TB_IX,
//	TB_IY
//};

#endif
