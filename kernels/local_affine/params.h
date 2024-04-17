#ifndef PARAMS_H
#define PARAMS_H

#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_vector.h>

#define MAX_QUERY_LENGTH 16
#define MAX_REFERENCE_LENGTH 16

#define BANDING Rectangular

#define PRAGMA_PE_NUM 8

#define ALIGN_TYPE LocalAffine
#define N_BLOCKS 1
#define N_LAYERS 3
const int PE_NUM = PRAGMA_PE_NUM;
#define LAYER_MAXIMIUM 1  // We need to indicate from which layer (main matrix) is the maximum score stored.

// if user decides to use banding
//#define BANDED
#ifdef BANDED
#define FIXED_BANDWIDTH 4
#endif

// Primitive Types
typedef ap_uint<2> char_t;  // Sequence Alphabet
typedef ap_fixed<16, 11> type_t;  // Scores Type <width, integer_width>
typedef short idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<4> tbp_t;  // Traceback Pointer Type

// Define Zero Value
#define zero_fp ((type_t)0)
#define ZERO_CHAR (char_t(0))

// Defien upper and lower bound for score type, aka type_t
#define INF 256
#define NINF -256

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/local_affine/"
#define DEBUG_FILENAME "debug_kernel"


#define TB_PH (tbp_t) 0b00
#define TB_LEFT (tbp_t) 0b01
#define TB_DIAG (tbp_t) 0b10
#define TB_UP (tbp_t) 0b11

#define TB_IMAT (tbp_t) 0b0100  // Insertion Matrix
#define TB_DMAT (tbp_t) 0b1000  // Deletion Matrix

struct score_vec_t {
    type_t data[N_LAYERS];
    // write a constructor
    score_vec_t() {
        InitializeScoreVec:
        for (int i = 0; i < N_LAYERS; i++) {
            data[i] = 0;
        }
    }
    score_vec_t(type_t num) {
        InitializeScoreVecNum:
        for (int i = 0; i < N_LAYERS; i++) {
            data[i] = num;
        }
    }
};

struct ScorePack{  
    type_t score;
    idx_t row;
    idx_t col;
    idx_t ck;
    idx_t p_col;
    idx_t pe;
};

struct Penalties {
    type_t open;
    type_t extend;
    type_t mismatch;
    type_t match;
    type_t linear_gap;
};

enum TB_STATE {
    MM = 0,   // Match/Mismatch
    INS = 1,  // Insertion
    DEL = 2,  // Deletion
    END = 3   // End
};

// >>> Automatically Determined Macros and Configs >>>
// DO NOT MODIFY
#define CK_NUM (MAX_QUERY_LENGTH / PE_NUM)

#define TBMEM_SIZE (CK_NUM * MAX_REFERENCE_LENGTH)

//typedef hls::vector<type_t, N_LAYERS> score_vec_t;
typedef score_vec_t init_col_score_block_t[MAX_QUERY_LENGTH];
typedef score_vec_t init_row_score_block_t[MAX_REFERENCE_LENGTH];
typedef score_vec_t wavefront_scores_t[PE_NUM];  // TODO: Change name chunk scores
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

// >>> Debug Macros, turn on for certain debug requests >>>
#undef CMAKEDEBUG_PRINT_TRACEBACK

#endif