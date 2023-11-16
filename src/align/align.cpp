#include "../../include/align.h"

using namespace hls;

#ifdef DEBUG
list<hls::vector<type_t, N_LAYERS>> Container::scores[PE_NUM]; // @Debug
#endif

void Align::ArrangeScores(
	dp_mem_block_t &dpmem_in,
	bool (&predicate)[PE_NUM], idx_t (&pe_offset)[PE_NUM],
	hls::vector<type_t, N_LAYERS>  (*chunk_score_out)[MAX_REFERENCE_LENGTH])
{
	for (int i = 1; i < PE_NUM+1; i++)
	{
#pragma HLS unroll
		if (predicate[i-1])
		{
			chunk_score_out[i-1][pe_offset[i-1]] = dpmem_in[i][0];
		}
	}
}

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
	if (idx < PE_NUM) // query len
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
	score_block_t &score_in)
{
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		dp_mem_in[1][i] = dp_mem_in[0][i];
		dp_mem_in[0][i] = score_in[i];
	}
}

void Align::ChunkCompute(
	idx_t chunk_row_offset,
	input_char_block_t &local_query,
	char_t (&reference)[MAX_REFERENCE_LENGTH],
	chunk_col_scores_inf_t &init_col_scr,
	score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
	int global_query_length, int query_length, int reference_length,
	const Penalties penalties, 
	score_vec_t (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
	ScorePack (&max)[PE_NUM],  // initialize rather in maximum
#ifdef DEBUG
	tbp_t (*chunk_tbp_out)[MAX_REFERENCE_LENGTH],
	hls::vector<type_t, N_LAYERS> (*score_tbp)[MAX_REFERENCE_LENGTH])
#else
    tbp_t (*chunk_tbp_out)[MAX_REFERENCE_LENGTH])
#endif
{
#ifdef DEBUG
	Container &debugger = Container::getInstance(); // @Debug
#endif // DEBUG

	bool predicate[PE_NUM];
	Utils::Init::ArrSet<bool, PE_NUM>(predicate, false);

	idx_t pe_col_offsets[PE_NUM];
	Utils::Init::ArrSet<idx_t, PE_NUM>(pe_col_offsets, 0);

	char_t local_reference[PE_NUM]; // local reference

	tbp_block_t tbp_out;

	type_t extracted_scores[PE_NUM]; // FIXME: What is it?

	// stream_of_blocks<dp_mem_block_t> initialized;

	dp_mem_block_t dp_mem;

// #ifdef DEBUG
// 			Debug::Translate::print_2d(
// 			"Initial Column Scores",
// 			Debug::Translate::translate_2d<type_t, N_LAYERS, PE_NUM>(init_col_scr)
// 		);
// #endif

#pragma HLS array_partition variable = predicate type = complete
#pragma HLS array_partition variable = pe_col_offsets type = complete
#pragma HLS array_partition variable = local_query type = complete
#pragma HLS array_partition variable = local_reference type = complete
#pragma HLS array_partition variable = dp_mem type = complete
#pragma HLS array_partition variable = tbp_out type = complete

	// FIXME: We can compute scores, and set the TBP for the additional
	// space in the chunk. Then, only start the traceback appropriately
	// so we can make correct computation.
	for (int i = 0; i < reference_length + PE_NUM - 1; i++)
	{

#pragma HLS pipeline II = 1
		// LoopLogger::log(
		// 	"align.cpp",
		// 	"chunk_compute_main_loop",
		// 	i,
		// 	i == 0,
		// 	dp_mem,
		// 	up_scores
		// );

		Align::ShiftPredicate(predicate, i, query_length, reference_length);
		Align::ShiftReferece(local_reference, reference, i, reference_length);



		Align::UpdateDPMem(dp_mem, i, init_col_scr, init_row_scr);

		// Align::UpdateDPMemShift(dp_mem);
		// Align::UpdateDPMemSet(dp_mem, i, init_col_scr, init_row_scr);

#ifdef DEBUG
		Debug::Translate::print_2d(
			"Initial Column Scores",
			Debug::Translate::translate_2d<type_t, N_LAYERS, PE_NUM>(init_col_scr)
		);
#endif

		// FIXME: Pass in DP_MEM and assign scores accodingly
		PE::PEUnroll(
			dp_mem,
			local_query,
			local_reference,
			penalties,
			tbp_out);

		// This should happen before Arrange TBP Arr
		// Because it doesn't increment PE offsets
		// while ArrangeTBPArr does
		Align::PreserveRowScore(
			preserved_row_scr,
			dp_mem[PE_NUM][0],
			predicate[PE_NUM-1],
			pe_col_offsets[PE_NUM-1]);

		// Align::FindMax::ExtractScoresLayer(scores_out, LAYER_MAXIMIUM, extracted_scores);

		ALIGN_TYPE::UpdatePEMaximum(dp_mem, max, pe_col_offsets, chunk_row_offset, predicate, global_query_length, reference_length);
#ifdef DEBUG
		Align::ArrangeScores(dp_mem, predicate, pe_col_offsets, score_tbp);
		auto dp_mem_checkpoint = Debug::Translate::translate_3d<
			type_t, N_LAYERS, PE_NUM+1, 3
		>(dp_mem);

		Debug::Translate::print_1d("pe_col_offsets",
		Debug::Translate::translate_1d<idx_t, PE_NUM>(pe_col_offsets));
#endif
        Align::ArrangeTBPArr(tbp_out, predicate, pe_col_offsets, chunk_tbp_out);

		Align::UpdatePEOffset(pe_col_offsets, predicate);
	}

#ifdef DEBUG
	Debug::Translate::print_2d("preserved row scores",
		Debug::Translate::translate_2d<type_t, N_LAYERS, MAX_REFERENCE_LENGTH>(preserved_row_scr));
#endif

}

