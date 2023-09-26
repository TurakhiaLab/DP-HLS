#ifndef PYAPI_H
#define PYAPI_H

#include "./params.h"
#include <string>

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

Results kernel_traceback_path(string query_string, string reference_string);

#endif