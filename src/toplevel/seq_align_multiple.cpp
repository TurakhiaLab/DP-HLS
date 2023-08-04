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
#include "../../include/initial.h"

#include <hls_np_channel.h>

#ifdef DEBUG
#include "debug.h"
#endif // DEBUG

// Link to vitis_hls/2022.2/include

// using namespace std;
using namespace hls;

/*
 IMPORTANT: the indexing of the shift register is shift from smaller index to larger index.
 */
extern "C"
{

	void seq_align_multiple(stream<char_t , MAX_QUERY_LENGTH> (&query_string_comp_blocks)[N_BLOCKS],
		stream<char_t, MAX_REFERENCE_LENGTH> (&reference_string_comp_blocks)[N_BLOCKS],
		stream<hls::vector<type_t, N_LAYERS>, MAX_QUERY_LENGTH> (&init_qry_scr)[N_BLOCKS],
		stream<hls::vector<type_t, N_LAYERS>, MAX_REFERENCE_LENGTH> (&init_ref_scr)[N_BLOCKS],
        int query_lengths, int reference_lengths,
		stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH> (&tb_streams)[N_BLOCKS])
	{

 #pragma HLS INTERFACE axis port = query_string_comp_blocks
 #pragma HLS INTERFACE axis port = reference_string_comp_blocks
 #pragma HLS INTERFACE axis port = init_qry_scr
 #pragma HLS INTERFACE axis port = init_ref_scr

 #pragma HLS INTERFACE axis port = tb_streams

//#pragma HLS array_partition variable = query_lengths dim = 1 type = block factor = 4
//#pragma HLS array_partition variable = reference_lengths dim = 1 type = block factor = 4
#pragma HLS array_partition variable = init_qry_scr dim = 1 type = block factor = 2
#pragma HLS array_partition variable = init_ref_scr dim = 1 type = block factor = 2
#pragma HLS array_partition variable = query_string_comp_blocks type = block factor = 2
#pragma HLS array_partition variable = reference_string_comp_blocks dim = 1 type = block factor = 2
#pragma HLS array_partition variable = tb_streams dim = 1 type = block factor = 2

		// create alignment group

		// Align align1;
		// Align align2;
		// Align align3;
		// Align align4;

#ifdef DEBUG
		Debugger debug[N_BLOCKS];
		for (int i = 0; i < N_BLOCKS; i++)
		{
			debug[i] = Debugger(DEBUG_OUTPUT_PATH, DEBUG_FILENAME, i, query_lengths[i], reference_lengths[i]);
			align_group[i].debug = &debug[i];
			align_group[i].tracer.debugger = &debug[i];
		}
#endif // DEBUG

        Align align[N_BLOCKS];

		// align1.align(
		// 	query_string_comp_blocks[0],
		// 	reference_string_comp_blocks[0],
		// 	query_lengths[0],
		// 	reference_lengths[0],
		// 	tb_streams[0],
		// 	init_values[0]);

		// align2.align(
		// 	query_string_comp_blocks[1],
		// 	reference_string_comp_blocks[1],
		// 	query_lengths[1],
		// 	reference_lengths[1],
		// 	tb_streams[1],
		// 	init_values[1]);

		// align3.align(
		// 	query_string_comp_blocks[2],
		// 	reference_string_comp_blocks[2],
		// 	query_lengths[2],
		// 	reference_lengths[2],
		// 	tb_streams[2],
		// 	init_values[2]);

		// align4.align(
		// 	query_string_comp_blocks[3],
		// 	reference_string_comp_blocks[3],
		// 	query_lengths[3],
		// 	reference_lengths[3],
		// 	tb_streams[3],
		// 	init_values[3]);

		// to be unrolled


	align_expand:
		for (int block_i = 0; block_i < N_BLOCKS; block_i++)
		{
#pragma HLS unroll

//            hls_thread_local hls::task tsk(align_wp,  query_string_comp_blocks[block_i],
//                                           reference_string_comp_blocks[block_i],
//                                           init_qry_scr[block_i],
//                                           init_ref_scr[block_i],
//                    //query_lengths,
//                    //reference_lengths,
//                                           tb_streams[block_i]);

			align.align(
				query_string_comp_blocks[block_i],
				reference_string_comp_blocks[block_i],
				init_qry_scr[block_i],
				init_ref_scr[block_i],
				query_lengths,
				reference_lengths,
				tb_streams[block_i]);
		}

#ifdef DEBUG
		for (int i = 0; i < N_BLOCKS; i++)
		{
			debug[i].print_block_score();
			debug[i].print_query();
			debug[i].print_reference();
			// debug[i].print_msg();
			debug[i].print_traceback_path_pointers();
		}
#endif // DEBUG
	}
}
