#ifndef TRACEBACK_H
#define TRACEBACK_H

#include "params.h"
#include <hls_stream.h>
#include <hls_vector.h>

#ifdef DEBUG
#include "debug.h"
#endif // DEBUG


using namespace hls;

class TraceBack {
public:
    

    TraceBack(){
// #pragma HLS ARRAY_PARTITION variable=input_ptr factor=32 dim=0 type=complete
// #pragma HLS ARRAY_PARTITION variable=tb_matrix factor = 32 dim=2 type=cyclic
// #pragma HLS aggregate variable=tb_matrix compact=auto
// #pragma HLS bind_storage variable=tb_matrix type=RAM_1P impl=bram
    }

    int traceback(
        hls::vector<tbp_t, N_LAYERS> tbmat[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH],
        tbp_t (&traceback_out)[MAX_REFERENCE_LENGTH+MAX_QUERY_LENGTH],
        const int max_layer, const int max_row, const int max_col);

#ifdef DEBUG
    Debugger* debugger;
#endif // DEBUG

};

#endif