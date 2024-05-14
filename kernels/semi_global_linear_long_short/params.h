#pragma once


#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_vector.h>


#define MAX_QUERY_LENGTH 16
#define MAX_REFERENCE_LENGTH 8

#define ALIGN_TYPE SemiGlobalLinearLongShort
#define N_BLOCKS 1
#define N_LAYERS 1
const int PE_NUM = 4;
#define LAYER_MAXIMIUM 0  // We need to indicate from which layer (main matrix) is the maximum score stored.

// Primitive Types
typedef ap_uint<2> char_t;  // Sequence Alphabet
typedef ap_fixed<16, 10> type_t;  // Scores Type <width, integer_width>
typedef short idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<2> tbp_t;  // Traceback Pointer Type

#define BANDING RECTANGULAR

// Define Zero Value
#define zero_fp ((type_t)0)
#define ZERO_CHAR (char_t(0))

// Defien upper and lower bound for score type, aka type_t
#define INF 256
#define NINF -256

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/global_affine/"
#define DEBUG_FILENAME "debug_kernel"

struct ScorePack{  
    type_t score;
    idx_t row;
    idx_t col;
    idx_t p_col;
    idx_t ck;
    idx_t pe;

	// Default Constructor
    ScorePack() {
        score = 0;
        row = 0;
        col = 0;
        p_col = 0;
        ck = 0;
        pe = 0;
    }
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

// Determine the memory size for different banding strategy.
#if defined(BANDING)
#if BANDING == RECTANGULAR
#define TBMEM_SIZE (CK_NUM * MAX_REFERENCE_LENGTH)
#elif BANDING == Fixed
#define TBMEM_SIZE (MAX_QUERY_LENGTH / PE_NUM * (2 * BANDWIDTH + PE_NUM - 1))
#else
#error  "This Banding Strategy is not Supported"
#endif
#else
#error "Banding Strategy is not Defined"
#endif

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
