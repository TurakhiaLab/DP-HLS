/**
 * @file compat.h
 * @author Yingqi Cao (yic033@ucsd.edu)
 * @brief This file contains codes that is the compatibility package to the legacy kernel.
 * @version 0.1
 * @date 2023-08-21
 * 
 * @copyright Copyright (c) 2023
 * 
 */

#ifndef COMPAT_H
#define COMPAT_H

#include "params.h"

#include "../../include/shift_reg.h"

namespace Compat {

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
    );


}

#endif // COMPAT_H