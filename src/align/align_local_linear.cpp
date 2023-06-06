#include "params.h"
#include "seq_align.h"
#include "PE.h"
#include "utils.h"

#include <hls_stream.h>

using namespace hls;

void AlignLocalLinear::align(
	stream<char_t, MAX_QUERY_LENGTH>& query_stream,
	stream<char_t, MAX_REFERENCE_LENGTH>& reference_stream,
	const int query_length, const int reference_length,
	stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH>& traceback_out,
	type_t* dummy) {

	type_t temp = 0;

	this->init(
		query_stream,
		reference_stream,
		query_length,
		reference_length,
		traceback_out,
		dummy
	);

	// iterating through the chunks of the larger dp matrix

kernel:
	for (int row_idx = 0, row_cnt=0; row_idx < query_length; row_idx += PE_NUM, row_cnt++) {
		for (int i = 0; i < PE_NUM; i++) {this->staging[i] = zero_fp;}
		
		this->compute_chunk(
			PE_NUM < query_length - row_idx ? PE_NUM : query_length - row_idx,
			reference_length,
			row_cnt
		);
	}

	this->tracer.traceback(
		this->tbmat,
		traceback_out,
		27,
		30
	);

}

void AlignLocalLinear::compute_chunk(const int active_pe, const int row_length, int tb_idx) {
	char_t* reference_ptr = this->reference;
	type_t* last_row_r = this->last_pe_score;  // last row read
	type_t* last_row_w = this->last_pe_score;  // last row write

	int pe_cnt[PE_NUM];
	for (int i = 0; i < PE_NUM; i++) { pe_cnt[i] = 0; }
	
	for (int i = 0; i < PE_NUM; i++) {
		this->local_query.shift_left(
			i < active_pe ? *this->query_ptr++ : (char_t) 0);
	}  // This is where we actually needs the left shift operations

	for (int i = 0; i < active_pe + row_length - 1; i++) {
		this->dp_mem.shift_right(this->staging);  // initialize the DP-Mem to be 0

		if (i < active_pe) {
			predicate.shift_right(true);
		}
		else if (i > row_length) {
			predicate.shift_right(false);
		}

		this->local_reference.shift_right(
			i < row_length ? *(reference_ptr++) : (char_t)0
		);

		// PE Loop
		this->PE_group[0].compute(
			this->local_query[0],
			this->local_reference[0],
			*last_row_r,
			this->dp_mem[0][0],
			i == 0 ? zero_fp : *(last_row_r-1),
			&(this->staging[0]),
			&this->tbmat[tb_idx][0][pe_cnt[0]++],
			predicate[0]
		);

		if (predicate[0]) last_row_r++;

		for (int pi = 1; pi < PE_NUM; pi++) {
			this->PE_group[pi].compute(
				this->local_query[pi],
				this->local_reference[pi],
				dp_mem[pi - 1][0],
				dp_mem[pi][0],
				dp_mem[pi - 1][1],
				&this->staging[pi],
				&this->tbmat[tb_idx][pi][pe_cnt[pi]++],
				predicate[pi]
			);
		}

		this->debug->collect("staging", this->staging, PE_NUM);  // ifdef debug

		if (predicate[PE_NUM - 1]) { *(last_row_w++) = this->staging[PE_NUM - 1]; }

	}
}

void AlignLocalLinear::init(
	stream<char_t, MAX_QUERY_LENGTH>& query_stream,
	stream<char_t, MAX_REFERENCE_LENGTH>& reference_stream,
	const int query_length, const int reference_length,
	stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH>& traceback_out,
	type_t* dummy) {

#pragma HLS array_partition variable=staging type=complete

	// init tbmat
	for (int i = 0; i < MAX_QUERY_LENGTH / PE_NUM; i++) {
		for (int j = 0; j < PE_NUM; j++) {
			for (int k = 0; k < MAX_REFERENCE_LENGTH; k++) {
				this->tbmat[i][j][k] = TB_PH;
			}
		}
	}

	// copy reference
	for (int i = 0; i < MAX_REFERENCE_LENGTH; i++) {
		this->reference[i] = reference_stream.read();

		// initialize last query
		this->last_pe_score[i] = zero_fp;

	}
	// copy query
	for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
		this->query[i] = query_stream.read();  // prevent data left in FIFO causing simulation hang
	}

	//utils::Initial<type_t>::fill(this->staging, (int) zero_fp, PE_NUM);

	this->query_ptr = this->query;

#ifdef DEBUG
	for (int i = 0; i < PE_NUM; i++) { this->PE_group[i].score = &this->debug->data.score[i];}
	for (int i = 0; i < MAX_QUERY_LENGTH; i++) {this->debug->data.query.push_back(this->query[i]);}
	for (int i = 0; i < MAX_REFERENCE_LENGTH; i++) { this->debug->data.ref.push_back(this->reference[i]); }
#endif // DEBUG
	
}
