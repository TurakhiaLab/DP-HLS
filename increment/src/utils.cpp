#include "../include/utils.h"

std::vector<float> Utils::Debug::translate_vec(hls::vector<type_t, N_LAYERS> (&arr)){
    std::vector<float> vec;
    for (int i = 0; i < N_LAYERS; i++){
        vec.push_back(arr[i]);
    }
    return vec;
}

std::vector<std::vector<float>> Utils::Debug::translate_scores(hls::vector<type_t, N_LAYERS> (&arr)[PE_NUM]){
    std::vector<std::vector<float>> vec;
    for (int i = 0; i < PE_NUM; i++){
        vec.push_back(translate_vec(arr[i]));
    }
    return vec;
}