#ifndef VPP_CLI
#include "../../include/align.h"
#include "../../kernels/dtw/params.h" // FIXME: Temporarily being the DTW Kernel
#else
#include "align.h"
#include "params.h"
#endif

using namespace hls;

#define MAX(a, b) ((a) > (b) ? (a) : (b))
#define MIN(a, b) ((a) < (b) ? (a) : (b))


#ifdef CMAKEDEBUG
#include "host_utils.h"
#endif

/**
 * IMPORTANT: The shifting logic is taken out because it's hard to design banding kernel with the mechanism.
 * However, it result in more optimal hardware and still feasible for the non-banded version.
 * Thus, we keep those functions.
 */
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

void Align::ShiftReference(
	char_t (&local_reference)[PE_NUM], const char_t (&reference)[MAX_REFERENCE_LENGTH],
	int idx, int ref_len)
{
	// #pragma HLS inline off
	// #pragma HLS latency max=1
	// Shift Reference
	if (idx < ref_len)
	{
		Utils::Array::ShiftRight<char_t, PE_NUM>(local_reference, reference[idx]);
	}
	else
	{
		Utils::Array::ShiftRight<char_t, PE_NUM>(local_reference, ZERO_CHAR);
	}
	// Utils::Array::ShiftRight<char_t, PE_NUM>(local_reference, reference[idx]);
}

void Align::PrepareScoresArr(
	dp_mem_block_t &dp_mem_in,
	score_vec_t (&init_col_scr)[PE_NUM], int id,
	score_vec_t (&last_chunk_scr)[2],
	wavefront_scores_t &up_out,
	wavefront_scores_t &diag_out,
	wavefront_scores_t &left_out)
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
	wavefront_scores_t &score_in)
{
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		dp_mem_in[1][i] = dp_mem_in[0][i];
		dp_mem_in[0][i] = score_in[i];
	}
}

void Align::InitializeChunkCoordinates(idx_t chunk_row_offset, idx_t chunk_col_offset, hls::vector<idx_t, PE_NUM> &ic, hls::vector<idx_t, PE_NUM> &jc)
{
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		ic[i] = chunk_row_offset + i;
		jc[i] = chunk_col_offset - i;
	}
}

void Align::InitializeColumnCoordinates(idx_t (&jc)[PE_NUM])
{
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		jc[i] = -i;
	}
}

void Align::InitializeRowCoordinates(idx_t (&ic)[PE_NUM])
{
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		ic[i] = i;
	}
}

void Align::Rectangular::MapPredicate(
	const idx_t wavefront,
	const idx_t ref_len, const idx_t qry_len,  // This query length is local query length in chunk, always less than PE_NUM
	bool (&predicate)[PE_NUM])
{
    Utils::Array::ShiftRight(predicate, wavefront < ref_len);

#ifdef CMAKEDEBUG
//    // print out predicate
//    cout << "Wavefront " << std::right << std::setw(2) << wavefront << " Predicate: ";
//    for (int i = 0; i < PE_NUM; i++)
//    {
//        cout << predicate[i] << " ";
//    }
//    cout << endl;
#endif
}

#ifdef BANDED
void Align::MapPredicateBanded(
	int start_index,
	int stop_index,
	idx_t chunk_row_offset,
	idx_t (&ics)[PE_NUM],
	idx_t (&jcs)[PE_NUM],
	idx_t (&col_lim_left)[PE_NUM],
	idx_t (&col_lim_right)[PE_NUM],
	const int query_len,
	const idx_t ref_len,
	bool (&predicate)[PE_NUM])
{

	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		int minPos = MAX(0, jcs[i] - FIXED_BANDWIDTH + 1);
		int maxPos = MIN(ref_len, jcs[i] + FIXED_BANDWITH);
		predicate[i] = (minPos <= ics[i] && ics[i] < maxPos && 0 <= jcs[i] && jcs[i] < query_len);
	}
}
#endif

