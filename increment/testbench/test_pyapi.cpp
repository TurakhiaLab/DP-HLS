#include <string>
#include "../include/pyapi.h"
#include <cstdio> 
using namespace std;

int main(){
    string qry = "AGTCTAGGCGAATCGGCCCTTGTATATCGGGG";
    string ref = "TGCCGCGACCGTCCCTAATCCGACGAGCGCCT";

    auto results = kernel_traceback_path(qry, ref);

    printf("Finished Testing\n");

    return 0;
}