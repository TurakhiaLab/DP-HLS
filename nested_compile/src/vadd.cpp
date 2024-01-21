#include <ap_fixed.h>
#include <ap_int.h>
#include <hls_vector.h>
#include <hls_stream.h>

using namespace hls;

// >>> params.h >>>
#define numofreads 1

#define MAX_QUERY_LENGTH 256
#define MAX_REFERENCE_LENGTH 256

#define ALIGN_TYPE GlobalAffine
#define N_BLOCKS 1
#define N_LAYERS 3
#define PE_NUM 32
#define LAYER_MAXIMIUM 1  // We need to indicate from which layer (main matrix) is the maximum score stored.

// Primitive Types
typedef ap_uint<2> char_t;  // Sequence Alphabet
typedef ap_fixed<16, 10> type_t;  // Scores Type <width, integer_width>
typedef ap_uint<8> idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<4> tbp_t;  // Traceback Pointer Type
typedef ap_uint<2> tbr_t;  // Traecback Result Type

// Define Traceback Pointer Navigation Direction
#define TB_PH (tbp_t) 0b0000
#define TB_LEFT (tbp_t) 0b0001
#define TB_DIAG (tbp_t) 0b0010
#define TB_UP (tbp_t) 0b0011

// Define Traceback Pointer Navigation Matrix
#define TB_IMAT (tbp_t) 0b0100  // Insertion Matrix
#define TB_DMAT (tbp_t) 0b1000  // Deletion Matrix

// Define Zero Value
#define zero_fp ((type_t)0)

// Define Traceback Result Representation
#define AL_END (tbr_t) 0b00  // 0 stopping condition
#define AL_INS (tbr_t) 0b01  // 1 Align Insertion
#define AL_MMI (tbr_t) 0b10  // 2 Align Match/Mismatch
#define AL_DEL (tbr_t) 0b11  // 3 Align Deletion


// Defien upper and lower bound for score type, aka type_t
#define INF 256
#define NINF -256

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/global_affine/"
#define DEBUG_FILENAME "debug_kernel"

// Custom Types Vital for Kernel Functioning
typedef hls::vector<type_t, N_LAYERS> init_col_score_block_t[MAX_QUERY_LENGTH];
typedef hls::vector<type_t, N_LAYERS> init_row_score_block_t[MAX_REFERENCE_LENGTH];
typedef tbp_t traceback_block_t[MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH];
typedef hls::vector<type_t, N_LAYERS> score_block_t[PE_NUM];  // TODO: Change name chunk scores
typedef hls::vector<type_t, N_LAYERS> chunk_col_scores_inf_t[PE_NUM+1];  // chunk column scores inflated
typedef tbp_t tbp_block_t[PE_NUM];
typedef char_t input_char_block_t[PE_NUM];
typedef hls::vector<type_t, N_LAYERS> dp_mem_block_t[PE_NUM+1][3];
typedef tbp_t tbp_chunk_block_t[PE_NUM][MAX_REFERENCE_LENGTH];
typedef hls::vector<type_t, N_LAYERS> score_vec_t;

struct ScorePack{  
    type_t score  = 0;
    idx_t chunk_offset = 0;
    idx_t pe = 0;
    idx_t pe_offset = 0;
};

struct Penalties {
    type_t open;
    type_t extend;
    type_t mismatch;
    type_t match;
    type_t linear_gap;
};

enum TB_STATE {
    MM = 0,   // Match/Mismatch
    INS = 1,  // Insertion
    DEL = 2,  // Deletion
    END = 3   // End
};

#define ZERO_CHAR (char_t(0))
// <<< params.h <<< 


// >>> frontend.h >>>
void Compute(char_t local_query_val,
                               char_t local_reference_val,
                               hls::vector<type_t, N_LAYERS> up_prev,
                               hls::vector<type_t, N_LAYERS> diag_prev,
                               hls::vector<type_t, N_LAYERS> left_prev,
                               const Penalties penalties,
                               hls::vector<type_t, N_LAYERS> &write_score,
#ifdef CMAKEDEBUG
                               tbp_t &write_traceback,
                               int idx) // mark the PE index)
#else
                               tbp_t &write_traceback)
