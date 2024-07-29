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
#include <hls_vector.h>
#include <hls_stream.h>

#include "dp_hls_common.h"
#include "PE.h"
#include "utils.h"
#include "frontend.h"

#ifdef CMAKEDEBUG
#include "./debug.h"
#endif // DBEUG

using namespace hls;

/**
 * @brief Namespace including the functions of the kernel architecture. 
 * 
 */
namespace Align
{

	/**
	 * @brief At beginning of the computation of each strip, it copy a PE_NUM number of the global query characters
	 * into the local query buffer. 
	 * @param query Query sequence
	 * @param local_query Local query is a buffer of PE_NUM length that is read in parallel by PEs during the wavefront computation.
	 * @param offset The offset in the global query to start copying.
	 */
	void PrepareLocalQuery(
		char_t (&query)[MAX_QUERY_LENGTH],
		char_t (&local_query)[PE_NUM],
		const idx_t offset);

	void InitializeChunkColScore(
		score_vec_t (&init_col_scr)[PE_NUM],
		stream_of_blocks<dp_mem_block_t> &dp_mem_out);

	void PrepareScoresArr(
		dp_mem_block_t &dp_mem_in,
		score_vec_t (&init_col_scr)[PE_NUM], int id,
		score_vec_t (&last_chunk_scr)[2],
		wavefront_scores_t &up_out,
		wavefront_scores_t &diag_out,
		wavefront_scores_t &left_out);

	/**
	 * @brief This function merge PrepareLocalQuery function and CopyColScore function into one, where CopyColScore is a 
	 * function to copy a column of initial scores from the global buffer to each PE's local buffer before the computation 
	 * of each chunk.  
	 * @tparam PE_NUM_T Number of PE
	 * @param query Query Sequence
	 * @param local_query Local Query Buffer
	 * @param init_col_scr Initial Column Scores
	 * @param init_col_scr_local Local Initial Column Score Buffer.
	 * @param idx The offset in the global buffer to copy. 
	 */
	template <int PE_NUM_T>
	void PrepareLocals(
		const char_t (&query)[MAX_QUERY_LENGTH],
		char_t (&local_query)[PE_NUM_T],
		score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
		chunk_col_scores_inf_t &init_col_scr_local,
		bool (&col_pred)[PE_NUM], const idx_t local_query_len,
		const idx_t idx)
	{
		init_col_scr_local[0] = init_col_scr_local[PE_NUM_T]; // backup the last element from previous chunk
		for (int i = 0; i < PE_NUM_T; i++)
		{
			init_col_scr_local[i + 1] = init_col_scr[idx + i];
			local_query[i] = query[idx + i];
			col_pred[i] = i < local_query_len;
		}
	}

	/**
	 * @brief Initialize two lists of coordinates, x coordinate and y coordinate, for each chunk.
	 * 		Theis function is called within the chunk compute function.
	 * 		This is especially useful if the chunk doesn't start at the beginning, i.e. after chunk
	 * 		column offset is developed.
	 * @param chunk_row_offset Initial Row of a Chunk
	 * @param chunk_col_offset Initial Column of a Chunk.
	 * @param ic Actual Global Coordinates for i.
	 * @param jc Actual Global Coordinates for j.
	 */
	void InitializeChunkCoordinates(idx_t chunk_row_offset, idx_t chunk_col_offset, hls::vector<idx_t, PE_NUM> &ic, hls::vector<idx_t, PE_NUM> &jc);

	/**
	 * Store the traceback pointers of PE at the correct location in the traceback pointer matrix, based on the
	 * predicate and current p_col_offset.
	 * @param tbp_in The buffer receiving the traceback pointer from the PE output.
	 * @param p_col_offset Physical column of a wavefront of traceback pointers.
	 * @param predicate Predicates.
	 * @param chunk_tbp_out The traceback pointer memory.
	 */
	void ArrangeTBP(
		const tbp_vec_t &tbp_in,
		const idx_t &p_col_offset,
		const bool (&predicate)[PE_NUM],
		tbp_t (&chunk_tbp_out)[PE_NUM][TBMEM_SIZE]);

	/**
	 * @brief Determine the predicate values by constantantly shifting the predicate array with truth values. 
	 * @param predicate Predicate Array.
	 * @param idx Wavefront Index.
	 * @param query_len Actual query Length.
	 * @param reference_len Actual reference Length.
	 */
	void ShiftPredicate(bool (&predicate)[PE_NUM], int idx, int query_len, int reference_len);

	/**
	 * @brief Shift into the local reference buffer a new reference element, given current wavefront index and reference length.
	 * @param local_reference The local reference buffer. 
	 * @param reference The reference. 
	 * @param idx Wavefront index. 
	 * @param ref_len Actual reference length. 
	 */
	void ShiftReference(
		char_t (&local_reference)[PE_NUM], const char_t (&reference)[MAX_REFERENCE_LENGTH],
		int idx, int ref_len);

