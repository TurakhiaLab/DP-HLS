import json, time
import os, glob, select
import subprocess
from datetime import datetime

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

# def read_all_from_pipe_block(pipe)
#     while True:
#             line = process.stdout.readline()
#             if EOF in line:  # Check for the unique marker indicating command completion
#                 break  # Exit the loop when the marker is found
#             output_lines.append(line.strip())  # Append each line of output to the list


def extract_single_config_afi_id(base_address):
    try:
        file_path = glob.glob(f'{base_address}/*_afi_id.txt')[0]
    except IndexError:
        print(f"No afi_id file found in {base_address}")
        return None

    table = json.loads(open(file_path).read())
    fpga_image_id = table['FpgaImageId']
    fpga_global_id = table['FpgaImageGlobalId']

    return {"fpga_image_id": fpga_image_id, "fpga_global_id": fpga_global_id}

def extrace_all_configs_afi_id(base_address, config_names):
    """Feed in a list of config names and return a dictionary of afi_id for each config

    Args:
        base_address (_type_): _description_
        config_names (_type_): _description_

    Returns:
        _type_: _description_
    """
    afi_id_table = {}
    for config_name in config_names:
        afi_id_table[config_name] = extract_single_config_afi_id(os.path.join(base_address, config_name))
    return afi_id_table

def run_benchmark_single(base_folder, host_name='dp-hls-host', xclbin_name='afi_creation.awsxclbin', repeat=10):
    # check the repeat is larger than 2, if not, throw exception
    if repeat <= 2:
        raise ValueError("Kernel Should be Replayed At Least 3 Times")
    
    # create an output folder in the base folder, suffix with its time
    formatted_time = datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d-%H-%M-%S')
    output_folder = os.path.join(base_folder, f'benchmark_output_{formatted_time}')
    os.mkdir(output_folder)


    command = "source /home/centos/efs/aws-fpga/vitis_runtime_setup.sh"

    # the benchmark for single kernel have multiple runs. We want to create a output text file for ecah run
    for i in range(repeat):
        # create an output file for each run
        output_file = os.path.join(output_folder, f'output_{i}.txt')
        error_file = os.path.join(output_folder, f'error_{i}.txt')

        host_path = os.path.join(base_folder, host_name)
        xclbin_path = os.path.join(base_folder, xclbin_name)
        command += f" && {host_path} {xclbin_path} > {output_file} 2> {error_file}"

    process = subprocess.Popen(command, shell=True, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

    # synchronize the bash call
    _, _ = process.communicate()

    # read all the output files and extract the kernel execution time
    # we need to explicitly search for the line starting with 'Kernel execution time'
    kernel_execution_time = []
    for i in range(repeat):
        try:
            output_file = os.path.join(output_folder, f'output_{i}.txt')
            with open(output_file, 'r') as f:
                lines = f.readlines()
                for line in lines:
                    if line.startswith('Kernel execution time'):
                        kernel_execution_time.append(int(line.split(' ')[-1][:-3]))
        except FileNotFoundError:
            print(f"output_{i}.txt not found")
        
    print(f"Kernel {os.path.basename(base_folder)} execution time: {sum(kernel_execution_time[2:])/(len(kernel_execution_time)-2)}")
    return  os.path.basename(base_folder), sum(kernel_execution_time[2:])/(len(kernel_execution_time)-2)


def run_benchmark_all(base_folders, repeat=10):
    result = {}
    for base_folder in base_folders:
        print(f"running benchmark for {base_folder}")
        name, benchmark_time = run_benchmark_single(base_folder, repeat=repeat)
        result[name] = benchmark_time
        print(f"benchmark for {base_folder} done, sleep for 10 seconds")
        time.sleep(10)
    print("Results: ", result)
    return result

# base_names = [
#     "global_affine_1024_1024_16_8",
#     "global_affine_1024_1024_16_16",
#     "global_affine_1024_1024_16_32",
#     "global_affine_1024_1024_32_8",
#     "global_affine_1024_1024_32_16",
#     "global_affine_1024_1024_32_32",
#     "global_affine_1024_1024_64_8",
#     "global_affine_1024_1024_64_16",
#     "global_affine_1024_1024_64_32"
# ]

# base_folders = [ os.path.join("/home/centos/efs/kernels/global_affine", name) for name in base_names]

# # Test for all benchmarks
# run_benchmark_all(base_folders, repeat=10)

# Test for single benchmark
# print(run_benchmark_single(os.path.join("/home/centos/efs/kernels/global_affine", "global_affine_256_256_16_16"), repeat=10))
