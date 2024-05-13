/**
 * Declare Any Customized Align type in this file.
 */

#ifndef FRONTEND_H
#define FRONTEND_H

#include "dp_hls_common.h"
#include "utils.h"
#include <math.h>

namespace ALIGN_TYPE
{
    namespace PE
    {
        void Compute(char_t local_query_val,
                     char_t local_reference_val,
                     score_vec_t up_prev,
                     score_vec_t diag_prev,
                     score_vec_t left_prev,
                     const Penalties penalties,
                     score_vec_t &write_score,
                     tbp_t &write_traceback);

    };

    void InitializeScores(
        score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
        score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
        Penalties penalties);

    void UpdatePEMaximum(
        const wavefront_scores_inf_t scores,
        ScorePack (&max)[PE_NUM],
        const idx_t chunk_row_offset, const idx_t wavefront,
        const idx_t p_cols, const idx_t ck_idx,
        const bool (&predicate)[PE_NUM],
        const idx_t query_len, const idx_t ref_len);

    void InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len);

    namespace Traceback
    {
        void StateMapping(tbp_t tbp, TB_STATE &state, tbr_t &navigation);

        void StateInit(tbp_t tbp, TB_STATE &state);
    }
    
    namespace Helper {
        void InitCol(score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH], Penalties penalties);
        void InitRow(score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH], Penalties penalties);
    }

}

#endif // FRONTEND_H