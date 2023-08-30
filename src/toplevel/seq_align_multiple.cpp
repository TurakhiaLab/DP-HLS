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
#include "../../include/utils.h"
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
void seq_align_multiple(
        stream<BlockInputs> &inputs,
        stream<BlockOutputs> &outputs)
	{

#pragma HLS dataflow
#ifdef DEBUG
		Debugger debug[N_BLOCKS];
		for (int i = 0; i < N_BLOCKS; i++)
		{
			debug[i] = Debugger(DEBUG_OUTPUT_PATH, DEBUG_FILENAME, i, query_lengths[i], reference_lengths[i]);
			align_group[i].debug = &debug[i];
			align_group[i].tracer.debugger = &debug[i];
		}
#endif // DEBUG

        hls_thread_local hls::split::round_robin<BlockInputs, N_BLOCKS> inputs_split;
        hls_thread_local hls::merge::round_robin<BlockOutputs, N_BLOCKS> outputs_merge;
        // Utils::PackInput(query, reference, init_qry_scr, init_ref_scr, query_length, reference_length, inputs_split.in);
        Utils::PackInputSimple(inputs, inputs_split.in);
        hls_thread_local hls::task align_tasks[N_BLOCKS];

	align_expand:
		for (int block_i = 0; block_i < N_BLOCKS; block_i++)
		{
#pragma HLS unroll

			align_tasks[block_i](
                    align_wp,
                inputs_split.out[block_i],
				outputs_merge.in[block_i]);
		}

        Utils::CollectTracebackSimple(outputs_merge.out, outputs);
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
