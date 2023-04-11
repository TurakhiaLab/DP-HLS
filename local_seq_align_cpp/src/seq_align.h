//function prototype
#include <gmp.h>
#define __gmp_const const
#include "params.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include "hls_stream.h"

using namespace std;

typedef ap_fixed<M,N> type_t;
//typedef int type_t;
//typedef ap_int<16> type_t;

//extern void seq_align_multiple (ap_uint<2> query[query_length], ap_uint<2> reference[ref_length], type_t *dummy, type_t dp_mem[3][PE_num], type_t Ix_mem[2][PE_num],
		//type_t Iy_mem[2][PE_num], type_t last_pe_score[ref_length], type_t last_pe_scoreIx[ref_length],
		//type_t dp_matrix[query_length][ref_length]);

extern void seq_align_multiple(ap_uint<2> query_string_comp[query_length], ap_uint<2> reference_string_comp[ref_length],
		type_t dp_mem[3][PE_num], type_t Ix_mem[2][PE_num], type_t Iy_mem[2][PE_num], type_t last_pe_score[ref_length], type_t last_pe_scoreIx[ref_length], type_t dp_matrix1[query_length][ref_length], type_t dp_matrix2[query_length][ref_length]);
