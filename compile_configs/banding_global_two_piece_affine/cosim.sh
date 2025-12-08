#!/bin/bash

python $1/py-hls/auto_cosim.py --config $1/compile_configs/banding_global_two_piece_affine/two_piece_affine_common_config_16.json --simulate True
