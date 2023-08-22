#ifndef SEQ_ALIGN_H
#define SEQ_ALIGN_H

#include <ap_int.h>
#include <hls_task.h>
#include <hls_vector.h>
#include <hls_stream.h>
#include <hls_streamofblocks.h>

#include "./params.h"
#include "./PE.h"
#include "./utils.h"
#include "./initial.h"


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
	void DPMemUpdateBlock(
		hls::stream_of_blocks<dp_mem_block_t> &dp_mem_in,
		hls::stream_of_blocks<score_block_t> &score_in,
		hls::stream_of_blocks<dp_mem_block_t> &dp_mem_out
	);

	void DPMemUpdateArr(
		dp_mem_block_t &dp_mem_in,
		score_block_t &score_in
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
	void PrepareScoresBlock(
		hls::stream_of_blocks<dp_mem_block_t> &dp_mem_in,
		score_vec_t (&init_col_scr)[PE_NUM], int id, 
		hls::stream_of_blocks<score_vec_t[2]> &last_chunk_scr,
		hls::stream_of_blocks<score_block_t> &up_out,
		hls::stream_of_blocks<score_block_t> &diag_out,
		hls::stream_of_blocks<score_block_t> &left_out,
		hls::stream_of_blocks<dp_mem_block_t> &dp_mem_out
	);

	void PrepareScoresArr(
		dp_mem_block_t &dp_mem_in,
		score_vec_t (&init_col_scr)[PE_NUM], int id, 
		score_vec_t (&last_chunk_scr)[2],
		score_block_t &up_out,
		score_block_t &diag_out,
		score_block_t &left_out);

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
	void ChunkComputeBlock(
		idx_t chunk_row_offset,
		input_char_block_t &query,
		char_t (&reference)[MAX_REFERENCE_LENGTH],
		score_block_t &init_col_scr,
		hls::vector<type_t, N_LAYERS> (&init_row_scr)[MAX_REFERENCE_LENGTH],
		int query_length, int reference_length,
		hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
		ScorePack &max,  // write out so must pass by reference
		hls::stream_of_blocks<tbp_chunk_block_t> &chunk_tbp_out
	);

	void ChunkComputeArr(
		idx_t chunk_row_offset,
		input_char_block_t &query,
		char_t (&reference)[MAX_REFERENCE_LENGTH],
		score_block_t &init_col_scr,
		hls::vector<type_t, N_LAYERS> (&init_row_scr)[MAX_REFERENCE_LENGTH],
		int query_length, int reference_length,
		hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
		ScorePack &max,  // write out so must pass by reference
		tbp_chunk_block_t &chunk_tbp_out
	);

	void WriteInitialColScore(int i, score_vec_t (&init_scores)[PE_NUM], 
		hls::stream_of_blocks<dp_mem_block_t> &dp_mem_in,
		hls::stream_of_blocks<dp_mem_block_t> &scores_out);

	void ArrangeTBPBlock(
		hls::stream_of_blocks<tbp_block_t> &tbp_in,
		bool (&predicate)[PE_NUM], idx_t (&pe_offset)[PE_NUM],
		hls::stream_of_blocks<tbp_chunk_block_t> &tbp_chunk_out
	);

	void ArrangeTBPArr(
		tbp_block_t &tbp_in,
		bool (&predicate)[PE_NUM], idx_t (&pe_offset)[PE_NUM],
		tbp_chunk_block_t &tbp_chunk_out
	);

	void ShiftPredicate(bool (&predicate)[PE_NUM], int idx, int query_len, int reference_len); 

	void ShiftReferece(
		char_t (&local_reference)[PE_NUM], char_t (&reference)[MAX_REFERENCE_LENGTH],
		int idx, int ref_len
	);

	void PreserveRowScore(
		hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
		score_block_t &scores,
		bool (&predicate)[PE_NUM], 
		idx_t (&pe_offset)[PE_NUM]
	);

	// namespace FMWorkers {
	// 	void WorkersTop(
	// 		idx_t chunk_row_offset,
	// 		idx_t (&pe_offset)[PE_NUM],

	// 	);
	// }

	
}

#endif // !SEQ_ALIGN_H
