#ifndef DP_HLS_DEBUG_H
#define DP_HLS_DEBUG_H

/*
 * This file contains debug functions of the kernel. Internal development purpose only.
 */
#include "dp_hls_common.h"
#include <list>
#include <array>
#include <string>
// #include <experimental/filesystem>
#include <fstream>
#include <unordered_map>
#include <hls_vector.h>
#include "utils.h"
#include <vector>
#include <cstdarg>
#include <set>

// NOTE: This file system thing doesn't seems to present on F1 AWS FPGA AMI. 
// It uses higher standard, which older HLS's host compiler doesn't support. 
// namespace fs = std::experimental::filesystem;
// using namespace fs;
using namespace std;


class Container {
    // A data container to store the debug info (score matrix content, traceback content) of each block.
public:
    array<array<score_vec_t, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> scores_kernel;
    array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> scores_cpp;
    
    array<array<tbp_t, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> tbp_mat_kernel;
    array<array<unsigned int, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> tbp_mat_cpp;  // this need to be translated

    array<array<tbr_t, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> tb_mat_kernel;
    array<array<char, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> tb_mat_cpp;  // this need to be translated

    Container() {};

    void cast_scores();
    void cast_tbp();
    void cast_tb();
    void cast_all();

    void set_score(int chunk_row_offset, int chunk_col_offset, int pe_num, int wavefront, score_vec_t vals, bool pred);
    void set_scores_wf(int chunk_row_offset, int chunk_col_offset, int wavefront, score_vec_t vals[PE_NUM], bool predicates[PE_NUM]);
  
    void compare_scores(array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> scores_sol,
    int query_len, int ref_len);

    void compare_scores(array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> scores_sol,
    int query_len, int ref_len, float threashold);

    /**
     * @brief Compare the Kernel Scores with Solution Scores, but when the solution scores are in double precision. 
     * 
     * @param scores_sol 
     * @param query_len 
     * @param ref_len 
     * @param threashold 
     */
    void compare_scores_double(array<array<array<double, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> scores_sol,
    int query_len, int ref_len, float threashold);

private:
    std::string debugpath;
    std::string filepath;

    // Container(const string debugpath, const string filename, const int query_length, const int reference_length) {
    //     this->query_length = query_length;
    //     this->reference_length = reference_length;

    //     this->debugpath = debugpath;  // set the path to the debug folder
    //     fs::path path(debugpath);  // get the path to the debug folder
    //     fs::remove_all(path);
    //     fs::create_directories(path);
    //     this->filepath =  debugpath + "/" + filename;
    //     std::ofstream createFile(this->filepath);
    //     assert(createFile.is_open() && "Unable to Create File");  // create file to write =
    //     createFile.close();
    // };

};


namespace DebugUtils
{
    template <typename T1, typename T2, int LEN>
    void translate(T1 (&hls_arr)[LEN], T2 (&std_arr)[LEN])
    {
        for (int i = 0; i < LEN; i++)
        {
            std_arr[i] = (T2)(hls_arr[i]);
        }
    }

    template <typename T1, typename T2, int M, int N>
    void translate(T1 (&hls_mat)[M][N], T2 (&std_mat)[M][N])
    {
        for (int i = 0; i < M; i++)
        {
            for (int j = 0; j < N; j++)
            {
                std_mat[i][j] = (T2)(hls_mat[i][j]);
            }
        }
    }

    template <typename T1, typename T2, int M, int N, int K>
    void translate_multilayer(T1 (&hls_mat)[M][N], T2 (&std_mat)[K][M][N])
    {
        for (int i = 0; i < M; i++)
        {
            for (int j = 0; j < N; j++)
            {
                for (int k = 0; k < K; k++)
                {
                    std_mat[k][i][j] = (float)(hls_mat[i][j][k]);
                }
            }
        }
    }

    std::vector<float> translate_vec(hls::vector<type_t, N_LAYERS>(&arr));
    std::vector<std::vector<float>> translate_scores(hls::vector<type_t, N_LAYERS> (&arr)[PE_NUM]);

    namespace Translate
    {
        /**
         * @brief Translate a data structure of the shape hls::vector<T, NL> scores[M][N]
         * to 3d nested float stl vector.
         *
         * @tparam T
         * @tparam NL
         * @tparam M
         * @tparam N
         * @param scores
         * @return std::vector<std::vector<std::vector<float>>>
         */
        template <typename T, int NL, int M, int N>
        std::vector<std::vector<std::vector<float>>> translate_3d(
            hls::vector<T, NL> scores[M][N])
        {
            std::vector<std::vector<std::vector<float>>> result;

            for (int i = 0; i < M; i++)
            {
                std::vector<std::vector<float>> pe_row;
                for (int j = 0; j < N; j++)
                {
                    std::vector<float> pe_vec;
                    for (int k = 0; k < NL; k++)
                    {
                        pe_vec.push_back(scores[i][j][k].to_float());
                    }
                    pe_row.push_back(pe_vec);
                }
                result.push_back(pe_row);
            }
            return result;
        }

        /**
         * @brief Translate a data structure of the shape hls::vector<T, NL> scores[N]
         * to 2d nested float stl vector.
         *
         * @tparam T
         * @tparam NL
         * @tparam N
         * @param scores
         * @return std::vector<std::vector<float>>
         */
        template <typename T, int NL, int N>
        std::vector<std::vector<float>> translate_2d(
            hls::vector<T, NL> scores[N])
        {
            std::vector<std::vector<float>> result;

            for (int i = 0; i < N; i++)
            {
                std::vector<float> pe_vec;
                for (int k = 0; k < NL; k++)
                {
                    pe_vec.push_back(scores[i][k].to_float());
                }
                result.push_back(pe_vec);
            }
            return result;
        }

        template <typename T, int M, int N>
        std::vector<std::vector<float>> translate_2d(
            T scores[M][N])
        {
            std::vector<std::vector<float>> result;

            for (int i = 0; i < M; i++)
            {
                std::vector<float> pe_vec;
                for (int k = 0; k < N; k++)
                {
                    pe_vec.push_back(scores[i][k].to_float());
                }
                result.push_back(pe_vec);
            }
            return result;
        }

        /**
         * @brief Translate a data structure of the shape hls::vector<T, NL> scores[N]
         * to 1d nested float stl vector.
         *
         * @tparam T
         * @tparam NL
         * @param scores
         * @return std::vector<float>
         */
        template <typename T, int NL>
        std::vector<float> translate_1d(
            hls::vector<T, NL> scores)
        {
            std::vector<float> result;

            for (int k = 0; k < NL; k++)
            {
                result.push_back(scores[k].to_float());
            }
            return result;
        }

        template <typename T, int N>
        std::vector<float> translate_1d(
            T scores[N])
        {
            std::vector<float> result;

            for (int k = 0; k < N; k++)
            {
                result.push_back(float(scores[k]));
            }
            return result;
        }

        void print_3d(const char * name, std::vector<std::vector<std::vector<float>>> scores);
        void print_2d(const char * name, std::vector<std::vector<float>> scores);
        void print_1d(const char * name, std::vector<float> scores);

    }

}

#endif //DP_HLS_DEBUG_H
