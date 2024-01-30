#ifndef PARAMS_H
#define PARAMS_H

#include <ap_fixed.h>
#include <hls_vector.h>
#include <hls_stream.h>
#include <complex.h>
#include <array>

// // #define TWO_PIECE_AFFINE // ALIGN_LOCAL_AFFINE, ALIGN_GLOBAL_LINEAR, TWO_PIECE_AFFINE

#define ALIGN_GLOBAL_LINEAR
#define CMAKEDEBUG  // This is used to turn on the verification on CMake. 

// >>> LOCAL_LINEAR params >>>
#ifdef ALIGN_LOCAL_LINEAR

#define MAX_QUERY_LENGTH 256
#define MAX_REFERENCE_LENGTH 256

#define PE_NUM 32

#define numofreads 1

#define corner_case (MAX_QUERY_LENGTH%PE_NUM != 0)
#define query_chunks (MAX_QUERY_LENGTH/PE_NUM)
#define extra_pe_num (MAX_QUERY_LENGTH%PE_NUM)

#define ALIGN_TYPE Linear

#define WS 16  
#define IS 6 

// integer bits represent the pointer, always 2
// fraction bits represent the layer
#define WT 3  // 2 bits direction pointer
#define IT WT-2  // 1 bit represents layer

#define TB_START_LEVEL 0
#define TB_START_ROW 14
#define TB_START_COL 10

//#define DEBUG

#define N_BLOCKS 1

#define TB_LINE_SIZE 64  // This defines the length of a line of TB pointers. Must be larger than PE_num

#define chunk_width 16  // this must larger than PE_num

typedef ap_uint<3> char_t;  // type of sequence characters
typedef ap_fixed<WS, IS> type_t;  // score matrix score type
typedef ap_uint<16> idx_t; // define an address type to resolve the pointer to pointer problems
typedef ap_ufixed<WT, IT> tbp_t;  // traceback pointer typ
typedef ap_ufixed<2, 0> tbp_dir_t;  // direction bits type for traceback pointer
typedef ap_uint<4> chunk_idx_t;  // chunk index type
//tbp_t TB_PH = 0.0;  // this is place holder
//tbp_t TB_LEFT = 0.25;
//tbp_t TB_DIAG = 0.5;
//tbp_t TB_UP = 0.75;

#define TB_PH (tbp_dir_t) 0.0
#define TB_LEFT (tbp_dir_t) 0.25
#define TB_DIAG (tbp_dir_t) 0.5
#define TB_UP (tbp_dir_t) 0.75

#define zero_fp ((type_t)0)

#define linear_gap_penalty (type_t) (-2)
#define opening_score -2
#define extend_score -2
#define mismatch_score (type_t) (-1)
#define match_score (type_t) 3

// #define DEBUG_OUTPUT_PATH "/mnt/c/Users/Yingqi/OneDrive/GitHub/DP-HLS/debug/"
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/local_linear/"
#define DEBUG_FILENAME "debug_kernel"

typedef char_t ref_buf[chunk_width];

// inflated ones takes care of corner case scenarios
#define inflated_query_length (query_chunks *PE_NUM + corner_case *PE_NUM)
#define inflated_query_chunks (query_chunks + corner_case)

#define N_LAYERS 1

typedef char_t raw_query_block_t[MAX_QUERY_LENGTH];
typedef char_t raw_reference_block_t[MAX_REFERENCE_LENGTH];
typedef hls::vector<type_t, N_LAYERS> init_col_score_block_t[MAX_QUERY_LENGTH];
typedef hls::vector<type_t, N_LAYERS> init_row_score_block_t[MAX_REFERENCE_LENGTH];
typedef tbp_t traceback_block_t[MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH];
typedef hls::vector<type_t, N_LAYERS> score_block_t[PE_NUM];
typedef hls::vector<tbp_t, N_LAYERS> tbp_block_t[PE_NUM];
typedef char_t input_char_block_t[PE_NUM];
typedef hls::vector<type_t, N_LAYERS> dp_mem_block_t[2][PE_NUM];
typedef hls::vector<tbp_t, N_LAYERS> tbp_chunk_block_t[PE_NUM][MAX_REFERENCE_LENGTH];

typedef hls::vector<type_t, N_LAYERS> score_vec_t;

#define LAYER_MAXIMIUM 0

struct BlockInputs {
    raw_query_block_t query;
    raw_reference_block_t reference;
    init_col_score_block_t init_col_score;
    init_row_score_block_t init_row_score;
    int query_length;
    int reference_length;
};

