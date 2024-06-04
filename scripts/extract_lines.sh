#!/bin/bash

base_folder="/home/centos/workspace/DP-HLS/reports_compile/banding_global_linear"
output_file="banding_global_linaer.txt"
name="banding_global_linear"

# Empty the output file if it exists
> "$output_file"

# Iterate through subfolders in the base folder
for subfolder in "$base_folder"/"$name"_*; do
    if [ -d "$subfolder" ]; then
        config_number=$(basename "$subfolder")
        rpt_file="$subfolder/imp/impl_1_kernel_util_routed.rpt"

        if [ -f "$rpt_file" ]; then
            line=$(grep '^| seq_align_multiple_static ' "$rpt_file")
            if [ -n "$line" ]; then
                echo "$config_number: $line" >> "$output_file"
            else
                echo "$config_number: No matching line" >> "$output_file"
            fi
        else
            echo "$config_number: No Report" >> "$output_file"
        fi
    fi
done
