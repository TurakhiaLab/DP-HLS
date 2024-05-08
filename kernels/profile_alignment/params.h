#ifndef PARAMS_H
#define PARAMS_H

#include <ap_fixed.h>
#include <hls_vector.h>
#include <ap_int.h>

#define MAX_QUERY_LENGTH 1024
#define MAX_REFERENCE_LENGTH 1024
#define N_BLOCKS 1
const int PE_NUM = 32;

#define ALIGN_TYPE Profile
#define N_LAYERS 1
#define LAYER_MAXIMIUM 0  // We need to indicate from which layer (main matrix) is the maximum score stored.

#define BANDING Rectangular

// Primitive Types
typedef ap_fixed<32, 24> type_t;  // Scores Type <width, integer_width>
typedef hls::vector<ap_uint<8>, 5> char_t;  // Sequence Alphabet
typedef short idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<2> tbp_t;  // Traceback Pointer Type

// Defien upper and lower bound for score type, aka type_t
#define INF 256
#define NINF -256

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/global_affine/"
#define DEBUG_FILENAME "debug_kernel"


// Define Traceback Pointer Values
#define TB_PH (tbp_t) 0b00
#define TB_LEFT (tbp_t) 0b01
#define TB_DIAG (tbp_t) 0b10
#define TB_UP (tbp_t) 0b11


struct Penalties {
    type_t transition[5][5];
    type_t linear_gap;
};

enum TB_STATE {
    MM = 0,   // Match/Mismatch
    INS = 1,  // Insertion
    DEL = 2,  // Deletion
    END = 3   // End
};

#define ZERO_CHAR (char_t({0,0,0,0,0}))
#define zero_fp ((type_t)0)

#endif