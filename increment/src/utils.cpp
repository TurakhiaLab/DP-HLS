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