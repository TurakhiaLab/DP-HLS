#ifndef UTILS_H
#define UTILS_H

#include "params.h"
#include "hls_streamofblocks.h"

namespace Utils {
	namespace Array {
		// 0, 1, 2, ...
		template <typename T, int N>
		void ShiftLeft(T arr[N], T new_data);  // shift towards smaller index
		
		template <typename T, int N>
		void ShiftRight(T arr[N], T new_data);  // shift towards larger index

		template <typename T, int N>
		void WriteStreamBlock(T arr[N], hls::stream_of_blocks<T[N]> &stream_block);
	}

	namespace Init {
		void Predicate(bool predicate[PE_NUM]);
		
		template <typename T, int N>
		void ArrSet(T arr[N], T val);
	}
}

#endif // UTILS_H