#include "PE.h"



PE::PE(void)
{
	this->score = 0;
}


void PE::compute(void) {}

void PE::update(void) {}



LinearPE::LinearPE(void)
{
	this->score = 0;
}

tbp_t LinearPE::update()
{
	this->score_reg.shift_right(this->score);
	this->compute_cnt += 1;
	return this->tb_ptr;
}

void LinearPE::compute(ap_uint<2> local_ref_val, ap_uint<2> local_query_val,
	ShiftRegister<type_t, 2>& up_score) {

	if (local_query_val == 0) {
		const type_t left = this->score[0] + opening_score;
		const type_t up = up_score[0] + opening_score;

		type_t max_value = (left > up) ? left : up;
		tbp_t tb_pointer = (left > up) ? TB_LEFT : TB_UP;


		type_t match = (local_query_val == local_ref_val) ? up_score[1] + match_score : up_score[1] + mismatch_score;
		max_value = (max_value > match) ? max_value : match;
		tb_pointer = (max_value > match) ? tb_pointer : (tbp_t)TB_DIAG;

		this->score = max_value;
		this->tb_ptr = tb_pointer;

		if (this->pe_max_score < max_value) {
			this->pe_max_score = max_value;
			this->pe_max_score_cnt = this->compute_cnt;
		}
	}
	else {
		this->score = zero_fp;
		this->tb_ptr = TB_PH;
	}
}


// Default Constructor
AffinePE::AffinePE(void)
{
	this->score = 0;
	this->Ix = 0;
	this->Iy = 0;
	// this->PEIdx = 0;
	// this->tb_line_ct = 0;
}

AffinePE::AffinePE(char PEIdx)
{
	this->score = 0;
	this->Ix = 0;
	this->Iy = 0;
	// this->PEIdx = PEIdx;
	// this->curr_row = PEIdx;
	// this->curr_col = 0;
	// this->tb_line_ct = 0;
}

void AffinePE::compute(ap_uint<2> local_ref_val, ap_uint<2> local_query_val,
	ShiftRegister<type_t, 2>& score_up,
	ShiftRegister<type_t, 1>& Ix_up) {
#pragma HLS inline

	const type_t a1 = this->score_reg[0] + opening_score;
	const type_t a2 = this->Iy_reg[0] + extend_score;
	const type_t a3 = score_up[0] + opening_score;
	const type_t a4 = Ix_up[0] + extend_score;


	this->Iy = a1 > a2 ? a1 : a2;
	this->Ix = a3 > a4 ? a3 : a4;


	tbp_t tb_Iy = (a1 > a2) ? TB_LEFT : TB_IY;
	tbp_t tb_Ix = (a3 > a4) ? TB_UP : TB_IX;

	const type_t temp = 0;

	const type_t match = (local_query_val == local_ref_val) ? score_up[1] + match_score : score_up[1] + mismatch_score;
	const type_t max_value = (((this->Iy > this->Ix) ? this->Iy : this->Ix) > match) ? ((this->Iy > this->Ix) ? this->Iy : this->Ix) : match;

	this->tb_pointer = (((this->Iy > this->Ix) ? this->Iy : this->Ix) > match) ? ((this->Iy > this->Ix) ? tb_Iy : tb_Ix) : (tbp_t)TB_DIAG;  // update the traceback pointer filed

	if (max_value > this->max_score) {  // set the max value of a PE
		// this->max_row = this->curr_row;
		// this->max_col = this->curr_col;
		this->max_score = max_value;
	}
}

void AffinePE::nextChunk()
{
	// this->curr_row += PE_num;
}

tbp_t AffinePE::update() {
	this->score_reg.shift_right(this->score);
	this->Ix_reg.shift_right(this->Ix);
	this->Iy_reg.shift_right(this->Iy);
	// this->curr_col += 1;
	return this->tb_pointer;
}

