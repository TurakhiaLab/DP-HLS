#ifndef SEQ_ALIGN_H
#define SEQ_ALIGN_H


#include <hls_stream.h>
#include <ap_int.h>

#include "PE.h"
#include "params.h"
#include "seq_align_multiple.h"

using namespace hls;

class SeqAlign {
public:
	void align(stream<ap_uint<2>, query_length>& query_stream, stream<ap_uint<2>, ref_length>& reference_stream, stream<tbp_t, ref_length + query_length> &tb_stream, type_t& dummy);
};

class AlignGlobalLinear : SeqAlign {
public:
	void align(hls::stream<char_t, query_length> &query_stream, hls::stream<char_t, ref_length> &reference_stream, type_t *dummy);
};

class AlignGlobalAffine : SeqAlign {
public:
	void align(hls::stream<char_t, query_length> &query_stream, hls::stream<char_t, ref_length> &reference_stream, type_t *dummy);
};

class AlignLocalLinear : SeqAlign {
public:
	void align(hls::stream<char_t, query_length> &query_stream, hls::stream<char_t, ref_length> &reference_stream, type_t *dummy);
};

class AlignLocalAffine : SeqAlign {
public:
	void align(hls::stream<char_t, query_length> &query_stream, hls::stream<char_t, ref_length> &reference_stream, type_t *dummy);
};

// >>> Banded kernel not fully implemented yet >>> 
// class AlignBanded : SeqAlign {
// public:
// 	void align(hls::stream<char_t, query_length> &query_stream, hls::stream<char_t, ref_length> &reference_stream, type_t *dummy);
// };


#endif // !SEQ_ALIGN_H
