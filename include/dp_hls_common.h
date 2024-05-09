//
// Created by centos on 4/18/24.
//

#ifndef DP_HLS_DP_HLS_COMMON_H
#define DP_HLS_DP_HLS_COMMON_H

#include "params.h"

// struct score_vec_t {
//     type_t data[N_LAYERS];

//     // write a constructor
//     score_vec_t() {
//         InitializeScoreVec:
//         for (int i = 0; i < N_LAYERS; i++) {
// #pragma HLS unroll
//             data[i] = 0;
//         }
//     }
//     score_vec_t(type_t num) {
//         InitializeScoreVecNum:
//         for (int i = 0; i < N_LAYERS; i++) {
// #pragma HLS unroll
//             data[i] = num;
//         }
//     }

//     type_t& operator[](idx_t index) { return data[index]; }

//     // Const version of operator[]
//     const type_t& operator[](idx_t index) const { return data[index]; }
// };

const int PRAGMA_PE_NUM = PE_NUM;
const int PRAGMA_N_BLOCKS = N_BLOCKS;

typedef hls::vector<type_t, N_LAYERS> score_vec_t;

struct ScorePack{
    type_t score;
    idx_t ck;
    idx_t p_col;
};



#define CK_NUM (MAX_QUERY_LENGTH / PE_NUM)

// Determine the memory size for different banding strategy.
#if defined(BANDING)
#if BANDING == Rectangular
#define TBMEM_SIZE (CK_NUM * (MAX_REFERENCE_LENGTH + PE_NUM - 1))
#elif BANDING == Fixed
#define TBMEM_SIZE (MAX_QUERY_LENGTH / PE_NUM * (2 * BANDWIDTH + PE_NUM - 1))
#else
#error  "This Banding Strategy is not Supported"
#endif
#else
#error "Banding Strategy is not Defined"
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