void Align::FindMax::ExtractScoresLayer(score_block_t &scores, idx_t layer, type_t (&extracted)[PE_NUM])
{
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		extracted[i] = scores[i][layer];
	}
}

void Align::ArrangeTBPArr(
	tbp_block_t &tbp_in,
	bool (&predicate)[PE_NUM], idx_t (&pe_offset)[PE_NUM],
	tbp_t (*chunk_tbp_out)[MAX_REFERENCE_LENGTH])
{

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
	idx_t (&pe_offset)[PE_NUM], bool (&predicate)[PE_NUM])
{
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		pe_offset[i] += (predicate[i]);
	}
}

void Align::PreserveRowScore(
	hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
	const score_vec_t &score_vec,
	const bool predicate_pe_last,
	const idx_t idx)
{
	if (predicate_pe_last)
	{
		preserved_row_scr[idx] = score_vec;
	}
}

void Align::FindMax::ReductionMaxScores(ScorePack (&packs)[PE_NUM], ScorePack &global_max)
{
	ScorePack max = packs[0];
	for (int i = 0; i < PE_NUM; i++)
	{
		if (packs[i].score > max.score)
		{
			max = packs[i];
		}
	}
	global_max.chunk_offset = max.chunk_offset;
	global_max.pe = max.pe;
	global_max.pe_offset = max.pe_offset;
	global_max.score = max.score;
}




void Align::CopyColScore(chunk_col_scores_inf_t & init_col_scr_local, score_vec_t(& init_col_scr)[MAX_QUERY_LENGTH], idx_t idx)
{
	init_col_scr_local[0] = init_col_scr_local[PE_NUM];  // backup the last element from previous chunk

	for (int j = 0; j < PE_NUM; j++)
	{
#pragma HLS unroll
		init_col_scr_local[j+1] = init_col_scr[idx + j];
	}
}



void Align::PrepareLocalQuery(
    char_t (&query)[MAX_QUERY_LENGTH],
    char_t (&local_query)[PE_NUM],
    idx_t offset,
    idx_t len)
{
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		local_query[i] = i < len ? query[offset + i] : (char_t)0;
	}
}

void Align::ChunkMax(ScorePack &max, ScorePack new_scr)
{
	if (new_scr.score > max.score)
	{
		max.score = new_scr.score;
		max.chunk_offset = new_scr.chunk_offset;
		max.pe_offset = new_scr.pe_offset;
	}
}