struct BlockOutputs {
    traceback_block_t traceback;
};

struct ScorePack{  
    type_t score  = 0;
    idx_t chunk_offset = 0;
    idx_t pe = 0;
    idx_t pe_offset = 0;
    idx_t layer = 0;
};

template <typename T, int N>
struct ArrayPack {
    T data[N];
};

#endif 

// >>> LOCAL_AFFINE params >>>
#ifdef ALIGN_LOCAL_AFFINE
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
    type_t linear_gap;
};

enum TB_STATE {
    MM = 0,   // Match/Mismatch
    INS = 1,  // Insertion
    DEL = 2,  // Deletion
    END = 3   // End
};
#endif 

// >>> GLOBAL_LINEAR params >>>
#ifdef ALIGN_GLOBAL_LINEAR
#define numofreads 1

#define MAX_QUERY_LENGTH 64
#define MAX_REFERENCE_LENGTH 64

#define ALIGN_TYPE GlobalLinear
#define N_BLOCKS 1
#define N_LAYERS 1
#define PE_NUM 32
#define LAYER_MAXIMIUM 0  // We need to indicate from which layer (main matrix) is the maximum score stored.

// Primitive Types
typedef ap_uint<2> char_t;  // Sequence Alphabet
typedef ap_fixed<16, 10> type_t;  // Scores Type <width, integer_width>
typedef short idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<2> tbp_t;  // Traceback Pointer Type

// Define Traceback Pointer Navigation Direction
#define TB_PH (tbp_t) 0b00
#define TB_LEFT (tbp_t) 0b01
#define TB_DIAG (tbp_t) 0b10
#define TB_UP (tbp_t) 0b11

// @deprecated Define Traceback Pointer Navigation Matrix, Not for Linear Kernels
// Put them here to let other functions defined in the frontend.cpp to compile
#define TB_IMAT (tbp_t) 0b0100  // Insertion Matrix
#define TB_DMAT (tbp_t) 0b1000  // Deletion Matrix

// Define Zero Value
#define zero_fp ((type_t)0)

#define ZERO_CHAR (char_t(0))

// Defien upper and lower bound for score type, aka type_t
#define INF 256
#define NINF -256

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/global_affine/"
#define DEBUG_FILENAME "debug_kernel"

// Custom Types Vital for Kernel Functioning
typedef hls::vector<type_t, N_LAYERS> init_col_score_block_t[MAX_QUERY_LENGTH];
typedef hls::vector<type_t, N_LAYERS> init_row_score_block_t[MAX_REFERENCE_LENGTH];
typedef tbp_t traceback_block_t[MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH];
typedef hls::vector<type_t, N_LAYERS> score_block_t[PE_NUM];  // TODO: Change name chunk scores
typedef hls::vector<type_t, N_LAYERS> chunk_col_scores_inf_t[PE_NUM+1];  // chunk column scores inflated
typedef tbp_t tbp_block_t[PE_NUM];
typedef char_t input_char_block_t[PE_NUM];
typedef hls::vector<type_t, N_LAYERS> dp_mem_block_t[PE_NUM+1][2];
typedef tbp_t tbp_chunk_block_t[PE_NUM][MAX_REFERENCE_LENGTH];
typedef hls::vector<type_t, N_LAYERS> score_vec_t;

struct ScorePack{  
    type_t score;
    idx_t row;
    idx_t col;

