#include <ap_shift_reg.h>
#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>


#include "params.h"
#include "seq_align_multiple.h"
#include "seq_align.h"
#include "PE.h"

using namespace hls;


void SeqAlign::align(stream<ap_uint<2>, query_length> &query, stream<ap_uint<2>, ref_length> &reference, 
	ap_shift_reg<type_t, 2> (&dp_mem)[PE_num],
	ap_shift_reg<type_t, 1> (&Ix_mem)[PE_num],
	ap_shift_reg<type_t, 1> (&Iy_mem)[PE_num],
	stream<ap_fixed<M, N>, ref_length>& last_pe_score, 
	stream<ap_fixed<M, N>, ref_length>& last_pe_scoreIx, 
	type_t &dummy)
{

	type_t temp = 0;

	type_t dp_matrix[query_length][ref_length];  // declare dp matrix

	// initialize the dp matrix to 0
	for (int pp = 0; pp < query_length; pp++) {
		for (int rr = 0; rr < ref_length; rr++) {
			dp_matrix[pp][rr] = 0;
		}
	}

	const type_t zero_fp = 0;


#pragma HLS ARRAY_PARTITION variable=dp_matrix dim=1 cyclic factor=PE_num

	ap_uint<2> local_query[PE_num];  // each PE process a element in query
#pragma HLS ARRAY_PARTITION variable=local_query complete  // local query is at PE num so a complete partition assign each PE a distinct memory


	AffinePE PE_group[PE_num];


	// Start Streaming Out the DPMatrix From the Compute Block Middle Loop!

	// iterating through the chunks of the larger dp matrix
compute_block:
	for (int qq = 0; qq < query_chunks; qq++) {
		// query_chunks = query_length/PE_num
		// iterating through every wavefront

		ap_shift_reg<ap_uint<2>, PE_num> local_reference;  // create local reference

		// popup local query
		for (int i = 0; i < PE_num; i++) {
			local_query[i] = query.read();  // initialize local query
			//local_reference.shift(0);  // initialize reference array
		}


		// initialize the first item
		dpmem_iitialization:
		for (int ix = 0; ix < PE_num; ix++) {
#pragma HLS UNROLL

			dp_mem[ix].shift(zero_fp);
			Ix_mem[ix].shift(zero_fp);
			Iy_mem[ix].shift(zero_fp);

			//dp_mem[0][ix] = (ii == 0) ? zero_fp : dp_mem[1][ix];
			//dp_mem[1][ix] = (ii == 0) ? zero_fp : dp_mem[2][ix];
			//dp_mem[2][ix] = zero_fp;//(ii == 0)? zero_fp : dp_mem[2][ix];

			//Ix_mem[0][ix] = (ii == 0) ? zero_fp : Ix_mem[1][ix];
			//Ix_mem[1][ix] = zero_fp;//(ii == 0)? zero_fp : Ix_mem[1][ix];

			//Iy_mem[0][ix] = (ii == 0) ? zero_fp : Iy_mem[1][ix];
			//Iy_mem[1][ix] = zero_fp;//(ii == 0)? zero_fp : Iy_mem[1][ix];
		}


		// FIXME: update PE accordingly, rather than use the pradicate

		// beginning loops
	compute_row_pre:
		for (int ii = 0; ii < PE_num; ii++) {
#pragma HLS PIPELINE II=1


			temp = (ii == 0) ? zero_fp : temp;

			//ap_uint<2> reference_read = reference.read();
			//local_reference.shift(reference_read);  // shift one element to the local reference for each wavefront

		pe_expand_pre:
			for (int kk = 1; kk < PE_num; kk++) {
#pragma HLS UNROLL

				PE_group[kk].compute(local_reference.read(kk), local_query[kk], dp_mem[kk - 1],
					Ix_mem[kk - 1], &dp_matrix[kk + qq * PE_num][ii - kk]);
			}

		}

		// shifting while no predicate change is needed
		compute_row:
		for (int ii = PE_num; ii < ref_length; ii++) {  // ii index wavefront

#pragma HLS PIPELINE II=1

			//local_reference.shift(reference.read());  // shift one element to the local reference for each wavefront

			temp = (ii == 0) ? zero_fp : temp;

			//temp = last_pe_score.read();

		pe_expand:
			for (int kk = 1; kk < PE_num - 1; kk++) {  // for each PE, indexed by kk
#pragma HLS UNROLL

				PE_group[kk].compute(local_reference.read(kk), local_query[kk], dp_mem[kk],
					Ix_mem[kk - 1], &dp_matrix[kk + qq * PE_num][ii - kk]);

			}


			//last_pe_score.write(dp_mem[PE_num - 1].read(0));
			//last_pe_scoreIx.write(Ix_mem[PE_num - 1].read(0));

		}

		int pred_reduce = PE_num - 1;

	compute_row_post:
		for (int ii = ref_length; ii < PE_num + ref_length - 1; ii++) {
#pragma HLS PIPELINE II=1
			pred_reduce -= 1;  // adjust predicate

			//local_reference.shift(reference.read());  // shift one element to the local reference for each wavefront

			temp = (ii == 0) ? zero_fp : temp;

			temp = last_pe_score.read();

		pe_expand_post:
			for (int kk = 1; kk < PE_num; kk++) {  // for each PE, indexed by kk
#pragma HLS UNROLL

				PE_group[kk].compute(local_reference.read(kk), local_query[kk], dp_mem[kk - 1],
					Ix_mem[kk - 1], &dp_matrix[kk + qq * PE_num][ii - kk]);

			}

			//last_pe_score.write(dp_mem[PE_num - 1].read(0));
			//last_pe_scoreIx.write(Ix_mem[PE_num - 1].read(0));
		}
	}

	type_t max_dp = 0;
	int max_row_value;
	int max_col_value;

pe1:
	for (int x = 0; x < query_length; x++) {

	pe2:
		for (int y = 0; y < ref_length; y++) {

			if (dp_matrix[x][y] > 0) {
				max_dp = dp_matrix[x][y];
				max_row_value = x;
				max_col_value = y;
			}

		}

	}

	type_t max_score = dp_matrix[max_row_value][max_col_value];
	dummy = max_score;

	/* printf("\n printing dp matrix\n");

	for (int r = 0; r < query_length; r ++)
	 {
		 for (int s = 0; s < ref_length; s ++){

			 printf("%d\t", dp_matrix[r][s]);
		 }
		 printf("\n");
	 }*/
}
