#include "../../include/PE.h"

void PELocalLinear::compute(
	char_t local_query_val,
	char_t local_reference_val,
	type_t up_prev,
	type_t left_prev,
	type_t diag_prev,
	type_t* write_score,
	tbp_t* tb_write,
	bool predicate)
{
	type_t up = left_prev + linear_gap_penalty;
	type_t left = up_prev + linear_gap_penalty;


	type_t match = (local_query_val == local_reference_val) ? diag_prev + match_score : diag_prev + mismatch_score;

	type_t max = up > left ? up : left;
	max = max > match ? max : match;
	max = max > zero_fp ? max : zero_fp;

	if (predicate)
	{
		*write_score = max;
		if (*write_score == zero_fp) { *tb_write = TB_PH; } 
		else { *tb_write = (max == match) ? TB_DIAG : ((max == left) ? TB_LEFT : TB_UP); }

#ifdef DEBUG
		this->score->push_back(*write_score);
#endif // DEBUG
	}
}
