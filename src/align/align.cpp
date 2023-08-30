#include "../../include/params.h"
#include "../../include/seq_align.h"
#include "../../include/PE.h"
#include "../../include/utils.h"
#include "../../include/initial.h"
#include <hls_task.h>
#include <hls_stream.h>
#include "trivial.h"
#include <hls_streamofblocks.h>


using namespace hls;


void Align::align(
	BlockInputs inputs,
	tbp_t (&traceback_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH])
{

	/*
	 * hls::stream<char_t, MAX_QUERY_LENGTH>&query_stream,
				hls::stream<char_t, MAX_REFERENCE_LENGTH>&reference_stream,
				hls::stream<hls::vector<type_t, N_LAYERS>, MAX_QUERY_LENGTH> &init_qry_scr,
				hls::stream<hls::vector<type_t, N_LAYERS>, MAX_REFERENCE_LENGTH> &init_ref_scr,
				int query_length, int reference_length,
	 */

#pragma HLS array_partition variable = staging type = complete
#pragma HLS array_partition variable = this->tbmat dim = 1 type = cyclic factor = PE_NUM
#pragma HLS array_partition variable = this->predicate dim = 1 type = complete
#pragma HLS array_partition variable = this->local_reference dim = 1 type = complete
#pragma HLS array_partition variable = this->local_query dim = 1 type = complete
#pragma HLS array_partition variable = this->last_pe_score type = complete
#pragma HLS array_partition variable = this->dp_mem type = complete

#pragma HLS bind_storage variable = this->tbmat type = RAM_1WNR impl = BRAM

	// #pragma HLS bind_storage variable = this->local_reference type = RAM_1WNR impl = LUTRAM
	// #pragma HLS bind_storage variable = this->local_query type = RAM_1WNR impl = LUTRAM
	//// #pragma HLS bind_storage variable = this->last_pe_score type = RAM_1WNR impl = LUTRAM
	// #pragma HLS bind_storage variable = this->dp_mem type = RAM_1WNR impl = LUTRAM

	int query_length = inputs.query_length;
	int reference_length = inputs.reference_length;
	this->query_ptr = 0;

	// iterating through the chunks of the larger dp matrix

kernel:
	for (int row_idx = 0; row_idx < query_length; row_idx += PE_NUM)
	{
	left_brim_init:
		for (int i = 0; i < PE_NUM; i++)
		{
			this->staging[i] = this->init_staging_score[this->init_left_brim_addr++];

		} // initialize very first column of a chunk

#ifdef DEBUG
		this->debug->collect("initial staging", this->staging, PE_NUM); // ifdef debug
#endif

		this->compute_chunk(
			PE_NUM < query_length - row_idx ? PE_NUM : query_length - row_idx,
			reference_length,
			row_idx);
	}

	this->tracer.traceback(
		this->tbmat,
		traceback_out,
		TB_START_LEVEL,
		TB_START_ROW,
		TB_START_COL);
}

