/**
 * @file components_top.cpp
 * @author Yingqi Cao (yic033@ucsd.edu)
 * @brief Testbench main function for the components in the increment/testbench/testbench.cpp
 * @version 0.1
 * @date 2023-10-01
 * 
 * @copyright Copyright (c) 2023
 * 
 */

#include "../include/testbench.h"
#include <cstdio>

int components_test() {
	printf("Test Task Channel PE\n");
	Testbench::test_task_channel_pe();
	
	printf("Test Stram PE\n");
	Testbench::test_stream_pe();

	// printf("Test Compute Chunk\n");
	// FIXME: SIMULATION HANG
	// Testbench::test_compute_chunk_block();


	printf("Test Compute Chunk Arr\n");
	Testbench::test_compute_chunk_arr();

	printf("Finish Tests\n");
	return 0;
}