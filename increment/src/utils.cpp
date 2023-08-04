#include "../include/utils.h"


template<typename T>
T* utils::Reduction<T>::max(T* arr, int len) {
    T* tmp = arr;
    for (int i = 0; i < len; i++) {
        if (*tmp < *arr) { tmp = arr; ++arr; }
    }
}

template<typename T>
void utils::Initial<T>::fill(T* arr, int val, int len) {
    for (int i = 0; i < len; i++) {
        *arr++ = (T)val;
    }
}

// >>> The followings are the Tensor implementation >>>
template<typename T>
utils::Tensor<T>::Tensor(int d1) {
    T arr[d1];
    this->data = arr;
    this->ld1 = d1;
    this->ld2 = 1;
    this->ld3 = 1;
}

template<typename T>
utils::Tensor<T>::Tensor(int d1, int d2) {
    T arr[d1 * d2];
    this->data = arr;
    this->ld1 = d1*d2;
    this->ld2 = d2;
    this->ld3 = 1;
}

template<typename T>
utils::Tensor<T>::Tensor(int d1, int d2, int d3){
    T arr[d1 * d2 * d3];
    this->data = arr;
    this->ld1 = d1*d2*d3;
    this->ld2 = d2*d3;
    this->ld3 = d3;
}

template<typename T>
void utils::Tensor<T>::reshape(int d1, int d2)
{
    this->ld1 = d1 * d2;
    this->ld2 = d2;
    this->ld3 = 1;
}

template<typename T>
T& utils::Tensor<T>::operator()(int d1, int d2)  // the problem was the bracket is a unary operator, it should not have two members
{
    return this->data[d1*this->ld2+d2];
}
