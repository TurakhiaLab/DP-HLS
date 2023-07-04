#include "initial.h"
#include "params.h"

InitialValues assign_value()  // This is a typical method for user to define their own initial values, with maximum flexibility. 
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
