#include "frontend.h"

void LocalAffine::PE::Compute(char_t local_query_val,
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

    const type_t insert_open = left_prev[1] + penalties.open + penalties.extend; // Insert open
    const type_t insert_extend = left_prev[0] + penalties.open;                  // insert extend
    const type_t delete_open = up_prev[1] + penalties.open + penalties.extend;   // delete open
    const type_t delete_extend = up_prev[2] + penalties.open;                    // delete extend

    bool insert_open_b = insert_open > insert_extend;
    bool delete_open_b = delete_open > delete_extend;
    write_score[0] = insert_open_b ? insert_open : insert_extend;
    write_score[2] = delete_open_b ? delete_open : delete_extend;
    tbp_t insert_tb = insert_open_b ? (tbp_t) 0 : TB_IMAT;
    tbp_t delete_tb = delete_open_b ? (tbp_t) 0 : TB_DMAT;


    const type_t match = (local_query_val == local_reference_val) ? diag_prev[1] + penalties.match : diag_prev[1] + penalties.mismatch;

    type_t max_value = write_score[0] > write_score[2] ? write_score[0] : write_score[2]; // compare between insertion and deletion
    max_value = max_value > match ? max_value : match;                                    // compare with match/mismatch
    write_score[1] = max_value;

    tbp_t dir_tb;

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

void LocalAffine::InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{
    Utils::Init::ArrSet(init_col_scr, {NINF, 0.0, 0.0});  // qry
    Utils::Init::ArrSet(init_row_scr, {0.0, 0.0, NINF}); // reference layer 0
}

void LocalAffine::UpdatePEMaximum(
    wavefront_scores_inf_t scores,
    ScorePack (&max)[PE_NUM],
    idx_t (&ics)[PE_NUM], idx_t (&jcs)[PE_NUM],
    idx_t (&p_col)[PE_NUM], idx_t ck_idx,
    bool (&predicate)[PE_NUM],
    idx_t query_len, idx_t ref_len){
        
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        if (predicate[i] && (scores[i + 1][LAYER_MAXIMIUM] > max[i].score))
        {
            max[i].score = scores[i + 1][LAYER_MAXIMIUM];
            max[i].row = ics[i];
            max[i].col = jcs[i];
            max[i].p_col = p_col[i];
            max[i].ck = ck_idx;
            max[i].pe = i;
        }
    }
}

void LocalAffine::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len)
{
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        max[i].score = NINF;
        max[i].row = 0;
        max[i].col = 0;
        max[i].p_col = 0;
        max[i].ck = 0;
        max[i].pe = 0;
    }
}

void LocalAffine::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, tbr_t &navigation)
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
        // Placeholder for kernel side debug
    }
}

void LocalAffine::Traceback::StateInit(tbp_t tbp, TB_STATE &state)
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
        // Placeholder for kernel side debug
    }
}

// <<< Local Affine Implementation <<<




