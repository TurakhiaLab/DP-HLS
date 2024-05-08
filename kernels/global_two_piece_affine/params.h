#ifndef PARAMS_H
#define PARAMS_H

#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_vector.h>

// These need to be there to do CMake Simulation, but SHOULD TAKE OFF WHEN COMPIING BITSTREAM
#define PRAGMA_PE_NUM 16
#define MAX_QUERY_LENGTH 256
#define MAX_REFERENCE_LENGTH 256
#define N_BLOCKS 1
const int PE_NUM = PRAGMA_PE_NUM;

#define ALIGN_TYPE GlobalTwoPieceAffine
#define N_LAYERS 5
#define LAYER_MAXIMIUM 1  // We need to indicate from which layer (main matrix) is the maximum score stored.

#define BANDING Rectangular

//#define THRESHOLD 5 // this needs to be less than the query and reference length

// Primitive Types
typedef ap_uint<2> char_t;  // Sequence Alphabet
typedef ap_fixed<16, 12> type_t;  // Scores Type <width, integer_width>
typedef short idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<5> tbp_t;  // Traceback Pointer Type

// Bit 0, 1, 2: specify which of H, I, I', D, D' matrices to go to
// Bit 4, 5: specify which movement for I, I', D, D'

// Defien upper and lower bound for score type, aka type_t
#define INF 1024
#define NINF -1024

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/global_affine/"
#define DEBUG_FILENAME "debug_kernel"

struct Penalties {
    type_t open;
    type_t extend;
    type_t mismatch;
    type_t match;
    type_t linear_gap;
    type_t long_open;
    type_t long_extend;
};

enum TB_STATE {
    MM = 0,   // Match/Mismatch
    INS = 1,  // Insertion
    DEL = 2,  // Deletion
    END = 3,   // End
    LONG_INS = 4, // Long Insertion
    LONG_DEL = 5 // Long Deletion
};

#define ZERO_CHAR (char_t(0))
#define zero_fp ((type_t)0)


// Define Traceback Pointer Origin (H - Main, I, I', D, D')
#define TB_MAIN (tbp_t) 0b000
#define TB_INSERT (tbp_t) 0b001
#define TB_LONG_INSERT (tbp_t) 0b010
#define TB_DELETE (tbp_t) 0b011
#define TB_LONG_DELETE (tbp_t) 0b100

// Define Traceback Pointer Navigation Matrix
#define TB_IMAT (tbp_t) 0b00000  // Insertion Matrix
#define TB_DMAT (tbp_t) 0b01000  // Deletion Matrix
#define TB_LIMAT (tbp_t) 0b10000 // Long Insertion Matrix
#define TB_LDMAT (tbp_t) 0b11000 // Long Deletion Matrix


#endif
