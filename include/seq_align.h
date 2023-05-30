#ifndef SEQ_ALIGN_H
#define SEQ_ALIGN_H


#include <hls_stream.h>
#include <ap_int.h>

#include "PE.h"
#include "params.h"
#include "seq_align_multiple.h"

#ifdef DEBUG
#include "debug.h"
#endif // DEBUG


using namespace hls;

//class SeqAlign {
//public:
//	void align(stream<ap_uint<2>, query_length>& query_stream, stream<ap_uint<2>, ref_length>& reference_stream, stream<tbp_t, ref_length + query_length> &tb_stream, type_t& dummy);
//};
//
//class AlignGlobalLinear : SeqAlign {
//public:
//	void align(hls::stream<char_t, query_length> &query_stream, hls::stream<char_t, ref_length> &reference_stream, type_t *dummy);
//};
//
//class AlignGlobalAffine : SeqAlign {
//public:
//	void align(hls::stream<char_t, query_length> &query_stream, hls::stream<char_t, ref_length> &reference_stream, type_t *dummy);
//};

class AlignLocalLinear {
public:
	void align(  // distribute task
		stream<char_t, max_query_length> &query_stream,
        stream<char_t, max_reference_length> &reference_stream,
		int query_length, int reference_length,		
        stream<tbp_t, max_reference_length + max_query_length> &traceback_out,
#ifdef DEBUG
		Debugger &helper,
#endif
        type_t *dummy);

	void compute_chunk(  // compute a chunk
		PELocalLinear pes[PE_num],
		ShiftRegister<char_t, PE_num> &query,
		ShiftRegister<char_t, PE_num + chunk_width> &reference,  // I can just read the very first several elements
		ShiftRegister<type_t, PE_num + chunk_width> &last_row_score,
		ShiftRegisterBlock<type_t, PE_num, 2> &dp_mem, 
		TraceBack &tracer);

private:
	type_t staging[PE_num];
};

//class AlignLocalAffine : SeqAlign {
//public:
//	void align(
//		stream<char_t, max_query_length> &query_stream, 
//		stream<char_t, max_reference_length> &reference_stream,
//		type_t *dummy);
//};

// >>> Banded kernel not fully implemented yet >>> 
// class AlignBanded : SeqAlign {
// public:
// 	void align(hls::stream<char_t, query_length> &query_stream, hls::stream<char_t, ref_length> &reference_stream, type_t *dummy);
// };


#endif // !SEQ_ALIGN_H
