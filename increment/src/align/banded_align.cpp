
#include "../../include/seq_align.h"

using namespace hls;



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

	//stream_of_blocks<dp_mem_block_t> initialized;

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

void Align::WriteInitialColScore(int i, score_vec_t (&init_scores)[PE_NUM], hls::stream_of_blocks<dp_mem_block_t> &dp_mem_in, hls::stream_of_blocks<dp_mem_block_t> &scores_out)
{
	read_lock<dp_mem_block_t> dp_mem_rd(dp_mem_in);
	write_lock<dp_mem_block_t> scores_wr(scores_out);

#pragma HLS array_partition variable = dp_mem_rd type = complete
#pragma HLS array_partition variable = scores_wr type = complete

	for (int j = 0; j < PE_NUM; j++)
	{
#pragma HLS unroll
		scores_wr[0][j] = dp_mem_rd[0][j];
		scores_wr[1][j] = dp_mem_rd[1][j];
	}

	if (i < PE_NUM)
	{
		write_lock<dp_mem_block_t> scores_wr(scores_out);
		scores_wr[0][i] = init_scores[i];
	}
}

void Align::ArrangeTBPBlock(hls::stream_of_blocks<tbp_block_t> &tbp_in, bool (&predicate)[PE_NUM], idx_t (&pe_offset)[PE_NUM], hls::stream_of_blocks<tbp_chunk_block_t> &tbp_chunk_out)
{
#pragma HLS dataflow
	read_lock<tbp_block_t> tbp_rd(tbp_in);
	write_lock<tbp_chunk_block_t> tbp_chunk_wr(tbp_chunk_out);

#pragma HLS array_partition variable = tbp_rd type = complete
#pragma HLS array_partition variable = tbp_chunk_wr type = cyclic factor = PE_NUM dim = 1

	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		if (predicate[i])
		{
			tbp_chunk_wr[i][pe_offset[i]++] = tbp_rd[i];
		}
	}
}

void Align::ShiftPredicate(bool (&predicate)[PE_NUM], int idx, int query_len, int reference_len)
{
	if (idx < query_len)
	{
		Utils::Array::ShiftRight<bool, PE_NUM>(predicate, true);
	}
	else if (idx >= reference_len)
	{
		Utils::Array::ShiftRight(predicate, false);
	};
}

void Align::ShiftReferece(
	char_t (&local_reference)[PE_NUM], char_t (&reference)[MAX_REFERENCE_LENGTH],
	int idx, int ref_len)
{
	// Shift Reference
	if (idx < ref_len)
	{
		Utils::Array::ShiftRight<char_t, PE_NUM>(local_reference, reference[idx]);
	}
	else
	{
		Utils::Array::ShiftRight<char_t, PE_NUM>(local_reference, 0);
	}
}

void Align::PrepareScoresArr(
	dp_mem_block_t &dp_mem_in,
	score_vec_t (&init_col_scr)[PE_NUM], int id, 
	score_vec_t (&last_chunk_scr)[2],
	score_block_t &up_out,
	score_block_t &diag_out,
	score_block_t &left_out)
{

	// prepare scores for PE 0
	up_out[0] = last_chunk_scr[0];
	diag_out[0] = last_chunk_scr[1];
	left_out[0] = dp_mem_in[0][0];

	for (int i = 1; i < PE_NUM; i++)
	{
#pragma HLS unroll
		up_out[i] = dp_mem_in[0][i - 1];
		diag_out[i] = dp_mem_in[1][i - 1];
		left_out[i] = dp_mem_in[0][i];
	}

	if (id < PE_NUM)
	{
		left_out[id] = init_col_scr[id];
	}
}

void Align::DPMemUpdateArr(
	dp_mem_block_t &dp_mem_in,
	score_block_t &score_in
){
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		dp_mem_in[1][i] = dp_mem_in[0][i];
		dp_mem_in[0][i] = score_in[i];
	}
	
}

