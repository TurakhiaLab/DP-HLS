#!/usr/bin/bash

log_filename="golden.log"

truncate -s 0 "$log_filename"

/home/AD.UCSD.EDU/swalia/tools/pairwise-seq-align/xact_cheng/xact/build/model /home/AD.UCSD.EDU/swalia/data/pbsim2/paper/dataset_10k/ont/0.95/ont_xact_common.fa >> "$log_filename"
# set file_handle [open $log_filename "w"]

# # Check if the file was successfully opened
# if { [catch {
#     # Write the command output to the log file
#     puts $file_handle $golden_output
# }] } {
#     puts "Failed to open or write to the log file."
#     exit 1
# }
# close $file_handle