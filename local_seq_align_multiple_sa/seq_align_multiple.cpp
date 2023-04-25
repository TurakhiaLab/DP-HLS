#include <gmp.h>

#define __gmp_const const

#include <stdio.h>
#include <math.h>
#include "params.h"
#include <cstdlib>
#include <iostream>
#include <ap_int.h>
#include "seq_align_multiple.h"
#include <ap_shift_reg.h>
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

	void seq_align_multiple(stream<ap_uint<2>, query_length> query_string_comp_blocks[N_BLOCKS],
		stream<ap_uint<2>, ref_length> reference_string_comp_blocks[N_BLOCKS],
		type_t dummies[N_BLOCKS]) {

#pragma HLS INTERFACE axis port=query_string_comp_blocks
#pragma HLS INTERFACE axis port=reference_string_comp_blocks


#pragma HLS array_partition variable=query_string_comp_blocks type=block factor=N_BLOCKS dim=1
#pragma HLS array_partition variable=reference_string_comp_blocks type=block factor=N_BLOCKS dim=1
//#pragma HLS array_partition variable=reference_string_comp type=block factor=N_BLOCKS
//#pragma HLS array_partition variable=last_pe_score type=block factor=N_BLOCKS
//#pragma HLS array_partition variable=last_pe_scoreIx type=block factor=N_BLOCKS

		type_t dummies_inner[N_BLOCKS];  // actual alignment score, max of the dp matrix

		// create alignment group
		SeqAlign align_group[N_BLOCKS];


		static ap_shift_reg<ap_fixed<M, N>, 2> dp_mem[N_BLOCKS][PE_num];
		static ap_shift_reg<type_t, 1> Ix_mem[N_BLOCKS][PE_num];
		static ap_shift_reg<type_t, 1> Iy_mem[N_BLOCKS][PE_num];
		stream<type_t, ref_length> last_pe_score[N_BLOCKS];
		stream<type_t, ref_length> last_pe_scoreIx[N_BLOCKS];

#pragma HLS array_partition variable=dp_mem type=block factor=N_BLOCKS
#pragma HLS array_partition variable=Ix_mem type=block factor=N_BLOCKS
#pragma HLS array_partition variable=Iy_mem type=block factor=N_BLOCKS

		for (int block_i = 0; block_i < ref_length; block_i++) {
			for (int i = 0; i < ref_length; i++) {
				last_pe_score[block_i].write(0);
				// last_pe_scoreIx[block_i].write(0);
			}
		}

		// to be unrolled
		align_expand:
		for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
#pragma HLS UNROLL factor=8

			align_group[block_i].align(query_string_comp_blocks[block_i],
				reference_string_comp_blocks[block_i],
				dp_mem[block_i],
				Ix_mem[block_i],
				Iy_mem[block_i],
				last_pe_score[block_i],
				last_pe_scoreIx[block_i],
				dummies_inner[block_i]);
		}

		for (int block_i = 0; block_i < N_BLOCKS; block_i++) {
			dummies[block_i] = dummies_inner[block_i];
		}

	}

}
