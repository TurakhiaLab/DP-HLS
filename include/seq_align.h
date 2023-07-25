#ifndef SEQ_ALIGN_H
#define SEQ_ALIGN_H


#include <hls_stream.h>
#include <ap_int.h>

#include "PE.h"
#include "params.h"
#include "seq_align_multiple.h"
#include "initial.h"
#include <hls_vector.h>
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

class Align {
	/*
	I was thinking of another way of implementing the shift register for local reference and query, which is to use
	an array of pointer to them. Incrementing the pointers can be easy with vitis hls vector library. 
	*/
public:
	// declear them here so don't need to pass them as function arguments


	// an 3d array is enough to do store the traceback. 
	ShiftRegister<char_t, PE_NUM> local_reference;
	ShiftRegister<char_t, PE_NUM> local_query;

	idx_t query_ptr = 0;
	idx_t init_left_brim_addr = 0;

	char_t reference[MAX_REFERENCE_LENGTH];
	char_t query[MAX_QUERY_LENGTH];
	hls::vector<type_t, N_LAYERS> last_pe_score[MAX_REFERENCE_LENGTH];
	hls::vector<type_t, N_LAYERS>  init_staging_score[MAX_QUERY_LENGTH];

	PE PE_group[PE_NUM];
	ShiftRegister<bool, PE_NUM> predicate;

	ShiftRegisterBlock<hls::vector<type_t, N_LAYERS>, PE_NUM, 2> dp_mem;

	hls::vector<tbp_t, N_LAYERS> tbmat[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH];  // NOTE the corner case

	TraceBack tracer;

	hls::vector<type_t, N_LAYERS>  zero_fp_arr = (type_t) 0;
	

#ifdef DEBUG
	Debugger *debug;
#endif // DEBUG

	void align(  // distribute task and top level wrapper
		stream<char_t, MAX_QUERY_LENGTH>&query_stream,
		stream<char_t, MAX_REFERENCE_LENGTH>&reference_stream,
		stream<hls::vector<type_t, N_LAYERS>, MAX_QUERY_LENGTH> &init_qry_scr,
		stream<hls::vector<type_t, N_LAYERS>, MAX_REFERENCE_LENGTH> &init_ref_scr,
		int query_length, int reference_length,		
        stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH> &traceback_out
		);

	void compute_chunk(const int pred_length, const int read_length, int tb_idx);

	void init(
		stream<char_t, MAX_QUERY_LENGTH>&query_stream,
		stream<char_t, MAX_REFERENCE_LENGTH>&reference_stream,
		stream<hls::vector<type_t, N_LAYERS>, MAX_QUERY_LENGTH> &init_qry_scr,
		stream<hls::vector<type_t, N_LAYERS>, MAX_REFERENCE_LENGTH> &init_ref_scr,
		const int query_length, const int reference_length,
		stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH>& traceback_out
		);

private:
	hls::vector<type_t, N_LAYERS>  staging[PE_NUM];

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