#endif
{
#pragma HLS array_partition variable = local_query_val type = complete

    /*
     * Layer 0: Insert matrix I, moves horizontally
     * Layer 1: Match matrix M, moves diagonally
     * Layer 2: Delete matrix D, moves vertically
     */

    const type_t insert_open = left_prev[1] + penalties.open + penalties.extend; // Insert open
    const type_t insert_extend = left_prev[0] + penalties.open;                  // insert extend
    const type_t delete_open = up_prev[1] + penalties.open + penalties.extend;   // delete open
    const type_t delete_extend = up_prev[2] + penalties.open;                    // delete extend

#ifdef CMAKEDEBUG
    auto insert_open_s = insert_open.to_float();     // Insert open
    auto insert_extend_s = insert_extend.to_float(); // insert extend
    auto delete_open_s = delete_open.to_float();
    auto delete_extend_s = delete_extend.to_float();

    auto left_prev_0_s = left_prev[0].to_float();
    auto left_prev_1_s = left_prev[1].to_float();
    auto left_prev_2_s = left_prev[2].to_float();
    auto up_prev_0_s = up_prev[0].to_float();
    auto up_prev_1_s = up_prev[1].to_float();
    auto up_prev_2_s = up_prev[2].to_float();
#endif

    bool insert_open_b = insert_open > insert_extend;
    bool delete_open_b = delete_open > delete_extend;
    write_score[0] = insert_open_b ? insert_open : insert_extend;
    write_score[2] = delete_open_b ? delete_open : delete_extend;
    tbp_t insert_tb = insert_open_b ? (tbp_t) 0 : TB_IMAT;
    tbp_t delete_tb = delete_open_b ? (tbp_t) 0 : TB_DMAT;

#ifdef CMAKEDEBUG
    auto write_score_0_s = write_score[0].to_float();
    auto write_score_2_s = write_score[2].to_float();
#endif

    const type_t match = (local_query_val == local_reference_val) ? diag_prev[1] + penalties.match : diag_prev[1] + penalties.mismatch;

#ifdef CMAKEDEBUG
    auto diag_prev_s = diag_prev[1].to_float();
    auto local_query_val_s = local_query_val.to_int();
    auto local_reference_val_s = local_reference_val.to_int();
#endif

    type_t max_value = write_score[0] > write_score[2] ? write_score[0] : write_score[2]; // compare between insertion and deletion
    max_value = max_value > match ? max_value : match;                                    // compare with match/mismatch
    write_score[1] = max_value;


    tbp_t dir_tb;

#ifdef CMAKEDEBUG
    auto match_s = match.to_float();
    auto write_score_1_s = write_score[1].to_float();
#endif

    // Set traceback pointer based on the direction of the maximum score.
    if (max_value == write_score[0])
    { // Insert Case
        dir_tb = TB_LEFT;
    }
    else if (max_value == write_score[2])
    {
        dir_tb = TB_UP;
    }
        else if (max_value == write_score[1])
    {
        dir_tb = TB_DIAG;
    }
    else
    {
        // Undefined behavior happens if the max score is non of the I, D, or M.
    }

    write_traceback = dir_tb + insert_tb + delete_tb;
}


void InitCol(score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH], Penalties penalties){
    type_t gap = penalties.open;
    for (int i = 0; i < MAX_QUERY_LENGTH; i++){
        gap += penalties.extend;
        init_col_scr[i] = score_vec_t({NINF, gap, 0});
    }
}

void InitRow(score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH], Penalties penalties){
    type_t gap = penalties.open;
    for (int i = 0; i < MAX_REFERENCE_LENGTH; i++){
        gap += penalties.extend;
        init_row_scr[i] = score_vec_t({0, gap, NINF});
    }
}   

void InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{
#pragma HLS dataflow
    InitCol(init_col_scr, penalties);
    InitRow(init_row_scr, penalties);
}

