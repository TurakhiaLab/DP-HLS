/**
 * @file testbench.cpp
 * @author Yingqi Cao (yic033@ucsd.edu)
 * @brief Testbench code for specific components of the alignHLS kernel.  
 * @version 0.1
 * @date 2023-10-01
 * 
 * @copyright Copyright (c) 2023
 * 
 */

#include <hls_vector.h>
#include <stdlib.h>

#include "../include/testbench.h"
#include "../include/params.h"
#include "../include/PE.h"
#include "../include/seq_align.h"

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
    PE::ExpandComputeTC(
        local_query,
        local_reference,
        wavefronts,
        write_score_arr,
        write_traceback_arr
    );
}

void Testbench::test_stream_pe(){
    /* Test whether the dataflow PE array works. 
    * 
    */

   char_t local_querys[PE_NUM];

    stream_of_blocks<input_char_block_t > local_references_stm;
    stream_of_blocks<score_block_t > up_prevs_stm;
    stream_of_blocks<score_block_t > diag_prevs_stm;
    stream_of_blocks<score_block_t > left_prevs_stm;
    stream_of_blocks<score_block_t > output_scores_stm;
    stream_of_blocks<tbp_block_t > output_tbp_stm;

    write_lock<input_char_block_t > local_references_acc(local_references_stm);

    for (int i = 0; i < PE_NUM; i++) {
        local_querys[i] = rand() % 4;
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

    PE::ExpandComputeSoB(
        local_querys,
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

void Testbench::test_compute_chunk_sob(){
    idx_t chunk_row_offset = 0;
    input_char_block_t query;
    char_t reference[MAX_REFERENCE_LENGTH];
    score_block_t init_col;
    hls::vector<type_t, N_LAYERS> init_row_scr[MAX_REFERENCE_LENGTH];
    int query_len = 12;
    int ref_len = 168;

    hls::vector<type_t, N_LAYERS> preserved_row_scr[MAX_REFERENCE_LENGTH];
    ScorePack max;  // write out so must pass by reference
    hls::stream_of_blocks<tbp_chunk_block_t> tbp_out;


    for (int i = 0; i < PE_NUM; i++) {
        query[i] = rand() % 4;
        init_col[i] = hls::vector<type_t, N_LAYERS>(rand() % 100);
    }

    for (int i = 0; i < MAX_REFERENCE_LENGTH; i++){
        reference[i] = rand() % 4;
        init_row_scr[i] = hls::vector<type_t, N_LAYERS>(rand() % 100);
    }

    Align::ChunkComputeSoB(
        chunk_row_offset,
        query,
        reference,
        init_col,
        init_row_scr,
        query_len,
        ref_len,
        preserved_row_scr,
        max,
        tbp_out
    );
    
}

void Testbench::test_compute_chunk_arr(){
    idx_t chunk_row_offset = 0;
    input_char_block_t query;
    char_t reference[MAX_REFERENCE_LENGTH];
    score_block_t init_col;
    hls::vector<type_t, N_LAYERS> init_row_scr[MAX_REFERENCE_LENGTH];
    int query_len = 12;
    int ref_len = 168;

    hls::vector<type_t, N_LAYERS> preserved_row_scr[MAX_REFERENCE_LENGTH];
    ScorePack max;  // write out so must pass by reference
    tbp_chunk_block_t tbp_out;

        for (int i = 0; i < PE_NUM; i++) {
        query[i] = rand() % 4;
        init_col[i] = hls::vector<type_t, N_LAYERS>(rand() % 100);
    }

    for (int i = 0; i < MAX_REFERENCE_LENGTH; i++){
        reference[i] = rand() % 4;
        init_row_scr[i] = hls::vector<type_t, N_LAYERS>(rand() % 100);
    }

    Align::ChunkCompute(
        chunk_row_offset,
        query,
        reference,
        init_col,
        init_row_scr,
        query_len,
        ref_len,
        preserved_row_scr,
        max,
        tbp_out
    );
}