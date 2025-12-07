#!/bin/bash

python $1/py-hls/auto_cosim.py --config $1/compile_configs/sw_tiling/sw_tiling_common_configs.json --simulate True
