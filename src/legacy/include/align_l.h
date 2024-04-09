void align_wp(hls::stream<char_t, MAX_QUERY_LENGTH> &query_stream,
			  hls::stream<char_t, MAX_REFERENCE_LENGTH> &reference_stream,
			  hls::stream<hls::vector<type_t, N_LAYERS>, MAX_QUERY_LENGTH> &init_qry_scr,
			  hls::stream<hls::vector<type_t, N_LAYERS>, MAX_REFERENCE_LENGTH> &init_ref_scr,
			  // int query_length, int reference_length,
			  hls::stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH> &traceback_out);

namespace Align {
	void ArrangeTBPBlock(
		hls::stream_of_blocks<tbp_block_t> &tbp_in,
		bool (&predicate)[PE_NUM], idx_t (&pe_offset)[PE_NUM],
		hls::stream_of_blocks<tbp_chunk_block_t> &tbp_chunk_out);

	
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
		wavefront_scores_t &init_col_scr,
		hls::vector<type_t, N_LAYERS> (&init_row_scr)[MAX_REFERENCE_LENGTH],
		int query_length, int reference_length,
		hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
		ScorePack &max, // write out so must pass by reference
		hls::stream_of_blocks<tbp_chunk_block_t> &chunk_tbp_out);


}