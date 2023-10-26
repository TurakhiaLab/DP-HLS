#include "../include/pyapi.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include "hls_vector.h"

int main(){
    const int integer_bits = 3;
    const int fractional_bits = 11;

    ap_fixed<integer_bits, fractional_bits> dim1[3] = {1.5, 2.5, 3.5};
    hls::vector<ap_fixed<integer_bits, fractional_bits>, 3> dim2 = {dim1, dim1, dim1};
    hls::vector<ap_fixed<integer_bits, fractional_bits>, 3>  dim3[3] = {dim2, dim2, dim2};

    auto casted = MultidimCast<hls::vector<ap_fixed<integer_bits, fractional_bits>, 3>, std::vector<std::vector<std::vector<float>>>,  3 >(dim3);

    return 0;
}