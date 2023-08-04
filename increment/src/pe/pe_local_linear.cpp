#include "../../include/PE.h"
#include <hls_vector.h>
#ifdef DEBUG
#include "debug.h"
#include <cstdio>
#endif
void PELocalLinear::compute(
	char_t local_query_val,
	char_t local_reference_val,
	hls::vector<type_t, N_LAYERS> up_prev,
	hls::vector<type_t, N_LAYERS>  left_prev,
	hls::vector<type_t, N_LAYERS>  diag_prev,
	hls::vector<type_t, N_LAYERS> &write_score,
	hls::vector<tbp_t, N_LAYERS>  &tb_write,
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