void UpdatePEMaximum(dp_mem_block_t dp_mem, ScorePack (&max)[PE_NUM], idx_t (&pe_offset)[PE_NUM], idx_t chunk_offset, bool (&predicate)[PE_NUM], idx_t query_len, idx_t ref_len)
{
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        if (predicate[i])
        {
#ifdef CMAKEDEBUG
            auto dp_mem_s = dp_mem[i + 1][0][LAYER_MAXIMIUM].to_float();
            auto max_s = max[i].score.to_float();
#endif
            if (dp_mem[i + 1][0][LAYER_MAXIMIUM] > max[i].score)
            {
                // Notice this filtering condition compared to the Local Affine kernel. 
                // if ((chunk_offset + i == query_len - 1) || (pe_offset[i] == ref_len - 1))  // last row or last column
                if ( (chunk_offset + i == query_len - 1) && (pe_offset[i] == ref_len - 1) )
                { // So we are at the last row or last column
                    max[i].score = dp_mem[i + 1][0][LAYER_MAXIMIUM];
                    max[i].chunk_offset = chunk_offset;
                    max[i].pe_offset = pe_offset[i];
                }
            }
        }
    }
}

void InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len)
{
    // In global alignment, we need to initialize the starting maximum scores to the last column
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        max[i].score = NINF; // Need a custom struct for finding the negative infinity
        max[i].chunk_offset = 0;
        max[i].pe = i;
        max[i].pe_offset = ref_len;
    }
}

void StateMapping(tbp_t tbp, TB_STATE &state, int &row, int &col, tbr_t &curr_write)
{

    if (state == TB_STATE::MM)
    {
        if (tbp(1, 0) == TB_DIAG)
        {
            row--;
            col--;
            curr_write = AL_MMI;
        }
        else if (tbp(1, 0) == TB_UP)
        {
            state = TB_STATE::DEL;
            curr_write = NULL;
        }
        else if (tbp(1, 0) == TB_LEFT)
        {
            state = TB_STATE::INS;
            curr_write = NULL;
        }
        else
        {
            // Unknown Direction
#ifdef CMAKEDEBUG
            // Such construct is not available for synthesizing kernel.
            // However, it can be used to debug error in pure CSimulation.
            // And also if in the near future a kernel debugging method is developed,
            // this is used as a placeholder to check.
            throw std::runtime_error("Unknown traceback direction." + std::to_string(tbp.to_int()));
#endif
        }
    }
    else if (state == TB_STATE::DEL)
    {
        if ((bool)tbp[3])
        { // deletion extending
            // states remains the same.
            // printf("delete extend");
        }
        else
        {                         // deletion closing
            state = TB_STATE::MM; // set the state back to MM
            
        }
        curr_write = AL_DEL;
        row--;
    }
    else if (state == TB_STATE::INS)
    {
        if ((bool)tbp[2])
        { // insertion extending
            // states remains the same.
            // ("delete extend");
        }
        else
        {                         // insertion closing
            state = TB_STATE::MM; // set the state back to MM
        }
        curr_write = AL_INS;
        col--;
    }
    else
    {
        // Unknown State
#ifdef CMAKEDEBUG
        throw std::runtime_error("Unknown traceback state.");
#endif
    }
}

void StateInit(tbp_t tbp, TB_STATE &state)
{
    if (tbp(1, 0) == TB_DIAG)
    {
        state = TB_STATE::MM;
    }
    else if (tbp(1, 0) == TB_UP)
    {
        state = TB_STATE::DEL;
    }
    else if (tbp(1, 0) == TB_LEFT)
    {
        state = TB_STATE::INS;
    }
    else
    {
        // Unknown Direction
#ifdef CMAKEDEBUG
        throw std::runtime_error("Unknown traceback direction." + std::to_string(tbp.to_int()));
#endif
    }
}

tbr_t StateToPath(TB_STATE state)
{
    if (state == TB_STATE::MM)
    {
        return AL_MMI;
    }
    else if (state == TB_STATE::DEL)
    {
        return AL_DEL;
    }
    else if (state == TB_STATE::INS)
    {
        return AL_INS;
    }else {
        return AL_END;
    }
}
// <<< frontend.h <<<

// >>> PE >>>
void PEUnroll(dp_mem_block_t &dp_mem, input_char_block_t qry, input_char_block_t ref, const Penalties penalties, tbp_block_t &tbp)
{
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        Compute(
            qry[i],
            ref[i],
            dp_mem[i][1],
            dp_mem[i][2],
            dp_mem[i+1][1],
            penalties,
            dp_mem[i+1][0],
#ifdef CMAKEDEBUG
            tbp[i],
            i);
#else
            tbp[i]);
