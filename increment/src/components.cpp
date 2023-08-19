//
// Created by yic033@AD.UCSD.EDU on 8/13/23.
//

#include "../include/components.h"

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
    PE::ExpandCompute(
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
