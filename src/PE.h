#include "params.h"
#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include "shift_reg.h"
#include <hls_streamofblocks.h>

#ifndef PE_H
#define PE_H

class PE
{
public:
	ShiftRegister<type_t, 2> score_reg;

	PE(void);

	void compute(void);

	void update(void);

private:
	// this is used to hold temporary score before shifting.
	type_t score; // temporary score is set to be private to prevent cross access to supposed independant cells in a wavefront
};

class LinearPE : public PE
{
public:
	type_t pe_max_score;
	int compute_cnt;
	int pe_max_score_cnt; // this is used to hold the location of the max score
	ShiftRegister<type_t, 2> score_reg;

	LinearPE(void);

	tbp_t update();

	void compute(ap_uint<2> local_ref_val, ap_uint<2> local_query_val,
				 ShiftRegister<type_t, 2> &up_score);

private:
	type_t score;
	tbp_t tb_ptr;
};

class AffinePE : public PE
{
public:
	ShiftRegister<type_t, 2> score_reg;
	ShiftRegister<type_t, 1> Ix_reg;
	ShiftRegister<type_t, 1> Iy_reg;

	type_t max_score;
	type_t *max_score_ptr;

	AffinePE(void);

	AffinePE(char PEIdx);

	// AffinePE(ap_shift_reg<type_t, 2> &score_reg,
	// ap_shift_reg<type_t, 1> &Ix_reg,
	// ap_shift_reg<type_t, 1> &Iy_reg);

	tbp_t update();

	void compute(ap_uint<2> local_ref_val, ap_uint<2> local_query_val,
				 ShiftRegister<type_t, 2> &score_up,
				 ShiftRegister<type_t, 1> &Ix_up);

	void nextChunk();

private:
	type_t score;
	type_t Ix;
	type_t Iy;
	tbp_t tb_pointer; // hold the traceback ptr of a compute call
};

class PEGlobalLinear : PE
{
public:
	void compute(char_t local_ref_val, char_t local_query_val, type_t up_prev, type_t left_prev, type_t diag_prev,
				 type_t *score,
				 ap_uint<2> *traceback);
};
class PEGlobalAffine : PE
{
public:
	void compute(char_t local_ref_val, char_t local_query_val, type_t up_prev, type_t left_prev, type_t diag_prev,
				 type_t *score,
				 type_t Ix_prev, type_t *Ix,
				 type_t Iy_prev, type_t *Iy,
				 ap_uint<3> *traceback);
};
class PELocalLinear : PE
{
public:
	void compute(char_t local_ref_val, char_t local_query_val, type_t up_prev, type_t left_prev, type_t diag_prev,
				 type_t *score,
				 ap_uint<2> *traceback);
};
class PELocalAffine : PE
{
public:
	void compute(char_t local_ref_val, char_t local_query_val, type_t up_prev, type_t left_prev, type_t diag_prev,
				 type_t *score,
				 type_t Ix_prev, type_t *Ix,
				 type_t Iy_prev, type_t *Iy,
				 ap_uint<3> *traceback);
};

#endif // !PE_H

// Static data members are shared by all instances of a class.