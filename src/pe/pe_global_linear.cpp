
void PEGlobalLinear::compute(char_t local_ref_val, char_t local_query_val, type_t up_prev, type_t left_prev, type_t diag_prev,
	type_t* score,
	ap_uint<2>* traceback)
{
	const type_t temp = 0;

	if (local_query_val != 0)
	{
		const type_t a1 = left_prev + linear_gap_penalty;
		const type_t a3 = up_prev + linear_gap_penalty;

		const type_t match = (local_query_val == local_ref_val) ? diag_prev + match_score : diag_prev + mismatch_score;

		const type_t max_value = (((a1 > a3) ? a1 : a3) > match) ? ((a1 > a3) ? a1 : a3) : match;

		*traceback = (max_value == match) ? 1 : ((max_value == a1) ? 2 : 3);

		*score = max_value;

	}
	else
	{ // when local query is 0 (in case of corner case), PE will give out 0 as output without any computation

		*score = temp;
		*traceback = temp;
	}
}