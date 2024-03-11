#include "frontend.h"

void GlobalDTW::InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{
    // initialize global alignment with some linear gap panelty
    type_t gap_penl = 0;
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        gap_penl += penalties.linear_gap;
        init_col_scr[i][0] = gap_penl;
    }
    gap_penl = 0;
    for (int i = 0; i < MAX_REFERENCE_LENGTH; i++)
    {
        gap_penl += penalties.linear_gap;
        init_row_scr[i][0] = gap_penl;
    }
}


void GlobalDTW::PE::Compute(char_t local_query_val,
                            char_t local_reference_val,
                               score_vec_t up_prev,
                               score_vec_t diag_prev,
                               score_vec_t left_prev,
                               const Penalties penalties,
                               score_vec_t &write_score,
                               tbp_t &write_traceback)
{
    num_t diff_imag = local_query_val.imag - local_reference_val.imag;
    num_t diff_real = local_query_val.real - local_reference_val.real;
    type_t dist = diff_imag * diff_imag + diff_real * diff_real;  // compute the magnitud of the difference

    type_t min_value = (up_prev[0] < diag_prev[0]) ? up_prev[0] : diag_prev[0];
    min_value = min_value < left_prev[0] ? min_value : left_prev[0];

    write_traceback = (min_value == diag_prev[0]) ? TB_DIAG : ((min_value == up_prev[0]) ? TB_UP : TB_LEFT);

    write_score[0] = min_value + dist;
}

void GlobalDTW::UpdatePEMaximum(
        wavefront_scores_inf_t scores,
        ScorePack (&max)[PE_NUM],
        idx_t (&ics)[PE_NUM], idx_t (&jcs)[PE_NUM],
        idx_t (&p_col)[PE_NUM], idx_t ck_idx,
        bool (&predicate)[PE_NUM],
        idx_t query_len, idx_t ref_len){
        // None, since this kernel doesn't trace maximum PE location on the fly
}

void GlobalDTW::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len)
{
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        max[i].score = NINF;
        max[i].row = i;
        max[i].col = 0;
        max[i].p_col = 0;
        max[i].ck = 0;
        max[i].pe = i;
    }
    idx_t max_pe = (qry_len - 1) % PE_NUM;
    idx_t max_ck = (qry_len - 1)/ PE_NUM;
    max[max_pe].score = INF;  // This is dummy score by I just represent the idea it's maximum
    max[max_pe].row = qry_len - 1;
    max[max_pe].col = ref_len - 1;
    max[max_pe].p_col = (max_ck + 1) * ref_len - 1; // FIXME
    max[max_pe].ck = max_ck;
    max[max_pe].pe = max_pe;
}


void GlobalDTW::Traceback::StateInit(tbp_t tbp, TB_STATE &state){
    if (tbp == TB_DIAG)
    {
        state = TB_STATE::MM;
    }
    else if (tbp == TB_UP)
    {
        state = TB_STATE::DEL;
    }
    else if (tbp == TB_LEFT)
    {
        state = TB_STATE::INS;
    }
    else
    {
        state = TB_STATE::END; // Unknown Direction
        // Unknown Direction
    }
}

void GlobalDTW::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, tbr_t &navigation){

    if (tbp == TB_DIAG)
    {
        navigation = AL_MMI;
    }
    else if (tbp == TB_UP)
    {
        navigation = AL_DEL;
    }
    else if (tbp == TB_LEFT)
    {
        navigation = AL_INS;
    }
    else
    {
        state = TB_STATE::END; // Unknown Direction
        navigation = AL_END;
    }
}

// <<< Global DTW <<<