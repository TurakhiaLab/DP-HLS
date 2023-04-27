/*
* This file contains the definition of my own shift register class. 
* It is a header only class. Include the header and use directly. 
* 
*/

#ifndef SHIFT_REGISTER_H
#define SHIFT_REGISTER_H

template <typename T, int LEN> class ShiftRegister {
public:
    ShiftRegister(void) {
#pragma HLS ARRAY_PARTITION variable=data dim=1 complete
        for (int i = 0; i < LEN; i++) {
#pragma HLS unroll
            data[i] = 0;
        }
    }

    T operator[](int index) {
        return data[index];
    };

    void shift(T input) {
        for (int i = 1; i < LEN; i++) {
#pragma HLS unroll
            // expect to be done within one cycle
            data[i] = data[i - 1];
        }
        data[0] = input;
    };

private:
    T data[LEN];
};


#endif // !SHIFT_REGISTER_H


