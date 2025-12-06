#!/bin/bash

DP_HLS_ROOT="/home/ubuntu/DP-HLS"
CONFIGS_ROOT="${DP_HLS_ROOT}/compile_configs"

# The four kernels that has GPU baselines are:
# global_affine
# local_affine
# banding_local_affine_scored
# protein_local_affine

# Create a list of folders names for the kernels, in the sequence they are numbered in the paper
KERNEL_FOLDERS=(
    "global_linear"
    "global_affine"
    "local_linear"
    "local_affine"
    "global_two_piece_affine"
    "overlap_suffix_prefix"
    "semiglobal_short_long"
    "profile_alignment"
    "global_dtw"
    "viterbi"
    "banding_global_linear"
    "banding_local_affine_scored"
    "banding_global_two_piece_affine"
    "sdtw"
    "protein_local_affine"
)

total_start_time=$(date +%s)

for kernel_folder in "${KERNEL_FOLDERS[@]}"
do
    echo -e "\033[32mProcessing kernel: $kernel_folder\033[0m"
    KERNEL_CONFIG_DIR="${CONFIGS_ROOT}/${kernel_folder}"

    start_time=$(date +%s)

    cd "${KERNEL_CONFIG_DIR}"
    ./cosim.sh "${DP_HLS_ROOT}"

    cd "${DP_HLS_ROOT}"

    end_time=$(date +%s)
    duration=$((end_time - start_time))
    echo -e "\033[34mDuration for $kernel_folder: ${duration} seconds\033[0m"
    echo "Duration for $kernel_folder: ${duration} seconds" >> "${DP_HLS_ROOT}/kernel_durations.log"
done

total_end_time=$(date +%s)
total_duration=$((total_end_time - total_start_time))
echo -e "\033[34mTotal duration: ${total_duration} seconds\033[0m"
echo "Total duration: ${total_duration} seconds" >> "${DP_HLS_ROOT}/kernel_durations.log"