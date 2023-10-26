#ifndef DP_HLS_DEBUG_H
#define DP_HLS_DEBUG_H

/*
 * This file contains debug functions of the kernel. Internal development purpose only.
 */
#include "params.h"
#include <list>
#include <string>
#include <filesystem>
#include <fstream>
#include <unordered_map>
#include <hls_vector.h>
#include "utils.h"
#include <cstdarg>

namespace fs = std::filesystem;
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

#endif //DP_HLS_DEBUG_H
