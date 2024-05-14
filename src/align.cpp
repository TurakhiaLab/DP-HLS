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


void Align::ShiftReference(
	char_t (&local_reference)[PE_NUM], const char_t (&reference)[MAX_REFERENCE_LENGTH],
	int idx, int ref_len)
{
    Utils::Array::ShiftRight<char_t, PE_NUM>(local_reference, idx < ref_len ? reference[idx] : ZERO_CHAR);
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


void Align::Rectangular::MapPredicate(
	const idx_t wavefront,
	const idx_t ref_len, const idx_t qry_len,  // This query length is local query length in chunk, always less than PE_NUM
	bool (&row_pred)[PE_NUM],
	const bool (&col_pred)[PE_NUM],
	bool (&pred)[PE_NUM])
{
    Utils::Array::ShiftRight(row_pred, wavefront < ref_len);
	for (idx_t i = 0; i < PE_NUM; i++){
#pragma HLS unroll
		pred[i] = row_pred[i] && col_pred[i];
	
	}

#ifdef CMAKEDEBUG
	// print predicate
	// cout << "Predicate: ";
	// for (int j = 0; j < PE_NUM; j++)
	// {
	// 	cout << pred[j] << " ";
	// }
	// cout << endl;
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
	idx_t &p_col_offset, idx_t ck_idx,
	idx_t global_query_length, idx_t query_length, idx_t reference_length,
	const bool (&col_pred)[PE_NUM],
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
	bool row_pred[PE_NUM];
    Utils::Init::ArrSet<bool, PE_NUM>(predicate, false);
	Utils::Init::ArrSet<bool, PE_NUM>(row_pred, false);

#ifdef CMAKEDEBUG
//	// print predicate
//	cout << "Predicate: ";
//	for (int j = 0; j < PE_NUM; j++)
//	{
//		cout << predicate[j];
//	}
//	cout << endl;
#endif

	char_t local_reference[PE_NUM]; // local reference
	tbp_vec_t tbp_out;
	dp_mem_block_t dp_mem;
	score_vec_t score_buff[PE_NUM + 1];

#pragma HLS array_partition variable = local_query type = complete
#pragma HLS array_partition variable = local_reference type = complete
#pragma HLS array_partition variable = dp_mem type = complete
#pragma HLS array_partition variable = tbp_out type = complete

	dp_mem[0][0] = init_col_scr[0];

Iterating_Wavefronts:
	for (idx_t i = 0; i < reference_length + query_length - 1; i++)
	{
#pragma HLS pipeline II = 1
#pragma HLS dependence variable = init_row_scr type = inter direction = RAW false

		Align::Rectangular::MapPredicate(i, reference_length, query_length, row_pred, col_pred, predicate);

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

		Align::ArrangeTBP(tbp_out, p_col_offset, predicate, chunk_tbp_out);

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

		ALIGN_TYPE::UpdatePEMaximum(score_buff, max,  chunk_row_offset, i, p_col_offset, ck_idx, predicate,
                                    global_query_length, reference_length);

		p_col_offset++;
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
	const idx_t i,
	const chunk_col_scores_inf_t(&init_col_scr),
	const score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH])
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
//		extracted[i] = scores[i].data[layer];
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
	const idx_t &p_col_offset,
	const bool (&predicate)[PE_NUM],
	tbp_t (&chunk_tbp_out)[PE_NUM][TBMEM_SIZE])
{
#pragma HLS array_partition variable = chunk_tbp_out type = cyclic factor = PRAGMA_PE_NUM dim = 1
#pragma HLS array_partition variable = tbp_in type = complete
#pragma HLS array_partition variable = predicate type = complete

	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
        chunk_tbp_out[i][p_col_offset] = tbp_in[i];
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
	const idx_t query_length,
	const idx_t reference_length,
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
	tbp_t tbp_matrix[PE_NUM][TBMEM_SIZE];
	bool col_pred[PE_NUM];


#pragma HLS bind_storage variable = init_row_score type = ram_t2p impl = bram
#pragma HLS array_partition variable = tbp_matrix type = cyclic factor = PRAGMA_PE_NUM dim = 1

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

    idx_t p_cols;

	// Declare and initialize maximum scores.
	ScorePack maximum;
	ScorePack local_max[PE_NUM];

#pragma HLS aggregate variable=local_max

	ALIGN_TYPE::InitializeScores(init_col_score, init_row_score, penalties);
	ALIGN_TYPE::InitializeMaxScores(local_max, query_length, reference_length);

	char_t local_query[PE_NUM];
	chunk_col_scores_inf_t local_init_col_score;
	local_init_col_score[PE_NUM] = score_vec_t(0); // Always initialize the upper left cornor to 0

Iterating_Chunks:
	for (idx_t i = 0, ic = 0, p_col_offsets = 0; i < query_length; i += PE_NUM, ic++, p_col_offsets += (MAX_REFERENCE_LENGTH+PE_NUM-1))
	{
		idx_t local_query_length = ((idx_t)PE_NUM < query_length - i) ? (idx_t)PE_NUM : (idx_t)(query_length - i);

		Align::PrepareLocals<PE_NUM>(query, local_query, init_col_score, local_init_col_score, col_pred, local_query_length, i); // Prepare the local query and the local column scores

        p_cols = p_col_offsets;

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
			col_pred,
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
	tb_j = maximum.p_col - maximum.ck * (MAX_REFERENCE_LENGTH + PE_NUM - 1) - max_pe;

#ifdef CMAKEDEBUG
	// print tracevack start idx
	cout << "Traceback start idx: " << tb_i << " " << tb_j << endl;
	cout << "Traceback start chunk:" << maximum.ck << endl;
	cout << "Traceback start idx physical: " << maximum.ck << " " << max_pe << " " << maximum.p_col << endl;
#endif

#ifndef NO_TRACEBACK
	Traceback::TracebackFixedSize<MAX_REFERENCE_LENGTH>(tbp_matrix, tb_out, maximum.ck, max_pe, maximum.p_col, tb_i, tb_j);
#endif

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

void Align::Fixed::AlignStatic(
	const char_t (&query)[MAX_QUERY_LENGTH],
	const char_t (&reference)[MAX_REFERENCE_LENGTH],
	const idx_t query_length,
	const idx_t reference_length,
	const Penalties &penalties,
	idx_t &tb_i, idx_t &tb_j,
	tbr_t (&tb_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH]
#ifdef CMAKEDEBUG
	,
	Container &debugger
#endif
){

// This is to make this function compilable if in rectangular banding and BANDWIDTH not defined. 
#ifndef  BANDWIDTH
#define  BANDWIDTH 0
#endif

	// >>> Initialization >>>
	score_vec_t init_col_score[MAX_QUERY_LENGTH];
	score_vec_t init_row_score[MAX_REFERENCE_LENGTH];
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

#pragma HLS array_partition variable = tbp_matrix type = cyclic factor = PRAGMA_PE_NUM dim = 1
#pragma HLS array_partition variable = p_cols type = complete

	idx_t l_lims[MAX_QUERY_LENGTH], u_lims[MAX_QUERY_LENGTH];
#pragma HLS bind_storage variable = l_lims type = ram_1p impl = bram
#pragma HLS bind_storage variable = u_lims type = ram_1p impl = bram

	Align::Fixed::PrecomputeLowerLimits<idx_t, MAX_QUERY_LENGTH, BANDWIDTH>(l_lims);
	Align::Fixed::PrecomputeUpperLimits<idx_t, MAX_QUERY_LENGTH, BANDWIDTH>(u_lims, reference_length);

#ifdef CMAKEDEBUG
	// print l_lims and u_lims
	std::cout << "Lower limits: ";
	for (int j = 0; j < MAX_QUERY_LENGTH; j++) {
		std::cout << l_lims[j] << " ";
	}
	std::cout << endl << "Upper limits: ";
	for (int j = 0; j < MAX_QUERY_LENGTH; j++) {
		std::cout << u_lims[j] << " ";
	}
	std::cout << endl;
#endif

	// Declare and initialize maximum scores.
	ScorePack maximum;
	ScorePack local_max[PE_NUM];

#pragma HLS array_partition variable = init_col_score type = cyclic factor = PRAGMA_PE_NUM dim = 1

	ALIGN_TYPE::InitializeScores(init_col_score, init_row_score, penalties);
	ALIGN_TYPE::InitializeMaxScores(local_max, query_length, reference_length);

	char_t local_query[PE_NUM];
	chunk_col_scores_inf_t local_init_col_score;
	local_init_col_score[PE_NUM] = score_vec_t(0); // Always initialize the upper left cornor to 0
	idx_t local_l_lim[PE_NUM];
	idx_t local_u_lim[PE_NUM];
	bool col_pred[PE_NUM];

	idx_t p_col_offset = 0;
	idx_t p_col = 0;
	idx_t p_cols_internal_offset = BANDWIDTH;

Iterating_Chunks:
	for (idx_t i = 0, ic = 0; i < query_length; i += PE_NUM, ic++)
	{
		idx_t local_query_length = ((idx_t)PE_NUM < query_length - i) ? (idx_t)PE_NUM : (idx_t)(query_length - i);

		p_col = p_cols_internal_offset + p_col_offset;
		p_cols_internal_offset = p_cols_internal_offset - PE_NUM > 0 ? p_cols_internal_offset - PE_NUM : 0;

		Align::Fixed::PrepareLocals<PE_NUM, MAX_QUERY_LENGTH>(
			query,
			init_col_score,
			l_lims, u_lims,
			local_query,
			local_init_col_score,
			local_l_lim, local_u_lim,
			col_pred,
			local_query_length,
			i
		); // Prepare the local query and the local column scores
		

		Align::Fixed::ChunkCompute(
			i,
			local_query,
			reference,
			local_init_col_score,
			init_row_score,
			p_col, ic,
			local_l_lim, local_u_lim, col_pred,
			query_length, reference_length,
			penalties,
			local_max,
			tbp_matrix
#ifdef CMAKEDEBUG
			,
			debugger
#endif
		);

		// Set the physical column offsets for the next chunk
		p_col_offset += TB_CHUNK_WIDTH;
	}

    idx_t max_pe = 0;
    Align::FindMax::ReductionMaxScores(local_max, maximum, max_pe);

    // >>> Traceback >>>
    tb_i = maximum.ck * PE_NUM + max_pe;
    tb_j = maximum.p_col - (maximum.ck) * TB_CHUNK_WIDTH - max_pe + l_lims[maximum.ck * PE_NUM];

#ifdef CMAKEDEBUG
    // print tracevack start idx
    std::cout << "Traceback start idx: " << maximum.ck << " "<< tb_i << " " << tb_j << endl;
    std::cout << "Traceback start idx physical: " << max_pe << " " << maximum.p_col << endl;
#endif

    Traceback::TracebackFixedSize<2 * BANDWIDTH - 1>(tbp_matrix, tb_out, maximum.ck, max_pe, maximum.p_col, tb_i, tb_j);
#ifdef CMAKEDEBUG
	std::cout << "Traceback done" << std::endl;
#endif
}

void Align::Fixed::ChunkCompute(
	const idx_t chunk_row_offset,
	const input_char_block_t &local_query,
	const char_t (&reference)[MAX_REFERENCE_LENGTH],
	const chunk_col_scores_inf_t &init_col_scr,
	score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
	idx_t p_cols, const idx_t ck_idx,
	const idx_t (&local_l_lim)[PE_NUM], const idx_t (&local_u_lim)[PE_NUM],
	const bool (&col_pred)[PE_NUM],
	const idx_t global_query_length, const idx_t reference_length,
	const Penalties &penalties,
	ScorePack (&max)[PE_NUM], // write out so must pass by reference
	tbp_t (&chunk_tbp_out)[PE_NUM][TBMEM_SIZE]
#ifdef CMAKEDEBUG
	,
	Container &debugger
#endif
		){

#ifdef CMAKEDEBUG
	std::cout << "Started Chunk: " << ck_idx << std::endl;
	// print local l lim and local u lim
	std::cout << "Local Lower limits: ";
	for (int j = 0; j < PE_NUM; j++) {
		std::cout << local_l_lim[j] << " ";
	}
	std::cout << endl << "Local Upper limits: ";
	for (int j = 0; j < PE_NUM; j++) {
		std::cout << local_u_lim[j] << " ";
	}
	std::cout << endl;
#endif

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

	const idx_t chunk_start_col = local_l_lim[0];
	const idx_t chunk_end_col = local_u_lim[PE_NUM - 1];

	// Set the upper left corner cell of the chunk, depending whether it's the first chunk. 
	dp_mem[0][0] = local_l_lim[0] > 0 ? init_row_scr[local_l_lim[0]-1] : init_col_scr[0];

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
		init_row_scr_f.push_back((float) init_row_scr[j][0]);
	}
#endif

		Align::Fixed::MapPredicate(local_l_lim, local_u_lim, i, col_pred, predicate);
#ifdef CMAKEDEBUG
	// print predicate
	std::cout << "Predicate: ";
	for (int j = 0; j < PE_NUM; j++)
	{
		std::cout << predicate[j];
	}
	std::cout << endl;
#endif

		// Align::ShiftReference(local_reference, reference, i, chunk_end_col);
		Utils::Array::ShiftRight<char_t, PE_NUM>(local_reference, i < MAX_REFERENCE_LENGTH ? reference[i] : ZERO_CHAR);

		Align::PrepareScoreBuffer(score_buff, i, init_col_scr, init_row_scr);
		Align::UpdateDPMemSep(dp_mem, score_buff);

		PE::PEUnrollFixedSep(
			dp_mem,
			local_query,
			local_reference,
			i, 
			local_l_lim, local_u_lim,
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
			i - PE_NUM + 1);

		ALIGN_TYPE::UpdatePEMaximum(score_buff, max, chunk_row_offset, i, p_cols,
									ck_idx, predicate, global_query_length, reference_length);
		p_cols++;
	}
}


void Align::Fixed::MapPredicate(
	const idx_t (&local_l_lim)[PE_NUM], const idx_t (&local_u_lim)[PE_NUM],
	const idx_t wf_i, const bool (&col_pred)[PE_NUM],
	bool (&predicate)[PE_NUM]){
		for (int i = 0; i < PE_NUM; i++)
		{
			idx_t col = wf_i - i;
			predicate[i] = col_pred[i] && (col >= local_l_lim[i]) && (col <= local_u_lim[i]);
		}
	}
