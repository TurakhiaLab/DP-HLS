open_project {{ project_name }}
set_top {{ top_level_function }}
add_files "{{ project_files }}"
add_files -tb "{{ testbench_files }}"
open_solution "{{ solution_name }}" -flow_target vivado
set_part { {{ device }} }
create_clock -period {{ clock_period }} -name default

#csim_design -clean -setup
#csynth_design
#cosim_design
#export_design -format ip_catalog