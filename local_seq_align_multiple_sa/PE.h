#include "params.h"
#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include "shift_reg.h"

#ifndef PE_H
#define PE_H

class PE {
public:
	ShiftRegister<type_t, 2> score_reg;

	PE(void);

	void compute(void);

	void update(void);

private:
	// this is used to hold temporary score before shifting. 
	type_t score;  // temporary score is set to be private to prevent cross access to supposed independant cells in a wavefront

};

class LinearPE : public PE {
public:
	ShiftRegister<type_t, 2> score_reg;

	LinearPE(void);

	void update();

	void compute(ap_uint<2> local_ref_val, ap_uint<2> local_query_val,
		ShiftRegister<type_t, 2>& up_score,
		type_t* final);

private:
	type_t score;

};


class AffinePE : public PE {
public:
	ShiftRegister<type_t, 2> score_reg;
	ShiftRegister<type_t, 1> Ix_reg;
	ShiftRegister<type_t, 1> Iy_reg;

	type_t max_score;
	ap_uint<16> max_row;
	ap_uint<16> max_col;

	AffinePE(void);

	AffinePE(char PEIdx);

	//AffinePE(ap_shift_reg<type_t, 2> &score_reg,
	//ap_shift_reg<type_t, 1> &Ix_reg,
	//ap_shift_reg<type_t, 1> &Iy_reg);

	void update(hls::stream<tbp_t, ref_length* query_length / PE_num>& tbp_out);

	void compute(ap_uint<2> local_ref_val, ap_uint<2> local_query_val,
		ShiftRegister<type_t, 2>& score_up,
		ShiftRegister<type_t, 1>& Ix_up);

	void nextChunk();

private:
	type_t score;
	type_t Ix;
	type_t Iy;
	tbp_t traceback_ptr;  // hold the traceback ptr of a compute call

	char PEIdx;
	ap_uint<16> curr_row;
	ap_uint<16> curr_col;


};
#endif // !PE_H

// Static data members are shared by all instances of a class.