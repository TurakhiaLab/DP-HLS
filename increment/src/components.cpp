//
// Created by yic033@AD.UCSD.EDU on 8/13/23.
//

#include "../include/components.h"
#include "../include/params.h"
#include "../include/utils.h"

// This file serves as a wrapper for the components in the increment/src/align/align.cpp. 
// Some components requires a wrapper since structs such as stream of blocks is not allowed in the top level. 

// Expand a PE Array
void DutExpandCompute(
        char_t local_query[PE_NUM],
        char_t local_reference[PE_NUM],
        hls::vector<type_t, N_LAYERS> wavefronts[2][PE_NUM],   // or can define a variable called DEPTH which is the depth of the wavefront
        hls::vector<type_t, N_LAYERS> write_score_arr[PE_NUM],
        hls::vector<tbp_t, N_LAYERS> write_traceback_arr[PE_NUM]
){
    /*
     * This style have problem which is the single channel is responsible for distributing
     * the input for all the PEs, which is not wide enough and certainly a bottleneck.
     */
    PE::ExpandComputeTask(
            local_query,
            local_reference,
            wavefronts,
            write_score_arr,
            write_traceback_arr);
}

void DutExpandComputeBlock(input_char_block_t &local_querys,
                           input_char_block_t &local_references,
                           score_block_t &up_prevs,
                           score_block_t &diag_prevs,
                           score_block_t &left_prevs,
                           score_block_t &output_scores,
                           tbp_block_t &output_tbp){
#pragma HLS array_partition variable = local_querys type=complete
#pragma HLS array_partition variable = local_references type=complete
#pragma HLS array_partition variable = up_prevs type=complete
#pragma HLS array_partition variable = diag_prevs type=complete
#pragma HLS array_partition variable = left_prevs type=complete
#pragma HLS array_partition variable = output_scores type=complete
#pragma HLS array_partition variable = output_tbp type=complete

#pragma HLS DATAFLOW
    hls::stream_of_blocks<input_char_block_t > local_querys_stm;
    hls::stream_of_blocks<input_char_block_t > local_references_stm;
    hls::stream_of_blocks<score_block_t > up_prevs_stm;
    hls::stream_of_blocks<score_block_t > diag_prevs_stm;
    hls::stream_of_blocks<score_block_t > left_prevs_stm;
    hls::stream_of_blocks<score_block_t > output_scores_stm;
    hls::stream_of_blocks<tbp_block_t > output_tbp_stm;
    
    PE::ReadInBlock(
            local_querys,
            local_references,
            up_prevs,
            diag_prevs,
            left_prevs,
            local_querys_stm,
            local_references_stm,
            up_prevs_stm,
            diag_prevs_stm,
            left_prevs_stm);

    PE::ExpandComputeBlock(
            local_querys,
            local_references_stm,
            up_prevs_stm,
            diag_prevs_stm,
            left_prevs_stm,
            output_scores_stm,
            output_tbp_stm);

    PE::WriteOutBlock(
            output_scores_stm,
            output_tbp_stm,
            output_scores,
            output_tbp);
}

void DutChunkComputeBlock(idx_t chunk_row_offset, 
                     input_char_block_t &query,
                     char_t (&reference)[MAX_REFERENCE_LENGTH],
                     score_block_t &init_col_scr,
                     hls::vector<type_t, N_LAYERS> (&init_row_scr)[MAX_REFERENCE_LENGTH],
                     int query_length, int reference_length,
                     hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
                     ScorePack &max, 
                     tbp_chunk_block_t &tbp_out
){

#pragma HLS dataflow

hls::stream_of_blocks<tbp_chunk_block_t> tbp_chunk_out;

    Align::ChunkComputeBlock(
            chunk_row_offset,
            query,
            reference,
            init_col_scr,
            init_row_scr,
            query_length,
            reference_length,
            preserved_row_scr,
            max,
            tbp_chunk_out);

	Utils::Matrix::ReadStreamBlock<tbp_chunk_block_t, PE_NUM, MAX_REFERENCE_LENGTH>(tbp_out, tbp_chunk_out);
	
}

void DutChunkComputeArr(
        idx_t chunk_row_offset,
        input_char_block_t &query,
        char_t (&reference)[MAX_REFERENCE_LENGTH],
        score_block_t &init_col_scr,
        hls::vector<type_t, N_LAYERS> (&init_row_scr)[MAX_REFERENCE_LENGTH],
        int query_length, int reference_length,
        hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
        ScorePack &max,  // write out so must pass by reference
        tbp_chunk_block_t &tbp_out
        ){
    Align::ChunkCompute(
            chunk_row_offset,
            query,
            reference,
            init_col_scr,
            init_row_scr,
            query_length,
            reference_length,
            preserved_row_scr,
            max,
            tbp_out
            );
}

// void DutChunkCompute()