void Align::compute_chunk(const int active_pe, const int row_length, int tb_idx)
{
	char_t *reference_ptr = this->reference;
	idx_t last_row_r = 0; // last row read
	idx_t last_row_w = 0; // last row write

	this->dp_mem.clear();

	int pe_cnt[PE_NUM];
#pragma HLS ARRAY_PARTITION variable = pe_cnt type = complete

init_pe_cnt:
	for (int i = 0; i < PE_NUM; i++)
	{
#pragma HLS unroll
		pe_cnt[i] = 0;
	}

qry_populate:
	for (int i = 0; i < PE_NUM; i++)
	{
		this->local_query.shift_left(
			i < active_pe ? query[this->query_ptr++] : (char_t)0);
	} // This is where we actually needs the left shift operations

wavefronts:
	for (int i = 0; i < active_pe + row_length - 1; i++)
	{
#pragma HLS pipeline II = 1
		// #pragma HLS dependence variable = this->last_pe_score type = inter dependent = false
		// #pragma HLS dependence variable = this->PE_group type = intra dependent = false
		this->dp_mem.shift_right(this->staging); // initialize the DP-Mem to be 0

#ifdef DEBUG
		this->debug->collect("staging", this->staging, PE_NUM); // ifdef debug
#endif

		if (i < active_pe)
		{ // set the predicate
			predicate.shift_right(true);
		}
		else if (i >= row_length)
		{
			predicate.shift_right(false);
		}

		this->local_reference.shift_right( // sihft the local reference
			i < row_length ? *(reference_ptr++) : (char_t)0);

		// Process_PE_Expand:
		// pe_wrap(
		//         PE_group, this->local_query,
		//         this->local_reference, this->last_pe_score, this->dp_mem, i, last_row_r,
		//         tb_idx, pe_cnt, this->staging, this->tbmat, predicate
		// );



	Single_PE_0:
		PE_group[0].compute(
			local_query[0],
			local_reference[0],
			last_pe_score[last_row_r],
			dp_mem[0][0],
			i == 0 ? zero_fp_arr : last_pe_score[last_row_r - 1], // diagnoal
			staging[0],											  // scores to write to the dp_mem
			tbmat[tb_idx + 0][pe_cnt[0]],
			predicate[0]);



	PE_Expand_Loop:
		for (int pi = 1; pi < PE_NUM; pi++)
		{
#pragma HLS unroll
			// #pragma HLS dependence variable = PE_group type = inter dependent = false
			PE_group[pi].compute(
				local_query[pi],
				local_reference[pi],
				dp_mem[pi - 1][0],
				dp_mem[pi][0],
				dp_mem[pi - 1][1],
				staging[pi],
				tbmat[tb_idx + pi][pe_cnt[pi]],
				predicate[pi]);
		}

		if (predicate[0])
			last_row_r++; // If read, update the pointer

		for (int pi = 0; pi < PE_NUM; pi++)
		{
#pragma HLS unroll
			if (predicate[pi])
				pe_cnt[pi]++;
		}

#ifdef DEBUG
		// this->debug->collect("staging", this->staging, PE_NUM);  // ifdef debug
		// this->debug->collect("last_pe_score", this->last_pe_score, row_length);  // ifdef debug
#endif
		if (predicate[PE_NUM - 1])
		{
			this->last_pe_score[last_row_w++] = this->staging[PE_NUM - 1];
		} // If write, update the pointer
	}
}

Align::Align(char_t (&query)[MAX_QUERY_LENGTH], char_t (&reference)[MAX_REFERENCE_LENGTH],
			 hls::vector<type_t, N_LAYERS> (&init_staging_score)[MAX_QUERY_LENGTH],
			 hls::vector<type_t, N_LAYERS> (&last_pe_score)[MAX_REFERENCE_LENGTH]) : query(query), reference(reference),
																					 init_staging_score(init_staging_score), last_pe_score(last_pe_score) {}

void align_wp(hls::stream<BlockInputs> &inputs_stm,
			  hls::stream<BlockOutputs> &traceback_out)
{
	BlockInputs input = inputs_stm.read();
	Align align(
		input.query,
		input.reference,
		input.init_col_score,
		input.init_row_score);
	BlockOutputs output;
	align.align(
		input,
		output.traceback);
	traceback_out.write(output);
}

// DO NOT DELETE ME!
// void pe_wrap(
// 	PECLS (&array)[PE_NUM],
// 	ShiftRegister<char_t, PE_NUM> &local_query,
// 	ShiftRegister<char_t, PE_NUM> &local_reference,
// 	hls::vector<type_t, N_LAYERS> (&last_pe_score)[MAX_REFERENCE_LENGTH],
// 	ShiftRegisterBlock<hls::vector<type_t, N_LAYERS>, PE_NUM, 2> &dp_mem,
// 	int &i, idx_t &last_row_r, int &tb_idx, int (&pe_cnt)[PE_NUM],
// 	hls::vector<type_t, N_LAYERS> (&staging)[PE_NUM],
// 	hls::vector<tbp_t, N_LAYERS> (&tbmat)[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH],
// 	ShiftRegister<bool, PE_NUM> &predicate)
// {
// 	hls::vector<type_t, N_LAYERS> zero_fp_arr = (type_t)0;

// 	char_t local_query_arr[PE_NUM];
// 	hls::stream_of_blocks<input_char_block_t> local_reference_out;
// 	hls::stream_of_blocks<score_block_t> up_prev_out;
// 	hls::stream_of_blocks<score_block_t> diag_prev_out;
// 	hls::stream_of_blocks<score_block_t> left_prev_out;


// 	Compat::PrepareArrayInput(
// 		local_query,
// 		local_reference,
// 		last_pe_score,
// 		dp_mem,
// 		i,
// 		last_row_r,
// 		tb_idx,
// 		pe_cnt,
// 		local_query_arr,
// 		local_reference_out,
// 		up_prev_out,
// 		diag_prev_out,
// 		left_prev_out);


// }