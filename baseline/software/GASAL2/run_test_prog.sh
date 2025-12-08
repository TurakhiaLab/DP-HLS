#!/bin/bash

PROG=./test_prog.out
KERNEL_TYPE=global
TRACEBACK=-t
PRINTOUT=-p
THREADS=8


if [ ! -d "../align_output" ]; then
    mkdir -p "../align_output"
fi

if [ -z "$DATASET_PATH" ]; then
    echo "Please set the DATASET_PATH environment variable to your dataset root directory."
    exit 1
fi

for LENGTH in 1k 10k 100k 1000k
do
    QUERY=$DATASET_PATH/ont_query_${LENGTH}.fa
    REFERENCE=$DATASET_PATH/ont_ref_${LENGTH}.fa
    OUTPUT=../align_output/out_${LENGTH}.txt

    echo "Running for length: ${LENGTH}"
    ${PROG} -n ${THREADS} -y ${KERNEL_TYPE} ${TRACEBACK} ${PRINTOUT} ${QUERY} ${REFERENCE} > ${OUTPUT}
    echo "Completed ${LENGTH}"
done

