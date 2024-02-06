#ifndef PE_H
#define PE_H

#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include "./shift_reg.h"
#include <hls_streamofblocks.h>
#include "./traceback.h"
#include <hls_vector.h>
#include "./params.h"

#ifdef CMAKEDEBUG
#include <list>
#endif // DEBUG



namespace PE {
    
    /**
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
        tbp_block_t &tbp);

    /**
     * @brief Unrolls the array of PE, saparating the score input buffer and the score 
     * output buffer. 
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
        wavefront_scores_inf_t &score,
        tbp_vec_t &tbp);
    

}

 
#endif // !PE_H

// Static data members are shared by all instances of a class.
