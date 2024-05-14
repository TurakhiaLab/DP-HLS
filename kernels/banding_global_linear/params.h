#pragma once

#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_vector.h>

#define MAX_QUERY_LENGTH 16
#define MAX_REFERENCE_LENGTH 16

#define INPUT_QUERY_LENGTH 14
#define INPUT_REFERENCE_LENGTH 15

#define ALIGN_TYPE BandingGlobalLinear
#define N_BLOCKS 1
#define N_LAYERS 1
const int PE_NUM = 2;
#define LAYER_MAXIMIUM 0  // We need to indicate from which layer (main matrix) is the maximum score stored.

#define BANDING FIXED
#define BANDWIDTH 3

// Primitive Types
typedef ap_uint<2> char_t;  // Sequence Alphabet
typedef ap_fixed<16, 12> type_t;  // Scores Type <width, integer_width>
typedef short idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<2> tbp_t;  // Traceback Pointer Type

// Define Zero Value
#define zero_fp ((type_t)0)
#define ZERO_CHAR (char_t(0))

// Defien upper and lower bound for score type, aka type_t
#define INF 1024
#define NINF -1024

#define TB_PH (tbp_t) 0b00
#define TB_LEFT (tbp_t) 0b01
#define TB_DIAG (tbp_t) 0b10
#define TB_UP (tbp_t) 0b11

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_FILE "/home/centos/workspace/banding/DP-HLS/banding_global_linear_out.txt"

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

template <int N>
char tbp_to_char(tbp_t tbp) {
    if (tbp == TB_LEFT){
        return 'L'; 
    }
    else if (tbp == TB_UP){
        return 'U';
    }
    else if (tbp == TB_DIAG){
        return 'D';
    }
    else if (tbp == TB_PH){
        return 'H';
    }
    else{
        return 'X';
    }
};