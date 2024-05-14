#pragma once


#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_vector.h>


#define MAX_QUERY_LENGTH 16
#define MAX_REFERENCE_LENGTH 16

#define ALIGN_TYPE OverlapLinearPrefixSuffix
#define N_BLOCKS 1
#define N_LAYERS 1
const int PE_NUM = 4;
#define LAYER_MAXIMIUM 0  // We need to indicate from which layer (main matrix) is the maximum score stored.

// Primitive Types
typedef ap_uint<2> char_t;  // Sequence Alphabet
typedef ap_fixed<16, 12> type_t;  // Scores Type <width, integer_width>
typedef short idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<2> tbp_t;  // Traceback Pointer Type

#define BANDING RECTANGULAR

// Define Zero Value
#define zero_fp ((type_t)0)
#define ZERO_CHAR (char_t(0))

// Defien upper and lower bound for score type, aka type_t
#define INF 1024
#define NINF -1024

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/global_affine/"
#define DEBUG_FILENAME "debug_kernel"

struct Penalties {
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
