#!/bin/bash

# Define the base directory
BASE="/home/centos/workspace/banding/DP-HLS/local_kernels/banding_global_linear"

# Define the destination folder
DESTINATION="/home/centos/workspace/DP-HLS/reports/banding_global_linear"

NAME="banding_global_linear"

# Check if the base directory exists
if [ ! -d "$BASE" ]; then
    echo "Base directory $BASE does not exist."
    exit 1
fi

# Check if the destination folder exists, if not, create it
if [ ! -d "$DESTINATION" ]; then
    mkdir -p "$DESTINATION"
fi

# Iterate through each KERNEL_n folder in BASE
for kernel_folder in "$BASE"/$NAME_*; do
    if [ -d "$kernel_folder" ]; then
        # Check if report.rpt file exists in KERNEL_n/report/impl/
        report_file="$kernel_folder/report/link/imp/impl_1_kernel_util_routed.rpt"
        if [ -f "$report_file" ]; then
            # Copy report.rpt to destination folder
            cp "$report_file" "$DESTINATION"/$(basename "$kernel_folder")
            echo "Copied $report_file to $DESTINATION"
        else
            echo "report.rpt not found in $kernel_folder"
        fi
    fi
done

echo "All reports copied to $DESTINATION"
