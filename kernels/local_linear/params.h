#pragma once


#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_vector.h>


#define MAX_QUERY_LENGTH 256
#define MAX_REFERENCE_LENGTH 256

#define ALIGN_TYPE LocalLinear
#define N_BLOCKS 1
#define N_LAYERS 1
const int PE_NUM = 8;
#define LAYER_MAXIMIUM 0  // We need to indicate from which layer (main matrix) is the maximum score stored.

#define BANDING RECTANGULAR

// Primitive Types
typedef ap_uint<2> char_t;  // Sequence Alphabet
typedef ap_fixed<16, 10> type_t;  // Scores Type <width, integer_width>
typedef short idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<2> tbp_t;  // Traceback Pointer Type

// Define Zero Value
#define zero_fp ((type_t)0)
#define ZERO_CHAR (char_t(0))

// Defien upper and lower bound for score type, aka type_t
#define INF 1024
#define NINF -1024

struct Penalties {
    type_t mismatch;
    type_t match;
    type_t linear_gap;
};

enum TB_STATE {
    MM = 0
};

// Traceback pointer values
#define TB_END (tbp_t) 0b00
#define TB_LEFT (tbp_t) 0b01
#define TB_DIAG (tbp_t) 0b10
#define TB_UP (tbp_t) 0b11
