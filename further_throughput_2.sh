#!/bin/bash

python /home/centos/workspace/DP-HLS/py-hls/parallel_compile.py --config /home/centos/workspace/DP-HLS/compile_configs/overlap_suffix_prefix/overlap_suffix_prefix_config.json --compile True --num_workers 1 --all True
python /home/centos/workspace/DP-HLS/py-hls/parallel_compile.py --config /home/centos/workspace/DP-HLS/compile_configs/semiglobal_short_long/local_linear_common_configs.json --compile True --num_workers 1 --all True
