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


void Align::ChunkCompute(
	idx_t chunk_row_offset, 
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

	idx_t pe_col_offsets[PE_NUM];
	Utils::Init::ArrSet<idx_t, PE_NUM>(pe_col_offsets, 0);

	char_t local_query[PE_NUM];
	char_t local_reference[PE_NUM];

	stream_of_blocks<input_char_block_t> reference_in_stm;

	stream_of_blocks<dp_mem_block_t> dp_mem_stm;

	stream_of_blocks<score_block_t> up_scores;
	stream_of_blocks<score_block_t> diag_scores;
	stream_of_blocks<score_block_t> left_scores;

	stream_of_blocks<dp_mem_block_t> initialized;

	stream_of_blocks<score_block_t> scores_out;
	stream_of_blocks<tbp_block_t> tbp_out; 

	// Initialize last PE scores pointer. 
	idx_t last_pe_read_addr = 0;
	score_vec_t last_pe_read_backup = (score_vec_t) 0;

	for (int i = 0; i < query_length + reference_length - 1; i++){
		// Shift Predicate
		if (i < query_length) { Utils::Array::ShiftRight<bool, PE_NUM>(predicate, true); }
		else if (i >= reference_length) { Utils::Array::ShiftRight<bool, PE_NUM>(predicate, false); };

		// Shift Reference
		if (i < reference_length) { Utils::Array::ShiftRight<char_t, PE_NUM>(local_reference, reference[i]); }
		else {Utils::Array::ShiftRight<char_t, PE_NUM>(local_reference, 0);}

		// Write Reference to Block
		Utils::Array::WriteStreamBlock<char_t, PE_NUM>(local_reference, reference_in_stm);

		Align::WriteInitialColScore(i, init_col_scr, dp_mem_stm, initialized);
		Align::PrepareScores(initialized, init_row_scr[last_pe_read_addr], last_pe_read_backup, up_scores, diag_scores, left_scores);

		PE::ExpandComputeBlock(
			query,
			reference_in_stm,
			up_scores,
			diag_scores,
			left_scores,
			scores_out,
			tbp_out
		);

		Align::DPMemUpdate(initialized, scores_out, dp_mem_stm);
		last_pe_read_backup = init_row_scr[last_pe_read_addr++];


		ArrangeTBP(tbp_out, predicate, pe_col_offsets, chunk_tbp_out);
	}
}

void Align::WriteInitialColScore(int i, score_vec_t (&init_scores)[PE_NUM], hls::stream_of_blocks<dp_mem_block_t> &dp_mem_in, hls::stream_of_blocks<dp_mem_block_t> &scores_out)
{
	read_lock<dp_mem_block_t> dp_mem_rd(dp_mem_in);
	write_lock<dp_mem_block_t> scores_wr(scores_out);

#pragma HLS array_partition variable = dp_mem_rd type = complete
#pragma HLS array_partition variable = scores_wr type = complete

	for (int j = 0; j < PE_NUM; j++){
#pragma HLS unroll
		scores_wr[0][j] = dp_mem_rd[0][j];
		scores_wr[1][j] = dp_mem_rd[1][j];
	}

	if (i < PE_NUM){
		write_lock<dp_mem_block_t> scores_wr(scores_out);
		scores_wr[0][i] = init_scores[i];
	}
}

void Align::ArrangeTBP(hls::stream_of_blocks<tbp_block_t> &tbp_in, bool (&predicate)[PE_NUM], idx_t (&pe_offset)[PE_NUM], hls::stream_of_blocks<tbp_chunk_block_t> &tbp_chunk_out)
{
	read_lock<tbp_block_t> tbp_rd(tbp_in);
	write_lock<tbp_chunk_block_t> tbp_chunk_wr(tbp_chunk_out);

#pragma HLS array_partition variable = tbp_rd type = complete
#pragma HLS array_partition variable = tbp_chunk_wr type = cyclic factor = PE_NUM dim = 1

	for (int i = 0; i < PE_NUM; i++){
#pragma HLS unroll
		if (predicate[i]){
			tbp_chunk_wr[i][pe_offset[i]++] = tbp_rd[i];
		}
	}

}