	/**
	 * @brief Write the last PE's output score to the preserved_row_score buffer to be used in the next chunk. 
	 * 
	 * @param score_vec The last PE's output score.
	 * @param predicate_pe_last The last PE's predicate value. Write out the score only if the predicate is true.
	 * @param idx The index in the buffer to write. 
	 */
	void PreserveRowScore(
		score_vec_t (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
		const score_vec_t score_vec,
		const bool predicate_pe_last,
		const idx_t idx);

	/**
	 * @deprecated This function is deprecated. Please see UpdateDPMemSep which is used in the kernel. .
	 * @brief Updated the content of the DP Memory with the new scores. It saparates the step of shifting and setting the 
	 * specific cell with initial scores.  
	 *
	 * @param dp_mem DP Memory
	 * @param i The index of the wavefront.
	 * @param init_col_scr Initial Column Scores
	 * @param init_row_scr Initial Row Scores
	 */
	void UpdateDPMem(dp_mem_block_t &dp_mem, idx_t i, chunk_col_scores_inf_t &init_col_scr, score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH]);

	void UpdateDPMemShift(dp_mem_block_t &dp_mem);
	void UpdateDPMemSet(dp_mem_block_t &dp_mem, idx_t i, chunk_col_scores_inf_t &init_col_scr, score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH]);

	/**
	 * @brief Namespace related to functions used to find the maximum elements in
	 * in the score matrix.
	 */
	namespace FindMax
	{
		/**
		 * @brief Compare the local maximum of each PE after the score computation and keep the global maximum score. 
		 * @param max Array of PE's local maximum.
		 * @param chunk_max The maximum of the chunk.
		 */
		void ReductionMaxScores(ScorePack (&max)[PE_NUM], ScorePack &chunk_max, idx_t &max_pe);
	};

	/**
	 * @brief This namespace contains functions to define the core architectures used in the non-banding alignment kernel.
	 * 
	 */
	namespace Rectangular
	{
		/**
		 * @brief Perform Pairwise alignment for two sequences in rectangular grid, with virtual coordinates.
		 *
		 * @param query: Query sequence buffer.
		 * @param reference: Reference sequence buffer.
		 * @param query_length: Length of the query.
		 * @param reference_length: Length of the reference.
		 * @param tb_streams: Output traceback path.
		 */
		void AlignStatic(
			const char_t (&querys)[MAX_QUERY_LENGTH],
			const char_t (&references)[MAX_REFERENCE_LENGTH],
			const idx_t query_length,
			const idx_t reference_length,
			const Penalties &penalties,
#ifdef LOCAL_TRANSITION_MATRIX
			const type_t (&transitions)[TRANSITION_MATRIX_SIZE][TRANSITION_MATRIX_SIZE],
#endif
			idx_t &tb_i, idx_t &tb_j
#ifndef NO_TRACEBACK
			, tbr_t (&tb_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH]
#endif
#ifdef SCORED
			, type_t &score
#endif
#ifdef CMAKEDEBUG
			, Container &debugger
#endif
		);

		/**
		 * @brief Compute the traceback pointers for a chunk of the size PE_NUM * REFERENCE_LENGTH, with rectangular grid and virtual coordinates.
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
			const char_t (&reference)[MAX_REFERENCE_LENGTH],
			chunk_col_scores_inf_t &init_col_scr,
			score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
			idx_t &p_col_offset, idx_t ck_idx,
			idx_t global_query_length, idx_t query_length, idx_t reference_length,
			const bool (&col_pred)[PE_NUM],
			const Penalties &penalties,
#ifdef LOCAL_TRANSITION_MATRIX
			const type_t (&transitions)[PE_NUM][TRANSITION_MATRIX_SIZE][TRANSITION_MATRIX_SIZE],
#endif
			ScorePack (&max)[PE_NUM]
#ifndef NO_TRACEBACK
			, tbp_t (&chunk_tbp_out)[PE_NUM][TBMEM_SIZE]
#endif
#ifdef CMAKEDEBUG
			, Container &debugger
#endif
		);

		/**
		 * @brief Logics to map the global coordinates of a wavefront of PE to their prediate values.
		 * MapPredicateSquare is a function F: (pe_row: int, pe_col: int) -> (predicate_balue: boolean)
		 * It's unrolled for PE_NUM applying to each PE.
		 * @param ics Global Row Coordinates of a Wavefront of PE.
		 * @param jcs Global Column Coordinates of a Wavefront of PE.
		 * @param ref_len Actual Reference Length.
		 * @param predicate Predicate Array.
		 */
		void MapPredicate(
			const idx_t wavefront,
			const idx_t ref_len, const idx_t qry_len, // This query length is local query length in chunk, always less than PE_NUM
			bool (&row_pred)[PE_NUM],
			const bool (&col_pred)[PE_NUM],
			bool (&pred)[PE_NUM]);
	}

	/**
	 * @brief This namespace contains functions to define the core architectures used in the fixed banding alignment kernel.
	 * 
	 */
	namespace Fixed
	{
		/**
		 * @brief Perform Pairwise alignment for two sequences, in fixed banding with virtual coordinates.
		 *
		 * @param query: Query sequence buffer.
		 * @param reference: Reference sequence buffer.
		 * @param query_length: Length of the query.
		 * @param reference_length: Length of the reference.
		 * @param tb_streams: Output traceback path.
		 */
		void AlignStatic(
			const char_t (&querys)[MAX_QUERY_LENGTH],
			const char_t (&references)[MAX_REFERENCE_LENGTH],
			const idx_t query_length,
			const idx_t reference_length,
			const Penalties &penalties,
#ifdef LOCAL_TRANSITION_MATRIX
			const type_t (&transitions)[TRANSITION_MATRIX_SIZE][TRANSITION_MATRIX_SIZE],
#endif
			idx_t &tb_i, idx_t &tb_j
#ifndef NO_TRACEBACK
			, tbr_t (&tb_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH]
#endif
#ifdef SCORED
			, type_t &score
#endif
#ifdef CMAKEDEBUG
			, Container &debugger
#endif
		);

		/**
		 * @brief Compute the traceback pointers for a chunk of the size PE_NUM * REFERENCE_LENGTH, with fixed banding and virtual coordinates.
		 *
		 * @param chunk_row_offset : The row offset in the whole traceback matrix the beginning of the chunk.
		 * @param query : Query sequence with length PE_NUM.
		 * @param init_col_scr : Initial score for the first column of this chunk.
		 * @param query_length : Length of the query < PE_NUM.
		 * @param reference_length : Length of the reference < MAX_REFERENCE_LENGTH.
		 * @param max : Score pack of the maximium score of this chunk.
		 */
		void ChunkCompute(
			const idx_t chunk_row_offset,
			const input_char_block_t &query,
			const char_t (&reference)[MAX_REFERENCE_LENGTH],
			const chunk_col_scores_inf_t &init_col_scr,
			score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
			idx_t p_cols, const idx_t ck_idx,
			idx_t &l_lim_reg, idx_t &u_lim_reg,
			const bool (&col_pred)[PE_NUM],
			const idx_t global_query_length, const idx_t local_query_length, const idx_t reference_length,
			const Penalties &penalties,
#ifdef LOCAL_TRANSITION_MATRIX
			const type_t (&transitions)[PE_NUM][TRANSITION_MATRIX_SIZE][TRANSITION_MATRIX_SIZE],
#endif
			ScorePack (&max)[PE_NUM] // write out so must pass by reference
#ifndef NO_TRACEBACK
			, tbp_t (&chunk_tbp_out)[PE_NUM][TBMEM_SIZE]
#endif
#ifdef CMAKEDEBUG
			,
			Container &debugger
#endif
		);

		/**
		 * @brief Logics to map the global coordinates of a wavefront of PE to their prediate values.
		 * MapPredicateSquare is a function F: (pe_row: int, pe_col: int) -> (predicate_balue: boolean)
		 * It's unrolled for PE_NUM applying to each PE.
		 * @param ics Global Row Coordinates of a Wavefront of PE.
		 * @param jcs Global Column Coordinates of a Wavefront of PE.
		 * @param ref_len Actual Reference Length.
		 * @param predicate Predicate Array.
		 */
		void MapPredicate(
			const idx_t (&local_l_lim)[PE_NUM], const idx_t (&local_u_lim)[PE_NUM],
			const idx_t (&virtual_cols)[PE_NUM], const bool (&col_pred)[PE_NUM],
			bool (&predicate)[PE_NUM]);

		template <int PE_NUM_, int MAX_QUERY_LENGTH_>
		void PrepareLocals(
			const char_t (&query)[MAX_QUERY_LENGTH_],
			const score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH_],
			char_t (&local_query)[PE_NUM_],
			chunk_col_scores_inf_t &init_col_scr_local,
			bool (&col_pred)[PE_NUM_], const idx_t local_query_len,
			const idx_t idx)
		{
			FixedBandingPrepareChunkLocals:
			init_col_scr_local[0] = init_col_scr_local[PE_NUM_]; // backup the last element from previous chunk
			for (int i = 0; i < PE_NUM_; i++)
			{
				init_col_scr_local[i + 1] = init_col_scr[idx + i];
				local_query[i] = query[idx + i];
				col_pred[i] = i < local_query_len;
			}
		}
	}

	/**
	 * @brief Initialize initial scores for the first column and
	 * row on the device.
	 *
	 * @param init_col_scr: Initial scores for the first column.
	 * @param init_row_scr: Initial scores for the first row.
	 */
	void InitializeScores(
		score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
		score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
		const Penalties &penalties);

	void ChunkMax(ScorePack &max, ScorePack new_scr);

	void UpdatePEOffset(idx_t (&pe_offset)[PE_NUM], bool (&predicate)[PE_NUM]);

	void CopyColScore(chunk_col_scores_inf_t &init_col_scr_local, score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH], idx_t i);

	void UpdateDPMemSep(
		score_vec_t (&dp_mem)[PE_NUM + 1][2],
		score_vec_t (&score_in)[PE_NUM + 1]);

	void PrepareScoreBuffer(
		score_vec_t (&score_buff)[PE_NUM + 1],
		const idx_t i,
		const chunk_col_scores_inf_t(&init_col_scr),
		const score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH]);
}

#endif // !SEQ_ALIGN_H