void Align::AlignStatic(
	char_t (&query)[MAX_QUERY_LENGTH],
	char_t (&reference)[MAX_REFERENCE_LENGTH],
	idx_t query_length,
	idx_t reference_length,
	const Penalties penalties,
	tbr_t (&tb_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH])
{

// >>> Initialization >>>

// could partition query so load takes only 1 cycle
// or if the chunk compute is pipelined with the array fill, this might not be necessary
#pragma HLS array_partition variable = query type = cyclic factor = PE_NUM dim = 1

	score_vec_t init_col_score[MAX_QUERY_LENGTH];

	score_vec_t init_row_score[2][MAX_REFERENCE_LENGTH];
//	score_vec_t preserved_row_buffer[MAX_REFERENCE_LENGTH];
#pragma HLS array_partition variable=init_row_score type=complete dim=1

	ALIGN_TYPE::InitializeScores(init_col_score, init_row_score[0], penalties);

	// The size of a static matrix must be known at the compile time.
	tbp_t tbp_matrix[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH];

#ifdef DEBUG
	hls::vector<type_t, N_LAYERS>  score_matrix[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH]; // DEBUG
#endif

#pragma HLS array_partition variable = tbp_matrix type = cyclic factor = PE_NUM dim = 1

	// >>> Compute >>>
	ScorePack maximum = {0,0,0,0}; // global score track
	ScorePack local_max[PE_NUM];
	ALIGN_TYPE::InitializeMaxScores(local_max, query_length, reference_length);


	char_t local_query[PE_NUM];
	chunk_col_scores_inf_t local_init_col_score;
	local_init_col_score[PE_NUM] = score_vec_t(0); // Always initialize the upper left cornor to 0

	idx_t row_buf_cnt = 0;

#pragma HLS array_partition variable = local_query type = complete

	for (idx_t i = 0; i < query_length; i += PE_NUM)
	{
		idx_t local_query_length = ((idx_t)PE_NUM < query_length - i) ? (idx_t)PE_NUM : (idx_t)(query_length - i);

		Align::PrepareLocalQuery(query, local_query, i, local_query_length); // FIXME: Why not coping rest of the query
		Align::CopyColScore(local_init_col_score, init_col_score, i);  // Copy the scores

		tbp_t(*chunk_tbp_out)[MAX_REFERENCE_LENGTH] = &tbp_matrix[i];

#ifdef DEBUG
		hls::vector<type_t, N_LAYERS>  (*chunk_score_out)[MAX_REFERENCE_LENGTH] = &score_matrix[i];
#endif

		Align::ChunkCompute(
			i,
			local_query,
			reference,
			local_init_col_score,
			init_row_score[row_buf_cnt % 2],
            query_length,
			local_query_length,
			reference_length,
			penalties,
			init_row_score[row_buf_cnt % 2 + 1],
			local_max,
#ifdef DEBUG
			chunk_tbp_out,
			chunk_score_out);
#else
            chunk_tbp_out);
#endif

	}

#ifdef DEBUG
	Debug::Translate::print_3d("scores", 
		 Debug::Translate::translate_3d<type_t, N_LAYERS, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(score_matrix)
	);
	Debug::Translate::print_2d("Traceback Pointers", 
		Debug::Translate::translate_2d<tbp_t, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(tbp_matrix)
	);
#endif

	Align::FindMax::ReductionMaxScores(local_max, maximum);

	// >>> Traceback >>>
	printf("(index from 0) Traceback Start Row: %d, Col: %d\n", maximum.chunk_offset + maximum.pe, maximum.pe_offset);
	Traceback::Traceback(tbp_matrix, tb_out, maximum.chunk_offset + maximum.pe, maximum.pe_offset);
#ifdef DEBUG
	Debug::Translate::print_1d("Traceback", 
		Debug::Translate::translate_1d<tbr_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH>(tb_out)
	);
#endif
}

void SwapBuffer(score_vec_t *&a, score_vec_t *&b){
	score_vec_t *temp = a;
	a = b;
	b = temp;
}


void Align::FindMax::InitPE(ScorePack (&pack)[PE_NUM])
{
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		pack[i].pe = i;
	}
}



