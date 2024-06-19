#ifndef PARAMS_H
#define PARAMS_H

#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_vector.h>

#define MAX_QUERY_LENGTH 256
#define MAX_REFERENCE_LENGTH 256

#define BANDING RECTANGULAR

#define LOCAL_TRANSITION_MATRIX
#define TRANSITION_MATRIX_SIZE 20

#define ALIGN_TYPE ProteinLocalAffine
#define N_BLOCKS 1
#define N_LAYERS 3
#define PE_NUM 32
#define LAYER_MAXIMIUM 1  // We need to indicate from which layer (main matrix) is the maximum score stored.

// Primitive Types
typedef ap_uint<5> char_t;  // Sequence Alphabet, 5 bits for 20 amino acids
typedef ap_fixed<16, 12> type_t;  // Scores Type <width, integer_width>
typedef short idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<4> tbp_t;  // Traceback Pointer Type

// Define Zero Value
#define zero_fp ((type_t)0)
#define ZERO_CHAR (char_t(0))

// Defien upper and lower bound for score type, aka type_t
#define INF 1024
#define NINF -1024

// Legacy Debugger Configuration
#define DEBUG_OUTPUT_PATH "/home/yic033@AD.UCSD.EDU/DP-HLS-Debug/local_affine/"
#define DEBUG_FILENAME "debug_kernel"

#define TB_PH (tbp_t) 0b00
#define TB_LEFT (tbp_t) 0b01
#define TB_DIAG (tbp_t) 0b10
#define TB_UP (tbp_t) 0b11

#define TB_IMAT (tbp_t) 0b0100  // Insertion Matrix
#define TB_DMAT (tbp_t) 0b1000  // Deletion Matrix


struct Penalties {
    type_t open;
    type_t extend;
};

enum TB_STATE {
    MM = 0,   // Match/Mismatch
    INS = 1,  // Insertion
    DEL = 2,  // Deletion
    END = 3   // End
};


#endif