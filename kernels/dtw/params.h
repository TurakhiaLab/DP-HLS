#pragma once

#include <ap_fixed.h>
#include <hls_vector.h>
#include <ap_int.h>

#define MAX_QUERY_LENGTH 256
#define MAX_REFERENCE_LENGTH 256

#define ALIGN_TYPE GlobalDTW
#define N_BLOCKS 8
#define N_LAYERS 1
#define PE_NUM 32
#define LAYER_MAXIMIUM 0  // We need to indicate from which layer (main matrix) is the maximum score stored.

#define BANDING RECTANGULAR

typedef ap_fixed<32, 26> num_t;


// Primitive Types
struct char_t_st {
    num_t real;
    num_t imag;

    // default constructor
    char_t_st() : real(0), imag(0) {}

    // Write a constructor
    char_t_st(num_t real, num_t imag) : real(real), imag(imag) {}
};

typedef char_t_st char_t;  // Sequence Alphabet

typedef ap_fixed<32,26> type_t;  // Scores Type <width, integer_width>
typedef short idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<2> tbp_t;  // Traceback Pointer Type

// Define Traceback Pointer Navigation Direction
#define TB_PH (tbp_t) 0b00
#define TB_LEFT (tbp_t) 0b01
#define TB_DIAG (tbp_t) 0b10
#define TB_UP (tbp_t) 0b11

// Define Zero Value
#define zero_fp ((type_t)0)
#define ZERO_CHAR (char_t({0,0}))

// Defien upper and lower bound for score type, aka type_t
#define INF 16777216
#define NINF -16777216

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/global_affine/"
#define DEBUG_FILENAME "debug_kernel"

struct Penalties {
    type_t linear_gap;
};

enum TB_STATE {
    MM = 0,   // Match/Mismatch
    INS = 1,  // Insertion
    DEL = 2,  // Deletion
    END = 3   // End
};
