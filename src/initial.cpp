#include "../include/initial.h"
#include "../include/params.h"
#include <hls_stream.h>
#include <hls_vector.h>
InitialValues assign_value_local()  // This is a typical method for user to define their own initial values, with maximum flexibility. 
{
	// here is an example of linear local decleration, with all 0 initialized. 
	InitialValues values;

	for (int i = 0; i < MAX_REFERENCE_LENGTH; i++) {
		values.init_ref_scr[i] = (type_t)0;
	}


	for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
		values.init_qry_scr[i] = (type_t)0;
	}

	return values;
}

void assign_qry_local_linear(hls::stream<hls::vector<type_t, N_LAYERS>, MAX_QUERY_LENGTH> &stm){
	for (int i = 0; i < MAX_QUERY_LENGTH; i++){
		stm.write({0});
	}
}
void assign_ref_local_linear(hls::stream<hls::vector<type_t, N_LAYERS>, MAX_REFERENCE_LENGTH> &stm){
	for (int i = 0; i < MAX_REFERENCE_LENGTH; i++){
		stm.write({0});
	}
}


void assign_qry_local_affine(init_col_score_block_t &arr){
	for (int i = 0; i < MAX_QUERY_LENGTH; i++){
		arr[i] = {0, 0, -9999};
	}
}
void assign_ref_local_affine(init_row_score_block_t &arr){
	for (int i = 0; i < MAX_REFERENCE_LENGTH; i++){
		arr[i] = {-9999, 0, 0};
	}
}


InitialValues assign_value_global()  // This is a typical method for user to define their own initial values, with maximum flexibility. 
{
	// here is an example of linear local decleration, with all 0 initialized. 
	InitialValues values;

	type_t row_val = 0;
	for (int i = 0; i < MAX_REFERENCE_LENGTH; i++) {
		row_val += linear_gap_penalty;
		values.init_ref_scr[i] = (type_t)row_val;
	}

	type_t col_val = 0;
	for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
		col_val += linear_gap_penalty;
		values.init_qry_scr[i] = (type_t)col_val;
		

	}

	return values;
}