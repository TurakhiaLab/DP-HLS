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
        # Check if report.rpt file exists in KERNEL_n/report/impl/
        report_folder="$kernel_folder/report/link/imp"
        if [ -d "$report_folder" ]; then
            # Copy report.rpt to destination folder
            mkdir "$DESTINATION"/$(basename "$kernel_folder")
            cp -r "$report_folder" "$DESTINATION"/$(basename "$kernel_folder")
            echo "Copied $report_folder to $DESTINATION"
        else
            echo "report not found in $kernel_folder"
        fi
    fi
done

echo "All reports copied to $DESTINATION"
