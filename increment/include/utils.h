#ifndef UTILS_H
#define UTILS_H

namespace Utils {
	namespace Array {
		// 0, 1, 2, ...
		template <typename T, int N>
		void ShiftLeft(T arr[N], T new_data);  // shift towards smaller index
		
		template <typename T, int N>
		void ShiftRight(T arr[N], T new_data);  // shift towards larger index
	}
}

#endif // UTILS_H