#endif
    }
}
// <<< PE <<<

// >>> utils.h >>>
template <typename T, int N>
void ArrSet(T (&arr)[N], T val)
{

	for (int i = 0; i < N; i++)
	{
		arr[i] = val;
	}
}

template <typename T, int N>
void ArrSet(T (&arr)[N], idx_t layer, T val)
{

	for (int i = 0; i < N; i++)
	{
		arr[i][layer] = val[layer];
	}
}

template <typename T, int N>
void ShiftLeft(T (&arr)[N], T new_data)
{
	for (int i = 0; i < N; i++)
	{
#pragma HLS unroll
		arr[i] = arr[i + 1];
	}
	arr[N - 1] = new_data;
}
template <typename T, int N>
void ShiftRight(T (&arr)[N], T new_data)
{
	for (int i = N - 1; i > 0; i--)
	{
#pragma HLS unroll
		arr[i] = arr[i - 1];
	}
	arr[0] = new_data;
}
// <<< utils.h <<<


// >>> Traceback >>>
void Traceback(
    tbp_t (&tbmat)[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH],
    tbr_t (&traceback_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH],
    const int max_row, const int max_col) // starting index to traceback
{
    int row = max_row;
    int col = max_col;
    int w_id = 0;
    bool end = 0;
    tbr_t curr_write;

    TB_STATE state;
    StateInit(tbmat[row][col], state);    

traceback_loop:

        while (!end && row >= 0 && col >= 0){
#pragma HLS dataflow
#pragma HLS expression_balance on
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_REFERENCE_LENGTH+MAX_QUERY_LENGTH

            tbp_t tbptr = tbmat[row][col];  // Want to represented by the symbol rather than pointer
#ifdef CMAKEDEBUG
            auto tbptr_s = tbptr.to_int();
#endif
            StateMapping(tbptr, state, row, col, curr_write);
            if (curr_write != NULL){
                traceback_out[w_id++] = curr_write;
            }

            if (state == TB_STATE::END)  end = 1;
        } 
        traceback_out[w_id] = AL_END;
        
}
// <<< Traceback <<<

// >>> align.cpp >>>

void CopyColScore(chunk_col_scores_inf_t & init_col_scr_local, score_vec_t(& init_col_scr)[MAX_QUERY_LENGTH], idx_t idx)
{
	init_col_scr_local[0] = init_col_scr_local[PE_NUM];  // backup the last element from previous chunk

	for (int j = 0; j < PE_NUM; j++)
	{
#pragma HLS unroll
		init_col_scr_local[j+1] = init_col_scr[idx + j];
	}
}


void PrepareLocalQuery(
    char_t (&query)[MAX_QUERY_LENGTH],
    char_t (&local_query)[PE_NUM],
    idx_t offset,
    idx_t len)
{
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		local_query[i] = query[offset + i];
	}
}


void ShiftPredicate(bool (&predicate)[PE_NUM], int idx, int query_len, int reference_len)
{
	if (idx < PE_NUM) // query len
	{
		ShiftRight<bool, PE_NUM>(predicate, true);
	}
	else if (idx >= reference_len)
	{
		ShiftRight(predicate, false);
	};
}


void ShiftReferece(
	char_t (&local_reference)[PE_NUM], char_t (&reference)[MAX_REFERENCE_LENGTH],
	int idx, int ref_len)
{
	// Shift Reference
	if (idx < ref_len)
	{
		ShiftRight<char_t, PE_NUM>(local_reference, reference[idx]);
	}
	else
	{
		ShiftRight<char_t, PE_NUM>(local_reference, ZERO_CHAR);
	}
}


void UpdateDPMemShift(dp_mem_block_t &dp_mem){
	for (int i = 0; i < PE_NUM + 1; i++){
#pragma HLS unroll
		dp_mem[i][2] = dp_mem[i][1];
		dp_mem[i][1] = dp_mem[i][0];
	}
}

