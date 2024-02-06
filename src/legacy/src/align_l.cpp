
void Align::DPMemUpdateBlock(
	hls::stream_of_blocks<dp_mem_block_t> &dp_mem_in,
	hls::stream_of_blocks<score_block_t> &score_in,
	hls::stream_of_blocks<dp_mem_block_t> &dp_mem_out)
{
	// This function shift the dp_mem based on the new scores

	read_lock<dp_mem_block_t> dp_mem_rd(dp_mem_in);
	read_lock<score_block_t> score_rd(score_in);
	write_lock<dp_mem_block_t> dp_mem_wr(dp_mem_out);

// array partition the accessor of the block
#pragma HLS array_partition variable = dp_mem_rd type = complete

	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		dp_mem_wr[1][i] = dp_mem_rd[0][i];
		dp_mem_wr[0][i] = score_rd[i];
	}
}

void Align::InitializeChunkColScore(score_vec_t (&init_col_scr)[PE_NUM], stream_of_blocks<dp_mem_block_t> &dp_mem_out)
{
#pragma HLS array_partition variable = init_col_scr type = complete
	write_lock<dp_mem_block_t> dp_mem_wr(dp_mem_out);
#pragma HLS array_partition variable = dp_mem_wr type = complete
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		dp_mem_wr[0][i] = init_col_scr[i];
	}
}

void Align::PrepareScoresBlock(
	hls::stream_of_blocks<dp_mem_block_t> &dp_mem_in,
	score_vec_t (&init_col_scr)[PE_NUM], int id,
	hls::stream_of_blocks<score_vec_t[2]> &last_chunk_scr,
	hls::stream_of_blocks<score_block_t> &up_out,
	hls::stream_of_blocks<score_block_t> &diag_out,
	hls::stream_of_blocks<score_block_t> &left_out,
	hls::stream_of_blocks<dp_mem_block_t> &dp_mem_out)
{
	read_lock<dp_mem_block_t> dp_mem_rd(dp_mem_in);
	read_lock<score_vec_t[2]> last_chunk_rd(last_chunk_scr);
	write_lock<score_block_t> up_wr(up_out);
	write_lock<score_block_t> diag_wr(diag_out);
	write_lock<score_block_t> left_wr(left_out);
	write_lock<dp_mem_block_t> dp_mem_wr(dp_mem_out);
#pragma HLS array_partition variable = dp_mem_rd type = complete
#pragma HLS array_partition variable = last_chunk_rd type = complete
#pragma HLS array_partition variable = up_wr type = complete
#pragma HLS array_partition variable = diag_wr type = complete
#pragma HLS array_partition variable = left_wr type = complete

	up_wr[0] = last_chunk_rd[0];
	diag_wr[0] = last_chunk_rd[1];
	left_wr[0] = dp_mem_rd[0][0];

	dp_mem_wr[0][0] = dp_mem_rd[0][0];
	dp_mem_wr[1][0] = dp_mem_rd[1][0];

	for (int i = 1; i < PE_NUM; i++)
	{
#pragma HLS unroll
		up_wr[i] = dp_mem_rd[0][i - 1];
		diag_wr[i] = dp_mem_rd[1][i - 1];
		left_wr[i] = dp_mem_rd[0][i];

		dp_mem_wr[0][i] = dp_mem_rd[0][i];
		dp_mem_wr[1][i] = dp_mem_rd[1][i];
	}

	if (id < PE_NUM)
	{
		dp_mem_wr[0][id] = init_col_scr[id];
		left_wr[id] = init_col_scr[id];
	}
}

void Align::ChunkComputeSoB(
	idx_t chunk_row_offset,
	input_char_block_t &query,
	char_t (&reference)[MAX_REFERENCE_LENGTH],
	score_block_t &init_col_scr,
	hls::vector<type_t, N_LAYERS> (&init_row_scr)[MAX_REFERENCE_LENGTH],
	int query_length, int reference_length,
	hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
	ScorePack &max,
	hls::stream_of_blocks<tbp_chunk_block_t> &chunk_tbp_out)
{
	/*
	This cannot be synthesized because of the following reasons:
	1. the blocks are flowing backwards.
	2. There are bidirectional channels for unknown reason.
	*/

	bool predicate[PE_NUM];
	Utils::Init::ArrSet<bool, PE_NUM>(predicate, false);

	idx_t pe_col_offsets[PE_NUM];
	Utils::Init::ArrSet<idx_t, PE_NUM>(pe_col_offsets, 0);

	char_t local_query[PE_NUM];
	char_t local_reference[PE_NUM];

	stream_of_blocks<input_char_block_t> reference_in_stm;

	stream_of_blocks<dp_mem_block_t> dp_mem_stm;

	stream_of_blocks<score_block_t> up_scores;
	stream_of_blocks<score_block_t> diag_scores;
	stream_of_blocks<score_block_t> left_scores;

	// stream_of_blocks<dp_mem_block_t> initialized;

	stream_of_blocks<score_block_t> scores_out;
	stream_of_blocks<tbp_block_t> tbp_out;
	stream_of_blocks<score_vec_t[2]> last_chunk_scr_stm;

	stream_of_blocks<dp_mem_block_t> initialized_dup;

	score_vec_t local_init_row_scr[2];
	local_init_row_scr[0] = {0};
	local_init_row_scr[1] = {0};

	for (int i = 0; i < reference_length + query_length - 1; i++)
	{
#pragma HLS dataflow

		// if (i < query_length) { Utils::Array::ShiftRight<bool, PE_NUM>(predicate, true); }
		// else if (i >= reference_length) { Utils::Array::ShiftRight(predicate, false); };

		// // Shift Reference
		// if (i < reference_length) { Utils::Array::ShiftRight<char_t, PE_NUM>(local_reference, reference[i]); }
		// else {Utils::Array::ShiftRight<char_t, PE_NUM>(local_reference, 0);}

		Align::ShiftPredicate(predicate, i, query_length, reference_length);
		Align::ShiftReferece(local_reference, reference, i, reference_length);

		Utils::Array::ShiftRight(local_init_row_scr, hls::vector<type_t, N_LAYERS>(0));

		Utils::Array::WriteStreamBlock(local_init_row_scr, last_chunk_scr_stm);

		// Write Reference to Block
		Utils::Array::WriteStreamBlock<char_t, PE_NUM>(local_reference, reference_in_stm);

		// Align::WriteInitialColScore(i, init_col_scr, dp_mem_stm, initialized);
		Align::PrepareScoresBlock(dp_mem_stm, init_col_scr, i, last_chunk_scr_stm, up_scores, diag_scores, left_scores, initialized_dup);

		PE::ExpandComputeSoB(
			query,
			reference_in_stm,
			up_scores,
			diag_scores,
			left_scores,
			scores_out,
			tbp_out);

		Align::DPMemUpdateBlock(initialized_dup, scores_out, dp_mem_stm);

		Align::ArrangeTBPBlock(tbp_out, predicate, pe_col_offsets, chunk_tbp_out);
	}
}

void Align::DPMemInit(
	dp_mem_block_t &dp_mem, 
	chunk_col_scores_inf_t &init_col_scr, 
	init_row_score_block_t &init_row_scr){

	for (int i = 0; i < PE_NUM + 1; i++)
	{
#pragma HLS unroll
		dp_mem[i][1] = init_col_scr[i];
	}
	dp_mem[0][0] = init_row_scr[0];
}
