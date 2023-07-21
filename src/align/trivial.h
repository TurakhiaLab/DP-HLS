#ifndef TRIVIAL_H
#define TRIVIAL_H

#include "../../include/params.h"
#include "hls_vector.h"
void foo(hls::vector<tbp_t,N_LAYERS> (*input)[MAX_REFERENCE_LENGTH]){
    bar: for (int i = 0; i < PE_NUM; i++){
        bar_1: for (int j = 0; j < MAX_REFERENCE_LENGTH; j++){
            input[i][j][1] = input[i][j][2] + 2;
        }
    }
}

#endif