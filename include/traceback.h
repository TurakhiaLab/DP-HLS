#ifndef TRACEBACK_H
#define TRACEBACK_H

#include "params.h"
#include <hls_stream.h>

using namespace hls;

class TraceBack {
public:
    tbp_t tb_matrix[PE_num][max_reference_length*max_query_length/PE_num];
    int input_ptr[PE_num];

    TraceBack(){
#pragma HLS ARRAY_PARTITION variable=input_ptr factor=32 dim=0 type=complete
#pragma HLS ARRAY_PARTITION variable=tb_matrix factor = 32 dim=2 type=cyclic
#pragma HLS aggregate variable=tb_matrix compact=auto
#pragma HLS bind_storage variable=tb_matrix type=RAM_1P impl=bram
    }

    void set_ptr(tbp_t ptr, int pe_idx);
    int traceback(stream<tbp_t, max_reference_length+max_query_length> &tb_stream, int max_row, int max_col);  // FIXME: THIS COULD BE IMPLEMENTED WITH A STREAM

};

#endif