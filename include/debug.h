#ifndef DP_HLS_DEBUG_H
#define DP_HLS_DEBUG_H

/*
 * This file contains debug functions of the kernel. Internal development purpose only.
 */
#include "params.h"
#include <list>
#include <string>
#include <experimental/filesystem>
#include <fstream>
#include <unordered_map>
#include <hls_vector.h>
#include "utils.h"
#include <cstdarg>

namespace fs = std::experimental::filesystem;
using namespace fs;
using namespace std;


class Container {
public:

    static list<hls::vector<type_t, N_LAYERS>> scores[PE_NUM];

    // Static member function to access the single instance
    static Container& containerInit(string debugpath, string filename, const int query_length, const int reference_length) {
        static Container instance(debugpath, filename, query_length, reference_length);
        return instance;
    };

    static Container& getInstance() {
        // This ensures that the instance is created only once
        static Container instance;
        return instance;
    }

    /**
     * @brief Record scores of a wavefront. Place it immediately after the scores are computed.
     *
     * @param pe_scores PE Scores Array.
     * @param predicate Predicate
     */
    void record_score(hls::vector<type_t, N_LAYERS> pe_scores[PE_NUM], bool predicate[PE_NUM]) {
        for (int i = 0; i < PE_NUM; i++){
            if (predicate[i]){
                (Container::scores)[i].push_back(pe_scores[i]);
            }
        }
    };

    void print_scores() {
        FILE *outputFile = std::fopen(this->filepath.c_str(), "a");

        for (int l = 0; l < N_LAYERS; l++) {
            fprintf(outputFile, "\nRaw Score Matrix %d\n", l);

            list<hls::vector<type_t, N_LAYERS>>::iterator it[PE_NUM];
            for (int i = 0; i < PE_NUM; i++) {
                it[i] = Container::scores[i].begin();
            }

            for (int i = 0; i < this->query_length; i++) {
                for (int j = 0; j < this->reference_length; j++) {
                    if (it[i % PE_NUM] != Container::scores[i % PE_NUM].end()) {
                        fprintf(outputFile, "%d ", int((*(it[i % PE_NUM]++))[l]));
                    }
                }

                fprintf(outputFile, "\n");
            }
        }
    };

private:
    string debugpath;
    string filepath;
    int query_length;
    int reference_length;


    // Private constructor to prevent external instantiation
    Container() {};

    Container(const string debugpath, const string filename, const int query_length, const int reference_length) {
        this->query_length = query_length;
        this->reference_length = reference_length;

        this->debugpath = debugpath;  // set the path to the debug folder
        fs::path path(debugpath);  // get the path to the debug folder
        fs::remove_all(path);
        fs::create_directories(path);
        this->filepath =  debugpath + "/" + filename;
        std::ofstream createFile(this->filepath);
        assert(createFile.is_open() && "Unable to Create File");  // create file to write =
        createFile.close();
    };

    // Private destructor to prevent external destruction
    ~Container() {};


};


namespace Debug
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
