#pragma once

#include "params.h"

#include <array>
#include <string>
#include <map>

using namespace std;

struct Penalties_sol {
    float extend;
    float open;
    float linear_gap;
    float match;
    float mismatch;
};

void global_linear_solution(std::string query, std::string reference, Penalties_sol &penalties, 
    array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> &score_mat, 
    array<array<char, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> &tb_mat,
    map<string, string> &alignments);


void global_affine_solution(std::string query, std::string reference, Penalties_sol &penalties, 
    array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> &score_mat, 
    array<array<string, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> &tb_mat,
    map<string, string> &alignments);

void local_affine_solution(std::string query, std::string reference, Penalties_sol &penalties, 
    array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> &score_mat, 
    array<array<string, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> &tb_mat,
    map<string, string> &alignments);


template<typename T, int M, int N>
void print_matrix(array<array<T, N>, M> &mat, string name) {
    cout << name << endl;
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++){
            cout << mat[i][j] << " ";
        }
        cout << endl;
    }
}

template<typename T, int N>
void print_vector(array<T, N> &vec, string name) {
    cout << name << endl;
    for (int i = 0; i < N; i++) {
        cout << vec[i] << " ";
    }
    cout << endl;
}