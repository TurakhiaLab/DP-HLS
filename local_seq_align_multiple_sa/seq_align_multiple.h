#ifndef SEQ_ALIGN_MULTIPLE_H
#define SEQ_ALIGN_MULTIPLE_H

//function prototype
#include <gmp.h>
#define __gmp_const const
#include "params.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <hls_stream.h>

using namespace hls;

//typedef int type_t;
//typedef ap_int<16> type_t;

extern "C" {
	void seq_align_multiple(stream<ap_uint<2>, query_length> (&query_string_comp_blocks)[N_BLOCKS],
		stream<ap_uint<2>, ref_length> (&reference_string_comp_blocks)[N_BLOCKS],
		type_t dummies[N_BLOCKS]);
}

#endif
