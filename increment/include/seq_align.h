#ifndef SEQ_ALIGN_H
#define SEQ_ALIGN_H


#include <hls_stream.h>
#include <ap_int.h>

#include "PE.h"
#include "params.h"
#include "seq_align_multiple.h"
#include "initial.h"
#include <hls_vector.h>
#ifdef DEBUG
#include "debug.h"
#endif // DEBUG


using namespace hls;

void align_wp(hls::stream<char_t, MAX_QUERY_LENGTH> &query_stream,
              hls::stream<char_t, MAX_REFERENCE_LENGTH> &reference_stream,
              hls::stream<hls::vector<type_t, N_LAYERS>, MAX_QUERY_LENGTH> &init_qry_scr,
              hls::stream<hls::vector<type_t, N_LAYERS>, MAX_REFERENCE_LENGTH> &init_ref_scr,
        //int query_length, int reference_length,
              hls::stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH> &traceback_out);

namespace Align{
	void DPMemUpdate(
		hls::stream_of_blocks<dp_mem_block_t> &dp_mem_in,
		hls::stream_of_blocks<score_block_t> &score_in,
		hls::stream_of_blocks<dp_mem_block_t> &dp_mem_out
	);

	void InitializeChunkColScore(
		score_vec_t (&init_col_scr)[PE_NUM],
		stream_of_blocks<dp_mem_block_t> &dp_mem_out
	);

	/**
	 * @brief Prepare blocks of left, up, an diagonal scores for ExpandComputeBlock function. 
	 * 
	 * @param dp_mem_in: DP memory that holds the scores of previous two wavefronts. 
	 * @param last_chunk_0: Last row scores from the previous chunk. 
	 * @param last_chunk_1: Last row scores from the previous chunk backup. 
	 * @param up_out: Blocks of up scores.
	 * @param diag_out: Blocks of diagonal scores.
	 * @param left_out: Blocks of left scores.
	 */
	void PrepareScores(
		hls::stream_of_blocks<dp_mem_block_t> &dp_mem_in,
		hls::vector<type_t, N_LAYERS> last_chunk_0, hls::vector<type_t, N_LAYERS> last_chunk_1,
		hls::stream_of_blocks<score_block_t> &up_out,
		hls::stream_of_blocks<score_block_t> &diag_out,
		hls::stream_of_blocks<score_block_t> &left_out
	);
	
	/**
	 * @brief Compute a chunk of the alignment matrix. Output the chunk traceback pointers. 
	 * 
	 * @param query 
	 * @param init_col_scr 
	 * @param query_length 
	 * @param reference_length 
	 * @param max 
	 * @param tbp_out 
	 */
	void ChunkCompute(
		idx_t chunk_row_offset,
		input_char_block_t &query,
		char_t (&reference)[MAX_REFERENCE_LENGTH],
		score_block_t &init_col_scr,
		hls::vector<type_t, N_LAYERS> (&init_row_scr)[MAX_REFERENCE_LENGTH],
		int query_length, int reference_length,
		hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
		ScorePack max, 
		hls::stream_of_blocks<tbp_chunk_block_t> tbp_out
	);

	void WriteInitialColScore(int i, score_vec_t (&init_scores)[PE_NUM], 
		hls::stream_of_blocks<dp_mem_block_t> &dp_mem_in,
		hls::stream_of_blocks<dp_mem_block_t> &scores_out);

	void ArrangeTBP(
		hls::stream_of_blocks<tbp_block_t> &tbp_in,
		bool (&predicate)[PE_NUM], idx_t (&pe_offset)[PE_NUM],
		hls::stream_of_blocks<tbp_chunk_block_t> &tbp_chunk_out
	);
}

#endif // !SEQ_ALIGN_H
