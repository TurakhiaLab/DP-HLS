#ifndef VPP_CLI
#include "../include/debug.h"
#include "../include/solutions.h"
#else
#include "debug.h"
#include "solutions.h"
#endif

void Container::cast_scores(){
    this->scores_cpp[0][0][0] = 1;
    for (int k = 0; k < N_LAYERS; k++){
        for (int i = 0; i < MAX_QUERY_LENGTH; i++){
            for (int j = 0; j < MAX_REFERENCE_LENGTH; j++){
                this->scores_cpp[k][i][j] = this->scores_kernel[i][j][k].to_float();
            }
        }
    }
}

void Container::cast_tb(){
    for (int i = 0; i < MAX_QUERY_LENGTH; i++){
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++){
            char tbr_val = '*';
            if (tb_mat_kernel[i][j] == AL_DEL){
                tbr_val = 'U';
            } else if (tb_mat_kernel[i][j] == AL_INS){
                tbr_val = 'L';
            } else if (tb_mat_kernel[i][j] == AL_MMI){
                tbr_val = 'D';
            } else if (tb_mat_kernel[i][j] == AL_END){
                tbr_val = 'E';
            }
            this->tb_mat_cpp[i][j] = tbr_val;
        }
    }
}

void Container::cast_tbp(){
    for (int i = 0; i < MAX_QUERY_LENGTH; i++){
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++){
            this->tbp_mat_cpp[i][j] = this->tbp_mat_kernel[i][j].to_uint();
        }
    }
}

void Container::cast_all(){
    cast_scores();
    cast_tb();
    cast_tbp();
}

void Container::set_score(int chunk_row_offset, int chunk_col_offset, int pe_num, int wavefront, score_vec_t vals, bool pred){
    // for (int i = 0; i < N_LAYERS; i++){
    //     this->scores_kernel[chunk_row_offset + pe_num][chunk_col_offset + wavefront][i] = vals[i];
    // }
    int row = chunk_row_offset + pe_num;
    int col = chunk_col_offset + wavefront - pe_num;
    if (0 <= row < MAX_QUERY_LENGTH && 0 <= col < MAX_REFERENCE_LENGTH && pred){
        this->scores_kernel[row][col] = vals;
    }
}

void Container::compare_scores(
    array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> scores_sol,
    int query_len, int ref_len){
    this->cast_scores();
    bool mismatch = false;
    for (int k = 0; k < N_LAYERS; k++){
        for (int i = 0; i < query_len; i++){
            for (int j = 0; j < ref_len; j++){
                if (this->scores_cpp[k][i][j] != scores_sol[k][i][j]){
                    printf("Mismatch at (%d, %d, %d): %f != %f\n", k, i, j, this->scores_cpp[k][i][j], scores_sol[k][i][j]);
                    // print solution and kernel scores
                    mismatch = true;

                }
            }
        }
    }
    if (mismatch){
        for (int k = 0; k < N_LAYERS; k++){
            print_matrix<float, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(scores_sol[k], "Solution Score Matrix, Layer: " + std::to_string(k));
            print_matrix<float, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(this->scores_cpp[k], "Kernel Score Matrix, Layer: " + std::to_string(k));
        }
    } else {
        printf("All scores match!\n");
    }
}

void Container::set_scores_wf(int chunk_row_offset, int chunk_col_offset, int wavefront, score_vec_t vals[PE_NUM], bool predicates[PE_NUM]){
    for (int i = 0; i < PE_NUM; i++){
        this->set_score(chunk_row_offset, chunk_col_offset, i, wavefront, vals[i], predicates[i]);
    }
}


std::vector<float> DebugUtils::translate_vec(hls::vector<type_t, N_LAYERS> (&arr)){
    std::vector<float> vec;
    for (int i = 0; i < N_LAYERS; i++){
        vec.push_back(arr[i]);
    }
    return vec;
}

std::vector<std::vector<float>> DebugUtils::translate_scores(hls::vector<type_t, N_LAYERS> (&arr)[PE_NUM]){
    std::vector<std::vector<float>> vec;
    for (int i = 0; i < PE_NUM; i++){
        vec.push_back(translate_vec(arr[i]));
    }
    return vec;
}

void DebugUtils::Translate::print_3d(const char * name, std::vector<std::vector<std::vector<float>>> scores)
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

void DebugUtils::Translate::print_2d(const char * name, std::vector<std::vector<float>> scores)
{
    printf("%s\n", name);
    printf("%f ", 0.0);
    for (int i = 0; i < scores.size(); i++)
    {
        printf("%f ", (float) i);
    }
    for (int i = 0; i < scores.size(); i++)
    {
        printf("%f ", float(i));
        for (int k = 0; k < scores[0].size(); k++)
        {

            printf("%f ", scores[i][k]);
        }
        printf("\n");
    }
    printf("\n");
    
}

void DebugUtils::Translate::print_1d(const char * name, std::vector<float> scores)
{
    printf("%s\n", name);
    for (int i = 0; i < scores.size(); i++)
    {
        printf("%f ", scores[i]);
    }
    printf("\n");
}