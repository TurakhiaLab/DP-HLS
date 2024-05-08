#ifndef SYNTH
#include "../../include/frontend.h"
#else
#include "frontend.h"
#endif

#define MAX(a, b) ((a) > (b) ? (a) : (b))
#define MIN(a, b) ((a) < (b) ? (a) : (b))

// >>> Global Two Piece Affine Implementation >>>
void GlobalTwoPieceAffine::PE::Compute(char_t local_query_val,
                               char_t local_reference_val,
                               score_vec_t up_prev,
                               score_vec_t diag_prev,
                               score_vec_t left_prev,
                               const Penalties penalties,
                               score_vec_t &write_score,
                               tbp_t &write_traceback)
{
    /*
     * Layer 0: Insert matrix I, moves horizontally
     * Layer 1: Match matrix M, moves diagonally
     * Layer 2: Delete matrix D, moves vertically
     * Layer 3: Long insert matrix I', moves horizontally
     * Layer 4: Long delete matrix D', moves vertically
     */

    const type_t insert_open = left_prev[1] + penalties.open + penalties.extend; // Insert open
    const type_t insert_extend = left_prev[0] + penalties.extend;                  // insert extend
    const type_t long_insert_open = left_prev[1] + penalties.long_open + penalties.long_extend;
    const type_t long_insert_extend = left_prev[3] + penalties.long_extend;
    
    const type_t delete_open = up_prev[1] + penalties.open + penalties.extend;   // delete open
    const type_t delete_extend = up_prev[2] + penalties.extend;                    // delete extend
    const type_t long_delete_open = up_prev[1] + penalties.long_open + penalties.long_extend;
    const type_t long_delete_extend = up_prev[4] + penalties.long_extend;

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

    tbp_t tbp_temp = 0b0000000;

    if (insert_open < insert_extend){
        write_score[0] = insert_extend;
        tbp_temp += TB_INS_EXTEND;
    } else {
        write_score[0] = insert_open;
    }

    if (delete_open < delete_extend){
        write_score[2] = delete_extend;
        tbp_temp += TB_DEL_EXTEND;
    } else {
        write_score[2] = delete_open;
    }

    if (long_insert_open < long_insert_extend){
        write_score[3] = long_insert_extend;
        tbp_temp += TB_LONG_INS_EXTEND;
    } else {
        write_score[3] = long_insert_open;
    }

    if (long_delete_open < long_delete_extend){
        write_score[4] = long_delete_extend;
        tbp_temp += TB_LONG_DEL_EXTEND;
    } else {
        write_score[4] = long_delete_open;
    }


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

    // compare insertion and deletion matrices 
    type_t max_value = match;
    max_value = max_value > write_score[0] ? max_value : write_score[0]; // MAX(write_score[0], match);
    max_value = max_value > write_score[2] ? max_value : write_score[2]; // MAX(MAX(write_score[0], match), write_score[2]);
    max_value = max_value > write_score[3] ? max_value : write_score[3]; // MAX(MAX(write_score[0], write_score[2]), write_score[3]);
    max_value = max_value > write_score[4] ? max_value : write_score[4];

    write_score[1] = max_value;  // write score to the main matrix should be the max score, not match score

#ifdef CMAKEDEBUG
    auto match_s = match.to_float();
    auto write_score_1_s = write_score[1].to_float();
#endif

    // Set traceback pointer based on the direction of the maximum score.
    if (max_value == match)
    {
        tbp_temp = tbp_temp | TB_MAIN;
    }
    else if (max_value == write_score[3])
    {
        tbp_temp = tbp_temp | TB_LONG_INSERT;
    }
    else if (max_value == write_score[4])
    {
        tbp_temp = tbp_temp | TB_LONG_DELETE;
    }
    else if (max_value == write_score[0])
    { 
        tbp_temp = tbp_temp | TB_INSERT;
    }
    else if (max_value == write_score[2])
    {
        tbp_temp = tbp_temp | TB_DELETE;
    }
    else
    {
        // Undefined behavior happens if the max score is non of the I', D', I, D, or M.
    }

    write_traceback = tbp_temp; //insert_tb + delete_tb + long_insert_tb + long_delete_tb;
}

