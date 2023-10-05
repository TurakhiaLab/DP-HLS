/**
 * @file seq_align.h
 * @author Yingqi Cao (yic033@ucsd.edu)
 * @brief This file contains codes for align functions. 
 * @version 0.1
 * @date 2023-09-25
 * 
 * @copyright Copyright (c) 2023
 * 
 */

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

	/**
	 * @brief Copy PE_NUM number of query values to the local
	 * query buffer. 
	 * 
	 * @param offset: Offset in the query to copy. 
	 * @param len: Length to copy. 
	 */
	void PrepareLocalQuery(
		char_t (&query)[MAX_QUERY_LENGTH],
		char_t (&local_query)[PE_NUM],
		idx_t offset,
		idx_t len
	);

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
	void ChunkComputeSoB(
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

	/**
	 * @brief Compute the traceback pointers for a chunk of the size PE_NUM * REFERENCE_LENGTH.
	 * 
	 * @param chunk_row_offset : The row offset in the whole traceback matrix the beginning of the chunk.
	 * @param query : Query sequence with length PE_NUM. 
	 * @param init_col_scr : Initial score for the first column of this chunk. 
	 * @param query_length : Length of the query < PE_NUM.
	 * @param reference_length : Length of the reference < MAX_REFERENCE_LENGTH. 
	 * @param max : Score pack of the maximium score of this chunk. 
	 */
	void ChunkCompute(
		idx_t chunk_row_offset,
		input_char_block_t &query,
		char_t (&reference)[MAX_REFERENCE_LENGTH],
		score_block_t &init_col_scr,
		hls::vector<type_t, N_LAYERS> (&init_row_scr)[MAX_REFERENCE_LENGTH],
		int query_length, int reference_length,
		hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
		ScorePack &max,  // write out so must pass by reference
		tbp_t (*chunk_tbp_out)[MAX_REFERENCE_LENGTH]
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
		tbp_t (*chunk_tbp_out)[MAX_REFERENCE_LENGTH]
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

	namespace FindMax {
		// void UpdateMaximium(
		// 	idx_t chunk_row_offset,
		// 	idx_t (&pe_offset)[PE_NUM],
		// 	bool (&predicate)[PE_NUM],
		// 	ScorePack (&max)[PE_NUM],
		// 	score_block_t &scores
		// );

		void UpdatePEMaximum(type_t (&new_scr)[PE_NUM], ScorePack (&max)[PE_NUM], idx_t (&pe_offsets)[PE_NUM], idx_t chunk_offset, bool (&predicate)[PE_NUM]);

		void ExtractScoresLayer(score_block_t &scores, idx_t layer, type_t (&extracted)[PE_NUM]);

		void InitPE(ScorePack (&packs)[PE_NUM]);

		void GetChunkMax(ScorePack (&max)[PE_NUM], ScorePack &chunk_max);

		// void ChunkMaximium();

		// void Sender ()  // Used to send the scores out the compute logic by blocks to find the max. Implement in the future
	};

	/**
	 * @brief Perform Pairwise alignment for two sequences. 
	 * 
	 * @param query: Query sequence buffer.
	 * @param reference: Reference sequence buffer.
	 * @param query_length: Length of the query.
	 * @param reference_length: Length of the reference.
	 * @param tb_streams: Output traceback path.
	 */
	void AlignStatic(
		char_t (&querys)[MAX_QUERY_LENGTH],
		char_t (&references)[MAX_REFERENCE_LENGTH],
		idx_t query_length,
		idx_t reference_length,
		tbr_t (&tb_streams)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH]
	);

	/**
	 * @brief Initialize initial scores for the first column and 
	 * row on the device. 
	 * 
	 * @param init_col_scr: Initial scores for the first column.
	 * @param init_row_scr: Initial scores for the first row.
	 */
	void InitializeScores(
		score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
		score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH]
	);

	void ChunkMax(ScorePack &max, ScorePack new_scr);
	
	void UpdatePEOffset(idx_t (&pe_offset)[PE_NUM], bool (&predicate)[PE_NUM]);

}

#endif // !SEQ_ALIGN_H
