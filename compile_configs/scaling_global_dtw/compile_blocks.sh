#!/bin/bash

python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/scaling_global_dtw/global_dtw_scaling_blocks.json --compile True --num_workers 3 --all True
