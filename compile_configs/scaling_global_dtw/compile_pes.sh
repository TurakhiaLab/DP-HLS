#!/bin/bash

python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/scaling_global_dtw/global_dtw_scaling_pes.json --compile True --num_workers 2 --all True