void UpdateDPMemSet(dp_mem_block_t &dp_mem, idx_t i, chunk_col_scores_inf_t &init_col_scr, score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH] ){

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

void UpdateDPMem(dp_mem_block_t &dp_mem, idx_t i, chunk_col_scores_inf_t &init_col_scr, score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH] ){
	UpdateDPMemShift(dp_mem);
	UpdateDPMemSet(dp_mem, i, init_col_scr, init_row_scr);
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

void PreserveRowScore(
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

void ArrangeTBPArr(
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

void UpdatePEOffset(
	idx_t (&pe_offset)[PE_NUM], bool (&predicate)[PE_NUM])
{
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		pe_offset[i] += (predicate[i]);
	}
}


void ChunkCompute(
	idx_t chunk_row_offset,
	input_char_block_t &local_query,
	char_t (&reference)[MAX_REFERENCE_LENGTH],
	chunk_col_scores_inf_t &init_col_scr,
	score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
	int global_query_length, int query_length, int reference_length,
	const Penalties penalties, 
	score_vec_t (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
	ScorePack (&max)[PE_NUM],  // initialize rather in maximum
#ifdef CMAKEDEBUG
	tbp_t (*chunk_tbp_out)[MAX_REFERENCE_LENGTH],
	hls::vector<type_t, N_LAYERS> (*score_tbp)[MAX_REFERENCE_LENGTH])
#else
    tbp_t (*chunk_tbp_out)[MAX_REFERENCE_LENGTH])
#endif
{
#ifdef CMAKEDEBUG
	Container &debugger = Container::getInstance(); // @Debug
#endif // DEBUG

	bool predicate[PE_NUM];
	ArrSet<bool, PE_NUM>(predicate, false);

	idx_t pe_col_offsets[PE_NUM];
	ArrSet<idx_t, PE_NUM>(pe_col_offsets, 0);

	char_t local_reference[PE_NUM]; // local reference

	tbp_block_t tbp_out;

	type_t extracted_scores[PE_NUM]; // FIXME: What is it?

	// stream_of_blocks<dp_mem_block_t> initialized;

	dp_mem_block_t dp_mem;

// #ifdef CMAKEDEBUG
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

		ShiftPredicate(predicate, i, query_length, reference_length);
		ShiftReferece(local_reference, reference, i, reference_length);

		UpdateDPMem(dp_mem, i, init_col_scr, init_row_scr);

		// Align::UpdateDPMemShift(dp_mem);
		// Align::UpdateDPMemSet(dp_mem, i, init_col_scr, init_row_scr);

#ifdef CMAKEDEBUG
		Debug::Translate::print_2d(
			"Initial Column Scores",
			Debug::Translate::translate_2d<type_t, N_LAYERS, PE_NUM>(init_col_scr)
		);
#endif

		// FIXME: Pass in DP_MEM and assign scores accodingly
		PEUnroll(
			dp_mem,
			local_query,
			local_reference,
			penalties,
			tbp_out);

		// This should happen before Arrange TBP Arr
		// Because it doesn't increment PE offsets
		// while ArrangeTBPArr does
		PreserveRowScore(
			preserved_row_scr,
			dp_mem[PE_NUM][0],
			predicate[PE_NUM-1],
			pe_col_offsets[PE_NUM-1]);

		// Align::FindMax::ExtractScoresLayer(scores_out, LAYER_MAXIMIUM, extracted_scores);

		UpdatePEMaximum(dp_mem, max, pe_col_offsets, chunk_row_offset, predicate, global_query_length, reference_length);
#ifdef CMAKEDEBUG
		Align::ArrangeScores(dp_mem, predicate, pe_col_offsets, score_tbp);
		auto dp_mem_checkpoint = Debug::Translate::translate_3d<
			type_t, N_LAYERS, PE_NUM+1, 3
		>(dp_mem);

		Debug::Translate::print_1d("pe_col_offsets",
		Debug::Translate::translate_1d<idx_t, PE_NUM>(pe_col_offsets));
#endif
        ArrangeTBPArr(tbp_out, predicate, pe_col_offsets, chunk_tbp_out);

		UpdatePEOffset(pe_col_offsets, predicate);
	}

#ifdef CMAKEDEBUG
	Debug::Translate::print_2d("preserved row scores",
		Debug::Translate::translate_2d<type_t, N_LAYERS, MAX_REFERENCE_LENGTH>(preserved_row_scr));
#endif

}

void ReductionMaxScores(ScorePack (&packs)[PE_NUM], ScorePack &global_max)
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



void AlignStatic(
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

	InitializeScores(init_col_score, init_row_score[0], penalties);

	// The size of a static matrix must be known at the compile time.
	tbp_t tbp_matrix[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH];

#ifdef CMAKEDEBUG
	hls::vector<type_t, N_LAYERS>  score_matrix[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH]; // DEBUG
#endif

#pragma HLS array_partition variable = tbp_matrix type = cyclic factor = PE_NUM dim = 1

	// >>> Compute >>>
	ScorePack maximum = {0,0,0,0}; // global score track
	ScorePack local_max[PE_NUM];
	InitializeMaxScores(local_max, query_length, reference_length);


	char_t local_query[PE_NUM];
	chunk_col_scores_inf_t local_init_col_score;
	local_init_col_score[PE_NUM] = score_vec_t(0); // Always initialize the upper left cornor to 0

	idx_t row_buf_cnt = 0;

#pragma HLS array_partition variable = local_query type = complete

	for (idx_t i = 0; i < query_length; i += PE_NUM)
	{
		idx_t local_query_length = ((idx_t)PE_NUM < query_length - i) ? (idx_t)PE_NUM : (idx_t)(query_length - i);

		PrepareLocalQuery(query, local_query, i, local_query_length); // FIXME: Why not coping rest of the query
		CopyColScore(local_init_col_score, init_col_score, i);  // Copy the scores

		tbp_t(*chunk_tbp_out)[MAX_REFERENCE_LENGTH] = &tbp_matrix[i];

#ifdef CMAKEDEBUG
		hls::vector<type_t, N_LAYERS>  (*chunk_score_out)[MAX_REFERENCE_LENGTH] = &score_matrix[i];
#endif

		ChunkCompute(
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
#ifdef CMAKEDEBUG
			chunk_tbp_out,
			chunk_score_out);
#else
            chunk_tbp_out);
#endif

	}

#ifdef CMAKEDEBUG
	Debug::Translate::print_3d("scores", 
		 Debug::Translate::translate_3d<type_t, N_LAYERS, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(score_matrix)
	);
	Debug::Translate::print_2d("Traceback Pointers", 
		Debug::Translate::translate_2d<tbp_t, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(tbp_matrix)
	);
#endif

	ReductionMaxScores(local_max, maximum);

	// >>> Traceback >>>
	printf("(index from 0) Traceback Start Row: %d, Col: %d\n", maximum.chunk_offset + maximum.pe, maximum.pe_offset);
	Traceback(tbp_matrix, tb_out, maximum.chunk_offset + maximum.pe, maximum.pe_offset);
#ifdef CMAKEDEBUG
	Debug::Translate::print_1d("Traceback", 
		Debug::Translate::translate_1d<tbr_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH>(tb_out)
	);
#endif
}
// <<< align.cpp <<<


