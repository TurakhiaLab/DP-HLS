#include "../../include/params.h"
#include "../../include/seq_align.h"
#include "../../include/PE.h"
#include "../../include/utils.h"
#include "initial.h"
#include <hls_stream.h>

using namespace hls;

void AlignLocalLinear::align(
	stream<char_t, MAX_QUERY_LENGTH>&query_stream,
	stream<char_t, MAX_REFERENCE_LENGTH>&reference_stream,
	const int query_length, const int reference_length,
	stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH>& traceback_out,
	InitialValues init_values) {

	type_t temp = 0;

	this->init(
		query_stream,
		reference_stream,
		query_length,
		reference_length,
		traceback_out,
		init_values
	);

	// iterating through the chunks of the larger dp matrix

kernel:
	for (int row_idx = 0, row_cnt=0; row_idx < query_length; row_idx += PE_NUM, row_cnt++) {
		for (int i = 0; i < PE_NUM; i++) {
			for (int j = 0; j < N_LAYERS; j++) {
				this->staging[i][j] = this->init_staging_score[this->init_left_brim_addr][j];
			}
			this->init_left_brim_addr++;
			
		}  // initialize very first column of a chunk


		
#ifdef DEBUG
		this->debug->collect("initial staging", this->staging, PE_NUM);  // ifdef debug
#endif

		this->compute_chunk(
			PE_NUM < query_length - row_idx ? PE_NUM : query_length - row_idx,
			reference_length,
			row_cnt
		);
	}

	//this->tracer.traceback(
	//	this->tbmat[],
	//	traceback_out,
	//	27,
	//	30
	//);

}

void AlignLocalLinear::compute_chunk(const int active_pe, const int row_length, int tb_idx) {
	char_t* reference_ptr = this->reference;
	addr_t last_row_r = 0;  // last row read
	addr_t last_row_w = 0;  // last row write

	this->dp_mem.clear();

	int pe_cnt[PE_NUM];
	for (int i = 0; i < PE_NUM; i++) { pe_cnt[i] = 0; }
	
	for (int i = 0; i < PE_NUM; i++) {  // populate the query
		this->local_query.shift_left(
			i < active_pe ? query[this->query_ptr++] : (char_t) 0);
	}  // This is where we actually needs the left shift operations

	for (int i = 0; i < active_pe + row_length - 1; i++) {

		
		this->dp_mem.shift_right(this->staging);  // initialize the DP-Mem to be 0
		
#ifdef DEBUG
		this->debug->collect("staging", this->staging, PE_NUM);  // ifdef debug
#endif

		if (i < active_pe) {  // set the predicate
			predicate.shift_right(true);
		}
		else if (i >= row_length) {
			predicate.shift_right(false);
		}

		this->local_reference.shift_right(  // sihft the local reference
			i < row_length ? *(reference_ptr++) : (char_t)0
		);



		// PE Loop
		this->PE_group[0].compute(
			this->local_query[0],
			this->local_reference[0],
			last_pe_score[last_row_r],  // FIXME! This is not correct, try to verify the correct pointer/reference
			this->dp_mem[0][0],
			i == 0 ? this->zero_fp_arr : last_pe_score[last_row_r-1],  // diagnoal
			this->staging[0],  // scores to write to the dp_mem
			this->tbmat[tb_idx][0][pe_cnt[0]++],
			predicate[0]
		);

		if (predicate[0]) last_row_r++;  // If read, update the pointer

		for (int pi = 1; pi < PE_NUM; pi++) {
			this->PE_group[pi].compute(
				this->local_query[pi],
				this->local_reference[pi],
				dp_mem[pi - 1][0],
				dp_mem[pi][0],
				dp_mem[pi - 1][1],
				this->staging[pi],
				this->tbmat[tb_idx][pi][pe_cnt[pi]++],
				predicate[pi]
			);
		}

#ifdef DEBUG
	// this->debug->collect("staging", this->staging, PE_NUM);  // ifdef debug
	// this->debug->collect("last_pe_score", this->last_pe_score, row_length);  // ifdef debug
	
#endif
		if (predicate[PE_NUM - 1]) { this->last_pe_score[last_row_w++] = this->staging[PE_NUM - 1]; }  // If write, update the pointer

	}
}

void AlignLocalLinear::init(
	stream<char_t, MAX_QUERY_LENGTH> & query_stream,
	stream<char_t, MAX_REFERENCE_LENGTH> & reference_stream,
	const int query_length, const int reference_length,
	stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH>& traceback_out,
	InitialValues init_values) {

#pragma HLS array_partition variable=staging type=complete

	// copy reference

		for (int i = 0; i < MAX_REFERENCE_LENGTH; i++) {
			this->reference[i] = reference_stream.read();
		}

		for (int l = 0; l < N_LAYERS; l++) {
			for (int i = 0; i < MAX_REFERENCE_LENGTH; i++) {
				// initialize last query
				this->last_pe_score[i][l] = init_values.init_ref_scr[i][l];
			}
		}
	

	// copy query

		for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
			this->query[i] = query_stream.read();  // copy query
			for (int j = 0; j < N_LAYERS; j++) {
				this->init_staging_score[i][j] = init_values.init_qry_scr[i][j];
			}
		}
	
		
	this->query_ptr = 0;

#ifdef DEBUG

	for (int i = 0; i < PE_NUM; i++) { this->PE_group[i].score = &this->debug->data.score[i];}
	for (int i = 0; i < MAX_QUERY_LENGTH; i++) {this->debug->data.query.push_back(this->query[i]);}
	for (int i = 0; i < MAX_REFERENCE_LENGTH; i++) { this->debug->data.ref.push_back(this->reference[i]); }
#endif // DEBUG
	
}