void Align::Reordered::Align(
	char_t query[MAX_QUERY_LENGTH], char_t reference[MAX_REFERENCE_LENGTH],
	int query_length, int reference_length,
	tbp_t tbp_matrix[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH])
{
	// Notices that the uninitialized places of the kernel contains garbage values. 
	hls::vector<type_t, N_LAYERS> scores[MAX_QUERY_LENGTH + 1][MAX_REFERENCE_LENGTH + 1];
	score_vec_t init_col_score[MAX_QUERY_LENGTH];
	score_vec_t init_row_score[MAX_REFERENCE_LENGTH];

	Penalties penalties;  // FIXME!!!

	// Align::InitializeScores(init_col_score, init_row_score);  // FIXME: Uncomment me to get desired behavior
	Align::Reordered::CopyInitialScores(init_row_score, init_col_score, scores);

	for (int c = 1; c < MAX_QUERY_LENGTH; c += PE_NUM)
	{
		for (int j = 1; j < MAX_REFERENCE_LENGTH; j++)
		{
#pragma HLS pipeline II = 1
			for (int p = 0; p < PE_NUM; p++)
			{
#pragma HLS unroll
				if (c + p < query_length && j < reference_length)
				{
					ALIGN_TYPE::PE::Compute(
						query[c + p - 1], reference[j - 1],
						scores[c + p - 1][j],
						scores[c + p - 1][j - 1],
						scores[c + p][j - 1],
						penalties,
						scores[c + p][j],
#ifdef DEBUG
						tbp_matrix[c + p - 1][j - 1],
						p);
#else
						tbp_matrix[c + p - 1][j - 1]);
#endif
				}
			}
		}
	}

	float score_matrix_std[N_LAYERS][MAX_QUERY_LENGTH+1][MAX_REFERENCE_LENGTH+1]; // DEBUG

	// Perform Traceback Here
#ifdef DEBUG
	Debug::translate_multilayer(scores, score_matrix_std);
#endif
}

void Align::Reordered::CopyInitialScores(
	hls::vector<type_t, N_LAYERS> (&init_row_scr)[MAX_REFERENCE_LENGTH],
	hls::vector<type_t, N_LAYERS> (&init_col_scr)[MAX_QUERY_LENGTH],
	hls::vector<type_t, N_LAYERS> (&scores)[MAX_QUERY_LENGTH + 1][MAX_REFERENCE_LENGTH + 1])
{
	scores[0][0] = score_vec_t(0);

	for (int j = 1; j < MAX_REFERENCE_LENGTH + 1; j++)
	{
#pragma HLS unroll
		scores[0][j] = init_row_scr[j];
	}
	for (int i = 1; i < MAX_QUERY_LENGTH + 1; i++)
	{
#pragma HLS unroll
		scores[i][0] = init_col_scr[i];
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


void Align::UpdateDPMem(dp_mem_block_t &dp_mem, idx_t i, chunk_col_scores_inf_t &init_col_scr, score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH] ){
	Align::UpdateDPMemShift(dp_mem);
	Align::UpdateDPMemSet(dp_mem, i, init_col_scr, init_row_scr);
// 	// i is wavefront index here.
// 	for (int j = 0; j < PE_NUM + 1; j++){
// #pragma HLS unroll
// 		dp_mem[j][2] = dp_mem[j][1];
// 		dp_mem[j][1] = dp_mem[j][0];
// 	}
// 	if (i < MAX_REFERENCE_LENGTH){  // FIXME: Actually this could also be actual_reference_length
// 		dp_mem[0][1] = init_row_scr[i];
// 	}
// 	if (i < PE_NUM){
// 		dp_mem[i][2] = init_col_scr[i];  // set initial diagonal score
// 		dp_mem[i+1][1] = init_col_scr[i+1];  // set initial left score
// 	}
}

void Align::UpdateDPMemShift(dp_mem_block_t &dp_mem){
	for (int i = 0; i < PE_NUM + 1; i++){
#pragma HLS unroll
		dp_mem[i][2] = dp_mem[i][1];
		dp_mem[i][1] = dp_mem[i][0];
	}
}

void Align::UpdateDPMemSet(dp_mem_block_t &dp_mem, idx_t i, chunk_col_scores_inf_t &init_col_scr, score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH] ){

	// FIXME: Can takeout this condition since even though the out of bound access, the 
	// element won't be written to the memory

	if (i < MAX_REFERENCE_LENGTH){  // FIXME: Actually this could also be actual_reference_length
		dp_mem[0][1] = init_row_scr[i];
	}
	
	// Set the computation for the 0th column
	if (i < PE_NUM){
		dp_mem[i][2] = init_col_scr[i];  // set initial diagonal score
		dp_mem[i+1][1] = init_col_scr[i+1];  // set initial left score
	}

	// FIXME: Set i = 0 case in Chunk compute loop, doesn't requires an update
}
