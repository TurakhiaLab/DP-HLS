#ifndef SEQ_ALIGN_H
#define SEQ_ALIGN_H


#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>

#include "PE.h"
#include "params.h"
#include "seq_align_multiple.h"

using namespace hls;

class SeqAlign {
public:
	void align(stream<ap_uint<2>, query_length>& query_stream, stream<ap_uint<2>, ref_length>& reference_stream, type_t& dummy);
};

#endif // !SEQ_ALIGN_H
