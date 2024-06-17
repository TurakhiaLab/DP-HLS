#ifndef PARAMS_H
#define PARAMS_H

#include <ap_fixed.h>
#include <hls_vector.h>
#include <ap_int.h>

#define MAX_QUERY_LENGTH 256
#define MAX_REFERENCE_LENGTH 256
#define N_BLOCKS 1
#define PE_NUM 8

#define ALIGN_TYPE Viterbi
#define N_LAYERS 3
#define LAYER_MAXIMIUM 1  // We need to indicate from which layer (main matrix) is the maximum score stored.

#define BANDING RECTANGULAR
#define NO_TRACEBACK
#define SCORED

// Primitive Types
typedef ap_fixed<48, 22> type_t;  // Scores Type <width, integer_width>
typedef ap_uint<2> char_t;  // Sequence Alphabet
typedef ap_int<16> idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<4> tbp_t;  // Traceback Pointer Type

// Defien upper and lower bound for score type, aka type_t
#define INF 1048576
#define NINF -1048576

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/global_affine/"

// Define Traceback Pointer Navigation Direction
#define TB_PH (tbp_t) 0b0000
#define TB_LEFT (tbp_t) 0b0001
#define TB_DIAG (tbp_t) 0b0010
#define TB_UP (tbp_t) 0b0011

// Define Traceback Pointer Navigation Matrix
#define TB_IMAT (tbp_t) 0b0100  // Insertion Matrix
#define TB_JMAT (tbp_t) 0b1000  // Deletion Matrix

struct Penalties {
    type_t log_1_m_2_lambda;
    type_t log_mu;
    type_t log_lambda;
    type_t log_1_m_mu;
    type_t transition[5][5];
};

enum TB_STATE {
    MM = 0,   // Match/Mismatch
    INS = 1,  // Insertion
    DEL = 2,  // Deletion
    END = 3   // End
};

#define ZERO_CHAR (char_t(0))
#define zero_fp ((type_t)0)

#endif