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
    idx_t tile_tb_i = 0;
    idx_t tile_tb_j = 0;
    idx_t i_curr = query_length;
    idx_t j_curr = reference_length;

    char_t query_tile[MAX_QUERY_LENGTH];
    char_t reference_tile[MAX_REFERENCE_LENGTH];

    tbr_t tile_tb_stream[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];

    idx_t i_offset = 0;
    idx_t j_offset = 0;
    bool first_tile = true;
    int debug_iter_count = 0;
    while (i_curr > 0 && j_curr > 0){
        // cout << "Iteration: " << debug_iter_count++ << endl;

        idx_t i_start = 0 > i_curr - MAX_QUERY_LENGTH ? 0 : i_curr - MAX_QUERY_LENGTH;
        idx_t j_start = 0 > j_curr - MAX_REFERENCE_LENGTH ? 0 : j_curr - MAX_REFERENCE_LENGTH;

        // Debug print for tile start indices
        // std::cout << "Tile start indices: i_start = " << i_start << ", j_start = " << j_start << std::endl;

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
        // to the index of the highest scoring cell to get the global index. i_start + tb_is, j_start + tb_js

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
            tile_tb_i, tile_tb_j
#ifndef NO_TRACEBACK
            , tile_tb_stream
#endif
#ifdef SCORED
            , scores
#endif
#ifdef TILING
            , i_offset, j_offset, first_tile  // potentially need an overlapping parameter
#endif
#ifdef CMAKEDEBUG
            , debugger
#endif
        );

        // Debug print for traceback indices and offsets
        // std::cout << "Tile Traceback indices: tb_is = " << tile_tb_i << ", tb_js = " << tile_tb_j << std::endl;
        // std::cout << "Tile Offsets: i_offset = " << i_offset << ", j_offset = " << j_offset << std::endl;

        if (first_tile){
            tb_is = tile_tb_i + i_start;
            tb_js = tile_tb_j + j_start;
            first_tile = false;
        }
        if (i_offset == 0 || j_offset == 0){
            // if there's no offset, then no move in score matrix and no traceback pointers needed to be copied. 
            break;
        } else {
            i_curr -= i_offset;
            j_curr -= j_offset;
        }

    // Copy traceback pointers to the main buffer
#ifndef NO_TRACEBACK
        idx_t local_tb_read = 0;
        while (tile_tb_stream[local_tb_read] != AL_END){
            tb_stream[tb_write_ptr++] = tile_tb_stream[local_tb_read];
            local_tb_read++;
        }
#endif
    }
    tb_stream[tb_write_ptr] = AL_END;
}