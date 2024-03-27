#include "../../include/frontend.h"

// >>> Global Affine Implementation >>>
void TwoPieceAffine::PE::Compute(
#ifdef BANDED
							   bool predicate,
#endif
							   char_t local_query_val,
                               char_t local_reference_val,
                               score_vec_t up_prev,
                               score_vec_t diag_prev,
                               score_vec_t left_prev,
                               const Penalties penalties,
                               score_vec_t &write_score,
                               tbp_t &write_traceback)
{
#pragma HLS array_partition variable = local_query_val type = complete

// Define Traceback Pointer Navigation Direction
#define TB_PH (tbp_t) 0b0000
#define TB_LEFT (tbp_t) 0b0001
#define TB_DIAG (tbp_t) 0b0010
#define TB_UP (tbp_t) 0b0011

// Define Traceback Pointer Navigation Matrix
#define TB_IMAT (tbp_t) 0b0100  // Insertion Matrix
#define TB_DMAT (tbp_t) 0b1000  // Deletion Matrix

    /*
     * Layer 0: Insert matrix I, moves horizontally
     * Layer 1: Match matrix M, moves diagonally
     * Layer 2: Delete matrix D, moves vertically
     */
#ifdef BANDED
	if (!predicate) {
		return;
	}
#endif
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

void TwoPieceAffine::Helper::InitCol(score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH], Penalties penalties){
    type_t gap = penalties.open;
    for (int i = 0; i < MAX_QUERY_LENGTH; i++){
        gap += penalties.extend;
        init_col_scr[i] = score_vec_t({NINF, gap, 0});
    }
}

void TwoPieceAffine::Helper::InitRow(score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH], Penalties penalties){
    type_t gap = penalties.open;
    for (int i = 0; i < MAX_REFERENCE_LENGTH; i++){
        gap += penalties.extend;
        init_row_scr[i] = score_vec_t({0, gap, NINF});
    }
}   

void TwoPieceAffine::InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{
#pragma HLS dataflow
    Helper::InitCol(init_col_scr, penalties);
    Helper::InitRow(init_row_scr, penalties);
}

void TwoPieceAffine::UpdatePEMaximum(
        wavefront_scores_inf_t scores,
        ScorePack (&max)[PE_NUM],
        idx_t (&ics)[PE_NUM], idx_t (&jcs)[PE_NUM],
        idx_t (&p_col)[PE_NUM], idx_t ck_idx,
        bool (&predicate)[PE_NUM],
        idx_t query_len, idx_t ref_len){
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        if (predicate[i])
        {
#ifdef CMAKEDEBUG
            auto dp_mem_s = scores[i + 1][LAYER_MAXIMIUM].to_float();
            auto max_s = max[i].score.to_float();
#endif
            if (scores[i + 1][LAYER_MAXIMIUM] > max[i].score)
            {
                // Notice this filtering condition compared to the Local Affine kernel. 
                // if ((chunk_offset + i == query_len - 1) || (pe_offset[i] == ref_len - 1))  // last row or last column
                //printf("MAX ROW: %d, MAX COL: %d", ics[i], jcs[i]);
				if ( (ics[i] == query_len - 1) && (jcs[i] == ref_len - 1) )
                { // So we are at the last row or last column
                    max[i].score = scores[i + 1][LAYER_MAXIMIUM];
                    max[i].row = ics[i];
                    max[i].col = jcs[i];
                    max[i].p_col = p_col[i];
                    max[i].ck = ck_idx;
                    max[i].pe = i;
                }
            }
        }
    }
}

void TwoPieceAffine::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len)
{
    // In global alignment, we need to initialize the starting maximum scores to the last column
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        max[i].score = NINF; // Need a custom struct for finding the negative infinity
        max[i].row = 0;
        max[i].col = 0;
        max[i].p_col = 0;
        max[i].ck = 0;
        max[i].pe = i;
    }
}

void TwoPieceAffine::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, tbr_t &navigation)
{

    if (state == TB_STATE::MM)
    {
        if (tbp(1, 0) == TB_DIAG)
        {
            navigation = AL_MMI;
        }
        else if (tbp(1, 0) == TB_UP)
        {
            state = TB_STATE::DEL;
            navigation = AL_NULL;
        }
        else if (tbp(1, 0) == TB_LEFT)
        {
            state = TB_STATE::INS;
            navigation = AL_NULL;
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
        navigation = AL_DEL;
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
        navigation = AL_INS;
    }
    else
    {
        // Unknown State
// #ifdef CMAKEDEBUG
//         throw std::runtime_error("Unknown traceback state.");
// #endif
    }
}

void TwoPieceAffine::Traceback::StateInit(tbp_t tbp, TB_STATE &state)
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
// #ifdef CMAKEDEBUG
//         throw std::runtime_error("Unknown traceback direction." + std::to_string(tbp.to_int()));
// #endif
    }
}
// <<< Global Affine Implementation <<<
