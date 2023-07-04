#ifndef INITIAL_H
#define INITIAL_H

#include "params.h"
#include <hls_vector.h>

struct InitialValues {
	hls::vector<type_t, N_LAYERS> init_qry_scr[MAX_QUERY_LENGTH];
	hls::vector<type_t, N_LAYERS> init_ref_scr[MAX_REFERENCE_LENGTH];
};

InitialValues assign_value_local();
InitialValues assign_value_local_affine();

InitialValues assign_value_global();

#endif // !INITIAL_H
