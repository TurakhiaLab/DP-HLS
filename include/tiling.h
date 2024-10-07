#pragma once

#include "params.h"

#ifdef CMAKEDEBUG
#include "debug.h"
#endif

void tiling_kernel(
    char_t (&querys)[GLOBAL_QUERY_LENGTH],
    char_t (&references)[GLOBAL_REFERENCE_LENGTH],
    idx_t (&query_lengths),
    idx_t (&reference_lengths),
    const Penalties (&penalties),
#ifdef LOCAL_TRANSITION_MATRIX
    type_t (&transitions)[TRANSITION_MATRIX_SIZE][TRANSITION_MATRIX_SIZE],
#endif
    idx_t (&tb_is), idx_t (&tb_js)
#ifndef NO_TRACEBACK
    , tbr_t (&tb_streams)[GLOBAL_REFERENCE_LENGTH + GLOBAL_QUERY_LENGTH]
#endif
#ifdef SCORED
    , type_t (&scores)
#endif
#ifdef CMAKEDEBUG
    , Container (&debugger)
#endif
);