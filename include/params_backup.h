#ifndef PARAMS_H
#define PARAMS_H

#include <complex.h>
#include <array>

// // #define TWO_PIECE_AFFINE // ALIGN_LOCAL_AFFINE, ALIGN_GLOBAL_LINEAR, TWO_PIECE_AFFINE
// #define CMAKEDEBUG
// #define BANDED



#ifdef TWO_PIECE_AFFINE
#define numofreads 1

#define MAX_QUERY_LENGTH 256
#define MAX_REFERENCE_LENGTH 256

#define ALIGN_TYPE LocalAffine
#define N_BLOCKS 1
#define N_LAYERS 3
#define PE_NUM 32
#define LAYER_MAXIMIUM 1  // We need to indicate from which layer (main matrix) is the maximum score stored.

#define FIXED_BANDWIDTH 8

// Primitive Types
typedef ap_uint<2> char_t;  // Sequence Alphabet
typedef ap_fixed<16, 11> type_t;  // Scores Type <width, integer_width>
typedef int idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<4> tbp_t;  // Traceback Pointer Type
typedef ap_uint<2> tbr_t;  // Traecback Result Type

// Define Traceback Pointer Navigation Direction
#define TB_PH (tbp_t) 0b0000
#define TB_LEFT (tbp_t) 0b0001
#define TB_DIAG (tbp_t) 0b0010
#define TB_UP (tbp_t) 0b0011

// Define Traceback Pointer Navigation Matrix
#define TB_IMAT (tbp_t) 0b0100  // Insertion Matrix
#define TB_DMAT (tbp_t) 0b1000  // Deletion Matrix

// Define Zero Value
#define zero_fp ((type_t)0)

// Define Traceback Result Representation
#define AL_MMI (tbr_t) 0b10  // Align Match/Mismatch
#define AL_INS (tbr_t) 0b01  // Align Insertion
#define AL_DEL (tbr_t) 0b11  // Align Deletion
#define AL_END (tbr_t) 0b00  // stopping condition

// Defien upper and lower bound for score type, aka type_t
#define INF 256
#define NINF -256

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/local_affine/"
#define DEBUG_FILENAME "debug_kernel"

// Custom Types Vital for Kernel Functioning
typedef hls::vector<type_t, N_LAYERS> init_col_score_block_t[MAX_QUERY_LENGTH];
typedef hls::vector<type_t, N_LAYERS> init_row_score_block_t[MAX_REFERENCE_LENGTH];
typedef tbp_t traceback_block_t[MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH];
typedef hls::vector<type_t, N_LAYERS> score_block_t[PE_NUM];  // TODO: Change name chunk scores
typedef hls::vector<type_t, N_LAYERS> chunk_col_scores_inf_t[PE_NUM+1];  // chunk column scores inflated
typedef tbp_t tbp_block_t[PE_NUM];
typedef char_t input_char_block_t[PE_NUM];
typedef hls::vector<type_t, N_LAYERS> dp_mem_block_t[PE_NUM+1][3];
typedef tbp_t tbp_chunk_block_t[PE_NUM][MAX_REFERENCE_LENGTH];
typedef hls::vector<type_t, N_LAYERS> score_vec_t;

struct ScorePack{  
    type_t score  = 0;
    idx_t chunk_offset = 0;
    idx_t pe = 0;
    idx_t pe_offset = 0;
};

struct Penalties {
    type_t open;
    type_t extend;
    type_t mismatch;
    type_t match;
};

enum TB_STATE {
    MM = 0,   // Match/Mismatch
    INS = 1,  // Insertion
    DEL = 2,  // Deletion
    END = 3   // End
};

#endif


// >>> Automatically Determined Macros and Configs >>>
// DO NOT MODIFY
#define CK_NUM (MAX_QUERY_LENGTH / PE_NUM)

typedef hls::vector<type_t, N_LAYERS> score_vec_t;
typedef score_vec_t init_col_score_block_t[MAX_QUERY_LENGTH];
typedef score_vec_t init_row_score_block_t[MAX_REFERENCE_LENGTH];
typedef score_vec_t wavefront_scores_t[PE_NUM];  // TODO: Change name chunk scores
typedef score_vec_t wavefront_scores_inf_t[PE_NUM+1];  // chunk column scores inflated
typedef score_vec_t dp_mem_block_t[PE_NUM+1][2];
typedef score_vec_t chunk_col_scores_inf_t[PE_NUM+1];  // chunk column scores inflated
typedef idx_t index_vec_t[PE_NUM];
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

// >>> Legacy Kernel Definitions, Not Used, But do NOT remove, DO not include
typedef tbp_t tbp_chunk_block_t[PE_NUM][MAX_REFERENCE_LENGTH];
typedef tbp_t tbp_block_t[PE_NUM];

#endif
