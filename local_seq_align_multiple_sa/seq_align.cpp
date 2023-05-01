#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>

#include "params.h"
#include "seq_align_multiple.h"
#include "seq_align.h"
#include "PE.h"
#include "shift_reg.h"

using namespace hls;


void SeqAlign::align(stream<ap_uint<2>, query_length> &query_stream, stream<ap_uint<2>, ref_length> &reference_stream, type_t &dummy)
{
	const type_t zero_fp = 0;

	type_t temp = 0;

	ShiftRegister<type_t, 2> phoney_pe;
	ShiftRegister<type_t, 1> phoney_pe_Ix;

	stream<ap_fixed<M, N>, ref_length> last_pe_score[2];
	stream<ap_fixed<M, N>, ref_length> last_pe_score_Ix[2];
	stream<ap_fixed<M, N>, ref_length> ab_reference_stream[2];

	stream<tbp_t, ref_length* query_length / PE_num> tbp_out[PE_num];

	for (int i = 0; i < ref_length; i++) {
		last_pe_score[0].write(zero_fp);
		last_pe_score_Ix[0].write(zero_fp);
		ab_reference_stream[0].write(reference_stream.read());
	}


	ShiftRegister<ap_uint<2>, PE_num> query;  // each PE process a element in query
	ShiftRegister<ap_uint<2>, PE_num> reference;  // create local reference

	AffinePE PE_group[PE_num];
#pragma HLS ARRAY_PARTITION variable=PE_group dim=1 type=complete

	// Start Streaming Out the DPMatrix From the Compute Block Middle Loop!


	// iterating through the chunks of the larger dp matrix
compute_block:
	for (int qq = 0; qq < query_chunks; qq++) {


		int predicate = 1;

		// query_chunks = query_length/PE_num
		// iterating through every wavefront

		// beginning loops
	compute_row_pre:
		for (int ii = 0; ii < PE_num - 1; ii++) {
#pragma HLS PIPELINE II=1

			reference.shift(ab_reference_stream[qq % 2].read());  // update reference shift register
			ab_reference_stream[(qq+1) % 2].write(reference[0]);  // copy the reference stream


			phoney_pe.shift(last_pe_score[qq % 2].read());
			phoney_pe_Ix.shift(last_pe_score_Ix[qq % 2].read());
			
			query.shift(query_stream.read());


			PE_group[0].compute(reference[0], query[0], phoney_pe, phoney_pe_Ix);


			//ap_uint<2> reference_read = reference.read();
			//local_reference.shift(reference_read);  // shift one element to the local reference for each wavefront

		pe_expand_pre:
			for (int kk = 1; kk < PE_num; kk++) {
#pragma HLS UNROLL

				PE_group[kk].compute(reference[kk], query[kk], PE_group[kk-1].score_reg,
					PE_group[kk-1].Ix_reg);
			}

			for (int kk = 0; kk < PE_num; kk++) {
#pragma HLS unroll
				if (kk < predicate) {
					PE_group[kk].update(tbp_out[kk]);
				}
			}

			++predicate;

		}

		query.shift(query_stream.read());

		// shifting while no predicate change is needed
		compute_row_mid:
		for (int ii = PE_num - 1; ii < ref_length; ii++) {  // ii index wavefront

#pragma HLS PIPELINE II=1

			//local_reference.shift(reference.read());  // shift one element to the local reference for each wavefront
			reference.shift(ab_reference_stream[qq % 2].read());  // update reference shift register
			ab_reference_stream[(qq+1) % 2].write(reference[0]);  // copy the reference stream


			phoney_pe.shift(last_pe_score[qq % 2].read());
			phoney_pe_Ix.shift(last_pe_score_Ix[qq % 2].read());

			PE_group[0].compute(reference[0], query[0], phoney_pe, phoney_pe_Ix);

			//temp = last_pe_score.read();

		pe_expand_mid:
			for (int kk = 1; kk < PE_num; kk++) {  // for each PE, indexed by kk
#pragma HLS UNROLL

				PE_group[kk].compute(reference[kk], query[kk], PE_group[kk].score_reg,
					PE_group[kk - 1].Ix_reg);

			}

			for (int kk = 0; kk < PE_num; kk++) {
#pragma HLS unroll
				PE_group[kk].update(tbp_out[kk]);
			}

			last_pe_score[(qq+1) % 2].write(PE_group[PE_num - 1].score_reg[0]);
			last_pe_score_Ix[(qq+1) % 2].write(PE_group[PE_num - 1].Ix_reg[0]);

			//last_pe_score.write(dp_mem[PE_num - 1].read(0));
			//last_pe_scoreIx.write(Ix_mem[PE_num - 1].read(0));

		}

		predicate = 1;

	compute_row_post:
		for (int ii = ref_length; ii < PE_num + ref_length - 1; ii++) {
#pragma HLS PIPELINE II=1

			reference.shift(0);
			query.shift(0);

			// NOTICE: in the post row computation, it's pretty sure that we don't need PE 0 to do anything. 

		pe_expand_post:
			for (int kk = 1; kk < PE_num; kk++) {  // for each PE, indexed by kk
#pragma HLS UNROLL

				PE_group[kk].compute(reference[kk], query[kk], PE_group[kk-1].score_reg,
					PE_group[kk - 1].Ix_reg);

			}

			for (int kk = 0; kk < PE_num; kk++) {
#pragma HLS UNROLL
				if (kk >= predicate) {
					PE_group[kk].update(tbp_out[kk]);
				}
			}

			++predicate;

			last_pe_score[(qq+1) % 2].write(PE_group[PE_num - 1].score_reg[0]);
			last_pe_score_Ix[(qq+1) % 2].write(PE_group[PE_num - 1].Ix_reg[0]);
		}
	}


	type_t max_dp = 0;
	int max_row_value;
	int max_col_value;

	// Need to clean the rest of the FIFO or the CoSim would hang
		for (int i = 0; i < ref_length; i++) {
#pragma HLS unroll
			last_pe_score[(query_chunks)%2].read();
			last_pe_score_Ix[(query_chunks)%2].read();
			ab_reference_stream[(query_chunks)%2].read();
		}


	dummy = 0;

	fill_tb_matrix:
	tbp_t tb_matrix[query_length][ref_length];
	for (int qq = 0; qq < query_length; qq++) {
		for (int j = 0; j < ref_length; j++) {
			for (int q = 0; q < PE_num; q++) {
#pragma HLS UNROLL
				tb_matrix[qq + q][j] = tbp_out[q].read();
			}
		}
	}

}
