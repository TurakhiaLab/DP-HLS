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
	void seq_align_multiple(stream<char_t , MAX_QUERY_LENGTH> (&query_string_comp_blocks)[N_BLOCKS],
		stream<char_t, MAX_REFERENCE_LENGTH> (&reference_string_comp_blocks)[N_BLOCKS],
		stream<hls::vector<type_t, N_LAYERS>, MAX_QUERY_LENGTH> (&init_qry_scr)[N_BLOCKS],
		stream<hls::vector<type_t, N_LAYERS>, MAX_REFERENCE_LENGTH> (&init_ref_scr)[N_BLOCKS],
        int query_lengths, int reference_lengths,
		stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH> (&tb_streams)[N_BLOCKS]
		);
}

#endif
