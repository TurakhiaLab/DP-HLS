#!/bin/bash

# Need to add --cap-add=SYS_ADMIN to docker run to allow profiling in container

PROG=./test_prog.out
TRACEBACK=-t
PRINTOUT=-p
THREADS=1
# PROFILER=nvprof
PROFILING_REPORT_PREFIX="../profiling_reports/"
OUTPUT_PREFIX="../align_output/"

if [ ! -d "$PROFILING_REPORT_PREFIX" ]; then
    mkdir -p "$PROFILING_REPORT_PREFIX"
fi

if [ ! -d "$OUTPUT_PREFIX" ]; then
    mkdir -p "$OUTPUT_PREFIX"
fi

if [ -z "$DATASET_PATH" ]; then
    echo "Please set the DATASET_PATH environment variable to your dataset root directory."
    exit 1
fi

# PROFILER=ncu
PROFILER=nsys

KERNEL_TYPE=global
for LENGTH in 1k 10k 100k 1000k
do
    QUERY=$DATASET_PATH/ont_query_${LENGTH}.fa
    REFERENCE=$DATASET_PATH/ont_ref_${LENGTH}.fa
    OUTPUT=../align_output/out_${KERNEL_TYPE}_${LENGTH}.txt
    # PROFILER_ARGS="--details-all --target-processes all -o ${PROFILING_REPORT_PREFIX}/report_${LENGTH}"
    PROFILER_ARGS="profile --trace=cuda --force-overwrite=true -o ${PROFILING_REPORT_PREFIX}/report_${KERNEL_TYPE}_${LENGTH}"

    echo "Profiling for Length: ${LENGTH}"
    # echo "${PROFILER} ${PROFILER_ARGS} ${PROG} -n ${THREADS} -y ${KERNEL_TYPE} ${TRACEBACK} ${PRINTOUT} ${QUERY} ${REFERENCE}"
    ${PROFILER} ${PROFILER_ARGS} ${PROG} -n ${THREADS} -y ${KERNEL_TYPE} ${TRACEBACK} ${PRINTOUT} ${QUERY} ${REFERENCE} > ${OUTPUT}
    echo "Completed ${KERNEL_TYPE} for ${LENGTH}"
    echo
    echo
done

KERNEL_TYPE=local
for LENGTH in 1k 10k 100k 1000k
do
    QUERY=$DATASET_PATH/ont_query_${LENGTH}.fa
    REFERENCE=$DATASET_PATH/ont_ref_${LENGTH}.fa
    OUTPUT=../align_output/out_${KERNEL_TYPE}_${LENGTH}.txt
    # PROFILER_ARGS="--details-all --target-processes all -o ${PROFILING_REPORT_PREFIX}/report_${LENGTH}"
    PROFILER_ARGS="profile --trace=cuda --force-overwrite=true -o ${PROFILING_REPORT_PREFIX}/report_${KERNEL_TYPE}_${LENGTH}"

    echo "Profiling for Length: ${LENGTH}"
    # echo "${PROFILER} ${PROFILER_ARGS} ${PROG} -n ${THREADS} -y ${KERNEL_TYPE} ${TRACEBACK} ${PRINTOUT} ${QUERY} ${REFERENCE}"
    ${PROFILER} ${PROFILER_ARGS} ${PROG} -n ${THREADS} -y ${KERNEL_TYPE} ${TRACEBACK} ${PRINTOUT} ${QUERY} ${REFERENCE} > ${OUTPUT}
    echo "Completed ${KERNEL_TYPE} for ${LENGTH}"
    echo
    echo
done

# GASAL2's semiglobal kernel has a bug, not used as a baseline
# It runs 300 times faster than it's global kernel, wich doesn't make sense. 
# KERNEL_TYPE=semi-global
# for LENGTH in 1k 10k 100k 1000k
# do
#     QUERY=$DATASET_PATH/ont_query_${LENGTH}.fa
#     REFERENCE=$DATASET_PATH/ont_ref_${LENGTH}.fa
#     OUTPUT=../align_output/out_${KERNEL_TYPE}_${LENGTH}.txt
#     # PROFILER_ARGS="--details-all --target-processes all -o ${PROFILING_REPORT_PREFIX}/report_${LENGTH}"
#     PROFILER_ARGS="profile --trace=cuda -o ${PROFILING_REPORT_PREFIX}/report_${KERNEL_TYPE}_${LENGTH}"

#     echo "Profiling for Length: ${LENGTH}"
#     # echo "${PROFILER} ${PROFILER_ARGS} ${PROG} -n ${THREADS} -y ${KERNEL_TYPE} ${TRACEBACK} ${PRINTOUT} ${QUERY} ${REFERENCE}"
#     ${PROFILER} ${PROFILER_ARGS} ${PROG} -n ${THREADS} -y ${KERNEL_TYPE} ${TRACEBACK} ${PRINTOUT} ${QUERY} ${REFERENCE} > ${OUTPUT}
#     echo "Completed ${KERNEL_TYPE} for ${LENGTH}"
#     echo
#     echo
# done

KERNEL_TYPE=local
for LENGTH in 1k 10k 100k 1000k
do
    QUERY=$DATASET_PATH/ont_query_${LENGTH}.fa
    REFERENCE=$DATASET_PATH/ont_ref_${LENGTH}.fa
    OUTPUT=../align_output/out_banded_${KERNEL_TYPE}_${LENGTH}.txt
    # PROFILER_ARGS="--details-all --target-processes all -o ${PROFILING_REPORT_PREFIX}/report_${LENGTH}"
    PROFILER_ARGS="profile --trace=cuda --force-overwrite=true -o ${PROFILING_REPORT_PREFIX}/report_banded_${KERNEL_TYPE}_${LENGTH}"

    echo "Profiling for Length: ${LENGTH}"
    # echo "${PROFILER} ${PROFILER_ARGS} ${PROG} -n ${THREADS} -y ${KERNEL_TYPE} ${TRACEBACK} ${PRINTOUT} ${QUERY} ${REFERENCE}"
    ${PROFILER} ${PROFILER_ARGS} ${PROG} -n ${THREADS} -y ${KERNEL_TYPE} ${PRINTOUT} -k 64 -s ${QUERY} ${REFERENCE} > ${OUTPUT}
    echo "Completed ${KERNEL_TYPE} for ${LENGTH}"
    echo
    echo
done