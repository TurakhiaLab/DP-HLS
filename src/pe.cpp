// #include <hls_task.h>
#include "../include/PE.h"
#include <hls_vector.h>
#include "../kernels/global_affine/params.h"
#include "../include/frontend.h"

#ifdef CMAKEDEBUG
#include <cstdio>
#endif



void PE::PEUnroll(
#ifdef BANDED
	bool predicate[],
#endif
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
#ifdef BANDED
			predicate[i],
#endif 
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
#ifdef BANDED
	bool predicate[],
#endif    
	dp_mem_block_t &dp_mem,
    const input_char_block_t &qry,
    const input_char_block_t &ref, 
    const Penalties penalties, 
    wavefront_scores_inf_t &score,
    tbp_vec_t &tbp
	)
{
#pragma HLS inline off

#pragma HLS array_partition variable = dp_mem dim = 0 type = complete
#pragma HLS array_partition variable = tbp type = complete
#pragma HLS array_partition variable = score type = complete

    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
		printf("EXECUTING FOR PE %d\n", i);
		// need the predicate to ensure scores are being properly set
		ALIGN_TYPE::PE::Compute(
#ifdef BANDED
			predicate[i],
#endif
		    qry[i],
            ref[i],
            dp_mem[i][0],
            dp_mem[i][1],
            dp_mem[i+1][0],
            penalties,
            score[i+1],
            tbp[i]
		);
    }
}
