//
// Created by centos on 4/16/24.
//
#include <hls_vector.h>
#include <ap_int.h>

/**
 * This test file shows a weird feature regards the comparision between SIMD vectors.
 * The boolean will be the same among all the elements in the result vector, and the value is the first comparision.
 * This feature persists accross all the ==, >, <, >=, <=, != operators.
 * @return
 */

int main(){
    typedef  ap_uint<16> integer_type;
    hls::vector<short, 4> v1 = {-1, 0, 1, 2};
    hls::vector<short, 4> v2 = {1, 1, 1, 1};
    hls::vector<short, 4> v3 = {-1, 0, 1, 2};
    hls::vector<short, 4> diff = v1 - v2;
    bool results = v1 == v2;
    bool results2 = v1 == v3;
    // print the boolean array
    std::cout << results << " " << std::endl;
    std::cout << results2 << " " << std::endl;
//    for(int i = 0; i < 4; i++){
//        std::cout << results[i] << " ";
//    }
    std::cout << std::endl;
    // print the difference array
    for(int i = 0; i < 4; i++){
        std::cout << diff[i] << " ";
    }
    return 0;
}