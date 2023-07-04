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
	type_t up = left_prev[0] + linear_gap_penalty;
	type_t left = up_prev[0] + linear_gap_penalty;


	type_t match = (local_query_val == local_reference_val) ? diag_prev[0] + match_score : diag_prev[0] + mismatch_score;

	type_t max = up > left ? up : left;
	max = max > match ? max : match;
	max = max > zero_fp ? max : zero_fp;

	if (predicate)
	{
		write_score[0] = max;
		if (write_score[0] == zero_fp) { tb_write[0] = TB_PH; }
		else { tb_write[0] = (max == match) ? TB_DIAG : ((max == left) ? TB_LEFT : TB_UP); }

#ifdef DEBUG

		this->score->push_back(write_score[0]);
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

		this->score->push_back(write_score[0]);
#endif // DEBUG
	}
}

#endif

// >>> LOCAL_AFFINE pe >>>
#ifdef ALIGN_LOCAL_AFFINE

void PELocalAffine::compute(
	char_t local_query_val,
	char_t local_reference_val,
	hls::vector<type_t, N_LAYERS> up_prev,
	hls::vector<type_t, N_LAYERS>  left_prev,
	hls::vector<type_t, N_LAYERS>  diag_prev,
	hls::vector<type_t, N_LAYERS>& write_score,
	hls::vector<tbp_t, N_LAYERS>& tb_write,
	bool predicate)
{

#pragma HLS inline

	const type_t temp = 0;

	if (local_query_val != 0)
	{
		const type_t a1 = left_prev + opening_score;
		const type_t a2 = Iy_prev + extend_score;
		const type_t a3 = up_prev + opening_score;
		const type_t a4 = Ix_prev + extend_score;

		*Iy = a1 > a2 ? a1 : a2;
		*Ix = a3 > a4 ? a3 : a4;

		const type_t match = (local_query_val == local_ref_val) ? diag_prev + match_score : diag_prev + mismatch_score;

		const type_t max_value = (((*Iy > *Ix) ? *Iy : *Ix) > match) ? ((*Iy > *Ix) ? *Iy : *Ix) : match;

		*traceback = (max_value == match) ? 1 : ((max_value == a1) ? 2 : ((max_value == a2) ? 3 : ((max_value == a3) ? 4 : 5)));

		//printf("local query is %c, local ref is %c, max_value is %d, match is %d, a1 is %d, a2 is %d, a3 is %d, a4 is %d\n",
		//		local_query_val, local_ref_val, max_value, match, a1, a2, a3, a4);

		*score = (max_value < temp) ? temp : max_value;


	}
	else
	{ // when local query is 0 (in case of corner case), PE will give out 0 as output without any computation

		*score = temp;
		*Ix = temp;
		*Iy = temp;
		*traceback = temp;
	}
}


#endif