void GlobalTwoPieceAffine::Helper::InitCol(score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH], Penalties penalties){
    type_t gap = penalties.open;
    type_t long_gap = penalties.long_open;
    for (int i = 0; i < MAX_QUERY_LENGTH; i++){
        gap += penalties.extend;
        long_gap += penalties.long_extend;
        init_col_scr[i] = score_vec_t({NINF,MAX(gap,long_gap),NINF,NINF, NINF});
    }
}

void GlobalTwoPieceAffine::Helper::InitRow(score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH], Penalties penalties){
    type_t gap = penalties.open;
    type_t long_gap = penalties.long_open;
    for (int i = 0; i < MAX_REFERENCE_LENGTH; i++){
        gap += penalties.extend;
        long_gap += penalties.long_extend;
#ifdef CMAKEDEBUG
        float gap_f = gap.to_float();
#endif
        init_row_scr[i] = score_vec_t({NINF,MAX(gap,long_gap),NINF,NINF,NINF});
    }
}   

void GlobalTwoPieceAffine::InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{

    Helper::InitCol(init_col_scr, penalties);
    Helper::InitRow(init_row_scr, penalties);
}

void GlobalTwoPieceAffine::UpdatePEMaximum(
        const wavefront_scores_inf_t scores,
        ScorePack (&max)[PE_NUM],
        const idx_t chunk_row_offset, const idx_t wavefront,
        const idx_t p_cols, const idx_t ck_idx,
        const bool (&predicate)[PE_NUM],
        const idx_t query_len, const idx_t ref_len){

}

void GlobalTwoPieceAffine::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len)
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

void GlobalTwoPieceAffine::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, tbr_t &navigation)
{
    if (state == TB_STATE::MM)
    {
        if (tbp(2, 0) == TB_MAIN)
        {
            navigation = AL_MMI;
        }
        else if (tbp(2, 0) == TB_DELETE)
        {
            state = TB_STATE::DEL;
            navigation = AL_NULL;
        }
        else if (tbp(2, 0) == TB_INSERT)
        {
            state = TB_STATE::INS;
            navigation = AL_NULL;
        }
        else if (tbp(2, 0) == TB_LONG_DELETE)
        {
            state = TB_STATE::LONG_DEL;
            navigation = AL_NULL;
        }
        else if (tbp(2, 0) == TB_LONG_INSERT)
        {
            state = TB_STATE::LONG_INS;
            navigation = AL_NULL;
        } 
        else {
#ifdef CMAKEDEBUG
            // call an runtime error
            std::runtime_error("unknown direction");
#endif
        }
    }
    else if (state == TB_STATE::DEL)
    {
        if ((bool) tbp[5] != 1)
        {
            state = TB_STATE::MM;
        }
        // otherwise remain in the same state/matrix
        navigation = AL_DEL;
    }
    else if (state == TB_STATE::INS)
    {
        if ((bool) tbp[3] != 1)
        {
            state = TB_STATE::MM; // set the state back to MM
        }
        // otherwise remain in the same state/matrix
        navigation = AL_INS;
    }
    else if (state == TB_STATE::LONG_INS) 
    {  
        if ((bool) tbp[4] != 1) 
        {
            state = TB_STATE::MM;
        }
        // otherwise stay in the long insertion state
        navigation = AL_INS;
    }
    else if (state == TB_STATE::LONG_DEL)
    {
        if ((bool) tbp[6] != 1) 
        {
            state = TB_STATE::MM;
        }

        // otherwise stay in the long deletion state
        navigation = AL_DEL;

    }
    else
    {
        // Unknown State
// #ifdef CMAKEDEBUG
//         throw std::runtime_error("Unknown traceback state.");
// #endif
    }
    std::cout << "NAVIGATION IS " << navigation << std::endl;
}

void GlobalTwoPieceAffine::Traceback::StateInit(tbp_t tbp, TB_STATE &state)
{
    if (tbp(1, 0) == TB_MAIN)
    {
        state = TB_STATE::MM;
    }
    else if (tbp(1, 0) == TB_INSERT)
    {
        state = TB_STATE::INS;
    }
    else if (tbp(1, 0) == TB_DELETE)
    {
        state = TB_STATE::DEL;
    }
    else if (tbp == TB_LONG_INSERT)
    {
        state = TB_STATE::LONG_INS;
    }
    else if (tbp == TB_LONG_DELETE)
    {
        state = TB_STATE::LONG_DEL;
    }
    else
    {
        // Unknown State
    }
}
// <<< Global Two Piece Affine Implementation <<<
