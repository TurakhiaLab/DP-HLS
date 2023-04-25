#include "params.h"
#include <ap_shift_reg.h>
#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>


#ifndef PE_H
#define PE_H

class PE {
public:

	PE(void);
	PE(ap_shift_reg<type_t, 2> score_reg);

	void compute(void);

	void update(void);

private:
	// this is used to hold temporary score before shifting. 
	type_t score;
	ap_shift_reg<type_t, 2> *score_reg;

};

class LinearPE : public PE {
public:
	LinearPE(ap_shift_reg<type_t, 2> score_reg);

	void update();

	void compute(ap_uint<2> local_ref_val, ap_uint<2> local_query_val,
		type_t up_prev, type_t left_prev, type_t diag_prev,
		ap_shift_reg<type_t, 3>& score,
		type_t* final);

private:
	type_t score;
	ap_shift_reg<type_t, 2> *score_reg;

};


class AffinePE : public PE {
public:
	ap_shift_reg<type_t, 2> score_reg;
	ap_shift_reg<type_t, 1> Ix_reg;
	ap_shift_reg<type_t, 1> Iy_reg;

	AffinePE(void);

	//AffinePE(ap_shift_reg<type_t, 2> &score_reg,
	//ap_shift_reg<type_t, 1> &Ix_reg,
	//ap_shift_reg<type_t, 1> &Iy_reg);

	void update();

	void compute(ap_uint<2> local_ref_val, ap_uint<2> local_query_val,
		ap_shift_reg<type_t, 2>& score_up,
		ap_shift_reg<type_t, 1>& Ix_up,
		type_t* final);

private:
	type_t score;
	type_t Ix;
	type_t Iy;

};
#endif // !PE_H

// Static data members are shared by all instances of a class.
