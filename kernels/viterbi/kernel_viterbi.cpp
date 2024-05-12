#include "frontend.h"

void Viterbi::PE::Compute(char_t local_query_val,
                               char_t local_reference_val,
                               score_vec_t up_prev,
                               score_vec_t diag_prev,
                               score_vec_t left_prev,
                               const Penalties penalties,
                               score_vec_t &write_score,
                               tbp_t &write_traceback)
{


    /*
     * Layer 0: Vi
     * Layer 1: Vm
     * Layer 2: Vj
     */

    const type_t I_open = up_prev[1] + penalties.log_lambda; // Insert open
    const type_t I_extend = up_prev[0] + penalties.log_1_m_mu;                  // insert extend
    const type_t J_open = left_prev[1] + penalties.log_lambda;   // delete open
    const type_t J_extend = left_prev[2] + penalties.log_1_m_mu;                    // delete extend

#ifdef CMAKEDEBUG
    auto insert_open_s = I_open.to_float();     // Insert open
    auto insert_extend_s = I_extend.to_float(); // insert extend
    auto delete_open_s = J_open.to_float();
    auto delete_extend_s = J_extend.to_float();

    auto left_prev_0_s = left_prev[0].to_float();
    auto left_prev_1_s = left_prev[1].to_float();
    auto left_prev_2_s = left_prev[2].to_float();
    auto up_prev_0_s = up_prev[0].to_float();
    auto up_prev_1_s = up_prev[1].to_float();
    auto up_prev_2_s = up_prev[2].to_float();
#endif

    bool I_open_b = I_open > I_extend;
    bool J_open_b = J_open > J_extend;
    write_score[0] = penalties.transition[ (int) local_query_val][4] + (I_open_b ? I_open : I_extend);
    write_score[2] = penalties.transition[4][(int) local_reference_val] + (J_open_b ? J_open : J_extend);
    tbp_t insert_tb = I_open_b ? (tbp_t) 0 : TB_IMAT;
    tbp_t delete_tb = J_open_b ? (tbp_t) 0 : TB_JMAT;

#ifdef CMAKEDEBUG
    auto write_score_0_s = write_score[0].to_float();
    auto write_score_2_s = write_score[2].to_float();
#endif

    const type_t match_M = penalties.log_1_m_2_lambda + diag_prev[1];
    const type_t match_I = penalties.log_mu + diag_prev[0];
    const type_t match_J = penalties.log_mu + diag_prev[2];

#ifdef CMAKEDEBUG
    auto diag_prev_s = diag_prev[1].to_float();
    auto local_query_val_s = local_query_val.to_int();
    auto local_reference_val_s = local_reference_val.to_int();
#endif

    type_t max_val = match_M;
    tbp_t dir_tb = TB_DIAG;

#ifdef CMAKEDEBUG
    auto write_score_1_s = write_score[1].to_float();
#endif

    // Set traceback pointer based on the direction of the maximum score.
    if (max_val < match_I)
    { // Insert Case
        max_val = match_I;
        dir_tb = TB_LEFT;
    }

    if (max_val < match_J)
    {
        max_val = match_J;
        dir_tb = TB_UP;
    }

    write_score[1] = penalties.transition[local_query_val][local_reference_val] + max_val;

    write_traceback = dir_tb + insert_tb + delete_tb;
}

void Viterbi::InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{
// Init Column
    type_t gap = penalties.log_lambda;
    for (int i = 0; i < MAX_QUERY_LENGTH; i++){
        gap += penalties.log_1_m_mu;
        init_col_scr[i] = score_vec_t({NINF, gap, NINF});
    }
// Init Row
    gap = penalties.log_lambda;
    for (int i = 0; i < MAX_REFERENCE_LENGTH; i++){
        gap += penalties.log_1_m_mu;
        init_row_scr[i] = score_vec_t({NINF, gap, NINF});
    }
}

void Viterbi::UpdatePEMaximum(
    const wavefront_scores_inf_t scores,
    ScorePack (&max)[PE_NUM],
    const idx_t chunk_row_offset, const idx_t wavefront,
    const idx_t p_cols, const idx_t ck_idx,
    const bool (&predicate)[PE_NUM],
    const idx_t query_len, const idx_t ref_len){
        
}

void Viterbi::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len)
{
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        max[i].score = NINF;
        max[i].p_col = 0;
        max[i].ck = 0;
    }
    Utils::Init::DetermineGlobalTracebackCoordinate(max, qry_len, ref_len);
}


void Viterbi::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, tbr_t &navigation)
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

void Viterbi::Traceback::StateInit(tbp_t tbp, TB_STATE &state)
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

// <<< Viterbi Implementation <<<




