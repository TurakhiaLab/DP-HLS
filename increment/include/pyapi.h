#ifndef PYAPI_H
#define PYAPI_H

#include "./params.h"
#include <string>
#include <vector> 

using namespace std;

class Results {
public:
    tbp_t tb_streams[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];
    hls::vector<type_t, N_LAYERS> scores[N_BLOCKS][MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH];

    Results(){
        for (int b = 0; b < N_BLOCKS; b++){
            for (int i = 0; i < MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH; i++){
                tb_streams[b][i] = 0;
            }
            for (int i = 0; i < MAX_QUERY_LENGTH; i++){
                for (int j = 0; j < MAX_REFERENCE_LENGTH; j++){
                    scores[b][i][j] = (score_vec_t) 0;
                }
            }
        }
    };
};

Results kernel_traceback_path(
    string query_string, string reference_string
    );

class AHRunner {
public:
    string query, reference;

    AHRunner(){
        this->query = "";
        this->reference = "";
    };

    AHRunner(string query_string, string reference_string){
        this->query = query_string;
        this->reference = reference_string;
    };

    /**
     * @brief runs the kernel with the query and reference strings
     * set already.
     * 
     */
    void run();

    /**
     * @brief runs the kernel with provided query and strings. 
     * 
     * @param query_string 
     * @param reference_string 
     */
    void run(string query_string, string reference_string);

    /**
     * @brief returns the traceback path. Address the traceback path of the zeroth 
     * block as tbp[0] and the oneth element as tbp[0][1].
     * 
     * @return std::vector<std::vector<string>> 
     */
    std::vector<std::vector<string>> get_traceback_path();

    /**
     * @brief Get the scores of all the blocks. Each block score is a 3d vector with
     * dimension query_length x reference_length x N_LAYERS.
     * 
     * @return std::vector<std::vector<std::vector<float>>> 
     */
    std::vector<std::vector<std::vector<std::vector<float>>>> get_scores();

    // FIXME: Wanted to have scores snapshot, but it requires a 5 dimensional vector. 
    // This feature is not sure to implement yet. 
    // std::vector<std::vector<std::vector<std::vector

private:
    string query_string;
    string reference_string;
    
    tbp_t tb_streams[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];

    //FIXME: Scores could be represented by a simpler format. 
    hls::vector<type_t, N_LAYERS> scores[N_BLOCKS][MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH];
    
    char_t base_to_num(char base);
};


#endif