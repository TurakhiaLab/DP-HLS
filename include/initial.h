#ifndef INITIAL_H
#define INITIAL_H

#include "params.h"
#include <hls_vector.h>
#include <hls_stream.h>

struct InitialValues {
	hls::vector<type_t, N_LAYERS> init_qry_scr[MAX_QUERY_LENGTH];
	hls::vector<type_t, N_LAYERS> init_ref_scr[MAX_REFERENCE_LENGTH];
};

InitialValues assign_value_local();
InitialValues assign_value_global();

void assign_qry_local_linear(hls::stream<hls::vector<type_t, N_LAYERS>, MAX_QUERY_LENGTH> &stm);
void assign_ref_local_linear(hls::stream<hls::vector<type_t, N_LAYERS>, MAX_REFERENCE_LENGTH> &stm);

void assign_qry_local_affine(init_col_score_block_t &arr);
void assign_ref_local_affine(init_row_score_block_t &arr);

#endif // !INITIAL_H
