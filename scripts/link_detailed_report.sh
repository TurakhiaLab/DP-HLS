#!/bin/bash

while getopts b:d:n: flag
do
    case "${flag}" in
        b) BASE=${OPTARG};;
        n) NAME=${OPTARG};;
    esac
done

# Check if the base directory exists
if [ ! -d "$BASE" ]; then
    echo "Base directory $BASE does not exist."
    exit 1
fi

# Iterate through each KERNEL_n folder in BASE
for kernel_folder in "$BASE"/$NAME_*; do
    if [ -d "$kernel_folder" ]; then
        # Check if report.rpt file exists in KERNEL_n/report/impl/
        report_folder="$kernel_folder/_x.hw_emu.xilinx_aws-vu9p-f1_shell-v04261818_201920_3/seq_align_kernel/seq_align_multiple_static/seq_align_multiple_static/solution/syn/report"
        if [ -d "$report_folder" ]; then
            # Copy report.rpt to destination folder
            ln -s "$report_folder" "$kernel_folder/synthesis_report"
            echo "linked report in $kernel_folder/synthesis_report"
        else
            echo "report not found in $kernel_folder"
        fi
    fi
done