void Align::Rectangular::ChunkCompute(
	idx_t chunk_row_offset,
	input_char_block_t &local_query,
	const char_t (&reference)[MAX_REFERENCE_LENGTH],
	chunk_col_scores_inf_t &init_col_scr,
	score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
	idx_vec_t &p_cols, idx_t ck_idx,
	idx_t global_query_length, idx_t query_length, idx_t reference_length,
	const Penalties &penalties,
	ScorePack (&max)[PE_NUM],
	tbp_t (&chunk_tbp_out)[PE_NUM][TBMEM_SIZE]
#ifdef CMAKEDEBUG
	,
	Container &debugger
#endif
)
{
    bool predicate[PE_NUM];
    Utils::Init::ArrSet<bool, PE_NUM>(predicate, false);

	char_t local_reference[PE_NUM]; // local reference
	tbp_vec_t tbp_out;
	dp_mem_block_t dp_mem;
	score_vec_t score_buff[PE_NUM + 1];

#pragma HLS array_partition variable = local_query type = complete
#pragma HLS array_partition variable = local_reference type = complete
#pragma HLS array_partition variable = dp_mem type = complete
#pragma HLS array_partition variable = tbp_out type = complete
//#pragma HLS bind_storage variable = init_col_scr type = rom_1p impl = bram

	dp_mem[0][0] = init_col_scr[0];

Iterating_Wavefronts:
	for (idx_t i = 0; i < reference_length + query_length - 1; i++)
	{
#pragma HLS pipeline II = 1
#pragma HLS dependence variable = init_row_scr type = inter direction = RAW false

		Align::Rectangular::MapPredicate(i, reference_length, query_length, predicate);

		Align::ShiftReference(local_reference, reference, i, reference_length);
		Align::PrepareScoreBuffer(score_buff, i, init_col_scr, init_row_scr);
		Align::UpdateDPMemSep(dp_mem, score_buff);

		PE::PEUnrollSep(
			dp_mem,
			local_query,
			local_reference,
			penalties,
			score_buff,
			tbp_out);

		Align::ArrangeTBP(tbp_out, p_cols, predicate, chunk_tbp_out);

#ifdef CMAKEDEBUG
		for (int j = 0; j < PE_NUM; j++)
		{
			debugger.set_score(chunk_row_offset, 0, j, i, score_buff[j + 1], predicate[j]);
		}
#endif

		// This should happen before Arrange TBP Arr
		// Because it doesn't increment PE offsets
		// while ArrangeTBPArr does
		Align::PreserveRowScore(
			init_row_scr,
			score_buff[PE_NUM], // score_buff is of the length PE_NUM+1
			predicate[PE_NUM - 1],
			idx_t(i-PE_NUM+1));

		ALIGN_TYPE::UpdatePEMaximum(score_buff, max,  chunk_row_offset, i, p_cols, ck_idx, predicate,
                                    global_query_length, reference_length);

		p_cols++;
	}
}

void Align::UpdateDPMemSep(
	score_vec_t (&dp_mem)[PE_NUM + 1][2],
	score_vec_t (&score_in)[PE_NUM + 1])
{
#pragma HLS array_partition variable = dp_mem type = complete
#pragma HLS array_partition variable = score_in type = complete

	for (int j = 0; j < PE_NUM + 1; j++)
	{
#pragma HLS unroll
		dp_mem[j][1] = dp_mem[j][0];
		dp_mem[j][0] = score_in[j];
	}
}

void Align::PrepareScoreBuffer(
	score_vec_t (&score_buff)[PE_NUM + 1],
	int i,
	chunk_col_scores_inf_t(&init_col_scr),
	score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH])
{
	if (i < MAX_REFERENCE_LENGTH)
	{ // FIXME: Actually this could also be actual_reference_length
		score_buff[0] = init_row_scr[i];
	}
	// Set the computation for the 0th column
	if (i < PE_NUM)
	{
		score_buff[i + 1] = init_col_scr[i + 1];
	}
}


void Align::FindMax::ExtractScoresLayer(wavefront_scores_t &scores, idx_t layer, type_t (&extracted)[PE_NUM])
{
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		extracted[i] = scores[i].data[layer];
	}
}

void Align::ArrangeSingleTBP(
	const idx_t i, const idx_t j, const bool pred, const tbp_t tbp_in,
	tbp_t (&chunk_tbp_out)[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH])
{
	if (pred)
	{
		chunk_tbp_out[i][j] = tbp_in;
	}
}

