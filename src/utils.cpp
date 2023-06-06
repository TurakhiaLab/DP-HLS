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