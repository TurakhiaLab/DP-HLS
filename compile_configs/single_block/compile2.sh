#!/bin/bash

python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/single_block/profile_alignment_single.json --compile True --num_workers 1 --all True
python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/single_block/local_linear_single.json --compile True --num_workers 1 --all True
python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/single_block/overlap_suffix_prefix_single.json --compile True --num_workers 1 --all True
python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/single_block/semiglobal_short_long_single.json --compile True --num_workers 1 --all True
python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/single_block/viterbi_single.json --compile True --num_workers 1 --all True
