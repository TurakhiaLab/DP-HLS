#include "../include/utils.h"

template <typename T, int N>
void Utils::Array::ShiftLeft(T arr[N], T new_data) {
	for (int i = 0; i < N; i++) {
#pragma HLS unroll
		arr[i] = arr[i + 1];
	}
	arr[N - 1] = new_data;
}

template <typename T, int N>
void Utils::Array::ShiftRight(T arr[N], T new_data) {
	for (int i = N-1; i >= 0; i--) {
#pragma HLS unroll
		arr[i] = arr[i - 1];
	}
	arr[0] = new_data;
}

void Utils::Init::Predicate(bool predicate[PE_NUM]){
#pragma HLS array_partition variable = predicate type = complete
	for (int i = 0; i < PE_NUM; i++){
		predicate[i] = false;
	}
}

template <typename T, int N>
void WriteStreamBlock(T arr[N], hls::stream_of_blocks<T[N]> &stream_block){
	hls::write_lock<T[N]> wr(stream_block);

#pragma HLS array_partition variable = arr type = complete
#pragma HLS array_partition variable = wr type = complete
	
	for (int i = 0; i < N; i++){
#pragma HLS unroll
		wr[i] = arr[i];
	}
}

template <typename T, int N>
void Utils::Init::ArrSet(T arr[N], T val){
#pragma HLS array_partition variable = arr type = complete
	for (int i = 0; i < N; i++){
#pragma HLS unroll
		arr[i] = val;
	}
}