#include <hls_vector.h>
#include <stdlib.h>

#include "../include/testbench.h"
#include "../include/params.h"
#include "../include/PE.h"

void Testbench::test_task_channel_pe() {
	/* Test whether the dataflow PE array works. 
    * 
    */
    
    /*
	    char_t local_query[PE_NUM],
        char_t local_reference[PE_NUM],
        hls::vector<type_t, N_LAYERS> wavefronts[2][PE_NUM],
        hls::vector<type_t, N_LAYERS> write_score_arr[PE_NUM],
        hls::vector<tbp_t, N_LAYERS> write_traceback_arr[PE_NUM]
	*/


    char_t local_query[PE_NUM], local_reference[PE_NUM];
    hls::vector<type_t, N_LAYERS> wavefronts[2][PE_NUM];
    hls::vector<type_t, N_LAYERS> write_score_arr[PE_NUM];
    hls::vector<tbp_t, N_LAYERS> write_traceback_arr[PE_NUM];

    for (int i = 0; i < PE_NUM; i++) {
        local_query[i] = rand() % 4;
        local_reference[i] = rand() % 4;
    }
    for (int j = 0; j < PE_NUM; j++) {
        for (int i = 0; i < 2; i++) {
            wavefronts[i][j] = hls::vector<type_t, N_LAYERS>(rand() % 100);
        }
    }
    PE::ExpandCompute(
        local_query,
        local_reference,
        wavefronts,
        write_score_arr,
        write_traceback_arr
    );
}