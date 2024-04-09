//
// Created by yic033@AD.UCSD.EDU on 8/13/23.
// This file serves as a wrapper to components used test synthesis

#ifndef DP_HLS_COMPONENTS_H
#define DP_HLS_COMPONENTS_H

#include "./components.h"
#include "./PE.h"
#include "./seq_align.h"
#include "./utils.h"

// Expand a PE Array
void DutExpandCompute(
        char_t local_query[PE_NUM],
        char_t local_reference[PE_NUM],
        hls::vector<type_t, N_LAYERS> wavefronts[2][PE_NUM],   // or can define a variable called DEPTH which is the depth of the wavefront
        hls::vector<type_t, N_LAYERS> write_score_arr[PE_NUM],
        hls::vector<tbp_t, N_LAYERS> write_traceback_arr[PE_NUM]);

void DutExpandComputeBlock(input_char_block_t local_querys,
                           input_char_block_t &local_references,
                           score_block_t &up_prevs,
                           score_block_t &diag_prevs,
                           score_block_t &left_prevs,
                           score_block_t &output_scores,
                           tbp_block_t &output_tbp);

void DutChunkComputeBlock(idx_t chunk_row_offset, 
                     input_char_block_t &query,
                     char_t (&reference)[MAX_REFERENCE_LENGTH],
                     score_block_t &init_col_scr,
                     hls::vector<type_t, N_LAYERS> (&init_row_scr)[MAX_REFERENCE_LENGTH],
                     int query_length, int reference_length,
                     hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
                     ScorePack &max, 
                     tbp_chunk_block_t &chunk_tbp_out);

void DutChunkComputeArr(
        idx_t chunk_row_offset,
        input_char_block_t &query,
        char_t (&reference)[MAX_REFERENCE_LENGTH],
        score_block_t &init_col_scr,
        hls::vector<type_t, N_LAYERS> (&init_row_scr)[MAX_REFERENCE_LENGTH],
        int query_length, int reference_length,
        hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
        ScorePack &max,  // write out so must pass by reference
        tbp_chunk_block_t &chunk_tbp_out
        );


#endif //DP_HLS_COMPONENTS_H
