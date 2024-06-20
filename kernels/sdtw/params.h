/**
 * This is a version of DTW that tries to follow the design in SquiggleFilter. 
 * It has integer value as the input sequence, use L1 norm to calculate the difference, 
 * and have no traceback but output scoring. It's FindMax is the same as semiglobal alignment. 
 * It also doesn't have upper cell dependency. 
 * 
 */

#pragma once

#include <ap_fixed.h>
#include <hls_vector.h>
#include <ap_int.h>
#include <math.h>

/** 
 * Because there is not traceback, MAX_REFERENCE_LENGTH could be arbitarily long. 
 */

#define MAX_QUERY_LENGTH 500  // This is read length in SF
#define MAX_REFERENCE_LENGTH 60000  // This is Reference length in SF. 

// The default PE_NUM is 100. 

#define ALIGN_TYPE SDTW
#define N_BLOCKS 1
#define N_LAYERS 1
#define PE_NUM 100  // this is equivalent to the query_length in Squiggle Filter (they use query_length to means the number of PE, because they requires query_length as exactly 2000, which is also the number of PEs).
#define LAYER_MAXIMIUM 0  // We need to indicate from which layer (main matrix) is the maximum score stored.

#define BANDING RECTANGULAR

#define NO_TRACEBACK
#define SCORED

// we can't determine the score width untill we know the proper RMAX_REFERENCE_LENGTH
// const int sf_score_width = 10 + std::ceil(std::log2(MAX_REFERENCE_LENGTH));

typedef ap_uint<8> char_t;  // Sequence Alphabet
typedef ap_uint<64> type_t;  // FIXME
typedef short idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<2> tbp_t;  // Traceback Pointer Type

// Define Traceback Pointer Navigation Direction
#define TB_PH (tbp_t) 0b00
#define TB_LEFT (tbp_t) 0b01
#define TB_DIAG (tbp_t) 0b10
#define TB_UP (tbp_t) 0b11

// Define Zero Value
#define zero_fp ((type_t)0)
#define ZERO_CHAR (char_t(0))

// Defien upper and lower bound for score type, aka type_t
#define INF 16777216
#define NINF 0  // Because all the scores are non-negative, it make sense only if the NINF is 0. Assign negative score here result in underflow for type_t and incorrect alignment score. 

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/global_affine/"
#define DEBUG_FILENAME "debug_kernel"

struct Penalties { };  // function doesn't have penalty

enum TB_STATE {
    MM = 0,
};
