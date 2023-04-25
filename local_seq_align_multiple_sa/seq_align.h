#ifndef SEQ_ALIGN_H
#define SEQ_ALIGN_H

#include <ap_shift_reg.h>
#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>

#include "PE.h"
#include "params.h"
#include "seq_align_multiple.h"

using namespace hls;

class SeqAlign {
public:
	void align(stream<ap_uint<2>, query_length> & query,
		stream<ap_uint<2>, ref_length> & reference,
		ap_shift_reg<ap_fixed<M, N>, 2> (&dp_mem)[PE_num],
		ap_shift_reg<ap_fixed<M, N>, 1> (&Ix_mem)[PE_num],
		ap_shift_reg<ap_fixed<M, N>, 1> (&Iy_mem)[PE_num],
		stream<ap_fixed<M, N>, ref_length>& last_pe_score,
		stream<ap_fixed<M, N>, ref_length>& last_pe_scoreIx,  // probabily have to make it declared within this block
		type_t &dummy);
};

#endif // !SEQ_ALIGN_H
