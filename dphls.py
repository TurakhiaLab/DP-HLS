import argparse, shutil
import json
from jinja2 import Environment, FileSystemLoader
import os
import subprocess


def main():
    parser = argparse.ArgumentParser(prog="dphls",
                                     description="Take config.json and output the project in the directory specified",
                                     epilog="Thanks for Using")
    parser.add_argument("-c", "--config", help="Specify the config file to use", type=str, required=True)
    args = parser.parse_args()
    config = None
    with open(args.config) as config_file:
        config = json.load(config_file)

    check_configuration(config)
    write_source(config)
    create_project(config)

    return 0


def check_configuration(config):
    """
    Checks the configuration file for invalid configrations
    """
    valid_pe = ['affine', 'linear']
    valid_align_block = ['local', 'global']
    kernel = config['kernel']

    if kernel['processing_element']['type'] not in valid_pe:
        raise NotImplementedError("Processing element type not implemented")

    if kernel['align_block']['type'] not in valid_align_block:
        raise NotImplementedError("Alignment type not implemented")

    if kernel['processing_element']['type'] == 'affine' and kernel['traceback']['pointer_bits'] == 2:
        raise Exception("Affine processing element cannot have 2 bit traceback pointer")

    return 0


def write_source(config):
    """
    Write the source files for the project using the templates
    """
    output_home = config['output_directory']
    output_src_dir = os.path.join(output_home, 'src')
    os.makedirs(output_src_dir, exist_ok=True)
    vitis_project_dir = os.path.join(output_home, 'vitis')

    # load template
    environment = Environment(loader=FileSystemLoader("templates/"))

    # define params.h
    template = environment.get_template("src/params.h")
    kernel = config['kernel']
    inputs = kernel['inputs']
    processing_element = kernel['processing_element']
    align_block = kernel['align_block']
    traceback = kernel['traceback']
    penalties = kernel['penalties']

    # render params.h
    pe_type = None
    align_type = None

    if align_block['type'] == 'local':
        if processing_element['type'] == 'linear':
            pe_type = 'PELocalLinear'
            align_type = 'AlignLocalLinear'
        elif processing_element['type'] == 'affine':
            pe_type = 'PELocalAffine'
            align_type = 'AlignLocalAffine'
        else:
            raise NotImplementedError
    elif align_block['type'] == 'global':
        if processing_element['type'] == 'linear':
            pe_type = 'PEGlobalLinear'
            align_type = 'AlignGlobalLinear'
        elif processing_element['type'] == 'affine':
            pe_type = 'PEGlobalAffine'
            align_type = 'AlignGlobalAffine'
        else:
            raise NotImplementedError
    else:
        raise NotImplementedError

    content = template.render(
        linear_gap_penalty=penalties['linear_gap_penalty'],
        opening_score=penalties['gap_open'],
        extend_score=penalties['gap_extend'],
        mismatch_score=penalties['mismatch'],
        match_score=penalties['match'],
        query_length=inputs['query_length'],
        reference_length=inputs['reference_length'],
        pe_num=processing_element['number'],
        num_blocks=align_block['number'],
        traceback_bits=traceback['pointer_bits'],
        # Special Configurable Variables
        align_type=align_type,
        pe_type=pe_type
    )

    with open(os.path.join(output_src_dir, 'params.h'), mode="w", encoding="utf-8") as params:
        params.write(content)

    return 0


def create_project(config):
    """
    create the vitis hls project
    """
    vitis_home = config['vitis_hls']['vitis_hls_home']
    vitis_project = config['vitis_project']
    output_home = config['output_directory']

    environment = Environment(loader=FileSystemLoader("templates/"))
    template = environment.get_template('vitis/project_config.tcl')

    # FIXME: added source files
    source = ['PE.cpp', 'seq_align.cpp', 'traceback.cpp', 'seq_align_multiple.cpp']
    source_headers = ['params.h', 'seq_align.h', 'traceback.h', 'seq_align_multiple.h', 'PE.h',
                      os.path.join('utils', 'loop_counter.h'), os.path.join('utils', 'shift_reg.h')]
    source = [os.path.join(output_home, 'src', file) for file in source]
    source_headers = [os.path.join(output_home, 'src', file) for file in source_headers]

    source_str = ''
    source_header_str = ''
    for file in source:
        source_str += file + ' '
    for file in source_headers:
        source_header_str += file + ' '

    content = template.render(
        clock_period=vitis_project['clock_period'],
        device=vitis_project['device'],
        project_name=vitis_project['project_name'],
        solution_name=vitis_project['solution_name'],
        top_level_function=vitis_project['top_level_function'],
        project_files=source_str + source_header_str,
        testbench_files=os.path.join(output_home, 'testbench', 'seq_align_test.cpp')
    )

    with open(os.path.join(output_home, 'vitis', 'project_config.tcl'), mode="w", encoding="utf-8") as script:
        script.write(content)

    template = environment.get_template('vitis/create_project.tcl')
    content = template.render(
        project_config_path=os.path.join(output_home, 'vitis', 'project_config.tcl')
    )
    with open(os.path.join(output_home, 'vitis', 'create_project.tcl'), mode="w", encoding="utf-8") as script:
        script.write(content)

    template = environment.get_template('vitis/vitis_project.sh')
    content = template.render(
        path_setting64=os.path.join(vitis_home, 'settings64.sh'),
        create_project_path=os.path.join(output_home, 'vitis', 'create_project.tcl')
    )
    with open(os.path.join(output_home, 'vitis', 'vitis_project.sh'), mode="w", encoding="utf-8") as script:
        script.write(content)

    os.system(f"chmod +x {os.path.join(output_home, 'vitis', '*.sh')}")
    
    # {'LD_PRELOAD'}={config['vitis_hls']['env']['LD_PRELOAD']}

    os.system(f"/bin/bash {os.path.join(output_home, 'vitis', 'vitis_project.sh')}")

    return 0



if __name__ == '__main__':
    main()