void Align::ArrangeTBP(
	const tbp_vec_t &tbp_in,
	const idx_vec_t &p_cols,
	const bool (&predicate)[PE_NUM],
	tbp_t (&chunk_tbp_out)[PE_NUM][TBMEM_SIZE])
{
#pragma HLS array_partition variable = chunk_tbp_out type = cyclic factor = PE_NUM dim = 1
#pragma HLS array_partition variable = tbp_in type = complete
#pragma HLS array_partition variable = p_cols type = complete
#pragma HLS array_partition variable = predicate type = complete

	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		if (predicate[i])
		{
			chunk_tbp_out[i][p_cols[i]] = tbp_in[i];
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
	score_vec_t (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
	const score_vec_t score_vec,
	const bool predicate_pe_last,
	const idx_t idx)
{

	if (predicate_pe_last)
	{
		preserved_row_scr[idx] = score_vec;
	}
}

void Align::FindMax::ReductionMaxScores(ScorePack (&packs)[PE_NUM], ScorePack &global_max, idx_t &max_pe)
{
	for (idx_t i = 0; i < PE_NUM; i++)
	{
		if (packs[i].score > packs[max_pe].score)
		{
			max_pe = i;
		}
	}
	global_max = packs[max_pe];
}

void Align::CopyColScore(chunk_col_scores_inf_t &init_col_scr_local, score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH], idx_t idx)
{
	init_col_scr_local[0] = init_col_scr_local[PE_NUM]; // backup the last element from previous chunk

	for (int j = 0; j < PE_NUM; j++)
	{
		init_col_scr_local[j + 1] = init_col_scr[idx + j];
	}
}

void Align::PrepareLocalQuery(
	char_t (&query)[MAX_QUERY_LENGTH],
	char_t (&local_query)[PE_NUM],
	const idx_t offset)

{
	for (int i = 0; i < PE_NUM; i++)
	{
		local_query[i] = query[offset + i];
	}
}

void Align::ChunkMax(ScorePack &max, ScorePack new_scr)
{
	if (new_scr.score > max.score)
	{
		max.score = new_scr.score;
//		max.row = new_scr.row;
//		max.col = new_scr.col;
	}
}

void Align::Rectangular::AlignStatic(
	const char_t (&query)[MAX_QUERY_LENGTH],
	const char_t (&reference)[MAX_REFERENCE_LENGTH],
	idx_t query_length,
	idx_t reference_length,
	const Penalties &penalties,
	idx_t &tb_i, idx_t &tb_j,
	tbr_t (&tb_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH]
#ifdef CMAKEDEBUG
	,
	Container &debugger
#endif
)
{
//#pragma HLS bind_storage variable = query type = rom_1p impl = bram
//#pragma HLS bind_storage variable = reference type = rom_1p impl = bram

	// >>> Initialization >>>
	score_vec_t init_col_score[MAX_QUERY_LENGTH];
	score_vec_t init_row_score[MAX_REFERENCE_LENGTH];
	static_assert(MAX_QUERY_LENGTH % PE_NUM == 0, "MAX_QUERY_LENGTH must divide PE_NUM, compilation terminated!");
	tbp_t tbp_matrix[PE_NUM][TBMEM_SIZE];

#pragma HLS bind_storage variable = init_row_score type = ram_t2p impl = bram
//#pragma HLS bind_storage variable = init_col_score type = ram_1p impl = bram
#pragma HLS array_partition variable = tbp_matrix type = cyclic factor = PE_NUM dim = 1

#ifdef CMAKEDEBUG
	// initialize tbp_matrix with TB_PH
	for (int i = 0; i < PE_NUM; i++)
	{
		for (int j = 0; j < TBMEM_SIZE; j++)
		{
			tbp_matrix[i][j] = tbp_t(0);
		}
	}
#endif

	// Those are used to iterate through the memory during the score computation
    hls::vector<idx_t, PE_NUM> p_cols;

	// Declare and initialize maximum scores.
	ScorePack maximum;
	ScorePack local_max[PE_NUM];

	ALIGN_TYPE::InitializeScores(init_col_score, init_row_score, penalties);
	ALIGN_TYPE::InitializeMaxScores(local_max, query_length, reference_length);

	char_t local_query[PE_NUM];
	chunk_col_scores_inf_t local_init_col_score;
	local_init_col_score[PE_NUM] = score_vec_t(0); // Always initialize the upper left cornor to 0

Iterating_Chunks:
	for (idx_t i = 0, ic = 0, p_col_offsets = 0; i < query_length; i += PE_NUM, ic++, p_col_offsets += MAX_REFERENCE_LENGTH)
	{
		idx_t local_query_length = ((idx_t)PE_NUM < query_length - i) ? (idx_t)PE_NUM : (idx_t)(query_length - i);

		Align::PrepareLocals<PE_NUM>(query, local_query, init_col_score, local_init_col_score, i); // Prepare the local query and the local column scores

        //		p_cols = p_col_offsets; // Initialize physical columns to write to for each PE.
        Utils::Array::CoordinateInitializeUniformReverse<idx_t, PE_NUM>(p_cols, p_col_offsets);

		Align::Rectangular::ChunkCompute(
			i,
			local_query,
			reference,
			local_init_col_score,
			init_row_score,
			p_cols, ic,
			query_length,
			local_query_length,
			reference_length,
			penalties,
			local_max,
			tbp_matrix
#ifdef CMAKEDEBUG
			,
			debugger
#endif
		);

	}
    idx_t max_pe = 0;
	Align::FindMax::ReductionMaxScores(local_max, maximum, max_pe);

	// >>> Traceback >>>
	tb_i = maximum.ck * PE_NUM + max_pe;
	tb_j = maximum.p_col - maximum.ck * MAX_REFERENCE_LENGTH;

#ifdef CMAKEDEBUG
	// print tracevack start idx
	cout << "Traceback start idx: " << tb_i << " " << tb_j << endl;
	cout << "Traceback start idx physical: " << max_pe << " " << maximum.p_col << endl;
#endif

	Traceback::TracebackFixedSize<MAX_REFERENCE_LENGTH>(tbp_matrix, tb_out, maximum.ck, max_pe, maximum.p_col, tb_i, tb_j);
}

void SwapBuffer(score_vec_t *&a, score_vec_t *&b)
{
	score_vec_t *temp = a;
	a = b;
	b = temp;
}

void Align::UpdateDPMem(dp_mem_block_t &dp_mem, idx_t i, chunk_col_scores_inf_t &init_col_scr, score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH])
{
	Align::UpdateDPMemShift(dp_mem);
	Align::UpdateDPMemSet(dp_mem, i, init_col_scr, init_row_scr);
}

