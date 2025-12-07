#!/bin/bash

python $1/py-hls/auto_cosim.py --config $1/compile_configs/global_affine_int/global_affine_int_common_config.json --simulate True
