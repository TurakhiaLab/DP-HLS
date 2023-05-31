void PELocalAffine::compute(char_t local_ref_val, char_t local_query_val, type_t up_prev, type_t left_prev, type_t diag_prev,
	type_t* score,
	type_t Ix_prev, type_t* Ix,
	type_t Iy_prev, type_t* Iy,
	ap_uint<3>* traceback)
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
