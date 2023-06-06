#include <gmp.h>

#define __gmp_const const

#include <stdio.h>
#include <math.h>
#include "../../include/params.h"
#include <cstdlib>
#include <iostream>
#include <ap_int.h>
#include "../../include/seq_align_multiple.h"
#include <hls_stream.h>
#include "../../include/PE.h"
#include "../../include/seq_align.h"

#ifdef DEBUG
#include "debug.h"
#endif // DEBUG




// Link to vitis_hls/2022.2/include

//using namespace std;
using namespace hls;

/*
 IMPORTANT: the indexing of the shift register is shift from smaller index to larger index.
 */
extern "C" {

	void seq_align_multiple(stream<char_t , MAX_QUERY_LENGTH> (&query_string_comp_blocks)[N_BLOCKS],
		stream<char_t , MAX_REFERENCE_LENGTH> (&reference_string_comp_blocks)[N_BLOCKS],
		stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH> (&tb_streams)[N_BLOCKS],
		int query_lengths[N_BLOCKS], int reference_lengths[N_BLOCKS],
		type_t dummies[N_BLOCKS]) {

#pragma HLS INTERFACE axis port=query_string_comp_blocks
#pragma HLS INTERFACE axis port=reference_string_comp_blocks
#pragma HLS INTERFACE axis port=tb_streams

#pragma HLS array_partition variable=query_string_comp_blocks type=block factor=4 dim=1
#pragma HLS array_partition variable=reference_string_comp_blocks type=block factor=4 dim=1

		type_t dummies_inner[N_BLOCKS];  // actual alignment score, max of the dp matrix

#pragma HLS array_partition variable=dummies type=complete
#pragma HLS array_partition variable=dummies_inner type=complete

		// create alignment group
		ALIGN_TYPE align_group[N_BLOCKS];

#ifdef DEBUG
		Debugger debug[N_BLOCKS];
		for (int i = 0; i < N_BLOCKS; i++) {
			debug[i] = Debugger(DEBUG_OUTPUT_PATH, DEBUG_FILENAME, i, query_lengths[i], reference_lengths[i]);
			align_group[i].debug = &debug[i];
		}
#endif // DEBUG


		// to be unrolled
		align_expand:
		for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
#pragma HLS unroll
			align_group[block_i].align(
				query_string_comp_blocks[block_i],
				reference_string_comp_blocks[block_i],
				query_lengths[block_i],
				reference_lengths[block_i],
				tb_streams[block_i],
				&dummies_inner[block_i]);
		}

		for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
			dummies[block_i] = dummies_inner[block_i];
		}

#ifdef DEBUG
		for (int i = 0; i < N_BLOCKS; i++){
			debug[i].print_block_score();
			debug[i].print_query();
			debug[i].print_reference();
			debug[i].print_msg();
		}
#endif // DEBUG


	}

}
