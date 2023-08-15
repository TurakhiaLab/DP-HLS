#ifndef PE_H
#define PE_H

#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include "shift_reg.h"
#include <hls_streamofblocks.h>
#include "traceback.h"
#include <hls_vector.h>
#include "./params.h"

#ifdef DEBUG
#include <list>
#endif // DEBUG



namespace PE {
    
    namespace LocalLinear {
        void Compute(
            hls::stream<char_t> &local_query_val,
            hls::stream<char_t> &local_reference_val,
            hls::stream<hls::vector<type_t, N_LAYERS>> &up_prev,
            hls::stream<hls::vector<type_t, N_LAYERS>> &diag_prev,
            hls::stream<hls::vector<type_t, N_LAYERS>> &left_prev,
            hls::stream<hls::vector<type_t, N_LAYERS>> &write_score,  // out
            hls::stream<hls::vector<tbp_t, N_LAYERS>> &write_traceback  // out
        );

        void ComputeBlock(char_t local_query_val,
                          char_t local_reference_val,
                          hls::vector<type_t, N_LAYERS> up_prev,
                          hls::vector<type_t, N_LAYERS> diag_prev,
                          hls::vector<type_t, N_LAYERS> left_prev,
                          hls::vector<type_t, N_LAYERS> &write_score,
                          hls::vector<tbp_t, N_LAYERS> &write_traceback);
    }

    namespace LocalAffine {
        void ComputeBlock(char_t local_query_val,
                          char_t local_reference_val,
                          hls::vector<type_t, N_LAYERS> up_prev,
                          hls::vector<type_t, N_LAYERS> diag_prev,
                          hls::vector<type_t, N_LAYERS> left_prev,
                          hls::vector<type_t, N_LAYERS> &write_score,
                          hls::vector<tbp_t, N_LAYERS> &write_traceback);
    }

    void ExpandComputeBlock(stream_of_blocks<input_char_block_t> &local_querys,
                            stream_of_blocks<input_char_block_t> &local_references,
                            stream_of_blocks<score_block_t> &up_prevs,
                            stream_of_blocks<score_block_t> &diag_prevs,
                            stream_of_blocks<score_block_t> &left_prevs,
                            stream_of_blocks<score_block_t> &output_scores,
                            stream_of_blocks<tbp_block_t> &output_tbt);


    // Expand a PE Array
    void ExpandCompute(
        char_t local_query[PE_NUM],
        char_t local_reference[PE_NUM],
        hls::vector<type_t, N_LAYERS> wavefronts[2][PE_NUM],   // or can define a variable called DEPTH which is the depth of the wavefront
        hls::vector<type_t, N_LAYERS> write_score_arr[PE_NUM],
        hls::vector<tbp_t, N_LAYERS> write_traceback_arr[PE_NUM]);

    void ReadIn(
        char_t local_qry_arr[PE_NUM],
        char_t local_ref_arr[PE_NUM],
        hls::vector<type_t, N_LAYERS> wavefronts[2][PE_NUM],
        hls::stream<char_t> &local_qry_stm,
        hls::stream<char_t> &local_ref_stm,
        hls::stream<hls::vector<type_t, N_LAYERS>> &left_prev_stm,
        hls::stream<hls::vector<type_t, N_LAYERS>> &diag_prev_stm,
        hls::stream<hls::vector<type_t, N_LAYERS>> &up_prev_stm);

    void WriteOut(
            hls::stream<hls::vector<type_t, N_LAYERS>> &score_stm,
            hls::stream<hls::vector<tbp_t, N_LAYERS>> &tbp_stm,
            hls::vector<type_t, N_LAYERS> write_score_arr[PE_NUM],
            hls::vector<tbp_t, N_LAYERS> write_traceback_arr[PE_NUM]
            );

    void ReadInBlock(
        input_char_block_t &local_qry_arr,
        input_char_block_t &local_ref_arr,
        score_block_t &up_prev_arr,
        score_block_t &diag_prev_arr,
        score_block_t &left_prev_arr,
        hls::stream_of_blocks<input_char_block_t> &local_qry_stm,
        hls::stream_of_blocks<input_char_block_t> &local_ref_stm,
        hls::stream_of_blocks<score_block_t> &left_prev_stm,
        hls::stream_of_blocks<score_block_t> &diag_prev_stm,
        hls::stream_of_blocks<score_block_t> &up_prev_stm);
    
    void WriteOutBlock(
        hls::stream_of_blocks<score_block_t> &score_stm,
        hls::stream_of_blocks<tbp_block_t> &tbp_stm,
        score_block_t &write_score_arr,
        tbp_block_t &write_traceback_arr
    );

}

// Expand a PE Array
void ExpandComputeTop(
    char_t local_query[PE_NUM],
    char_t local_reference[PE_NUM],
    hls::vector<type_t, N_LAYERS> wavefronts[2][PE_NUM],   // or can define a variable called DEPTH which is the depth of the wavefront
    hls::vector<type_t, N_LAYERS> write_score_arr[PE_NUM],
    hls::vector<tbp_t, N_LAYERS> write_traceback_arr[PE_NUM]
);



 
#endif // !PE_H

// Static data members are shared by all instances of a class.
