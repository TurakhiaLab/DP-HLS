#include <cstdint>

template <typename T, int LEN> class ShiftRegister{
public:
    ShiftRegister(void){
#pragma HLS ARRAY_PARTITION variable=data dim=0 complete
    }

    T operator[](int index){
        return data[index];
    };

    void shift(T input){
        for (int i = 0; i < LEN-1; i++){
#pragma HLS unroll
            // expect to be done within one cycle
            data[i] = data[i+1];
        }
        data[LEN-1] = input;
    };

private:
    T data[LEN];
};