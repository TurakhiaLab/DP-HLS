//function prototype
#include <gmp.h>
#define __gmp_const const
#include "params.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include "hls_stream.h"

using namespace hls;

//typedef ap_fixed<M,N> type_t;  // alias type_t with ap_fixed<M,N>
typedef int type_t;
typedef ap_uint<2> type_char; //modify it to char if you want to print the nucleotide sequence
//typedef ap_int<16> type_t;

extern void seq_align_multiple(hls::stream<type_char, query_length> (&query_stream)[N_BLOCKS],
                               hls::stream<type_char, ref_length> (&reference_string_comp) [N_BLOCKS],
                               type_t *dummies);
