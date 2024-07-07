#ifndef VPP_CLI
#include "../../include/frontend.h"
#else
#include "frontend.h"
#endif

#include <hls_math.h>

void SDTW::InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{
    // Because the cell scores are non-negative (because the distance is L1 distance and accumulates), thus initialize
    // them to all 0 means exactly the same to initialize the first column in actual score matrix to be the distance
    // between q_i and r_0. min(diag, left, always have 0).
    for (int i = 0; i < MAX_REFERENCE_LENGTH; i++)
    {
        init_row_scr[i] = score_vec_t(0);
    }

    // doesn't need to initialize the initial reference since no upper cell dependencey.
}

void SDTW::PE::Compute(char_t local_query_val,
                       char_t local_reference_val,
                       score_vec_t up_prev,
                       score_vec_t diag_prev,
                       score_vec_t left_prev,
                       const Penalties penalties,
                       score_vec_t &write_score,
                       tbp_t &write_traceback)
{
    // The paper mentions there is no reference deletion, which means that the there is no left dependency but only diag and up. 
    // The RTL code uses left and diagonal is because possible the query and reference is transposed. 
    // find max from diagonal and left
    write_score[0] = (diag_prev[0] < up_prev[0] ? diag_prev[0] : up_prev[0]) + abs(local_query_val - local_reference_val);

}

void SDTW::UpdatePEMaximum(
    const wavefront_scores_inf_t scores,
    ScorePack (&max)[PE_NUM],
    const idx_t chunk_row_offset, const idx_t wavefront,
    const idx_t p_cols, const idx_t ck_idx,
    const bool (&predicate)[PE_NUM],
    const idx_t query_len, const idx_t ref_len)
{
    // Like SF, only do when QueryLength is multiple of PE_NUM, thus only let last PE findmax. 
    for (idx_t i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        if (predicate[i] && scores[i+1][LAYER_MAXIMIUM] > max[i].score && chunk_row_offset + i == query_len - 1)
        {
            // NOTE: If we just care about the score but doesn't care where does the score come from, then we doesn't need to update p_cols and ck index as well. 
            max[i] = {scores[i+1][LAYER_MAXIMIUM], ck_idx,  p_cols};
            // max[PE_NUM-1].p_col = p_cols;
            // max[PE_NUM-1].ck = ck_idx;
        }
    }
}

void SDTW::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len)
{
    for (idx_t i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        max[i].score = NINF;
        max[i].ck = 0;
        max[i].p_col = 0;
    }
}

void SDTW::Traceback::StateInit(tbp_t tbp, TB_STATE &state)
{
    // No TB
}

void SDTW::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, tbr_t &navigation)
{
    // No TB
}

// <<< Global DTW <<<