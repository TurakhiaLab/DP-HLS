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

void Utils::Debug::Translate::print_3d(const char * name, std::vector<std::vector<std::vector<float>>> scores)
{
    printf("%s\n", name);
    for (int k = 0; k < scores[0][0].size(); k++)
    {
        printf("Layer %d\n", k);
        for (uint32_t i = 0; i < scores.size(); i++)
        {
            for (uint32_t j = 0; j < scores[0].size(); j++)
            {
                printf("%f ", scores[i][j][k]);
            }
            printf("\n");
        }
        printf("\n");
    }
}

void Utils::Debug::Translate::print_2d(const char * name, std::vector<std::vector<float>> scores)
{
    printf("%s\n", name);
    for (int i = 0; i < scores.size(); i++)
    {
        for (int k = 0; k < scores[0].size(); k++)
        {
            printf("%f ", scores[i][k]);
        }
        printf("\n");
    }
    printf("\n");
    
}

void Utils::Debug::Translate::print_1d(const char * name, std::vector<float> scores)
{
    printf("%s\n", name);
    for (int i = 0; i < scores.size(); i++)
    {
        printf("%f ", scores[i]);
    }
    printf("\n");
}