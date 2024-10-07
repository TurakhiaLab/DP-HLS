#include "tiling.h"
#include "params.h"
#include "align.h"

#ifdef CMAKEDEBUG
#include "debug.h"
#endif

void tiling_kernel(
    char_t (&querys)[GLOBAL_QUERY_LENGTH],
    char_t (&references)[GLOBAL_REFERENCE_LENGTH],
    idx_t (&query_length),
    idx_t (&reference_length),
    const Penalties (&penalties),
#ifdef LOCAL_TRANSITION_MATRIX
    type_t (&transitions)[TRANSITION_MATRIX_SIZE][TRANSITION_MATRIX_SIZE],
#endif
    idx_t (&tb_is), idx_t (&tb_js)
#ifndef NO_TRACEBACK
    , tbr_t (&tb_stream)[GLOBAL_REFERENCE_LENGTH + GLOBAL_QUERY_LENGTH]
#endif
#ifdef SCORED
    , type_t (&scores)
#endif
#ifdef CMAKEDEBUG
    , Container (&debugger)
#endif
){
    idx_t tb_write_ptr = 0;
    idx_t i_curr = query_length;
    idx_t j_curr = reference_length;

    char_t query_tile[MAX_QUERY_LENGTH];
    char_t reference_tile[MAX_REFERENCE_LENGTH];

    tbr_t local_tb_stream[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];

    
    while (i_curr > 0 && j_curr > 0){
        idx_t i_start = max(0, i_curr - MAX_QUERY_LENGTH);
        idx_t j_start = max(0, j_curr - MAX_REFERENCE_LENGTH);

        // Copy query tile
        idx_t tile_query_length = i_curr - i_start;
        for (idx_t i = 0; i < tile_query_length; i++) {
            query_tile[i] = querys[i_start + i];
        }

        // Copy reference tile
        idx_t tile_reference_length = j_curr - j_start;
        for (idx_t j = 0; j < tile_reference_length; j++) {
            reference_tile[j] = references[j_start + j];
        }

        // FIXME:  the index of the highest scoring cell is relative. So we need to add the start index 
        // to the index of the highest scoring cell to get the global index.

        idx_t offset_i = MAX_QUERY_LENGTH;
        idx_t offset_j = MAX_REFERENCE_LENGTH;
        // Align the tile
        Align::BANDING_NAMESPACE::AlignStatic(
            query_tile,
            reference_tile,
            tile_query_length,
            tile_reference_length,
            penalties,
#ifdef LOCAL_TRANSITION_MATRIX
            transitions,
#endif
            tb_is, tb_js
#ifndef NO_TRACEBACK
            , local_tb_stream
#endif
#ifdef SCORED
            , scores
#endif
#ifdef CMAKEDEBUG
            , debugger
#endif
        );
        i_curr -= offset_i;
        j_curr -= offset_j;
    }
}