void Align::ChunkCompute(
	idx_t chunk_row_offset,
	input_char_block_t &query,
	char_t (&reference)[MAX_REFERENCE_LENGTH],
	score_block_t &init_col_scr,
	hls::vector<type_t, N_LAYERS> (&init_row_scr)[MAX_REFERENCE_LENGTH],
	int query_length, int reference_length,
	hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
	ScorePack &max,
	tbp_t(*chunk_tbp_out)[MAX_REFERENCE_LENGTH])
{

	bool predicate[PE_NUM];
	Utils::Init::ArrSet<bool, PE_NUM>(predicate, false);

	idx_t pe_col_offsets[PE_NUM];
	Utils::Init::ArrSet<idx_t, PE_NUM>(pe_col_offsets, 0);


	char_t local_query[PE_NUM];
	char_t local_reference[PE_NUM];

	score_block_t up_scores;
	score_block_t diag_scores;
	score_block_t left_scores;

	score_block_t scores_out;
	tbp_block_t tbp_out;

	ScorePack pe_max[PE_NUM];

	type_t extracted_scores[PE_NUM];

	//stream_of_blocks<dp_mem_block_t> initialized;

	dp_mem_block_t dp_mem;

	score_vec_t last_chunk_scr[2];

	Utils::Init::ArrSet(last_chunk_scr, {0,0,-9999});

#pragma HLS array_partition variable = predicate type = complete
#pragma HLS array_partition variable = pe_col_offsets type = complete
#pragma HLS array_partition variable = local_query type = complete
#pragma HLS array_partition variable = local_reference type = complete
#pragma HLS array_partition variable = up_scores type = complete
#pragma HLS array_partition variable = diag_scores type = complete
#pragma HLS array_partition variable = left_scores type = complete

#pragma HLS array_partition variable = dp_mem type = complete
#pragma HLS array_partition variable = last_chunk_scr type = complete

#pragma HLS array_partition variable = scores_out type = complete
#pragma HLS array_partition variable = tbp_out type = complete

	for (int i = 0; i < reference_length + query_length - 1; i++)
	{
#pragma HLS pipeline II=1

		Align::ShiftPredicate(predicate, i, query_length, reference_length);
		Align::ShiftReferece(local_reference, reference, i, reference_length);

		Utils::Array::ShiftRight(last_chunk_scr, init_row_scr[i]);

		Align::PrepareScoresArr(dp_mem, init_col_scr, i, last_chunk_scr, up_scores, diag_scores, left_scores);

		PE::ExpandCompute(
			query,
			local_reference,
			up_scores,
			diag_scores,
			left_scores,
			scores_out,
			tbp_out);

		Align::DPMemUpdateArr(dp_mem, scores_out);

		// This should happen before Arrange TBP Arr
		// Because it doesn't increment PE offsets
		// while ArrangeTBPArr does
		Align::PreserveRowScore(
			preserved_row_scr,
			scores_out,
			predicate,
			pe_col_offsets
		);

		Align::FindMax::ExtractScoresLayer(scores_out, LAYER_MAXIMIUM, extracted_scores);

		Align::FindMax::UpdatePEMaximum(extracted_scores, pe_max, pe_col_offsets, chunk_row_offset, predicate);


		Align::ArrangeTBPArr(tbp_out, predicate, pe_col_offsets, chunk_tbp_out);

		Align::UpdatePEOffset(pe_col_offsets, predicate);
		
	}

	Align::FindMax::GetChunkMax(pe_max, max);
}

void Align::FindMax::ExtractScoresLayer(score_block_t &scores, idx_t layer, type_t (&extracted)[PE_NUM]){
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		extracted[i] = scores[i][layer];
	}
}

void Align::ArrangeTBPArr(
	tbp_block_t &tbp_in,
	bool (&predicate)[PE_NUM], idx_t (&pe_offset)[PE_NUM],
	tbp_t (*chunk_tbp_out)[MAX_REFERENCE_LENGTH]
){


	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		if (predicate[i])
		{
			chunk_tbp_out[i][pe_offset[i]] = tbp_in[i];
		}
	}
}


