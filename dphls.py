import argparse
import json
import jinja2


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

    return 0


def create_project(config):
    """
    create the vitis hls project
    """

    return 0


if __name__ == '__main__':
    main()
