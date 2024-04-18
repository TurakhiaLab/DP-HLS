#ifndef SEQ_ALIGN_MULTIPLE_H
#define SEQ_ALIGN_MULTIPLE_H

#include "dp_hls_common.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <hls_stream.h>

#ifdef CMAKEDEBUG
#include "debug.h"
#endif

using namespace hls;

extern "C" {
	/**
	 * @brief Static kernel performing multiple pairwise sequence alignment. 
	 * The specific number of sequences is defined by N_BLOCKS. Once compiled to 
	 * kernel, the number of alignments cannot be changed without re-compiling. 
	 * 
	 */
	void seq_align_multiple_static(
		char_t (&querys)[N_BLOCKS][MAX_QUERY_LENGTH],
		char_t (&references)[N_BLOCKS][MAX_REFERENCE_LENGTH],
		idx_t (&query_lengths)[N_BLOCKS],
		idx_t (&reference_lengths)[N_BLOCKS],
		Penalties (&penalties)[N_BLOCKS],
		idx_t (&tb_is)[N_BLOCKS], idx_t (&tb_js)[N_BLOCKS], 
		tbr_t (&tb_streams)[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH]
#ifdef CMAKEDEBUG
		, Container (&debugger)[N_BLOCKS]
#endif
		);

	// Have maximum input length of 2048 for 2 bit inputs. 
	// void seq_align_multiple_dynamic(
	// 	stream<ArrayPack<char_t, MAX_QUERY_LENGTH>> &querys,
	// 	stream<ArrayPack<char_t, MAX_REFERENCE_LENGTH>> &references,
	// 	stream<idx_t> &query_lengths,
	// 	stream<idx_t> &reference_lengths,
	// 	stream<tbp_t> &tb_streams);
	
}

#endif