void Align::UpdatePEOffset(
	 idx_t (&pe_offset)[PE_NUM], bool (&predicate)[PE_NUM]
){
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		pe_offset[i] +=(predicate[i]);
	}
}


void Align::PreserveRowScore(
	hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
	score_block_t &scores,
	bool (&predicate)[PE_NUM], 
	idx_t (&pe_offset)[PE_NUM]
){
	if (predicate[PE_NUM-1])
	{
		preserved_row_scr[pe_offset[PE_NUM - 1]] = scores[PE_NUM-1];
	}
}

void Align::FindMax::GetChunkMax(ScorePack (&packs)[PE_NUM], ScorePack &chunk_max){
	ScorePack max = packs[0]; 
	for (int i = 0; i < PE_NUM; i++)
	{
		if (packs[i].score > max.score)
		{
			max = packs[i];
		}
	}
}


// FIXME: NOT FINISH IMPLEMENTATION
// void Align::FindMax::UpdateMaximium(
// 	idx_t chunk_row_offset,
// 	idx_t (&pe_offset)[PE_NUM],
// 	bool (&predicate)[PE_NUM],
// 	ScorePack (&max)[PE_NUM],
// 	score_block_t &scores
// ){
// 	for (int i = 0; i < PE_NUM; i++)
// 	{
// #pragma unroll
// 		if (predicate[i])
// 		{
// 			if (scores[i] > max[i].score[0])
// 			{
// 				max[i].score = scores[i][0];
// 				max[i].row = chunk_row_offset + pe_offset[i];
// 				max[i].col = i;
// 			}
// 		}
// 	}
// }

void Align::InitializeScores(
	score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
	score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH]
){
#ifdef ALIGN_LOCAL_LINEAR
	Utils::Init::ArrSet<score_vec_t, MAX_QUERY_LENGTH>(init_col_scr, {0});
	Utils::Init::ArrSet<score_vec_t, MAX_REFERENCE_LENGTH>(init_row_scr, {0});
#elif defined ALIGN_GLOBAL_LINEAR
	Utils::Init::Linspace<type_t, 1, MAX_QUERY_LENGTH>(init_col_scr, 0, 0, linear_gap_penalty);
	Utils::Init::Linspace<type_t, 1, MAX_REFERENCE_LENGTH>(init_row_scr, 0, 0, linear_gap_penalty);
#elif defined ALIGN_LOCAL_AFFINE
	Utils::Init::ArrSet<score_vec_t, MAX_QUERY_LENGTH>(init_col_scr, {0, 0, -9999});
	Utils::Init::ArrSet<score_vec_t, MAX_REFERENCE_LENGTH>(init_row_scr, {-9999,0,0});
#elif defined ALIGN_GLOBAL_AFFINE
	Utils::Init::ArrSet<score_vec_t, MAX_QUERY_LENGTH>(init_col_scr, 0, score_vec_t {0,0,0});  // query layer 0
	Utils::Init::Linspace<type_t, 3, MAX_QUERY_LENGTH>(init_col_scr, 1, 0, extend_score);  // query layer 1
	Utils::Init::ArrSet<score_vec_t, MAX_QUERY_LENGTH>(init_col_scr, 2, score_vec_t {-9999,-9999,-9999}); // query layer 2

	Utils::Init::ArrSet<score_vec_t, MAX_REFERENCE_LENGTH>(init_row_scr, 0, score_vec_t {-9999,-9999,-9999});  // reference layer 0
	Utils::Init::Linspace<type_t, 3, MAX_REFERENCE_LENGTH>(init_row_scr, 1, 0, extend_score);  // reference layer 1
	Utils::Init::ArrSet<score_vec_t, MAX_REFERENCE_LENGTH>(init_row_scr, 2, score_vec_t {0, 0,0}); // reference layer 2
#else
	// Not initialized. 
	int i = 0;
#endif

}

