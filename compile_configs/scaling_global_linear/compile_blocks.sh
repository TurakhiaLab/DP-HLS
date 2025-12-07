#!/bin/bash

python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/scaling_global_linear/global_linear_scaling_blocks.json --compile True --num_workers 3 --all True
