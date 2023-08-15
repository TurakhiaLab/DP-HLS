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

void Testbench::test_block_pe(){
    /* Test whether the dataflow PE array works. 
    * 
    */

    stream_of_blocks<input_char_block_t > local_querys_stm;
    stream_of_blocks<input_char_block_t > local_references_stm;
    stream_of_blocks<score_block_t > up_prevs_stm;
    stream_of_blocks<score_block_t > diag_prevs_stm;
    stream_of_blocks<score_block_t > left_prevs_stm;
    stream_of_blocks<score_block_t > output_scores_stm;
    stream_of_blocks<tbp_block_t > output_tbp_stm;

    write_lock<input_char_block_t > local_querys_acc(local_querys_stm);
    write_lock<input_char_block_t > local_references_acc(local_references_stm);

    for (int i = 0; i < PE_NUM; i++) {
        local_querys_acc[i] = rand() % 4;
        local_references_acc[i] = rand() % 4;
    }

    write_lock<score_block_t > up_prevs_acc(up_prevs_stm);
    write_lock<score_block_t > diag_prevs_acc(diag_prevs_stm);
    write_lock<score_block_t > left_prevs_acc(left_prevs_stm);
    
    for (int i = 0; i < PE_NUM; i++){
        up_prevs_acc[i] = hls::vector<type_t, N_LAYERS>(rand() % 100);
        diag_prevs_acc[i] = hls::vector<type_t, N_LAYERS>(rand() % 100);
        left_prevs_acc[i] = hls::vector<type_t, N_LAYERS>(rand() % 100);
    }

    PE::ExpandComputeBlock(
        local_querys_stm,
        local_references_stm,
        up_prevs_stm,
        diag_prevs_stm,
        left_prevs_stm,
        output_scores_stm,
        output_tbp_stm
    );

    read_lock<score_block_t > output_scores_acc(output_scores_stm);
    read_lock<tbp_block_t > output_tbp_acc(output_tbp_stm);

    for (int i = 0; i < PE_NUM; i++){
        std::cout << float(output_scores_acc[i][0]);
        
    }
    std::cout << std::endl;
    for (int i = 0; i < PE_NUM; i++){
        std::cout << float(output_tbp_acc[i][0]);
    }
    std::cout << std::endl;
}