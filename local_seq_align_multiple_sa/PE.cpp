#include "params.h"

#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>

#include "PE.h"



PE::PE(void)
{
    this->score = 0;
}


void PE::compute(void){}

void PE::update(void){}


LinearPE::LinearPE(void)
{
    this->score = 0;
}

void LinearPE::update()
{
    this->score_reg.shift(this->score);
}

void LinearPE::compute(ap_uint<2> local_ref_val, ap_uint<2> local_query_val, 
    ShiftRegister<type_t, 2> &up_score,
    type_t* final) {
#pragma HLS inline

    type_t d = opening_score + this->score_reg[0];
    type_t i = opening_score + up_score[0];
    type_t temp_pe = 0;

    type_t match = (local_query_val == local_ref_val) ? up_score[1] + match_score : up_score[1] + mismatch_score;

    type_t max_value = (((d > i) ? d : i) > match) ? ((d > i) ? d : i) : match;

    *final = this->score = (max_value < temp_pe) ? temp_pe : max_value;

}


// Default Constructor
AffinePE::AffinePE(void)
{
    this->score = 0;
    this->Ix = 0;
    this->Iy = 0;
}

void AffinePE::compute(ap_uint<2> local_ref_val, ap_uint<2> local_query_val, 
    ShiftRegister<type_t, 2>& score_up,
    ShiftRegister<type_t, 1>& Ix_up,
    type_t* final) {
#pragma HLS inline

    const type_t a1 = this->score_reg[0] + opening_score;
    const type_t a2 = this->Iy_reg[0] + extend_score;
    const type_t a3 = score_up[0] + opening_score;
    const type_t a4 = Ix_up[0] + extend_score;


    this->Iy = a1 > a2 ? a1 : a2;
    this->Ix = a3 > a4 ? a3 : a4;


    const type_t temp = 0;

    const type_t match = (local_query_val == local_ref_val) ? score_up[1] + match_score : score_up[1] + mismatch_score;

    const type_t max_value = (((this->Iy > this->Ix) ? this->Iy : this->Ix) > match) ? ((this->Iy > this->Ix) ? this->Iy : this->Ix) : match;

    *final = this->score = (max_value < temp) ? temp : max_value;
 
}

void AffinePE::update() {
    this->score_reg.shift(this->score);
    this->Ix_reg.shift(this->Ix);
    this->Iy_reg.shift(this->Iy);
}
