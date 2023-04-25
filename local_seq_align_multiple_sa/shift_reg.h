#include "params.h"

template <typename T, int LEN> class ShiftRegister{
public:
    ShiftRegister(void){
#pragma HLS ARRAY_PARTITION variable=data dim=1 complete
    }

    T operator[](char index){
        return data[index];
    };

    void shift(T input){
        for (int i = 1; i < LEN; i++){
#pragma HLS unroll
            // expect to be done within one cycle
            data[i] = data[i-1];
        }
        data[0] = input;
    };

private:
    T data[LEN];
};
