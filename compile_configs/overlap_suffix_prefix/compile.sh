#!/bin/bash

python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/overlap_suffix_prefix/local_linear_common_configs.json --compile True --num_workers 1 --all True
