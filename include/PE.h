#ifndef PE_H
#define PE_H

#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_streamofblocks.h>
#include "./traceback.h"
#include <hls_vector.h>
#include "dp_hls_common.h"

#ifdef CMAKEDEBUG
#include <list>
#endif // DEBUG

namespace PE
{

    /**
     * \deprecated 
     * @brief Unrolls the array of PE.
     *
     * @param dp_mem DP Memory of Three Wavefronts
     * @param qry Local Query
     * @param ref Local Reference
     * @param penalties Penalties
     * @param tbp Traceback Pointer Out
     */
    void PEUnroll(score_vec_t (&dp_mem)[PE_NUM + 1][3],
                  const input_char_block_t qry,
                  const input_char_block_t ref,
                  const Penalties penalties,
#ifdef LOCAL_TRANSITION_MATRIX
                  const type_t (&transitions)[PE_NUM][TRANSITION_MATRIX_SIZE][TRANSITION_MATRIX_SIZE],
#endif
                  tbp_vec_t &tbp);

    /**
     * @brief Unrolls the array of PE, saparating the score input buffer and the score
     * output buffer. Used in the rectangular kernel. 
     *
     * @param dp_mem DP Memory of Three Wavefronts
     * @param qry Local Query
     * @param ref Local Reference
     * @param penalties Penalties
     * @param score Scores Out Buffer
     * @param tbp Traceback Poitner Out
     */
    void PEUnrollSep(
        dp_mem_block_t &dp_mem,
        const input_char_block_t &qry,
        const input_char_block_t &ref,
        const Penalties penalties,
#ifdef LOCAL_TRANSITION_MATRIX
        const type_t (&transitions)[PE_NUM][TRANSITION_MATRIX_SIZE][TRANSITION_MATRIX_SIZE],
#endif
        wavefront_scores_inf_t &score,
        tbp_vec_t &tbp);

    /**
     * @brief Unrolls the array of PE, saparating the score input buffer and the score
     * output buffer. Used in the fixed banded kernel. 
     *
     * @param dp_mem DP Memory of Three Wavefronts
     * @param qry Local Query
     * @param ref Local Reference
     * @param penalties Penalties
     * @param score Scores Out Buffer
     * @param tbp Traceback Poitner Out
     */
    void PEUnrollFixedSep(
        const dp_mem_block_t dp_mem,
        const input_char_block_t qry,
        const input_char_block_t ref,
        const Penalties penalties,
#ifdef LOCAL_TRANSITION_MATRIX
        const type_t (&transitions)[PE_NUM][TRANSITION_MATRIX_SIZE][TRANSITION_MATRIX_SIZE],
#endif
        wavefront_scores_inf_t &score,
        tbp_vec_t &tbp);

}

#endif // !PE_H

// Static data members are shared by all instances of a class.
