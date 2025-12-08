#!/bin/bash

NUM_THREADS=36


if [ ! -d build ]; then
    mkdir build
fi

if [ ! -d reports ]; then
    mkdir reports
fi

cd seqan3_baseline

echo -e "\033[32mCleaning up the build folder...\033[0m"
make clean
rm ../reports/*

echo -e "\033[32mCompiling all of the kernels...\033[0m"
make all

echo -e "\033[32mRunning global affine kernel...\033[0m"
../build/global_affine $NUM_THREADS > ../reports/global_affine.txt

echo -e "\033[32mRunning global linear kernel...\033[0m"
../build/global_linear $NUM_THREADS > ../reports/global_linear.txt

echo -e "\033[32mRunning local affine kernel...\033[0m"
../build/local_affine $NUM_THREADS > ../reports/local_affine.txt

echo -e "\033[32mRunning local linear kernel...\033[0m"
../build/local_linear $NUM_THREADS > ../reports/local_linear.txt

echo -e "\033[32mRunning semi global linear kernel...\033[0m"
../build/semi_global_linear $NUM_THREADS > ../reports/semi_global_linear.txt

echo -e "\033[32mRunning overlap linear kernel...\033[0m"
../build/overlap_linear $NUM_THREADS > ../reports/overlap_linear.txt

echo -e "\033[32mRunning banded local affine kernel...\033[0m"
../build/banded_local_affine $NUM_THREADS > ../reports/banded_local_affine.txt

echo -e "\033[32mRunning banded global linear kernel...\033[0m"
../build/banded_global_linear $NUM_THREADS > ../reports/banded_global_linear.txt

cd ..

echo "All kernels have been run. Extracting reports..."
python3 seqan3_baseline/extract_report.py
