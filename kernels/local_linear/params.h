#pragma once

#include <ap_fixed.h>
#include <hls_vector.h>
#include <ap_int.h>

#define MAX_QUERY_LENGTH 256
#define MAX_REFERENCE_LENGTH 256

#define PE_NUM 32

#define numofreads 1

#define corner_case (MAX_QUERY_LENGTH%PE_NUM != 0)
#define query_chunks (MAX_QUERY_LENGTH/PE_NUM)
#define extra_pe_num (MAX_QUERY_LENGTH%PE_NUM)

// if user decides to use banding
//#define BANDED
#ifdef BANDED
#define FIXED_BANDWIDTH 4
#endif

#define ALIGN_TYPE Linear

#define WS 16  
#define IS 6 

// integer bits represent the pointer, always 2
// fraction bits represent the layer
#define WT 3  // 2 bits direction pointer
#define IT WT-2  // 1 bit represents layer

//#define DEBUG
#define N_BLOCKS 1


typedef ap_uint<3> char_t;  // type of sequence characters
typedef ap_fixed<WS, IS> type_t;  // score matrix score type
typedef ap_uint<16> idx_t; // define an address type to resolve the pointer to pointer problems
typedef ap_ufixed<WT, IT> tbp_t;  // traceback pointer type
typedef ap_ufixed<2, 0> tbp_dir_t;  // direction bits type for traceback pointer
typedef ap_uint<4> chunk_idx_t;  // chunk index type


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

#define N_LAYERS 1

#define LAYER_MAXIMIUM 0

struct ScorePack{  
    type_t score  = 0;
    idx_t chunk_offset = 0;
    idx_t pe = 0;
    idx_t pe_offset = 0;
    idx_t layer = 0;
};
