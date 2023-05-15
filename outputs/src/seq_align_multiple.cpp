#include <gmp.h>

#define __gmp_const const

#include <stdio.h>
#include <math.h>
#include "params.h"
#include <cstdlib>
#include <iostream>
#include <ap_int.h>
#include "seq_align_multiple.h"
#include <hls_stream.h>
#include "PE.h"
#include "seq_align.h"



// Link to vitis_hls/2022.2/include

//using namespace std;
using namespace hls;

/*
 IMPORTANT: the indexing of the shift register is shift from smaller index to larger index.
 */
extern "C" {

	void seq_align_multiple(stream<ap_uint<2>, query_length> (&query_string_comp_blocks)[N_BLOCKS],
		stream<ap_uint<2>, ref_length> (&reference_string_comp_blocks)[N_BLOCKS],
		stream<tbp_t, ref_length + query_length> (&tb_streams)[N_BLOCKS],
		type_t dummies[N_BLOCKS]) {

#pragma HLS INTERFACE axis port=query_string_comp_blocks
#pragma HLS INTERFACE axis port=reference_string_comp_blocks
#pragma HLS INTERFACE axis port=tb_streams

#pragma HLS array_partition variable=query_string_comp_blocks type=block factor=8 dim=1
#pragma HLS array_partition variable=reference_string_comp_blocks type=block factor=8 dim=1



		type_t dummies_inner[N_BLOCKS];  // actual alignment score, max of the dp matrix

#pragma HLS array_partition variable=dummies type=complete
#pragma HLS array_partition variable=dummies_inner type=complete

		// create alignment group
		ALIGN_TYPE align_group[N_BLOCKS];

		// to be unrolled
		align_expand:
		for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
#pragma HLS unroll
			align_group[block_i].align(query_string_comp_blocks[block_i],
				reference_string_comp_blocks[block_i],
				&dummies_inner[block_i]);
		}

		for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
			dummies[block_i] = dummies_inner[block_i];
		}

	}

}
