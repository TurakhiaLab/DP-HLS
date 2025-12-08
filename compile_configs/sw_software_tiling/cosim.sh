#!/bin/bash

python $1/py-hls/auto_cosim.py --config $1/compile_configs/sw_software_tiling/sw_software_tiling_common_configs.json --simulate True
