#include "initial.h"
#include "params.h"

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

InitialValues assign_value_local_affine()  // This is a typical method for user to define their own initial values, with maximum flexibility. 
{
	// here is an example of linear local decleration, with all 0 initialized. 
	InitialValues values;

	for (int i = 0; i < MAX_REFERENCE_LENGTH; i++) {
		values.init_ref_scr[i][0] = (type_t)-9999;
		values.init_ref_scr[i][1] = (type_t)0;
		values.init_ref_scr[i][2] = (type_t)0;
	}


	for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
		values.init_qry_scr[i][0] = (type_t)0;
		values.init_qry_scr[i][1] = (type_t)0;
		values.init_qry_scr[i][2] = (type_t)-9999;
	}

	return values;
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