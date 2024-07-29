/**
 * Declare Any Customized Align type in this file.
 */

#ifndef FRONTEND_H
#define FRONTEND_H

#include "dp_hls_common.h"
#include "utils.h"
#include <math.h>

/**
 * @brief This namespace contains the functions that is required to be implemented by the user. 
 * ALIGN_TYPE itself is a macro, and is supposed to be defined as the kernel name in params.h.
 * 
 */
namespace ALIGN_TYPE
{
    namespace PE
    {
        /**
         * @brief The PE function defining the computation of the output score based on 
         * its upper, left, and diagonal dependencies. 
         * 
         */
        void Compute(char_t local_query_val,
                     char_t local_reference_val,
                     score_vec_t up_prev,
                     score_vec_t diag_prev,
                     score_vec_t left_prev,
                     const Penalties penalties,
#ifdef LOCAL_TRANSITION_MATRIX
                     const type_t transitions[TRANSITION_MATRIX_SIZE][TRANSITION_MATRIX_SIZE],
#endif
                     score_vec_t &write_score,
                     tbp_t &write_traceback);

    };

    /**
     * @brief The function to initialize the initial row and column scores. 
     * 
     * @param penalties The penalties (alignment parameters). 
     */
    void InitializeScores(
        score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
        score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
        Penalties penalties);

    /**
     * @brief This function unrolls PE_NUM units to compare the their local maximum/minimum and new cell scores. 
     * It can be queried to update the local minimum/maximum scores based on it's current index. The row index can be 
     * computed as the PE_idx + chunk_row_offset; and the column index is the wavefront index - PE_idx. The actual query and 
     * reference lengths are provided so that they can be compared to the current index.
     * 
     * @param scores The buffer of output scores. 
     * @param chunk_row_offset The row offset of the current chunk. 
     * @param wavefront The wavefront index.
     * @param p_cols The physical column corresponding to the output scores. 
     * @param ck_idx The chunk index.
     * @param query_len Query length. 
     * @param ref_len Reference length. 
     */
    void UpdatePEMaximum(
        const wavefront_scores_inf_t scores,
        ScorePack (&max)[PE_NUM],
        const idx_t chunk_row_offset, const idx_t wavefront,
        const idx_t p_cols, const idx_t ck_idx,
        const bool (&predicate)[PE_NUM],
        const idx_t query_len, const idx_t ref_len);

    /**
     * @brief Initialize the ScorePacks with the minimum/maximum values. 
     * 
     * A way to save resources in the global alignment is to initialize the PE to start the traceback 
     * with a INF value and others NINF. The physical coordinates can be pre-calculated before knowing 
     * the scores, thus save the resources by having empty UpdatePEMaximum function. See the DP-HLS 
     * global alignment example for the actual implementation. 
     * 
     * @param qry_len Actual query length.
     * @param ref_len Actual reference length.
     */
    void InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len);

    /**
     * @brief The namespace for the customized function related to the traceback. 
     * 
     */
    namespace Traceback
    {
        /**
         * @brief Map the current step's state and the traceback pointer to the next state and one of the 
         * Insertion, Deletion, Match/Mismatch, or Stop directions.
         * 
         * @param tbp The traceback pointer. 
         * @param state The traceback state.
         * @param navigation The output navigation.
         */
        void StateMapping(tbp_t tbp, TB_STATE &state, tbr_t &navigation);

        /**
         * @brief Initialize the initial traceback state based on the initial traceback pointer. 
         * 
         * @param tbp 
         * @param state 
         */
        void StateInit(tbp_t tbp, TB_STATE &state);
    }
    
    /**
     * @deprecated For kernel specific helper functions, please define them in a saparate file. 
     * 
     */
    namespace Helper {
        void InitCol(score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH], Penalties penalties);
        void InitRow(score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH], Penalties penalties);
    }

}

#endif // FRONTEND_H