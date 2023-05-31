open_project multiple_seq_align
set_top seq_align_multiple
add_files "/home/yic033@AD.UCSD.EDU/DP-HLS/outputs/src/PE.cpp /home/yic033@AD.UCSD.EDU/DP-HLS/outputs/src/seq_align.cpp /home/yic033@AD.UCSD.EDU/DP-HLS/outputs/src/traceback.cpp /home/yic033@AD.UCSD.EDU/DP-HLS/outputs/src/seq_align_multiple.cpp /home/yic033@AD.UCSD.EDU/DP-HLS/outputs/src/params.h /home/yic033@AD.UCSD.EDU/DP-HLS/outputs/src/seq_align.h /home/yic033@AD.UCSD.EDU/DP-HLS/outputs/src/traceback.h /home/yic033@AD.UCSD.EDU/DP-HLS/outputs/src/seq_align_multiple.h /home/yic033@AD.UCSD.EDU/DP-HLS/outputs/src/PE.h /home/yic033@AD.UCSD.EDU/DP-HLS/outputs/src/utils/loop_counter.h /home/yic033@AD.UCSD.EDU/DP-HLS/outputs/src/utils/shift_reg.h "
add_files -tb "/home/yic033@AD.UCSD.EDU/DP-HLS/outputs/testbench/seq_align_test.cpp"
open_solution "solution2" -flow_target vivado
set_part { xcvu5p-flva2104-1-e }
create_clock -period 4 -name default

#csim_design -clean -setup
#csynth_design
#cosim_design
#export_design -format ip_catalog