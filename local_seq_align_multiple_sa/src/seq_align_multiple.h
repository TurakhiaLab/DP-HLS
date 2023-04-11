//function prototype
#include <gmp.h>
#define __gmp_const const
#include "params.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include "hls_stream.h"

using namespace std;

typedef ap_fixed<M,N> type_t;  // alias type_t with ap_fixed<M,N>
//typedef int type_t;
//typedef ap_int<16> type_t;

//extern void seq_align_multiple(ap_uint<2> chunk1[query_length], ap_uint<2> chunk2[query_length], ap_uint<2> ref1[ref_length], ap_uint<2> ref2[ref_length],
//		type_t dp_mem[3][PE_num], type_t dp_mem2[3][PE_num],
//		type_t Ix_mem[2][PE_num], type_t Ix_mem2[2][PE_num],
//		type_t Iy_mem[2][PE_num],type_t Iy_mem2[2][PE_num],
//		type_t last_pe_score[ref_length], type_t last_pe_score2[ref_length],
//		type_t last_pe_scoreIx[ref_length], type_t last_pe_scoreIx2[ref_length],
//		type_t *dummy_3, type_t *dummy_4);

extern void seq_align_multiple(ap_uint<2> query_string_comp[N_BLOCKS][query_length],
                               ap_uint<2> reference_string_comp[N_BLOCKS][ref_length],
                               type_t dp_mem[N_BLOCKS][3][PE_num],
                               type_t Ix_mem[N_BLOCKS][2][PE_num],
                               type_t Iy_mem[N_BLOCKS][2][PE_num],
                               type_t last_pe_score[N_BLOCKS][ref_length],
                               type_t last_pe_scoreIx[N_BLOCKS][ref_length],
                               type_t *dummies);
