#ifndef LOCAL_LINEAR_BASELINE_H
#define LOCAL_LINEAR_BASELINE_H

#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>
#include "shift_register.h"

// Gap penalties
#define linear_gap_penalty -1
#define opening_score -7
#define extend_score -4
#define mismatch_score -3
#define match_score 4

// Input query and reference lengths
#define query_length 256
#define ref_length 256

#define PE_num 16 // Number of processing elements in systolic array

#define numofreads 1

// set this as 1 whenever query length is not multiple of PE numbers
#define corner_case 0

// number of query blocks and extra PEs for corner case
#define query_chunks query_length / PE_num
#define extra_PE_num query_length % PE_num

// inflated ones takes care of corner case scenarios
#define inflated_query_length query_chunks *PE_num + corner_case *PE_num
#define inflated_query_chunks query_chunks + corner_case

// fixed point datatype parameters
#define M 10
#define N 6

#define N_BLOCKS 1 // Number of kernels executing in parallel

typedef ap_uint<2> type_char;
typedef ap_fixed<M,N> type_t;
#define zero_fp (type_t) 0

void PE(type_char local_ref_val, type_char local_query_val, type_t up_prev, type_t left_prev, type_t diag_prev,
        type_t *score,
        ap_uint<2> *traceback);

void seq_align(hls::stream<type_char, query_length> &query_stream, 
hls::stream<type_char, ref_length> &reference_stream,
ap_uint<2> final_traceback[ref_length + inflated_query_length], 
type_t *dummy);

void seq_align_multiple(hls::stream<type_char, query_length> (&query_string_comp)[N_BLOCKS],
                        hls::stream<type_char, ref_length> (&reference_string_comp)[N_BLOCKS],
                        ap_uint<2> final_traceback[N_BLOCKS][ref_length + inflated_query_length],
                        type_t dummies[N_BLOCKS]);

#endif