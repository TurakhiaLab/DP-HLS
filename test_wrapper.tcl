#!/usr/bin/tcl

#############README#######################################################
## Test script wrapper for verification                                 ##
## To use, ensure that the path to vitis_hls is set and valid           ##         
## You must be in the vitis_hls environment for this script to work     ##
##########################################################################

# Set vitis_hls -i before running the script
# It is HIGHLY recommended you do not run this script from the test directory

proc main {} {
    open_project -reset "BasicKernel"

    add_files "src/align/align.cpp"
    add_files "include/params.h"
    add_files "src/pe/pe.cpp"
    add_files "include/PE.h"
    add_files "src/toplevel/seq_align_multiple.cpp"
    add_files "include/seq_align_multiple.h"
    add_files "include/align.h"
    add_files "include/shift_reg.h"
    add_files "src/traceback.cpp"
    add_files "include/traceback.h"
    add_files "src/utils.cpp"
    add_files "include/utils.h"
    add_files "src/frontend.cpp"
    add_files "include/frontend.h"

    add_files -tb "testbench/test_align.cpp"

    set_top seq_align_multiple_static

    open_solution -flow_target vitis solution1

    set_part xczu7ev-ffvc1156-2-i

    create_clock -period 250MHz

    # set the output file
    # set output_file "verification.log"
    # set current_datetime [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]
    # set file_handle [open $output_file "w"]

    # if { [catch {
    #     puts $file_handle "Verification log generated at: $current_datetime"
    #     puts $file_handle "Results"
    # }] } {
    #     puts "Failed to open or write to the log file."
    #     exit 1
    # }

    # csim_design
    csynth_design
    
    export_design -flow impl
    
    # close $file_handle
}

main
