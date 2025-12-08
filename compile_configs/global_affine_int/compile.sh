#!/bin/bash

python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/global_affine_int/global_affine_int_common_config.json --compile True --num_workers 4 --all True
