#!/bin/bash

python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/scaling_global_affine/global_affine_scaling_config.json --compile True --num_workers 6 --all True