void Align::UpdateDPMemShift(dp_mem_block_t &dp_mem)
{
#pragma HLS array_partition variable = dp_mem type = complete dim = 0
	for (int i = 0; i < PE_NUM + 1; i++)
	{
#pragma HLS unroll
		dp_mem[i][2] = dp_mem[i][1];
		dp_mem[i][1] = dp_mem[i][0];
	}
}

void Align::UpdateDPMemSet(dp_mem_block_t &dp_mem, idx_t i, chunk_col_scores_inf_t &init_col_scr, score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH])
{
#pragma HLS array_partition variable = dp_mem type = complete dim = 0

	if (i < MAX_REFERENCE_LENGTH)
	{ // FIXME: Actually this could also be actual_reference_length
		dp_mem[0][1] = init_row_scr[i];
	}

	// Set the computation for the 0th column
	if (i < PE_NUM)
	{
		dp_mem[i][2] = init_col_scr[i];			// set initial diagonal score
		dp_mem[i + 1][1] = init_col_scr[i + 1]; // set initial left score
	}

	// FIXME: Set i = 0 case in Chunk compute loop, doesn't requires an update
}

void Align::RectangularOpt::AlignStatic(
	char_t (&query)[MAX_QUERY_LENGTH],
	char_t (&reference)[MAX_REFERENCE_LENGTH],
	idx_t query_length,
	idx_t reference_length,
	const Penalties &penalties,
	idx_t &tb_i, idx_t &tb_j,
	tbr_t (&tb_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH]
#ifdef CMAKEDEBUG
	,
	Container &debugger
#endif
)
{

#pragma HLS array_partition variable = query type = cyclic factor = PE_NUM dim = 1

	// >>> Initialization >>>
	score_vec_t init_col_score[MAX_QUERY_LENGTH];
	score_vec_t init_row_score[MAX_REFERENCE_LENGTH];
	static_assert(MAX_QUERY_LENGTH % PE_NUM == 0, "MAX_QUERY_LENGTH must divide PE_NUM, compilation terminated!");
	tbp_t tbp_matrix[PE_NUM][TBMEM_SIZE];

#pragma HLS array_partition variable = init_row_score type = complete dim = 0
#pragma HLS array_partition variable = tbp_matrix type = cyclic factor = PE_NUM dim = 1

	hls::vector<idx_t, PE_NUM> v_rows;
	hls::vector<idx_t, PE_NUM> v_cols;
	hls::vector<idx_t, PE_NUM> p_cols;

	Utils::Array::CoordinateInitializeUniform<idx_t, PE_NUM>(v_rows, 0); // Initialize the row coordinates of each PE

	// Thos are used to retrive the traceback informations
	idx_t ck_start_col[MAX_QUERY_LENGTH / PE_NUM];		// Virtual column index of each chunk
	idx_t ck_end_col[MAX_QUERY_LENGTH / PE_NUM];		// Virtual column index of each chunk
	idx_t p_col_offsets[MAX_QUERY_LENGTH / PE_NUM + 1]; // In which column in the physicla memory starts the chunk.

	p_col_offsets[0] = 0;
	Align::RectangularOpt::InitializeChunkInfo(ck_start_col, ck_end_col, p_col_offsets, reference_length);

	// Declare and initialize maximum scores.
	ScorePack maximum;
	ScorePack local_max[PE_NUM];

#pragma HLS array_partition variable = init_col_score type = cyclic factor = PE_NUM dim = 1

	ALIGN_TYPE::InitializeScores(init_col_score, init_row_score, penalties);
	ALIGN_TYPE::InitializeMaxScores(local_max, query_length, reference_length);

	char_t local_query[PE_NUM];
	chunk_col_scores_inf_t local_init_col_score;
	local_init_col_score[PE_NUM] = score_vec_t(0); // Always initialize the upper left cornor to 0

Iterating_Chunks:
	for (idx_t i = 0, ic = 0; i < query_length; i += PE_NUM, ic++)
	{
		idx_t local_query_length = ((idx_t)PE_NUM < query_length - i) ? (idx_t)PE_NUM : (idx_t)(query_length - i);

		Align::PrepareLocalQuery(query, local_query, i); // FIXME: Why not coping rest of the query
		Align::CopyColScore(local_init_col_score, init_col_score, i);		 // Copy the scores

		Utils::Array::CoordinateInitializeUniformReverse<idx_t, PE_NUM>(p_cols, p_col_offsets[ic]); // Initialize physical columns to write to for each PE.
		Utils::Array::CoordinateInitializeUniformReverse<idx_t, PE_NUM>(v_cols, ck_start_col[ic]);	// Initialize the column coordinates of each PE

		Align::RectangularOpt::ChunkCompute(
			i,
			ck_start_col[ic],
			local_query,
			reference,
			local_init_col_score,
			init_row_score,
			v_rows, v_cols,
			p_cols, ic,
			query_length,
			local_query_length,
			reference_length,
			penalties,
			init_row_score,
			local_max,
			tbp_matrix
#ifdef CMAKEDEBUG
			,
			debugger
#endif
		);

		v_rows += PE_NUM;
	}
//	Align::FindMax::ReductionMaxScores(local_max, maximum);

	// >>> Traceback >>>
//	tb_i = maximum.row;
//	tb_j = maximum.col;

#ifdef CMAKEDEBUG
	// print scores of all local_max
	for (int i = 0; i < PE_NUM; i++)
	{
//		cout << "Local Max: " << local_max[i].score << " " << local_max[i].row << " " << local_max[i].col << endl;
	}

	// print tracevack start idx
//	cout << "Traceback start idx: " << tb_i << " " << tb_j << endl;
//	cout << "Traceback start idx physical: " << maximum.ck << " " << maximum.pe << " " << maximum.p_col << endl;
#endif

//	Traceback::TracebackOptimized(tbp_matrix, tb_out, ck_start_col, ck_end_col, maximum.ck, maximum.pe, maximum.p_col, maximum.row, maximum.col);
}

