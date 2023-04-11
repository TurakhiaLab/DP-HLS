//function prototype
#include "params.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include "hls_stream.h"

using namespace std;

typedef ap_fixed<M,N> type_t;
//typedef int type_t;
//typedef ap_int<16> type_t;

extern void seq_align (char query[query_length], char reference[ref_length], type_t *dummy, type_t dp_mem[3][PE_num], /*type_t Ix_mem[2][PE_num],
		type_t Iy_mem[2][PE_num],*/ type_t last_pe_score[ref_length], /*type_t last_pe_scoreIx[ref_length],*/
		type_t dp_matrix[query_length][ref_length]);
