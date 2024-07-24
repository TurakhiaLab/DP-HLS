//
// Created by centos on 4/18/24.
//

#ifndef DP_HLS_DP_HLS_COMMON_H
#define DP_HLS_DP_HLS_COMMON_H

#define RECTANGULAR 0
#define FIXED 1

#define VPPCLI

#ifndef VPPCLI
#include "../kernels/sdtw/params.h"
#else
#include "params.h"
#endif

const int PRAGMA_PE_NUM = PE_NUM;
const int PRAGMA_N_BLOCKS = N_BLOCKS;

typedef hls::vector<type_t, N_LAYERS> score_vec_t;

struct ScorePack{
    type_t score;
    idx_t p_col;
};

static_assert(MAX_QUERY_LENGTH % PE_NUM == 0, "MAX_QUERY_LENGTH must divide PE_NUM, compilation terminated!");

#define CK_NUM (MAX_QUERY_LENGTH / PE_NUM)

// Determine the memory size for different banding strategy.
#if defined(BANDING)
#if BANDING == 0
#define BANDING_NAMESPACE Rectangular
#define TBMEM_SIZE (CK_NUM * (MAX_REFERENCE_LENGTH + PE_NUM - 1))
#define TB_CHUNK_WIDTH (MAX_REFERENCE_LENGTH + PE_NUM - 1)
#define BANDWIDTH 0  // Just put here to make the fixed banded kernel compilable in rectangular mode. 
#elif BANDING == 1
#ifndef BANDWIDTH
#error "BANDWIDTH must be defined in fixed banding kernel, please define BANDWIDTH."
#endif
#define BANDING_NAMESPACE Fixed
#define TBMEM_SIZE (CK_NUM * (2 * BANDWIDTH + PE_NUM - 1 + PE_NUM - 1))
#define TB_CHUNK_WIDTH (2 * BANDWIDTH + PE_NUM - 1 + PE_NUM - 1)
#else
#error  "This Banding Strategy is not Supported. "
#endif
#else
#error "Banding Strategy is not Defined, Please define a banding strategy."
#endif


//typedef hls::vector<type_t, N_LAYERS> score_vec_t;
typedef score_vec_t init_col_score_block_t[MAX_QUERY_LENGTH];
typedef score_vec_t init_row_score_block_t[MAX_REFERENCE_LENGTH];
typedef score_vec_t wavefront_scores_t[PE_NUM];
typedef score_vec_t wavefront_scores_inf_t[PE_NUM+1];  // chunk column scores inflated
typedef score_vec_t dp_mem_block_t[PE_NUM+1][2];
typedef score_vec_t chunk_col_scores_inf_t[PE_NUM+1];  // chunk column scores inflated
typedef hls::vector<idx_t, PE_NUM> idx_vec_t;
typedef tbp_t tbp_vec_t[PE_NUM];
typedef char_t input_char_block_t[PE_NUM];

// Define Traceback Navigation Values
typedef ap_uint<3> tbr_t;  // Traecback Result Type
#define AL_END (tbr_t) 0b000  // 0 stopping condition
#define AL_INS (tbr_t) 0b001  // 1 Align Insertion
#define AL_MMI (tbr_t) 0b010  // 2 Align Match/Mismatch
#define AL_DEL (tbr_t) 0b011  // 3 Align Deletion
#define AL_NULL (tbr_t) 0b100  // 4 Do not change coordinate

typedef tbr_t traceback_buf_t[MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH];

#endif //DP_HLS_DP_HLS_COMMON_H
