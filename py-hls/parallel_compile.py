import jinja2

import concurrent.futures
import subprocess
from multiprocessing import Lock
import select
import logging

# Initialize a Lock
lock = Lock()

import sys, os, shutil
import json
import argparse

logging.basicConfig(format='%(asctime)s %(message)s')

# Use something like `python parallel_compile.py --config /home/centos/workspace/kernels/global_affine/config.json --compile True --num_workers 3` to compile in parallel
# WARNING: Cannot do parallel emulation run
# Kernle Naming: f'{output_name}_{max_query_length}_{max_reference_length}_{pe_num}_{block}'
# To run the emulated design, use XCL_EMULATION_MODE=$(TARGET) $(EXECUTABLE) $(CMD_ARGS)
# For eaxmple: XCL_EMULATION_MODE=sw_emu ./dp-hls-host <path_to_xclbin>

def run_command(cmd, output_folder):
    configuration = os.path.basename(output_folder)

    process_clone = subprocess.Popen(f"cd {output_folder} && git clone https://github.com/aws/aws-fpga.git", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    _, _ = process_clone.communicate()
    aws_fpga_root = os.path.join(output_folder, 'aws-fpga')
    print(f"Cloned aws-fpga to {aws_fpga_root}")
    vitis_prep_script_path = os.path.join(aws_fpga_root, 'vitis_setup.sh')

    def read_all_from_pipe(pipe):
        """Read all data from a pipe without blocking."""
        lines = []
        while True:
            rlist, _, _ = select.select([pipe], [], [], 0.1)
            if pipe in rlist:
                line = pipe.readline()
                if line:
                    lines.append(line)
                else:  # No more data
                    break
            else:  # No more data
                break
        return ''.join(lines)

    process = subprocess.Popen(["/bin/bash"], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

    with lock:
        # This block is executed exclusively among processes
            # Start a persistent shell session

        logging.info(f"Vitis Init for {configuration}...")  # this shall be exclusive
        try:
            process.stdin.write(f"source {vitis_prep_script_path}" + "\n")
            process.stdin.flush()
            # Wait for the process to complete and get output
            # Manually read the output to avoid closing stdin
            output = read_all_from_pipe(process.stdout)
            errors = read_all_from_pipe(process.stderr)
        except subprocess.CalledProcessError as e:
            logging.error(f"Vitis Initialization Error {configuration}")
        # print vitis initialization output to files in output_folder
        with open(os.path.join(output_folder, 'vitis_init_output.log'), 'w') as f:
            f.write(output)
        with open(os.path.join(output_folder, 'vitis_init_error.log'), 'w') as f:
            f.write(errors)
        
        logging.info(f"Vitis Initialized for {configuration}")

    # Call compilation
    try:
        logging.info(f"Compiling {configuration}...")
        process.stdin.write(cmd + "\n")
        process.stdin.flush()
    except subprocess.CalledProcessError as e:
        logging.error(f"Compilation Error")
    output, errors = process.communicate()
    

    # create new log files under the output_path folder and write output and error to the log files
    with open(os.path.join(output_folder, 'parallel_compile_output.log'), 'w') as f:
        f.write(output)
    with open(os.path.join(output_folder, 'parallel_compile_error.log'), 'w') as f:
        f.write(errors)

    # Close the stdin to signal we're done sending commands 
    process.stdin.close()

    # remove the aws-fpga folder
    shutil.rmtree(os.path.join(output_folder, 'aws-fpga'))
    logging.info(f"Compilation Done For {configuration} in Folder {output_folder}")

    return f"Build Task Completed {configuration} in Folder {output_folder}"
    
    

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
    parser.add_argument('--compile', type=bool, default=False, help='Compile the design. If turned off, only templates are created')
    # add num workers as a parameter
    parser.add_argument('--num_workers', type=int, default=2, help='Number of workers for parallel tasks')
    # add option whether to run the compilation or not
    parser.add_argument('--run', type=bool, default=False, help='Whether to run the compilation or not. If turned off, only compile, not run.')
    parser.add_argument('--all', type=bool, default=False, help='If True, compile the hardware bitstream. If False, compile host only.')


    args = parser.parse_args()
    config = read_config_file(args.config)
    # Number of workers (parallel tasks)
    num_workers = args.num_workers
    if args.run:
        run_str = 'run'
    else:
        run_str = ""
    

    make_file_target = "host"
    if args.all:
        make_file_target = "all"
    else :
        make_file_target = "host"

    compile = args.compile


    if config is not None:
        print("Config data read successfully:")
        print(config)

    problem_sizes_list = config['size']['max_problem_size']
    pe_num_list = config['size']['pe_num']
    block_list = config['size']['blocks']
    output_name = config['output_name']

    design_pathes = config['design']
    output_path = config['output_path']

    dp_hls_root = config['design']['dp-hls_root']

    params_folder_path = config['design']['path_params']
    kernel_frontend_path = config['design']['path_frontend']

    all_build_paths = []

    build_type = config['build']['build_type']

    for i in range(len(problem_sizes_list)):
        max_query_length = problem_sizes_list[i]["max_query_length"]
        max_reference_length = problem_sizes_list[i]["max_reference_length"]

        for pe_num in pe_num_list:
            for block in block_list:
                build_path = os.path.join(output_path, f'{output_name}_{max_query_length}_{max_reference_length}_{pe_num}_{block}')
                report_path = os.path.join(build_path, 'report')
                all_build_paths.append(build_path)

                # Make directory for all the configurations
                os.makedirs(build_path, exist_ok=True)
                os.makedirs(report_path, exist_ok=True)

                # Create the template for all the configurations
                template = jinja2.Template(open(
                    os.path.join(dp_hls_root, 'templates', 'Makefile.template')).read())
                # render templates, and save it as a Makefile under the output directory
                with open(os.path.join(build_path, 'Makefile'), 'w') as f:
                    f.write(template.render(
                        max_query_length=max_query_length,
                        max_reference_length=max_reference_length,
                        pe_num=pe_num,
                        n_blocks=block,
                        params_folder_path=params_folder_path,
                        kernel_frontend_path=kernel_frontend_path,
                        dp_hls_root=dp_hls_root,
                        path_hls_config=config['design']['path_hls_config'],
                        kernel_name=config['kernel']['name'],
                        host_path=config['design']['host_program'],
                        report_path=report_path,
                        clock_frequency=config['kernel']['clock_frequency'],
                        dp_hls_unrolled="-DDP_HLS_UNROLLED" if bool(config['kernel']['unrolled']) else "",
                    ))
            
                shutil.copy(os.path.join(dp_hls_root, 'templates', 'utils.mk'), os.path.join(build_path, 'utils.mk'))

    if compile:
        print(f"Compiling the design with {num_workers} workers for type {build_type}...")
        cmds = []
        for build_path in all_build_paths:
            cmds.append(f"cd {build_path} && make {run_str} {make_file_target} TARGET={build_type} DEVICE=$AWS_PLATFORM")

        with concurrent.futures.ProcessPoolExecutor(max_workers=num_workers) as executor:
            futures = [executor.submit(run_command, cmd, all_build_paths[i]) for i, cmd in enumerate(cmds)]
            for future in concurrent.futures.as_completed(futures):
                print(future.result())

    print("All done!")
