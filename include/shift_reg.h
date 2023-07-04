#ifndef SHIFT_REGISTER_H
#define SHIFT_REGISTER_H

#include "params.h"

template <typename T, int LEN> class ShiftRegister {  // This is a shift register, for data index 1, 2, 3, ...
/*
* WARNING: This only works when used to hold scores
*/
public:
	ShiftRegister(void) {
#pragma HLS ARRAY_PARTITION variable=data dim=1 complete
		for (int i = 0; i < LEN; i++) {
#pragma HLS unroll
			
				data[i] = zero_fp;
		}
	}

	T operator[](int index) {
		return data[index];  // returning array is not allowed
	};

	void shift_right(T input) {
		for (int i = LEN - 1; i > 0; i--) {  // shift towards the larger index
#pragma HLS unroll
			// expect to be done within one cycle
			
				data[i] = data[i - 1];
			
			
		}
		
			data[0] = input;
		
	};

	void shift_right() {
		for (int i = LEN - 1; i > 0; i--) {  // shift towards the larger index
#pragma HLS unroll
			// expect to be done within one cycle
			
				data[i] = data[i - 1];
			
		}
		
			data[0] = zero_fp;
		
	};

	void shift_left(T input) {
		for (int i = 0; i < LEN - 1; i++) {  // shift towards the smaller index
#pragma HLS unroll
			// expect to be done within one cycle
			
				data[i] = data[i + 1];
			
		}
		
			data[LEN - 1] = input;
		
	};

	void shift_left() {
		for (int i = 0; i < LEN - 1; i++) {  // shift towards the smaller index
#pragma HLS unroll
			// expect to be done within one cycle
			
				data[i] = data[i + 1];
			
		}
		
			data[LEN - 1] = zero_fp;
		
	};

	void clear() {
		for (int i = 0; i < LEN; i++) {
			shift_left();
		}
	}

private:
	T data[LEN];
};

template <typename T, int NUM, int LEN> class ShiftRegisterBlock {
public:
	ShiftRegister<T, LEN> data[NUM];
	ShiftRegisterBlock(void) {
#pragma HLS ARRAY_PARTITION variable=data dim=1 complete
	}

	void shift_right(T input[NUM]) {
		for (int i = 0; i < NUM; i++) {
#pragma HLS unroll
			data[i].shift_right(input[i]);
		}
	}

	void shift_left(T input[NUM]) {
		for (int i = 0; i < NUM; i++) {
#pragma HLS unroll
			data[i].shift_left(input[i]);
		}
	}

	void shift_right() {
		for (int i = 0; i < NUM; i++) {

#pragma HLS unroll
			data[i].shift_right();
		}
	}

	void shift_left() {
		for (int i = 0; i < NUM; i++) {
#pragma HLS unroll
			data[i].shift_left();
		}
	}

	void clear() {
		for (int i = 0; i < NUM; i++) {
			data[i].clear();
		}
	}

	ShiftRegister<T, LEN>& operator[](int index) {
		return data[index];
	}
};

#endif // !SHIFT_REGISTER_H


