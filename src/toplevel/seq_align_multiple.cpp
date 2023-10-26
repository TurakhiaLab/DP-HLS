#include <stdio.h>
#include <math.h>
#include "../../include/params.h"
#include <cstdlib>
#include <iostream>
#include <ap_int.h>
#include "../../include/seq_align_multiple.h"

#include <hls_stream.h>
#include "../../include/PE.h"
#include "../../include/align.h"
#include "../../include/initial.h"

#include <hls_np_channel.h>


// Link to vitis_hls/2022.2/include

// using namespace std;
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
	const Penalties penalties,
	tbr_t (&tb_streams)[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH]){

		// FIXME: specify the panelties

#pragma HLS array_partition variable=querys dim=1 type=complete
#pragma HLS array_partition variable=references dim=1 type=complete
#pragma HLS array_partition variable=query_lengths dim=1 type=complete
#pragma HLS array_partition variable=reference_lengths dim=1 type=complete
#pragma HLS array_partition variable=tb_streams dim=1 type=complete

		for (int i = 0; i < N_BLOCKS; i++){
#pragma HLS unroll
			Align::AlignStatic(
				querys[i],
				references[i],
				query_lengths[i],
				reference_lengths[i],
				penalties,
				tb_streams[i]
			);
			Utils::Debug::Translate::print_1d(
				"traceback", Utils::Debug::Translate::translate_1d<tbr_t, MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH>(tb_streams[i])
			);
		}
    }
}
