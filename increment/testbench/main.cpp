#include "../include/testbench.h"
#include <cstdio>

int main() {
	printf("Test Task Channel PE\n");
	Testbench::test_task_channel_pe();
	
	printf("Test Block PE\n");
	Testbench::test_block_pe();

	printf("Finish Tests\n");
	return 0;
}