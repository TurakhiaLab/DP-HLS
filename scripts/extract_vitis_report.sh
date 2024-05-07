#!/bin/bash

while getopts b:d:n: flag
do
    case "${flag}" in
        b) BASE=${OPTARG};;
        d) DESTINATION=${OPTARG};;
        n) NAME=${OPTARG};;
    esac
done

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
        mkdir "$DESTINATION"/$(basename "$kernel_folder")

        # Check if report.rpt file exists in KERNEL_n/report/impl/
        impl_report_folder="$kernel_folder/seq_align_multiple_static/solution1/impl/report/verilog"
        syn_report_folder="$kernel_folder/seq_align_multiple_static/solution1/syn/report"
        cosim_report_folder="$kernel_folder/seq_align_multiple_static/solution1/sim/report"
        if [ -d "$impl_report_folder" ]; then
            # Copy report.rpt to destination folder
            mkdir "$DESTINATION"/$(basename "$kernel_folder")/impl
            cp -r "$impl_report_folder"/* "$DESTINATION"/$(basename "$kernel_folder")/impl/
            echo "Copied $impl_report_folder to $DESTINATION"
        else
            echo "Impl report not found in $kernel_folder"
        fi
        if [ -d "$syn_report_folder" ]; then
            # Copy report.rpt to destination folder
            mkdir "$DESTINATION"/$(basename "$kernel_folder")/syn
            cp -r "$syn_report_folder"/* "$DESTINATION"/$(basename "$kernel_folder")/syn/
            echo "Copied $syn_report_folder to $DESTINATION"
        else
            echo "Syn report not found in $kernel_folder"
        fi
        if [ -d "$cosim_report_folder" ]; then
            # Copy report.rpt to destination folder
            mkdir "$DESTINATION"/$(basename "$kernel_folder")/cosim
            cp -r "$cosim_report_folder"/* "$DESTINATION"/$(basename "$kernel_folder")/cosim/
            echo "Copied $cosim_report_folder to $DESTINATION"
        else
            echo "Cosim report not found in $kernel_folder"
        fi
    fi
done

echo "All reports copied to $DESTINATION"
