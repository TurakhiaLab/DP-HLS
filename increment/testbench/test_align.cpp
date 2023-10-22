/**
 * @file test_align.cpp
 * @author Yingqi Cao (yic033@ucsd.edu)
 * @brief Testbench for Kernel with CMake. 
 * @version 0.1
 * @date 2023-10-01
 * 
 * @copyright Copyright (c) 2023
 * 
 */

#include "../include/seq_align_multiple.h"
#include "../include/params.h"
#include "../include/pyapi.h"

#include <cassert>
#include <vector>

using namespace std;

int main()
{

    string query_string = "AGTC"; // "AGTCTAGGC";     // CCGTAGACCCGAACTTCGCGGTACACCTTCTGAAACCGTCCCTAATCCGACGAGCGCCTTGAGAACG";
    string reference_string = "TGCC"; "TGCCGCGACCT"; // TGAGAACGTAGTCTAGGCGAATCGGCCCTTGTATATCGGGGCCGTAGACCCGAACTTCGCGGTACAC";

    AHRunner runner(query_string, reference_string);

    runner.run();

    auto result = runner.get_traceback_path();

    return 0;
}