import json, time
import os, glob

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
    if repeat < 2:
        raise ValueError("Kernel Should be Replayed At Least 2 Times")
    
    # create an output folder in the base folder, suffix with its time
    output_folder = os.path.join(base_folder, f'output_{time.time()}')
    os.mkdir(output_folder)

    # the benchmark for single kernel have multiple runs. We want to create a output text file for ecah run
    for i in range(repeat):
        # create an output file for each run
        output_file = os.path.join(output_folder, f'output_{i}.txt')

        host_path = os.path.join(base_folder, host_name)
        xclbin_path = os.path.join(base_folder, xclbin_name)

        # run the benchmark with bash
        os.system(f'bash {host_path} {xclbin_path} > {output_file}')

    # then for all those files, it has a field of the format 'Kernel execution time: <num>ms'
    # we want to discard the first two runs and take the average of the rest

    # read all the output files and extract the kernel execution time
    # we need to explicitly search for the line starting with 'Kernel execution time'
    kernel_execution_time = []
    for i in range(repeat):
        output_file = os.path.join(output_folder, f'output_{i}.txt')
        with open(output_file, 'r') as f:
            lines = f.readlines()
            for line in lines:
                if line.startswith('Kernel execution time'):
                    kernel_execution_time.append(int(line.split(' ')[-1][-2]))

    return sum(kernel_execution_time[2:])/(repeat-2)

def run_benchmark_all():
    pass


# small test for the function benchmark_single
print(run_benchmark_single('/home/centos/efs/kernels/global_affine/global_affine_256_256_16_8', 'dp-hls-host', 'afi_creation.awsxclbin', repeat=10))