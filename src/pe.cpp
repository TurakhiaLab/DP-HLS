#include <hls_vector.h>


#ifndef VPP_CLI
#include "../include/PE.h"
#include "../include/params.h"
#include "../include/frontend.h"
#else
#include "PE.h"
#include "params.h"
#include "frontend.h"
#endif

#ifdef CMAKEDEBUG
#include <cstdio>
#include "host_utils.h"
#endif


void PE::PEUnroll(
    score_vec_t (&dp_mem)[PE_NUM + 1][3], 
    const input_char_block_t qry, 
    const input_char_block_t ref, 
    const Penalties penalties, 
    tbp_vec_t &tbp)
{
#pragma HLS array_partition variable = dp_mem dim = 0 type = complete
#pragma HLS array_partition variable = tbp type = complete

    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        ALIGN_TYPE::PE::Compute(
            qry[i],
            ref[i],
            dp_mem[i][1],
            dp_mem[i][2],
            dp_mem[i+1][1],
            penalties,
            dp_mem[i+1][0],
            tbp[i]);
    }
}

void PE::PEUnrollSep(
    dp_mem_block_t &dp_mem,
    const input_char_block_t &qry,
    const input_char_block_t &ref, 
    const Penalties penalties, 
    wavefront_scores_inf_t &score,
    tbp_vec_t &tbp)
{
#pragma HLS array_partition variable = dp_mem dim = 0 type = complete
#pragma HLS array_partition variable = tbp type = complete
#pragma HLS array_partition variable = score type = complete

    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        ALIGN_TYPE::PE::Compute(
            qry[i],
            ref[i],
            dp_mem[i][0],
            dp_mem[i][1],
            dp_mem[i+1][0],
            penalties,
            score[i+1],
            tbp[i]);
    }
}

void PE::PEUnrollFixedSep(
    dp_mem_block_t &dp_mem,
    const input_char_block_t &qry,
    const input_char_block_t &ref,
    idx_t (&v_cols)[PE_NUM],
    idx_t (&l_lim)[PE_NUM], idx_t (&u_lim)[PE_NUM], 
    const Penalties penalties, 
    wavefront_scores_inf_t &score,
    tbp_vec_t &tbp){

#pragma HLS array_partition variable = dp_mem dim = 0 type = complete
#pragma HLS array_partition variable = tbp type = complete
#pragma HLS array_partition variable = score type = complete
// up, diag, left
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        ALIGN_TYPE::PE::Compute(
            qry[i],
            ref[i],
            // dp_mem[i][0], 
            v_cols[i] == u_lim[i] ? score_vec_t(NINF) : dp_mem[i][0],
            dp_mem[i][1],
            // dp_mem[i+1][0], 
            v_cols[i] == l_lim[i] ? score_vec_t(NINF) : dp_mem[i+1][0],
            penalties,
            score[i+1],
            tbp[i]);
#ifdef CMAKEDEBUG
        printf("PE %d: V Col: %d, Qry: %c, Ref: %c, Up: %f, Diag: %f, Left: %f, Out: %f\n", 
        i, v_cols[i], 
        HostUtils::Sequence::num_to_base(qry[i]), HostUtils::Sequence::num_to_base(ref[i]), 
        v_cols[i] == u_lim[i] ? score_vec_t(NINF)[0].to_float() : dp_mem[i][0][0].to_float(),    
        dp_mem[i][1][0].to_float(), 
        v_cols[i] == l_lim[i] ? score_vec_t(NINF)[0].to_float() : dp_mem[i+1][0][0].to_float(), 
        score[i+1][0].to_float());
#endif
    }
#ifdef CMAKEDEBUG
    printf("\n");
#endif
}