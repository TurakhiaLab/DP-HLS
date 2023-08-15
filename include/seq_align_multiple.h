#ifndef SEQ_ALIGN_MULTIPLE_H
#define SEQ_ALIGN_MULTIPLE_H

#include <hls_task.h>
#include "params.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <hls_stream.h>
#include "initial.h"
#include <hls_streamofblocks.h>

using namespace hls;

//typedef int type_t;
//typedef ap_int<16> type_t;

extern "C" {
//	void seq_align_multiple(stream_of_blocks<raw_query_block_t> &query,
//        stream_of_blocks<raw_reference_block_t> &reference,
//        stream_of_blocks<init_col_score_block_t> &init_qry_scr,
//        stream_of_blocks<init_row_score_block_t> &init_ref_scr,
//        hls::stream<int> &query_length, hls::stream<int> &reference_length,
//        stream_of_blocks<traceback_block_t> &tb_streams);
	void seq_align_multiple(
            stream<BlockInputs> &inputs,
            stream<BlockOutputs> &outputs);
}

#endif