extern "C"
{
	void vadd(
	char_t (&querys)[N_BLOCKS][MAX_QUERY_LENGTH],
	char_t (&references)[N_BLOCKS][MAX_REFERENCE_LENGTH],
	idx_t (&query_lengths)[N_BLOCKS],
	idx_t (&reference_lengths)[N_BLOCKS],
	const Penalties penalties,
	tbr_t (&tb_streams)[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH]){


#pragma HLS array_partition variable=querys dim=1 type=complete
#pragma HLS array_partition variable=references dim=1 type=complete
#pragma HLS array_partition variable=query_lengths dim=1 type=complete
#pragma HLS array_partition variable=reference_lengths dim=1 type=complete
#pragma HLS array_partition variable=tb_streams dim=1 type=complete

		for (int i = 0; i < N_BLOCKS; i++){
#pragma HLS unroll
			AlignStatic(
				querys[i],
				references[i],
				query_lengths[i],
				reference_lengths[i],
				penalties,
				tb_streams[i]
			);

			// Print For Demo Use
			printf("Traceback Block: %d\n", i);
			for (int j = 0; j < query_lengths[i] + reference_lengths[i]; j++){
				
				printf("%d ", tb_streams[i][j].to_int());
			}
			printf("\n");  

#ifdef CMAKEDEBUG
			Debug::Translate::print_1d(
				"traceback", Debug::Translate::translate_1d<tbr_t, MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH>(tb_streams[i])
			);
#endif
		}
    }
}