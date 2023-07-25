#include "../../include/PE.h"
#include <hls_vector.h>

#ifdef DEBUG
#include "debug.h"
#include <cstdio>
#endif

// >>> LOCAL_LINEAR pe >>>
#ifdef ALIGN_LOCAL_LINEAR

void PE::compute(
	char_t local_query_val,
	char_t local_reference_val,
	hls::vector<type_t, N_LAYERS> up_prev,
	hls::vector<type_t, N_LAYERS>  left_prev,
	hls::vector<type_t, N_LAYERS>  diag_prev,
	hls::vector<type_t, N_LAYERS>& write_score,
	hls::vector<tbp_t, N_LAYERS>& tb_write,
	bool predicate)
{
	// >>> take scroes >>> 
	type_t up = up_prev[0] + linear_gap_penalty;
	type_t left = left_prev[0] + linear_gap_penalty;


	type_t match = (local_query_val == local_reference_val) ? diag_prev[0] + match_score : diag_prev[0] + mismatch_score;

	// >>> set traceback pointers
	type_t max = up > left ? up : left;
	max = max > match ? max : match;
	max = max > zero_fp ? max : zero_fp;


	if (predicate)
	{
		write_score[0] = max;
		if (write_score[0] == zero_fp) { tb_write[0] = tbp_t(0) + TB_PH; }
		else { tb_write[0] = (max == match) ? tbp_t(0) + TB_DIAG : ((max == left) ? (tbp_t(0)+TB_LEFT) : (tbp_t(0) + TB_UP) ); }

#ifdef DEBUG

		this->score->push_back(write_score);
#endif // DEBUG
	}
}

#endif

// >>> GLOBAL_LINEAR pe >>>

#ifdef ALIGN_GLOBAL_LINEAR

void PE::compute(
	char_t local_query_val,
	char_t local_reference_val,
	hls::vector<type_t, N_LAYERS> up_prev,
	hls::vector<type_t, N_LAYERS>  left_prev,
	hls::vector<type_t, N_LAYERS>  diag_prev,
	hls::vector<type_t, N_LAYERS>& write_score,
	hls::vector<tbp_t, N_LAYERS>& tb_write,
	bool predicate)
{
	type_t up = left_prev[0] + linear_gap_penalty;
	type_t left = up_prev[0] + linear_gap_penalty;


	type_t match = (local_query_val == local_reference_val) ? diag_prev[0] + match_score : diag_prev[0] + mismatch_score;

	type_t max = up > left ? up : left;
	max = max > match ? max : match;

	if (predicate)
	{
		write_score[0] = max;
		if (write_score[0] == zero_fp) { tb_write[0] = TB_PH; }
		else { tb_write[0] = (max == match) ? TB_DIAG : ((max == left) ? TB_LEFT : TB_UP); }

#ifdef DEBUG

		this->score->push_back(write_score);
#endif // DEBUG
	}
}

#endif

// >>> LOCAL_AFFINE pe >>>
#ifdef ALIGN_LOCAL_AFFINE

void PE::compute(
	char_t local_query_val,
	char_t local_reference_val,
	hls::vector<type_t, N_LAYERS> up_prev,
	hls::vector<type_t, N_LAYERS>  left_prev,
	hls::vector<type_t, N_LAYERS>  diag_prev,
	hls::vector<type_t, N_LAYERS>& write_score,
	hls::vector<tbp_t, N_LAYERS>& tb_write,
	bool predicate)
{

	/*
	* 0: P
	* 1: D
	* 2: Q
	*/

#pragma HLS aggregate variable=tb_write compact=auto
#pragma HLS aggregate variable=write_score compact=auto

	const type_t pd = up_prev[1] + opening_score + extend_score;
	const type_t pp = up_prev[0] + extend_score;
	const type_t qd = left_prev[1] + opening_score + extend_score;
	const type_t qq = left_prev[3] + extend_score;

	const type_t max_p = pd > pp ? pd : pp;
	const type_t max_q = qd > qq ? qd : qq;

	const type_t match = (local_query_val == local_reference_val) ? diag_prev[1] + match_score : diag_prev[1] + mismatch_score;

	type_t max = max_p > max_q ? max_p : max_q;
	max = max > match ? max : match;
	max = max > zero_fp ? max : zero_fp;

	if (predicate)
	{
		write_score = {max_p, max, max_q};

		// Diagonal Matrix Pointer Set
		if (max == zero_fp) { 
			tb_write = {
				(max_p == pd) ? (tbp_t(1.0) + TB_UP) : (tbp_t(0.0) + TB_UP),
				(tbp_t(1.0) + TB_PH),
				(max_q == qd) ? (tbp_t(1.0) + TB_LEFT) : (tbp_t(3.0) + TB_LEFT)
			}; 
		}
		else { 
			tb_write = {
				(max_p == pd) ? (tbp_t(1.0) + TB_UP) : (tbp_t(0.0) + TB_UP),
				(max == match) ? (tbp_t(1.0) + TB_DIAG) : ( (max == max_p) ? (tbp_t(0.0) + TB_PH) : (tbp_t(2.0) +  TB_PH) ),
				(max_q == qd) ? (tbp_t(1.0) + TB_LEFT) : (tbp_t(3.0) + TB_LEFT)
			}; 
		}


#ifdef DEBUG
		this->score->push_back(write_score);
#endif // DEBUG

	}

}

#endif



