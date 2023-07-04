#ifndef UTILS_H
#define UTILS_H

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

#endif // UTILS_H