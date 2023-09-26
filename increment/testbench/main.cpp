#include "../include/testbench.h"
#include <cstdio>

int components_test() {
	printf("Test Task Channel PE\n");
	Testbench::test_task_channel_pe();
	
	printf("Test Block PE\n");
	Testbench::test_block_pe();

	// printf("Test Compute Chunk\n");
	// FIXME: SIMULATION HANG
	// Testbench::test_compute_chunk_block();


	printf("Test Compute Chunk Arr\n");
	Testbench::test_compute_chunk_arr();

	printf("Finish Tests\n");
	return 0;
}