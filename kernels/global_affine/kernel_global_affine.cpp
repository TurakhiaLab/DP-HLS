#include "frontend.h"

// >>> Global Affine Implementation >>>
void GlobalAffine::PE::Compute(char_t local_query_val,
                               char_t local_reference_val,
                               score_vec_t up_prev,
                               score_vec_t diag_prev,
                               score_vec_t left_prev,
                               const Penalties penalties,
                               score_vec_t &write_score,
                               tbp_t &write_traceback)
{
    
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

void GlobalAffine::Helper::InitCol(score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH], Penalties penalties){
    type_t gap = penalties.open;
    for (int i = 0; i < MAX_QUERY_LENGTH; i++){
        gap += penalties.extend;
        init_col_scr[i][0] = NINF;
        init_col_scr[i][1] =  gap;
        init_col_scr[i][2] =  0;
    }
}

void GlobalAffine::Helper::InitRow(score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH], Penalties penalties){
    type_t gap = penalties.open;
    for (int i = 0; i < MAX_REFERENCE_LENGTH; i++){
        gap += penalties.extend;
        init_row_scr[i][0] = 0;
        init_row_scr[i][1] = gap ;
        init_row_scr[i][2] =  NINF;
    }
}   

void GlobalAffine::InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{
#pragma HLS dataflow
    Helper::InitCol(init_col_scr, penalties);
    Helper::InitRow(init_row_scr, penalties);
}

void GlobalAffine::UpdatePEMaximum(
    const wavefront_scores_inf_t scores,
    ScorePack (&max)[PE_NUM],
    const idx_t chunk_row_offset, const idx_t wavefront,
    const idx_t p_cols, const idx_t ck_idx,
    const bool (&predicate)[PE_NUM],
    const idx_t query_len, const idx_t ref_len){

}

void GlobalAffine::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len)
{
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        max[i].score = NINF;
        max[i].p_col = 0;
        max[i].ck = 0;

    }
    idx_t max_pe = (qry_len - 1) % PE_NUM;
    idx_t max_ck = (qry_len - 1)  / PE_NUM;
    max[max_pe].score = INF;
    max[max_pe].p_col = (max_ck) * (MAX_REFERENCE_LENGTH + PE_NUM - 1) + max_pe + ref_len - 1;
    max[max_pe].ck = max_ck;
}


void GlobalAffine::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, tbr_t &navigation)
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

void GlobalAffine::Traceback::StateInit(tbp_t tbp, TB_STATE &state)
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
