#ifndef SEQ_ALIGN_MULTIPLE_H
#define SEQ_ALIGN_MULTIPLE_H

//function prototype
#include <gmp.h>
#define __gmp_const const
#include "params.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <hls_stream.h>
#include "initial.h"

using namespace hls;

//typedef int type_t;
//typedef ap_int<16> type_t;

extern "C" {
	void seq_align_multiple(stream<char_t , MAX_QUERY_LENGTH> (&query_string_comp_blocks)[N_BLOCKS],
		stream<char_t, MAX_REFERENCE_LENGTH> (&reference_string_comp_blocks)[N_BLOCKS],
		stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH> (&tb_streams)[N_BLOCKS],
		int query_lengths[N_BLOCKS], int reference_lengths[N_BLOCKS],
		InitialValues (&init_values)[N_BLOCKS]);
}

#endif