void Align::RectangularOpt::ChunkCompute(
	idx_t chunk_row_offset,
	idx_t chunk_start_col,
	input_char_block_t &local_query,
	char_t (&reference)[MAX_REFERENCE_LENGTH],
	chunk_col_scores_inf_t &init_col_scr,
	score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
	hls::vector<idx_t, PE_NUM>(&v_rows), hls::vector<idx_t, PE_NUM>(&v_cols),
	hls::vector<idx_t, PE_NUM> &p_cols, idx_t ck_idx,
	int global_query_length, int query_length, int reference_length,
	const Penalties &penalties,
	score_vec_t (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
	ScorePack (&max)[PE_NUM],
	tbp_t (&chunk_tbp_out)[PE_NUM][TBMEM_SIZE]
#ifdef CMAKEDEBUG
	,
	Container &debugger
#endif
)
{

	bool predicate[PE_NUM];
	Utils::Init::ArrSet<bool, PE_NUM>(predicate, false);

	char_t local_reference[PE_NUM]; // local reference
	tbp_vec_t tbp_out;
	dp_mem_block_t dp_mem;
	score_vec_t score_buff[PE_NUM + 1];

#pragma HLS array_partition variable = predicate type = complete
#pragma HLS array_partition variable = local_query type = complete
#pragma HLS array_partition variable = local_reference type = complete
#pragma HLS array_partition variable = dp_mem type = complete
#pragma HLS array_partition variable = tbp_out type = complete
#pragma HLS array_partition variable = score_buff type = complete

	dp_mem[0][0] = init_col_scr[0];

	// #ifdef BANDED
	// 	int start_index = max(0, chunk_row_offset - FIXED_BANDWIDTH + 1);
	// 	int stop_index = min(reference_length, chunk_row_offset + (PE_NUM - 1) + FIXED_BANDWIDTH - 1) + PE_NUM - 1;

Iterating_Wavefronts:
	for (int i = 0; i < reference_length + PE_NUM - 1; i++)
	{
#pragma HLS pipeline II = 1

		Align::RectangularOpt::ShiftPredicate(predicate, i, query_length, reference_length);

		Align::ShiftReference(local_reference, reference, i, reference_length);
		Align::PrepareScoreBuffer(score_buff, i, init_col_scr, init_row_scr);
		Align::UpdateDPMemSep(dp_mem, score_buff);

		PE::PEUnrollSep(
			dp_mem,
			local_query,
			local_reference,
			penalties,
			score_buff,
			tbp_out);

		Align::RectangularOpt::SetTBP(tbp_out, p_cols, predicate, chunk_tbp_out);

#ifdef CMAKEDEBUG
		for (int j = 0; j < PE_NUM; j++)
		{
			debugger.set_score(chunk_row_offset, 0, j, i, score_buff[j + 1], predicate[j]);
		}
#endif

		// This should happen before Arrange TBP Arr
		// Because it doesn't increment PE offsets
		// while ArrangeTBPArr does
		Align::PreserveRowScore(
			preserved_row_scr,
			score_buff[PE_NUM], // score_buff is of the length PE_NUM+1
			predicate[PE_NUM - 1],
			v_cols[PE_NUM - 1]);

		// FIXME: FindMax is commented off!!!
		// ALIGN_TYPE::UpdatePEMaximumOpt(score_buff, max, v_rows, v_cols, p_cols, ck_idx,
		// 							   predicate, global_query_length, reference_length);
		v_cols += 1;
		p_cols += 1;
	}
}

void Align::RectangularOpt::ShiftPredicate(bool (&predicate)[PE_NUM], int idx, int query_len, int reference_len)
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

void Align::RectangularOpt::SetTBP(
	const tbp_vec_t &tbp_in,
	hls::vector<idx_t, PE_NUM> &p_cols,
	const bool (&predicate)[PE_NUM],
	tbp_t (&chunk_tbp_out)[PE_NUM][TBMEM_SIZE])
{
#pragma HLS array_partition variable = chunk_tbp_out type = cyclic factor = PE_NUM dim = 1
#pragma HLS array_partition variable = tbp_in type = complete
#pragma HLS array_partition variable = p_cols type = complete
#pragma HLS array_partition variable = predicate type = complete

	for (int i = 0; i < PE_NUM; i++)
	{
		// UNBELIEVEBLE: Specifying any false depencency result in infinite loop in Vitis HLS!#pragma HLS unroll
		// Align::ArrangeSingleTBP(ics[i], jcs[i], predicate[i], tbp_in[i], chunk_tbp_out);
		if (predicate[i])
		{
			chunk_tbp_out[i][p_cols[i]] = tbp_in[i];
		}
	}
}

void Align::RectangularOpt::InitializeChunkInfo(
	idx_t (&ck_start_col)[MAX_QUERY_LENGTH / PE_NUM], // Virtual column index of each chunk
	idx_t (&ck_end_col)[MAX_QUERY_LENGTH / PE_NUM],	  // Virtual column index of each chunk
	idx_t (&p_col_offsets)[MAX_QUERY_LENGTH / PE_NUM + 1],
	idx_t reference_length)
{
Initialize_Chunk_Records:
	for (int i = 0; i < MAX_QUERY_LENGTH / PE_NUM; i++)
	{
		ck_start_col[i] = 0;
		ck_end_col[i] = reference_length - 1;
		p_col_offsets[i + 1] = p_col_offsets[i] + reference_length;
	}
}


void Align::Fixed::AlignStatic(
	char_t (&query)[MAX_QUERY_LENGTH],
	char_t (&reference)[MAX_REFERENCE_LENGTH],
	idx_t query_length,
	idx_t reference_length,
	const Penalties &penalties,
	idx_t &tb_i, idx_t &tb_j,
	tbr_t (&tb_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH]
#ifdef CMAKEDEBUG
	,
	Container &debugger
#endif
){

#ifndef  BANDWIDTH
#define  BANDWIDTH 0
#endif

	// >>> Initialization >>>
	score_vec_t init_col_score[MAX_QUERY_LENGTH];
	score_vec_t init_row_score[MAX_REFERENCE_LENGTH];
	static_assert(MAX_QUERY_LENGTH % PE_NUM == 0, "MAX_QUERY_LENGTH must divide PE_NUM, compilation terminated!");
	tbp_t tbp_matrix[PE_NUM][TBMEM_SIZE];

#ifdef CMAKEDEBUG
	// initialize tbp_matrix with TB_PH
	for (int i = 0; i < PE_NUM; i++)
	{
		for (int j = 0; j < TBMEM_SIZE; j++)
		{
			tbp_matrix[i][j] = tbp_t(0);
		}
	}
#endif

#pragma HLS array_partition variable = tbp_matrix type = cyclic factor = PE_NUM dim = 1

	// Those are used to iterate through the memory during the score computation
	idx_t v_rows[PE_NUM];
	idx_t v_cols[PE_NUM];
	idx_t p_cols[PE_NUM];

#pragma HLS array_partition variable = v_rows type = complete
#pragma HLS array_partition variable = v_cols type = complete
#pragma HLS array_partition variable = p_cols type = complete

	// Thos are used to retrive the traceback informations
	idx_t p_col_offsets[MAX_QUERY_LENGTH / PE_NUM + 1]; // In which column in the physicla memory starts the chunk.
	idx_t ck_start_col[MAX_QUERY_LENGTH / PE_NUM];		// Virtual column index of each chunk
	idx_t ck_end_col[MAX_QUERY_LENGTH / PE_NUM];		// Virtual column index of each chunk

	idx_t l_lims[PE_NUM], u_lims[PE_NUM];
#pragma HLS array_partition variable = l_lims type = complete
#pragma HLS array_partition variable = u_lims type = complete

	Utils::Array::CoordinateInitializeUniform<idx_t, PE_NUM>(l_lims, -BANDWIDTH);
	Utils::Array::CoordinateInitializeUniform<idx_t, PE_NUM>(u_lims, BANDWIDTH - 1);

	idx_t cnt = -BANDWIDTH;
	Initialize_ck_start_col:
	for (int i = 0; i < MAX_QUERY_LENGTH / PE_NUM; i++)
	{
		ck_start_col[i] = cnt > 0? cnt : 0;
		cnt += PE_NUM;
	}
	cnt = BANDWIDTH + PE_NUM - 2;
	Initialize_ck_end_col:
	for (int i = 0; i < MAX_QUERY_LENGTH / PE_NUM; i++)
	{
		ck_end_col[i] = cnt < reference_length - 1 ? cnt : reference_length - 1;
		cnt += PE_NUM;
	}

	p_col_offsets[0] = 0; // Initialize the physical column position of the very first chunk to be 0

	Align::CoordinateInitializeUniform(v_rows, 0);	 // Initialize the row coordinates of each PE

	// Declare and initialize maximum scores.
	ScorePack maximum;
	ScorePack local_max[PE_NUM];

#pragma HLS array_partition variable = init_col_score type = cyclic factor = PE_NUM dim = 1

	ALIGN_TYPE::InitializeScores(init_col_score, init_row_score, penalties);
	ALIGN_TYPE::InitializeMaxScores(local_max, query_length, reference_length);

	char_t local_query[PE_NUM];
	chunk_col_scores_inf_t local_init_col_score;
	local_init_col_score[PE_NUM] = score_vec_t(0); // Always initialize the upper left cornor to 0

Iterating_Chunks:
	for (idx_t i = 0, ic = 0; i < query_length; i += PE_NUM, ic++)
	{
		idx_t local_query_length = ((idx_t)PE_NUM < query_length - i) ? (idx_t)PE_NUM : (idx_t)(query_length - i);

		// Align::PrepareLocalQuery(query, local_query, i, local_query_length); // FIXME: Why not coping rest of the query
		// Align::CopyColScore(local_init_col_score, init_col_score, i);		 // Copy the scores

		Align::PrepareLocals<PE_NUM>(query, local_query, init_col_score, local_init_col_score, i); // Prepare the local query and the local column scores

		Align::CoordinateInitializeUniformReverse(p_cols, p_col_offsets[ic]); // Initialize physical columns to write to for each PE.
		Align::CoordinateInitializeUniformReverse(v_cols, ck_start_col[ic]);  // Initialize the column coordinates of each PE

		Align::Fixed::ChunkCompute(
			i,
			ck_start_col[ic],
			ck_end_col[ic],
			local_query,
			reference,
			local_init_col_score,
			init_row_score,
			v_rows, v_cols,
			p_cols, ic,
			l_lims, u_lims,
			query_length,
			penalties,
			local_max,
			tbp_matrix
#ifdef CMAKEDEBUG
			,
			debugger
#endif
		);

		// Set the physical column offsets for the next chunk
		p_col_offsets[ic + 1] = p_col_offsets[ic] + (ck_end_col[ic] - ck_start_col[ic] + 1);

		// Offset the virtual row number
		Align::CoordinateArrayOffsetGeneric<PE_NUM, PE_NUM>(v_rows);
		Align::CoordinateArrayOffsetGeneric<PE_NUM, PE_NUM>(l_lims);
		Align::CoordinateArrayOffsetGeneric<PE_NUM, PE_NUM>(u_lims);
	}

    idx_t max_pe = 0;
    Align::FindMax::ReductionMaxScores(local_max, maximum, max_pe);

    // >>> Traceback >>>
    tb_i = maximum.ck * PE_NUM + max_pe;
    tb_j = maximum.p_col - maximum.ck * MAX_REFERENCE_LENGTH;

#ifdef CMAKEDEBUG
    // print tracevack start idx
    cout << "Traceback start idx: " << tb_i << " " << tb_j << endl;
    cout << "Traceback start idx physical: " << max_pe << " " << maximum.p_col << endl;
#endif

    Traceback::TracebackFixedSize<MAX_REFERENCE_LENGTH>(tbp_matrix, tb_out, maximum.ck, max_pe, maximum.p_col, tb_i, tb_j);
}

void Align::Fixed::ChunkCompute(
	idx_t chunk_row_offset,
	idx_t chunk_start_col,
	idx_t chunk_end_col,
	input_char_block_t &local_query,
	char_t (&reference)[MAX_REFERENCE_LENGTH],
	chunk_col_scores_inf_t &init_col_scr,
	score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
	idx_t (&v_rows)[PE_NUM], idx_t (&v_cols)[PE_NUM],
	idx_t (&p_cols)[PE_NUM], idx_t ck_idx,
	idx_t (&l_lim)[PE_NUM], idx_t (&u_lim)[PE_NUM],
	int global_query_length,
	const Penalties &penalties,
	ScorePack (&max)[PE_NUM], // write out so must pass by reference
	tbp_t (&chunk_tbp_out)[PE_NUM][TBMEM_SIZE]
#ifdef CMAKEDEBUG
	,
	Container &debugger
#endif
){

	bool predicate[PE_NUM];
	Utils::Init::ArrSet<bool, PE_NUM>(predicate, false);

	char_t local_reference[PE_NUM]; // local reference
	tbp_vec_t tbp_out;
	dp_mem_block_t dp_mem;
	score_vec_t score_buff[PE_NUM + 1];
#ifdef CMAKEDEBUG
	std::vector<char> reference_s;
	for (int i = 0; i < MAX_REFERENCE_LENGTH; i++)
	{
		reference_s.push_back(HostUtils::Sequence::num_to_base(reference[i]));
	}
#endif

#pragma HLS array_partition variable = predicate type = complete
#pragma HLS array_partition variable = local_query type = complete
#pragma HLS array_partition variable = local_reference type = complete
#pragma HLS array_partition variable = dp_mem type = complete
#pragma HLS array_partition variable = tbp_out type = complete
#pragma HLS array_partition variable = score_buff type = complete

	dp_mem[0][0] = chunk_start_col > 0? init_row_scr[chunk_start_col-1] : init_col_scr[0];

Iterating_Wavefronts:
	for (int i = chunk_start_col; i < chunk_end_col + PE_NUM; i++)
	{
#pragma HLS pipeline II = 1
#pragma HLS dependence variable = init_row_scr type = inter direction = RAW false

#ifdef CMAKEDEBUG
	// Translate init_row_scr buffer like we did for the reference
	// by putting it into a vector of float type
	std::vector<float> init_row_scr_f;
	for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
	{
		init_row_scr_f.push_back(init_row_scr[j].data[0].to_float());
	}
#endif

		Align::Fixed::MapPredicate(v_rows, v_cols, l_lim, u_lim, chunk_start_col, chunk_end_col, global_query_length, predicate);

		// Align::ShiftReference(local_reference, reference, i, chunk_end_col);
		Utils::Array::ShiftRight<char_t, PE_NUM>(local_reference, i < MAX_REFERENCE_LENGTH ? reference[i] : ZERO_CHAR);
		
#ifdef CMAKEDEBUG
		// print local reference
		cout << "Local Reference: ";
		for (int j = 0; j < PE_NUM; j++)
		{
			cout << HostUtils::Sequence::num_to_base(local_reference[j]);
		}
		cout << endl;
		// print predicate
		cout << "Predicate: ";
		for (int j = 0; j < PE_NUM; j++)
		{
			cout << predicate[j];
		}
		cout << endl;
#endif

		Align::PrepareScoreBuffer(score_buff, i, init_col_scr, init_row_scr);
		Align::UpdateDPMemSep(dp_mem, score_buff);

		PE::PEUnrollFixedSep(
			dp_mem,
			local_query,
			local_reference,
			v_cols,
			l_lim, u_lim,
			penalties,
			score_buff,
			tbp_out);

//		Align::ArrangeTBP(tbp_out, p_cols, predicate, chunk_tbp_out);

#ifdef CMAKEDEBUG
		for (int j = 0; j < PE_NUM; j++)
		{
			debugger.set_score(chunk_row_offset, 0, j, i, score_buff[j + 1], predicate[j]);
		}
#endif

		// This should happen before Arrange TBP Arr
		// Because it doesn't increment PE offsets
		// while ArrangeTBPArr does
		Align::PreserveRowScore(
			init_row_scr,
			score_buff[PE_NUM], // score_buff is of the length PE_NUM+1
			predicate[PE_NUM - 1],
			v_cols[PE_NUM - 1]);

//		ALIGN_TYPE::UpdatePEMaximum(score_buff, max, p_cols,
//									predicate, global_query_length, chunk_end_col);
		Align::CoordinateArrayOffset<PE_NUM>(v_cols);
		Align::CoordinateArrayOffset<PE_NUM>(p_cols);
	}
}


void Align::Fixed::MapPredicate(
	idx_t (&ics)[PE_NUM], idx_t (&jcs)[PE_NUM],
	idx_t (&l_lim)[PE_NUM], idx_t (&u_lim)[PE_NUM],
	const idx_t ck_start_col, idx_t ck_end_col, idx_t query_length,
	bool (&predicate)[PE_NUM]){
		for (int i = 0; i < PE_NUM; i++)
		{
			predicate[i] = (jcs[i] >= l_lim[i]) && (jcs[i] >= ck_start_col) && (jcs[i] <= ck_end_col) && (jcs[i] <= u_lim[i]) && (ics[i] < query_length);
		}
	}
