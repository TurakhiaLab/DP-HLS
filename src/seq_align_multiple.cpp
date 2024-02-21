#include <hls_stream.h>
#include <ap_int.h>

#include "seq_align_multiple.h"
#include "PE.h"
#include "align.h"

#ifdef CMAKEDEBUG
#include <iostream>
#include <stdio.h>
#include <math.h>
#include <cstdlib>
#include "debug.h"
#endif

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
		// AXIS Interface is not allowed in F1
		// #pragma HLS interface mode = axis port = querys
		// #pragma HLS interface mode = axis port = references
		// #pragma HLS interface mode = axis port = query_lengths
		// #pragma HLS interface mode = axis port = reference_lengths
		// #pragma HLS interface mode = axis port = penalties
		// #pragma HLS interface mode = axis port = tb_streams

		// Initialize local buffer to copy the input data
		char_t querys_b[N_BLOCKS][MAX_QUERY_LENGTH];
		char_t references_b[N_BLOCKS][MAX_REFERENCE_LENGTH];
		idx_t query_lengths_b[N_BLOCKS];
		idx_t reference_lengths_b[N_BLOCKS];
		Penalties penalties_b[N_BLOCKS];
		idx_t tb_is_b[N_BLOCKS];
		idx_t tb_js_b[N_BLOCKS];
		tbr_t tb_streams_b[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];

		// copy the input data to local buffer
		for (int i = 0; i < N_BLOCKS; i++)
		{
			for (int j = 0; j < MAX_QUERY_LENGTH; j++)
			{

				querys_b[i][j] = querys[i][j];
			}
			for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
			{

				references_b[i][j] = references[i][j];
			}
			query_lengths_b[i] = query_lengths[i];
			reference_lengths_b[i] = reference_lengths[i];
			penalties_b[i] = penalties[i];
			tb_is_b[i] = tb_is[i];
			tb_js_b[i] = tb_js[i];
		}
#pragma HLS interface mode = axis port = querys_b
#pragma HLS interface mode = axis port = references_b
#pragma HLS interface mode = axis port = query_lengths_b
#pragma HLS interface mode = axis port = reference_lengths_b
#pragma HLS interface mode = axis port = penalties_b
#pragma HLS interface mode = axis port = tb_is_b
#pragma HLS interface mode = axis port = tb_js_b
#pragma HLS interface mode = axis port = tb_streams_b

#pragma HLS array_partition	variable = querys_b	type = complete dim = 1
#pragma HLS array_partition	variable = references_b	type = complete dim = 1
#pragma HLS array_partition	variable = query_lengths_b	type = complete dim = 1
#pragma HLS array_partition	variable = reference_lengths_b	type = complete dim = 1
#pragma HLS array_partition	variable = penalties_b	type = complete dim = 1
#pragma HLS array_partition	variable = tb_is_b	type = complete dim = 1
#pragma HLS array_partition	variable = tb_js_b	type = complete dim = 1
#pragma HLS array_partition	variable = tb_streams_b	type = complete dim = 1

		for (int i = 0; i < N_BLOCKS; i++)
		{
#pragma HLS unroll
			Align::AlignStatic(
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

// #ifdef CMAKEDEBUG
// 			// Print The Traceback Pointer Array
// 			printf("Traceback Block: %d\n", i);
// 			for (int j = 0; j < query_lengths[i] + reference_lengths[i]; j++)
// 			{
// 				printf("%d ", tb_streams[i][j].to_int());
// 			}
// 			printf("\n");
// #endif
		}

		// copy the output data to the output buffer
		for (int i = 0; i < N_BLOCKS; i++)
		{
			for (int j = 0; j < MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH; j++)
			{
				tb_streams[i][j] = tb_streams_b[i][j];
			}
		}

	}
}
