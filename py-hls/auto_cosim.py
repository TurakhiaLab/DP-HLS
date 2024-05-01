import jinja2

import concurrent.futures
import subprocess
from multiprocessing import Lock
import select
import logging
import shutil

# Initialize a Lock
lock = Lock()

import sys, os, shutil
import json
import argparse

logging.basicConfig(format='%(asctime)s %(message)s')

def hz_to_ns(frequency_hz):
    # Conversion factor from seconds to nanoseconds
    seconds_to_nanoseconds = 10**9
    
    # Calculate period in seconds (T = 1 / f)
    period_seconds = 1 / frequency_hz
    
    # Convert period from seconds to nanoseconds
    period_nanoseconds = period_seconds * seconds_to_nanoseconds
    
    return period_nanoseconds

def read_config_file(config_file_path):
    try:
        with open(config_file_path, 'r') as file:
            config_data = json.load(file)
        return config_data
    except FileNotFoundError:
        print(f"Error: Config file '{config_file_path}' not found.")
        return None
    except json.JSONDecodeError:
        print(f"Error: Invalid JSON format in '{config_file_path}'.")
        return None

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Read contents of a JSON config file.')
    parser.add_argument('--config', type=str, help='Path to the JSON config file')
    parser.add_argument('--simulate', type=bool, default=False, help='Run the CoSimulation. If turned off, only project is created. ')

    args = parser.parse_args()
    config = read_config_file(args.config)

    if config is not None:
        print("Config data read successfully:")
        print(config)

    problem_sizes_list = config['size']['max_problem_size']
    pe_num_list = config['size']['pe_num']
    block_list = config['size']['blocks']
    output_name = config['output_name']

    dp_hls_root = config['design']['dp-hls_root']  # DP-HLS root
    params_folder_path = config['design']['path_params']  # include folder for params.h
    kernel_frontend_path = config['design']['path_frontend']  # .cpp file implementing the frontend.h

    all_build_paths = []

    output_path = config['vitis_hls']['output_path']  # base output folder
    cosim_testbench = config['vitis_hls']['cosim_testbench']
    export_design = bool(config['vitis_hls']['export_design'])
    for i in range(len(problem_sizes_list)):
        max_query_length = problem_sizes_list[i]["max_query_length"]
        max_reference_length = problem_sizes_list[i]["max_reference_length"]

        for pe_num in pe_num_list:
            for block in block_list:
                    build_path = os.path.join(output_path, f'{output_name}_{max_query_length}_{max_reference_length}_{pe_num}_{block}')
                    # report_path = os.path.join(build_path, 'report')
                    all_build_paths.append(build_path)

                    # Make directory for all the configurations
                    os.makedirs(build_path, exist_ok=True)
                    os.makedirs(os.path.join(build_path, "design_src"), exist_ok=True)
                    os.makedirs(os.path.join(build_path, "design_include"), exist_ok=True)

                    # os.makedirs(report_path, exist_ok=True)
                    local_src_path = os.path.join(build_path, "local_src")
                    local_include_path = os.path.join(build_path, "local_include")
                    design_src_path = os.path.join(build_path, "design_src")
                    design_include_path = os.path.join(build_path, "design_include")
                    
                    shutil.copytree(os.path.join(dp_hls_root, "src"), local_src_path, dirs_exist_ok=True)
                    shutil.copytree(os.path.join(dp_hls_root, "include"), local_include_path, dirs_exist_ok=True)
                    shutil.copy2(kernel_frontend_path, design_src_path)
                    shutil.copy2(os.path.join(params_folder_path, "params.h"), design_include_path)

                    # Create the template for all the configurations
                    template = jinja2.Template(open(
                        os.path.join(dp_hls_root, 'templates', 'create_project.tcl.template')).read())
                    # render templates, and save it as a Makefile under the output directory
                    with open(os.path.join(build_path, 'create_project.tcl'), 'w') as f:
                        f.write(template.render(
                            max_query_length=max_query_length,
                            max_reference_length=max_reference_length,
                            pe_num=pe_num,
                            blocks=block,
                            local_src=local_src_path,
                            local_include=local_include_path,
                            design_params=design_include_path,
                            kernel_frontend=os.path.join(design_src_path, os.path.basename(kernel_frontend_path)),
                            tb_file=cosim_testbench
                        ))
                    cosim_template = jinja2.Template(open(
                        os.path.join(dp_hls_root, 'templates', 'cosim.tcl.template')).read())
                    with open(os.path.join(build_path, 'cosim.tcl'), 'w') as f:
                        f.write(cosim_template.render(
                            clock_frequency=hz_to_ns(config['kernel']['clock_frequency']),
                            export_design="export_design -flow impl" if export_design else ""
                        ))
                    
    if args.simulate:
        cmds = []
        for build_path in all_build_paths:
            cmds.append(f"cd {build_path} && vitis_hls -f ./create_project.tcl && vitis_hls -f ./cosim.tcl")
        # execute the commands sequentially 
        for cmd in cmds:
            print(f"Executing command: {cmd}")
            os.system(cmd)


