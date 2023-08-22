/**
 * @file compat.cpp
 * @author Yingqi Cao (yic033@ucsd.edu)
 * @brief header file for compat.cpp
 * @version 0.1
 * @date 2023-08-21
 * 
 * @copyright Copyright (c) 2023
 * 
 */

#include "compat.h"

void PrepareArrayInput(
    ShiftRegister<char_t, PE_NUM> &local_query,
    ShiftRegister<char_t, PE_NUM> &local_reference,
    hls::vector<type_t, N_LAYERS> (&last_pe_score)[MAX_REFERENCE_LENGTH],
    ShiftRegisterBlock<hls::vector<type_t, N_LAYERS>, PE_NUM, 2> &dp_mem,
    int &i, idx_t &last_row_r, int &tb_idx, int (&pe_cnt)[PE_NUM],
    input_char_block_t &local_query_out,
    hls::stream_of_blocks<input_char_block_t> &local_reference_out,
    hls::stream_of_blocks<score_block_t> &up_prev_out,
    hls::stream_of_blocks<score_block_t> &diag_prev_out,
    hls::stream_of_blocks<score_block_t> &left_prev_out
){
    hls::write_lock<input_char_block_t> referecne_out_wr(local_reference_out);
    hls::write_lock<score_block_t> up_prev_wr(up_prev_out);
    hls::write_lock<score_block_t> diag_prev_wr(diag_prev_out);
    hls::write_lock<score_block_t> left_prev_wr(left_prev_out);

    local_query_out[0] = local_query[0];
    referecne_out_wr[0] = local_reference[0];
    up_prev_wr[0] = last_pe_score[last_row_r];
    diag_prev_wr[0] = last_pe_score[last_row_r - 1];
    left_prev_wr[0] = dp_mem[0][0];

    for (int i = 1; i < PE_NUM; i++)
    {
#pragma HLS unroll
        local_query_out[i] = local_query[i];
        referecne_out_wr[i] = local_reference[i];
        up_prev_wr[i] = dp_mem[i - 1][0];
        diag_prev_wr[i] = dp_mem[i-1][1];
        left_prev_wr[i] = dp_mem[i][0];
    }
}