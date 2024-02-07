import json
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

# write a simple test to test the function extract_single_config_afi_id
print(extract_single_config_afi_id('/home/centos/workspace/kernels/global_affine/global_affine_256_256_16_16'))

# write a simple test to test the function extrace_all_configs_afi_id
list_of_configs = ['global_affine_256_256_16_8', 'global_affine_256_256_16_16', 'global_affine_256_256_16_32',
                    'global_affine_256_256_32_8', 'global_affine_256_256_32_16', 'global_affine_256_256_32_32',
                    'global_affine_256_256_64_8', 'global_affine_256_256_64_16', 'global_affine_256_256_64_32']

print(extrace_all_configs_afi_id('/home/centos/workspace/kernels/global_affine', list_of_configs))