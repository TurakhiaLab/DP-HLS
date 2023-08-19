#include "../../include/params.h"
#include "../../include/seq_align.h"
#include "../../include/PE.h"
#include "../../include/utils.h"
#include "../../include/initial.h"
#include <hls_task.h>
#include <hls_stream.h>
#include "trivial.h"

#include <hls_streamofblocks.h>
#include "seq_align.h"
using namespace hls;


void Align::DPMemUpdate(
		hls::stream_of_blocks<dp_mem_block_t> &dp_mem_in,
		hls::stream_of_blocks<score_block_t> &score_in,
		hls::stream_of_blocks<dp_mem_block_t> &dp_mem_out
){
// This function shift the dp_mem based on the new scores

	read_lock<dp_mem_block_t> dp_mem_rd(dp_mem_in);
	read_lock<score_block_t> score_rd(score_in);
	write_lock<dp_mem_block_t> dp_mem_wr(dp_mem_out);

// array partition the accessor of the block
#pragma HLS array_partition variable = dp_mem_rd type = complete

	for (int i = 0; i < PE_NUM; i++){
#pragma HLS unroll
		dp_mem_wr[1][i] = dp_mem_rd[0][i];
		dp_mem_wr[0][i] = score_rd[i];
	}
}

void Align::InitializeChunkColScore(score_vec_t (&init_col_scr)[PE_NUM], stream_of_blocks<dp_mem_block_t> &dp_mem_out)
{
#pragma HLS array_partition variable = init_col_scr type = complete
	write_lock<dp_mem_block_t> dp_mem_wr(dp_mem_out);
#pragma HLS array_partition variable = dp_mem_wr type = complete
	for (int i = 0; i < PE_NUM; i++){
#pragma HLS unroll
		dp_mem_wr[0][i] = init_col_scr[i];
	}
}

void PrepareScores(
	hls::stream_of_blocks<dp_mem_block_t> &dp_mem_in,
	hls::vector<type_t, N_LAYERS> last_chunk_0, hls::vector<type_t, N_LAYERS> last_chunk_1,
	hls::stream_of_blocks<score_block_t> &up_out,
	hls::stream_of_blocks<score_block_t> &diag_out,
	hls::stream_of_blocks<score_block_t> &left_out
){
	read_lock<dp_mem_block_t> dp_mem_rd(dp_mem_in);
	write_lock<score_block_t> up_wr(up_out);
	write_lock<score_block_t> diag_wr(diag_out);
	write_lock<score_block_t> left_wr(left_out);

#pragma HLS array_partition variable = dp_mem_rd type = complete
#pragma HLS array_partition variable = up_wr type = complete
#pragma HLS array_partition variable = diag_wr type = complete
#pragma HLS array_partition variable = left_wr type = complete

	up_wr[0] = last_chunk_0;
	diag_wr[0] = last_chunk_1;
	left_wr[0] = dp_mem_rd[0][0];
	for (int i = 1; i < PE_NUM; i++){
#pragma HLS unroll
		up_wr[i] = dp_mem_rd[0][i-1];
		diag_wr[i] = dp_mem_rd[1][i-1];
		left_wr[i] = dp_mem_rd[0][i];
	}
}



