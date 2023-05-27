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
				if (top == V - 1) {
					std::cout << "Stack Overflow" << std::endl;
					return;
				}
				data[++top] = item;
			}
			T pop() {
				if (top == -1) {
					std::cout << "Stack Underflow" << std::endl;
					return -1;
				}
				return data[top--];
			}
			T peek() {
				if (top == -1) {
					std::cout << "Stack Underflow" << std::endl;
					return -1;
				}
				return data[top];
			}
			bool isEmpty() {
				return top == -1;
			}
			bool isFull() {
				return top == V-1;
			}
    };
};

#endif // UTILS_H