void Align::PrepareLocalQuery(
	char_t (&query)[MAX_QUERY_LENGTH],
	char_t (&local_query)[PE_NUM],
	idx_t offset,
	idx_t len
){
	for (int i = 0; i < PE_NUM; i++){
#pragma HLS unroll
		local_query[i] = i < len ? query[offset + i] : (char_t) 0;
	}
}

void Align::ChunkMax(ScorePack &max, ScorePack new_scr){
	if (new_scr.score > max.score){
		max.score = new_scr.score;
		max.chunk_offset = new_scr.chunk_offset;
		max.pe_offset = new_scr.pe_offset;
		max.layer = new_scr.layer;
	}
}


void Align::AlignStatic(
	char_t (&query)[MAX_QUERY_LENGTH],
	char_t (&reference)[MAX_REFERENCE_LENGTH],
	idx_t query_length,
	idx_t reference_length,
	tbr_t (&tb_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH])
{

// >>> Initialization >>>

// could partition query so load takes only 1 cycle
// or if the chunk compute is pipelined with the array fill, this might not be necessary
#pragma HLS array_partition variable=query type = cyclic factor = PE_NUM dim = 1

	score_vec_t init_col_scr[MAX_QUERY_LENGTH];
	score_vec_t init_row_score[MAX_REFERENCE_LENGTH];

	Align::InitializeScores(init_col_scr, init_row_score);

	tbp_t tbp_matrix[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH];

#pragma HLS array_partition variable = tbp_matrix type = cyclic factor = PE_NUM dim = 1

// >>> Compute >>>
	ScorePack maximum = {0,0,0};

	char_t local_query[PE_NUM];
	score_block_t local_init_col_score;
	hls::vector<type_t, N_LAYERS> preserved_row_buffer[MAX_REFERENCE_LENGTH];

#pragma HLS array_partition variable=local_query type=complete

	for (idx_t i = 0; i < query_length; i += PE_NUM)
	{
		ScorePack local_max;

		idx_t local_query_length = ((idx_t) PE_NUM < query_length - i) ? (idx_t) PE_NUM : (idx_t) (query_length - i);

		Align::PrepareLocalQuery(query, local_query, i, local_query_length);  // FIXME: Why not coping rest of the query
		Utils::Array::Copy<score_vec_t, MAX_QUERY_LENGTH, PE_NUM, PE_NUM>(init_col_scr, local_init_col_score, local_query_length, (score_vec_t) 0);

		tbp_t (*chunk_tbp_out)[MAX_REFERENCE_LENGTH] = &tbp_matrix[i];

		Align::ChunkCompute(
			i,
			local_query,
			reference,
			local_init_col_score,
			init_row_score,
			local_query_length,
			reference_length,
			preserved_row_buffer, 
			local_max,
			chunk_tbp_out
		);

		Align::ChunkMax(maximum, local_max);

		Utils::Array::Switch(init_row_score, preserved_row_buffer);

	}

// >>> Traceback >>>
	Traceback::Traceback(tbp_matrix, tb_out, maximum.chunk_offset + maximum.pe, maximum.pe_offset);
	
}


void Align::FindMax::UpdatePEMaximum(type_t (&new_scr)[PE_NUM], ScorePack (&max)[PE_NUM], idx_t (&pe_offset)[PE_NUM], idx_t chunk_offset, bool (&predicate)[PE_NUM]){
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		if (predicate[i])
		{
			if (new_scr[i] > max[i].score)
			{
				max[i].score = new_scr[i];
				max[i].chunk_offset = chunk_offset;
				max[i].pe_offset = pe_offset[i];
			}
		}
	}
}

void Align::FindMax::InitPE(ScorePack (&pack)[PE_NUM]){
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		pack[i].pe = i;
	}
}

