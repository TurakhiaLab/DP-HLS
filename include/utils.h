#ifndef UTILS_H
#define UTILS_H

#include <hls_stream.h>
#include <hls_streamofblocks.h>
#include "params.h"

using namespace hls;

namespace utils{
    template <typename T, int V>
    class Stack {
        public:
			T data[V];
			int top;
            Stack() {
				top = -1;
			}
			void push(T item) {
				if (top != V - 1) {
					data[++top] = item;
				}
			}
			T pop() {
				if (top != -1) {
					return data[top--];
				}
			}
			T peek() {
				if (top != -1) {
					return data[top];
				}
			}
			bool isEmpty() {
				return top == -1;
			}
			bool isFull() {
				return top == V-1;
			}
    };

	template <typename T>
	class Reduction {  // this is a class that is used to do the reduction operations in HLS
	public:
		T* max(T* arr, int len);

	};

	template <typename T>
	class Initial {
	public:
		static void fill(T* arr, int val, int len);  // Fill a data strucutre with a value for desired length.
	};

	template <typename T>
	class Tensor {
	public:
		T* data;
		unsigned short ld1, ld2, ld3;

		Tensor() = default;
		Tensor(int d1);
		Tensor(int d1, int d2);
		Tensor(int d1, int d2, int d3);

		void reshape(int d1, int d2);

		T& operator()(int d1, int d2);


	};

};

namespace Utils{
    void PackInput(stream_of_blocks<raw_query_block_t> &query,
                   stream_of_blocks<raw_reference_block_t> &reference,
                   stream_of_blocks<init_col_score_block_t> &init_col_scr,
                   stream_of_blocks<init_row_score_block_t> &init_row_scr,
                   hls::stream<int> &query_length, hls::stream<int> &reference_length,
                   hls::stream<BlockInputs> &input_stream);
    void PackInputSimple(stream<BlockInputs> &copied, stream<BlockInputs> &copy);
    void CollectTraceback(stream<BlockOutputs> &tbp_outputs, stream_of_blocks<traceback_block_t> &block_outputs);
    void CollectTracebackSimple(stream<BlockOutputs> &copied, stream<BlockOutputs> &copy);
}

#endif // UTILS_H