import argparse
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
    output_src_dir = os.path.join(config['project_directory'], 'src')
    os.makedirs(output_src_dir, exist_ok=True)
    vitis_project_dir = os.path.join(config['project_directory'], 'vitis')

    # load template
    environment = Environment(loader=FileSystemLoader("templates/"))

    # define params.h
    template = environment.get_template("params.h")
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
        ALIGN_TYPE=align_type,
        PE_TYPE=pe_type
    )

    with open(os.path.join(output_src_dir, 'params.h'), mode="w", encoding="utf-8") as params:
        params.write(content)

    return 0


def create_project(config):
    """
    create the vitis hls project
    """
    vitis_home = config['vitis_hls']['vitis_hls_home']
    # FIXME: don't know whether vitis hls is successfuly invoked or not
    subprocess.run(['/bin/bash', os.path.join(vitis_home, 'settings64.sh'), '&&', os.path.join(vitis_home, '/bin/vitis_hls')])



    return 0


if __name__ == '__main__':
    main()
