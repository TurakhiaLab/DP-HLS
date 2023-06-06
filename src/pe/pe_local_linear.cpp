#include "PE.h"

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
	const type_t a1 = left_prev + linear_gap_penalty;
	const type_t a3 = up_prev + linear_gap_penalty;

	const type_t match = (local_query_val == local_reference_val) ? diag_prev + match_score : diag_prev + mismatch_score;

	const type_t max_value = (((a1 > a3) ? a1 : a3) > match) ? ((a1 > a3) ? a1 : a3) : match;

	if (predicate)
	{
		*write_score = (max_value < zero_fp) ? zero_fp : max_value;
		if (*write_score == zero_fp) { *tb_write = TB_PH; } 
		else { *tb_write = (max_value == match) ? TB_DIAG : ((max_value == a1) ? TB_LEFT : TB_UP); }

#ifdef DEBUG
		this->score->push_back((max_value < zero_fp) ? zero_fp : max_value);
#endif // DEBUG
	}
}
