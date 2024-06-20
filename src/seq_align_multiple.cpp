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
		char_t (&querys)[MAX_QUERY_LENGTH][N_BLOCKS],
		char_t (&references)[MAX_REFERENCE_LENGTH][N_BLOCKS],
		idx_t (&query_lengths)[N_BLOCKS],
		idx_t (&reference_lengths)[N_BLOCKS],
		const Penalties (&penalties)[N_BLOCKS],
#ifdef LOCAL_TRANSITION_MATRIX
		const type_t (&transitions)[TRANSITION_MATRIX_SIZE][TRANSITION_MATRIX_SIZE],
#endif
		idx_t (&tb_is)[N_BLOCKS], idx_t (&tb_js)[N_BLOCKS]
#ifndef NO_TRACEBACK
		, tbr_t (&tb_streams)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH][N_BLOCKS]
#endif
#ifdef SCORED
		, type_t (&scores)[N_BLOCKS]
#endif
#ifdef CMAKEDEBUG
		, Container (&debugger)[N_BLOCKS]
#endif
	){
		// Initialize local buffer to copy the input data
		char_t querys_b[N_BLOCKS][MAX_QUERY_LENGTH];
		char_t references_b[N_BLOCKS][MAX_REFERENCE_LENGTH];
		idx_t query_lengths_b[N_BLOCKS];
		idx_t reference_lengths_b[N_BLOCKS];
		Penalties penalties_b[N_BLOCKS];
		idx_t tb_is_b[N_BLOCKS];
		idx_t tb_js_b[N_BLOCKS];
#ifndef NO_TRACEBACK
		tbr_t tb_streams_b[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];
#endif
#ifdef SCORED
		type_t scores_b[N_BLOCKS];
#endif
#ifdef LOCAL_TRANSITION_MATRIX
		type_t transitions_block[N_BLOCKS][TRANSITION_MATRIX_SIZE][TRANSITION_MATRIX_SIZE];
#endif

		// Attempted to use URAM but it didn't work.
		// #pragma HLS bind_storage variable = tb_streams_b type = fifo impl = uram
		// #pragma HLS bind_storage variable = querys_b type = ram_1p impl = uram
		// #pragma HLS bind_storage variable = references_b type = ram_1p impl = uram

#pragma HLS array_partition variable = querys_b type = complete dim = 1
#pragma HLS array_partition variable = references_b type = complete dim = 1
#pragma HLS array_partition variable = query_lengths_b type = complete dim = 1
#pragma HLS array_partition variable = reference_lengths_b type = complete dim = 1
#pragma HLS array_partition variable = penalties_b type = complete dim = 1
#pragma HLS array_partition variable = tb_is_b type = complete dim = 1
#pragma HLS array_partition variable = tb_js_b type = complete dim = 1

#ifndef NO_TRACEBACK
#pragma HLS array_partition variable = tb_streams_b type = complete dim = 1
#endif

#ifdef SCORED
#pragma HLS array_partition variable = scores_b type = complete dim = 1
#endif

#ifdef LOCAL_TRANSITION_MATRIX
#pragma HLS array_partition variable = transitions_block type = complete dim = 1
#endif


		// F1 doesn't support axis on the top level. But for other FPGA it might be more optimized.
		// #pragma HLS interface mode = axis port = querys_b
		// #pragma HLS interface mode = axis port = references_b
		// #pragma HLS interface mode = axis port = query_lengths_b
		// #pragma HLS interface mode = axis port = reference_lengths_b
		// #pragma HLS interface mode = axis port = penalties_b
		// #pragma HLS interface mode = axis port = tb_is_b
		// #pragma HLS interface mode = axis port = tb_js_b
		// #pragma HLS interface mode = axis port = tb_streams_b

	CopyQuerys:
		for (idx_t i = 0; i < MAX_QUERY_LENGTH; i++)
		{
#pragma HLS PIPELINE II = 1
			for (idx_t j = 0; j < N_BLOCKS; j++)
			{
				querys_b[j][i] = querys[i][j];
			}
		}

	CopyReferences:
		for (idx_t i = 0; i < MAX_REFERENCE_LENGTH; i++)
		{
#pragma HLS PIPELINE II = 1
			for (idx_t j = 0; j < N_BLOCKS; j++)
			{
				references_b[j][i] = references[i][j];
			}
		}

	ReadQueryLengths:
		for (int i = 0; i < N_BLOCKS; i++)
		{
			query_lengths_b[i] = query_lengths[i];
		}

	ReadReferenceLengths:
		for (int i = 0; i < N_BLOCKS; i++)
		{
			reference_lengths_b[i] = reference_lengths[i];
		}

	ReadPenalties:
		for (int i = 0; i < N_BLOCKS; i++)
		{
			penalties_b[i] = penalties[i];
		}

#ifdef LOCAL_TRANSITION_MATRIX
	// broadcast the local transitions to each block
	for (idx_t i = 0; i < TRANSITION_MATRIX_SIZE; i++)
	{
		for (idx_t j = 0; j < TRANSITION_MATRIX_SIZE; j++)
		{
			for (idx_t k = 0; k < N_BLOCKS; k++)
			{
#pragma HLS unroll
				transitions_block[k][i][j] = transitions[i][j];
			}
		}
	}
#endif

		for (int i = 0; i < N_BLOCKS; i++)
		{
#pragma HLS unroll
#ifdef CMAKEDEBUG
			cout << "Aligning Block " << i << endl;
#endif
			Align::BANDING_NAMESPACE::AlignStatic(
				querys_b[i],
				references_b[i],
				query_lengths_b[i],
				reference_lengths_b[i],
				penalties_b[i],
#ifdef LOCAL_TRANSITION_MATRIX
				transitions_block[i],	
#endif
				tb_is_b[i], tb_js_b[i]
#ifndef NO_TRACEBACK
				, tb_streams_b[i]
#endif
#ifdef SCORED
				, scores_b[i]
#endif
#ifdef CMAKEDEBUG
				, debugger[i]
#endif
			);
		}

#ifndef NO_TRACEBACK
	WriteTBP:
		for (idx_t i = 0; i < MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH; i++)
		{
#pragma HLS PIPELINE II = 1
			for (idx_t j = 0; j < N_BLOCKS; j++)
			{
				tb_streams[i][j] = tb_streams_b[j][i];
			}
		}
#endif

	ExtractTracebackCoordinate:
		for (int i = 0; i < N_BLOCKS; i++)
		{
			tb_is[i] = tb_is_b[i];
			tb_js[i] = tb_js_b[i];
		}

#ifdef SCORED
	ExtractAlignmentScores:
		for (int i = 0; i < N_BLOCKS; i++)
		{
			scores[i] = scores_b[i];
		}	
#endif

	}
}
