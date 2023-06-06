#ifndef TRACEBACK_H
#define TRACEBACK_H

#include "params.h"
#include <hls_stream.h>

using namespace hls;

class TraceBack {
public:
    

    TraceBack(){
#pragma HLS ARRAY_PARTITION variable=input_ptr factor=32 dim=0 type=complete
#pragma HLS ARRAY_PARTITION variable=tb_matrix factor = 32 dim=2 type=cyclic
#pragma HLS aggregate variable=tb_matrix compact=auto
#pragma HLS bind_storage variable=tb_matrix type=RAM_1P impl=bram
    }

    int traceback(
        tbp_t tbmat[MAX_QUERY_LENGTH/PE_NUM][PE_NUM][MAX_REFERENCE_LENGTH],
        stream<tbp_t, MAX_REFERENCE_LENGTH+MAX_QUERY_LENGTH> &tb_stream, 
        int max_row, int max_col);
};

#endif