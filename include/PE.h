#ifndef PE_H
#define PE_H

#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include "./shift_reg.h"
#include <hls_streamofblocks.h>
#include "./traceback.h"
#include <hls_vector.h>
#include "./params.h"

#ifdef CMAKEDEBUG
#include <list>
#endif // DEBUG



namespace PE {
    
    namespace Linear {
        /**
         * @brief A Single PE, acceitping inputs with stream. It could be used both in Task-Channel design and 
         * SoB design.
         * 
         * @param local_query_val 
         * @param local_reference_val 
         * @param up_prev 
         * @param diag_prev 
         * @param left_prev 
         * @param write_score 
         * @param write_traceback 
         */
        void ComputeStream(
            hls::stream<char_t> &local_query_val,
            hls::stream<char_t> &local_reference_val,
            hls::stream<hls::vector<type_t, N_LAYERS>> &up_prev,
            hls::stream<hls::vector<type_t, N_LAYERS>> &diag_prev,
            hls::stream<hls::vector<type_t, N_LAYERS>> &left_prev,
            hls::stream<hls::vector<type_t, N_LAYERS>> &write_score,  // out
            hls::stream<hls::vector<tbp_t, N_LAYERS>> &write_traceback  // out
        );

        /**
         * @brief PE compute function for a single PE. In a simple array implementation. 
         * 
         * @param local_query_val 
         * @param local_reference_val 
         * @param up_prev 
         * @param diag_prev 
         * @param left_prev 
         * @param write_score 
         * @param write_traceback 
         */
        void Compute(char_t local_query_val,
                          char_t local_reference_val,
                          hls::vector<type_t, N_LAYERS> up_prev,
                          hls::vector<type_t, N_LAYERS> diag_prev,
                          hls::vector<type_t, N_LAYERS> left_prev,
                          hls::vector<type_t, N_LAYERS> &write_score,
                          tbp_t &write_traceback);
    }
    
	void PEUnroll(dp_mem_block_t &dp_mem, input_char_block_t qry, input_char_block_t ref, const Penalties penalties, tbp_block_t &tbp);

    /** 
     * @brief Unroll a PE Array. The data distribution uese Stream of Blocks. 
     * 
     * @param local_querys 
     * @param local_references 
     * @param up_prevs 
     * @param diag_prevs 
     * @param left_prevs 
     * @param output_scores 
     * @param output_tbt 
     */
    void ExpandComputeSoB(input_char_block_t &local_querys,
                            stream_of_blocks<input_char_block_t> &local_references,
                            stream_of_blocks<score_block_t> &up_prevs,
                            stream_of_blocks<score_block_t> &diag_prevs,
                            stream_of_blocks<score_block_t> &left_prevs,
                            stream_of_blocks<score_block_t> &output_scores,
                            stream_of_blocks<tbp_block_t> &output_tbt);

    /**
     * @brief Expand a PE Array, with simple array implementation. It unrolls for a kind of PE. 
     * 
     * @param local_querys 
     * @param local_references 
     * @param up_prevs 
     * @param diag_prevs 
     * @param left_prevs 
     * @param output_scores 
     * @param output_tbt 
     */
    void ExpandCompute(
        input_char_block_t &local_querys,
        input_char_block_t &local_references,
        score_block_t &up_prevs,
        score_block_t &diag_prevs,
        score_block_t &left_prevs,
        score_block_t &output_scores,
        tbp_block_t &output_tbt
    );

    /**
     * @brief Expand a PE Array with the Task-Channel implementation. 
     * 
     * @param local_query 
     * @param local_reference 
     * @param wavefronts 
     * @param write_score_arr 
     * @param write_traceback_arr 
     */
    void ExpandComputeTC(
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