	// Default Constructor
    ScorePack() {
        score = 0;
        row = 0;
        col = 0;
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
#endif

// >>> GLOBAL_AFFINE params >>>
#ifdef ALIGN_GLOBAL_AFFINE

#define numofreads 1

#define MAX_QUERY_LENGTH 256
#define MAX_REFERENCE_LENGTH 256

#define ALIGN_TYPE GlobalAffine
#define N_BLOCKS 1
#define N_LAYERS 3
#define PE_NUM 32
#define LAYER_MAXIMIUM 1  // We need to indicate from which layer (main matrix) is the maximum score stored.

// Primitive Types
typedef ap_uint<2> char_t;  // Sequence Alphabet
typedef ap_fixed<16, 10> type_t;  // Scores Type <width, integer_width>
typedef short idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
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
#define AL_END (tbr_t) 0b00  // 0 stopping condition
#define AL_INS (tbr_t) 0b01  // 1 Align Insertion
#define AL_MMI (tbr_t) 0b10  // 2 Align Match/Mismatch
#define AL_DEL (tbr_t) 0b11  // 3 Align Deletion


// Defien upper and lower bound for score type, aka type_t
#define INF 256
#define NINF -256

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/global_affine/"
#define DEBUG_FILENAME "debug_kernel"

// Custom Types Vital for Kernel Functioning
typedef hls::vector<type_t, N_LAYERS> init_col_score_block_t[MAX_QUERY_LENGTH];
typedef hls::vector<type_t, N_LAYERS> init_row_score_block_t[MAX_REFERENCE_LENGTH];
typedef tbp_t traceback_block_t[MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH];
typedef hls::vector<type_t, N_LAYERS> score_block_t[PE_NUM];  // TODO: Change name chunk scores
typedef hls::vector<type_t, N_LAYERS> chunk_col_scores_inf_t[PE_NUM+1];  // chunk column scores inflated
typedef tbp_t tbp_block_t[PE_NUM];
typedef char_t input_char_block_t[PE_NUM];
typedef hls::vector<type_t, N_LAYERS> dp_mem_block_t[PE_NUM+1][2];
typedef tbp_t tbp_chunk_block_t[PE_NUM][MAX_REFERENCE_LENGTH];
typedef hls::vector<type_t, N_LAYERS> score_vec_t;

struct ScorePack{  
    type_t score;
    idx_t row;
    idx_t col;

	// Default Constructor
    ScorePack() {
        score = 0;
        row = 0;
        col = 0;
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

#define ZERO_CHAR (char_t(0))
#endif

// >>> DWP >>>
#ifdef ALIGN_DWP
#define numofreads 1

#define MAX_QUERY_LENGTH 256
#define MAX_REFERENCE_LENGTH 256

#define ALIGN_TYPE GlobalDTW
#define N_BLOCKS 1
#define N_LAYERS 1
#define PE_NUM 32
#define LAYER_MAXIMIUM 0  // We need to indicate from which layer (main matrix) is the maximum score stored.

// Primitive Types
typedef short num_t;  // in DTW need to use standard type
typedef std::complex<num_t> char_t;  // Sequence Alphabet
typedef ap_fixed<16,10> type_t;  // Scores Type <width, integer_width>
typedef ap_uint<8> idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<2> tbp_t;  // Traceback Pointer Type
typedef ap_uint<2> tbr_t;  // Traecback Result Type

// Define Traceback Pointer Navigation Direction
#define TB_PH (tbp_t) 0b00
#define TB_LEFT (tbp_t) 0b01
#define TB_DIAG (tbp_t) 0b10
#define TB_UP (tbp_t) 0b11

// @deprecated Define Traceback Pointer Navigation Matrix, Not for Linear Kernels
// Put them here to let other functions defined in the frontend.cpp to compile
#define TB_IMAT (tbp_t) 0b0100  // Insertion Matrix
#define TB_DMAT (tbp_t) 0b1000  // Deletion Matrix

// Define Zero Value
#define zero_fp ((type_t)0)
#define ZERO_CHAR (char_t(0,0))

// Define Traceback Result Representation
#define AL_END (tbr_t) 0b00  // 0 stopping condition
#define AL_INS (tbr_t) 0b01  // 1 Align Insertion
#define AL_MMI (tbr_t) 0b10  // 2 Align Match/Mismatch
#define AL_DEL (tbr_t) 0b11  // 3 Align Deletion


// Defien upper and lower bound for score type, aka type_t
#define INF 256
#define NINF -256

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/global_affine/"
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
    type_t score = 0;
    idx_t chunk_offset = 0;
    idx_t pe = 0; 
    idx_t pe_offset = 0;
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
#endif


// @deprecated Those are placed just for some functions under 
// development to compile. Will be removed in the future. Current 
// example kernels doesn't require them.  
#define linear_gap_penalty (type_t) (-2)
#define opening_score (type_t) -2
#define extend_score (type_t) -2
#define mismatch_score (type_t) (-1)
#define match_score (type_t) 3

#endif

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

// Define Traceback Navigation Values
typedef ap_uint<2> tbr_t;  // Traecback Result Type
#define AL_END (tbr_t) 0b00  // 0 stopping condition
#define AL_INS (tbr_t) 0b01  // 1 Align Insertion
#define AL_MMI (tbr_t) 0b10  // 2 Align Match/Mismatch
#define AL_DEL (tbr_t) 0b11  // 3 Align Deletion