void AlignCLS::align(
	hls::stream<char_t, MAX_QUERY_LENGTH> &query_stream,
    hls::stream<char_t, MAX_REFERENCE_LENGTH> &reference_stream,
    hls::stream<hls::vector<type_t, N_LAYERS>, MAX_QUERY_LENGTH> &init_qry_scr,
    hls::stream<hls::vector<type_t, N_LAYERS>, MAX_REFERENCE_LENGTH> &init_ref_scr,
	const int query_length, const int reference_length,
    hls::stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH> &traceback_out)
{


//#pragma HLS array_partition variable = staging type = complete
//#pragma HLS array_partition variable = this->tbmat dim = 2 type = cyclic factor = 8
//#pragma HLS array_partition variable = this->predicate dim = 1 type = complete
//#pragma HLS array_partition variable = this->local_reference dim = 1 type = complete
//#pragma HLS array_partition variable = this->local_query dim = 1 type = complete
//#pragma HLS array_partition variable = this->last_pe_score type = complete
//#pragma HLS array_partition variable = this->dp_mem type = complete
//
//#pragma HLS bind_storage variable = this->local_reference type = RAM_1WNR impl = LUTRAM
//#pragma HLS bind_storage variable = this->local_query type = RAM_1WNR impl = LUTRAM
//// #pragma HLS bind_storage variable = this->last_pe_score type = RAM_1WNR impl = LUTRAM
//#pragma HLS bind_storage variable = this->dp_mem type = RAM_1WNR impl = LUTRAM

	this->init(
		query_stream,
		reference_stream,
		init_qry_scr,
		init_ref_scr,
		query_length,
		reference_length,
		traceback_out);

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

void AlignCLS::compute_chunk(const int active_pe, const int row_length, int tb_idx)
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
//#pragma HLS dependence variable = this->last_pe_score type = inter dependent = false
//#pragma HLS dependence variable = this->PE_group type = intra dependent = false
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

		// PE Loop
		this->PE_group[0].compute(
			this->local_query[0],
			this->local_reference[0],
			this->last_pe_score[last_row_r],
			this->dp_mem[0][0],
			i == 0 ? this->zero_fp_arr : this->last_pe_score[last_row_r - 1], // diagnoal
			this->staging[0],								// scores to write to the dp_mem
			this->tbmat[tb_idx + 0][pe_cnt[0]],
			predicate[0]);

		if (predicate[0])
			last_row_r++; // If read, update the pointer

		for (int pi = 1; pi < PE_NUM; pi++)
		{
#pragma HLS unroll
//#pragma HLS dependence variable = PE_group type = inter dependent = false
			this->PE_group[pi].compute(
				this->local_query[pi],
				this->local_reference[pi],
				dp_mem[pi - 1][0],
				dp_mem[pi][0],
				dp_mem[pi - 1][1],
				this->staging[pi],
				this->tbmat[tb_idx + pi][pe_cnt[pi]],
				predicate[pi]);
		}

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

void AlignCLS::init(
	stream<char_t, MAX_QUERY_LENGTH> &query_stream,
	stream<char_t, MAX_REFERENCE_LENGTH> &reference_stream,
	stream<hls::vector<type_t, N_LAYERS>, MAX_QUERY_LENGTH> &init_qry_scr,
	stream<hls::vector<type_t, N_LAYERS>, MAX_REFERENCE_LENGTH> &init_ref_scr,
	const int query_length, const int reference_length,
	stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH> &traceback_out)
{
	reference_cpy:
	for (int i = 0; i < MAX_REFERENCE_LENGTH; i++)
	{
		this->reference[i] = reference_stream.read();
        hls::vector<type_t, N_LAYERS> tmp = init_ref_scr.read();
		this->last_pe_score[i] = {tmp[0], tmp[1], tmp[2]};
	}
	query_cpy:
	for (int i = 0; i < MAX_QUERY_LENGTH; i++)
	{
		this->query[i] = query_stream.read(); // copy query
		this->init_staging_score[i] = init_qry_scr.read();
	}

	this->query_ptr = 0;

#ifdef DEBUG
	for (int i = 0; i < PE_NUM; i++)
	{
		this->PE_group[i].score = &this->debug->data.score[i];
	}
	for (int i = 0; i < MAX_QUERY_LENGTH; i++)
	{
		this->debug->data.query.push_back(this->query[i]);
	}
	for (int i = 0; i < MAX_REFERENCE_LENGTH; i++)
	{
		this->debug->data.ref.push_back(this->reference[i]);
	}
#endif // DEBUG
}

void Align::ChunkCompute(
	input_char_block_t &query,
	char_t (&reference)[MAX_REFERENCE_LENGTH],
	score_block_t &init_col_scr,
	hls::vector<type_t, N_LAYERS> (&init_row_scr)[MAX_REFERENCE_LENGTH],
	int query_length, int reference_length,
	hls::vector<type_t, N_LAYERS> (&preserved_row_scr)[MAX_REFERENCE_LENGTH],
	ScorePack max, 
	hls::stream_of_blocks<tbp_chunk_block_t> chunk_tbp_out
){
	bool predicate[PE_NUM];
	Utils::Init::Predicate(predicate);

	char_t local_query[PE_NUM];
	char_t local_reference[PE_NUM];

	stream_of_blocks<input_char_block_t> query_in_stm;
	stream_of_blocks<input_char_block_t> reference_in_stm;

	stream_of_blocks<dp_mem_block_t> dp_mem_stm;
	stream_of_blocks<dp_mem_block_t> dp_mem_update_to_prepare;

	stream_of_blocks<score_block_t> up_scores;
	stream_of_blocks<score_block_t> diag_scores;
	stream_of_blocks<score_block_t> left_scores;
	stream_of_blocks<score_block_t> scores_out;
	stream_of_blocks<tbp_block_t> tbp_out; 


	Align::InitializeChunkColScore(init_col_scr, dp_mem_stm);
	
	Align::PrepareScores(dp_mem_stm, init_col_scr[0], (score_vec_t) 0, up_scores, diag_scores, left_scores);

	for (int i = 0; i < query_length + reference_length - 1; i++){
		if (i < query_length) { Utils::Array::ShiftRight<bool, PE_NUM>(predicate, true); }
		else if (i >= reference_length) { Utils::Array::ShiftRight<bool, PE_NUM>(predicate, false); };

		if (i < reference_length) { Utils::Array::ShiftRight<char_t, PE_NUM>(local_reference, reference[i]); }
		else {Utils::Array::ShiftRight<char_t, PE_NUM>(local_reference, 0);}

		Utils::Array::WriteStreamBlock<char_t, PE_NUM>(local_reference, reference_in_stm);

		PE::ExpandComputeBlock(
			query,
			reference_in_stm,
			up_scores,
			diag_scores,
			left_scores,
			scores_out,
			tbp_out
		);

		Align::DPMemUpdate(dp_mem_stm, scores_out, dp_mem_update_to_prepare);
		Align::PrepareScores(dp_mem_update_to_prepare, init_col_scr[0], (score_vec_t) 0, up_scores, diag_scores, left_scores);
		
	}
}




void align_wp(hls::stream<char_t, MAX_QUERY_LENGTH> &query_stream,
              hls::stream<char_t, MAX_REFERENCE_LENGTH> &reference_stream,
              hls::stream<hls::vector<type_t, N_LAYERS>, MAX_QUERY_LENGTH> &init_qry_scr,
              hls::stream<hls::vector<type_t, N_LAYERS>, MAX_REFERENCE_LENGTH> &init_ref_scr,
              int query_length, int reference_length,
              hls::stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH> &traceback_out){
    AlignCLS align;
    align.align(
            query_stream,
            reference_stream,
            init_qry_scr,
            init_ref_scr,
            query_length, reference_length,
            traceback_out
            );

}
