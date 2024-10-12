#ifndef VPP_CLI
#include "../../include/frontend.h"
#else
#include "frontend.h"
#endif

// >>> Global Linear Implementation >>>
void LocalLinear::InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{
    Utils::Init::Linspace<type_t, 1>(init_col_scr, 0, 0, (type_t)0, 0);
    Utils::Init::Linspace<type_t, 1>(init_row_scr, 0, 0, (type_t)0, 0);
}

void LocalLinear::PE::Compute(char_t local_query_val,
                              char_t local_reference_val,
                              score_vec_t up_prev,
                              score_vec_t diag_prev,
                              score_vec_t left_prev,
                              const Penalties penalties,
                              score_vec_t &write_score,
                              tbp_t &write_traceback)
{
    const type_t ins = left_prev[0] + penalties.linear_gap;
    const type_t del = up_prev[0] + penalties.linear_gap;

    const type_t match = (local_query_val == local_reference_val) ? diag_prev[0] + penalties.match : diag_prev[0] + penalties.mismatch;

    type_t max_value = ins;
    write_traceback = TB_LEFT;

    if (max_value < match)
    {
        max_value = match;
        write_traceback = TB_DIAG;
    }

    if (max_value < del)
    {
        max_value = del;
        write_traceback = TB_UP;
    }

    if (max_value < (type_t)0)
    {
        max_value = 0;
        write_traceback = TB_END;
    }

    write_score = max_value;
}

void LocalLinear::UpdatePEMaximum(
    const wavefront_scores_inf_t scores,
    ScorePack (&max)[PE_NUM],
    const idx_t chunk_row_offset, const idx_t wavefront,
    const idx_t p_col, const idx_t ck_idx,
    const bool (&predicate)[PE_NUM],
    const idx_t query_len, const idx_t ref_len)
{

}

void LocalLinear::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len)
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

void LocalLinear::Traceback::StateInit(tbp_t tbp, TB_STATE &state)
{
}

void LocalLinear::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, tbr_t &navigation)
{

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
    else if (tbp == TB_END)
    {
        navigation = AL_END;
    }
    else
    {
        navigation = AL_END;
    }
}

// <<< Global Linear Implementation <<<