#include <hls_stream.h>
#include <ap_int.h>

#ifndef VPP_CLI
#include "../include/seq_align_multiple.h"
#include "../include/PE.h"
#include "../include/align.h"
#else
#include "seq_align_multiple.h"
#include "PE.h"
#include "align.h"
#endif


#ifdef CMAKEDEBUG
#include <iostream>
#include <stdio.h>
#include <math.h>
#include <cstdlib>
#include "debug.h"
#endif

// #define DP_HLS_UNROLLED

using namespace hls;

/*
 IMPORTANT: the indexing of the shift register is shift from smaller index to larger index.
 */
extern "C"
{

	void seq_align_multiple_static(
		char_t (&querys)[N_BLOCKS][MAX_QUERY_LENGTH],
		char_t (&references)[N_BLOCKS][MAX_REFERENCE_LENGTH],
		idx_t (&query_lengths)[N_BLOCKS],
		idx_t (&reference_lengths)[N_BLOCKS],
		Penalties (&penalties)[N_BLOCKS],
		idx_t (&tb_is)[N_BLOCKS], idx_t (&tb_js)[N_BLOCKS], 
#ifdef CMAKEDEBUG
		tbr_t (&tb_streams)[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH],
		Container (&debugger)[N_BLOCKS])
#else
		tbr_t (&tb_streams)[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH])
#endif
	{

		// Initialize local buffer to copy the input data
		char_t querys_b[N_BLOCKS][MAX_QUERY_LENGTH];
		char_t references_b[N_BLOCKS][MAX_REFERENCE_LENGTH];
		idx_t query_lengths_b[N_BLOCKS];
		idx_t reference_lengths_b[N_BLOCKS];
		Penalties penalties_b[N_BLOCKS];
		idx_t tb_is_b[N_BLOCKS];
		idx_t tb_js_b[N_BLOCKS];
		tbr_t tb_streams_b[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];

// #pragma HLS bind_storage variable = tb_streams_b type = fifo impl = uram
// #pragma HLS bind_storage variable = querys_b type = ram_1p impl = uram
// #pragma HLS bind_storage variable = references_b type = ram_1p impl = uram


#pragma HLS array_partition	variable = querys_b	type = complete dim = 1
#pragma HLS array_partition	variable = references_b	type = complete dim = 1
#pragma HLS array_partition	variable = query_lengths_b	type = complete dim = 1
#pragma HLS array_partition	variable = reference_lengths_b	type = complete dim = 1
#pragma HLS array_partition	variable = penalties_b	type = complete dim = 1
#pragma HLS array_partition	variable = tb_is_b	type = complete dim = 1
#pragma HLS array_partition	variable = tb_js_b	type = complete dim = 1
#pragma HLS array_partition	variable = tb_streams_b	type = complete dim = 1


// #pragma HLS interface mode = axis port = querys_b
// #pragma HLS interface mode = axis port = references_b
// #pragma HLS interface mode = axis port = query_lengths_b
// #pragma HLS interface mode = axis port = reference_lengths_b
// #pragma HLS interface mode = axis port = penalties_b
// #pragma HLS interface mode = axis port = tb_is_b
// #pragma HLS interface mode = axis port = tb_js_b
// #pragma HLS interface mode = axis port = tb_streams_b



		for (int i = 0; i < N_BLOCKS; i++)
		{
#pragma HLS unroll
            Utils::Array::Copy(querys[i], querys_b[i]);
            Utils::Array::Copy(references[i], references_b[i]);

            query_lengths_b[i] = query_lengths[i];
            reference_lengths_b[i] = reference_lengths[i];
            penalties_b[i] = penalties[i];

			Align::BANDING::AlignStatic(
				querys_b[i],
				references_b[i],
				query_lengths_b[i],
				reference_lengths_b[i],
				penalties_b[i],
				tb_is_b[i], tb_js_b[i],
				tb_streams_b[i]
#ifdef CMAKEDEBUG
				,
				debugger[i]
#endif
			);

            Utils::Array::Copy(tb_streams_b[i], tb_streams[i]);
            tb_is[i] = tb_is_b[i];
            tb_js[i] = tb_js_b[i];

		}

	}

// 	void seq_align_multiple_static(
// 		char_t (&querys)[N_BLOCKS][MAX_QUERY_LENGTH],
// 		char_t (&references)[N_BLOCKS][MAX_REFERENCE_LENGTH],
// 		idx_t (&query_lengths)[N_BLOCKS],
// 		idx_t (&reference_lengths)[N_BLOCKS],
// 		Penalties (&penalties)[N_BLOCKS],
// 		idx_t (&tb_is)[N_BLOCKS], idx_t (&tb_js)[N_BLOCKS], 
// #ifdef CMAKEDEBUG
// 		tbr_t (&tb_streams)[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH],
// 		Container (&debugger)[N_BLOCKS])
// #else
// 		tbr_t (&tb_streams)[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH])
// #endif
// 	{
// #pragma HLS array_partition variable = querys dim = 1 type = complete
// #pragma HLS array_partition variable = references dim = 1 type = complete
// #pragma HLS array_partition variable = query_lengths dim = 1 type = complete
// #pragma HLS array_partition variable = reference_lengths dim = 1 type = complete
// #pragma HLS array_partition variable = tb_streams dim = 1 type = complete
// #pragma HLS array_partition variable = penalties dim = 1 type = complete
// #pragma HLS array_partition variable = tb_is dim = 1 type = complete
// #pragma HLS array_partition variable = tb_js dim = 1 type = complete

// 		for (int i = 0; i < N_BLOCKS; i++)
// 		{
// #pragma HLS unroll
// 			Align::BANDING::AlignStatic(
// 				querys[i],
// 				references[i],
// 				query_lengths[i],
// 				reference_lengths[i],
// 				penalties[i],
// 				tb_is[i], tb_js[i],
// 				tb_streams[i]
// #ifdef CMAKEDEBUG
// 				,
// 				debugger[i]
// #endif
// 			);

// 		}
// 	}

}
