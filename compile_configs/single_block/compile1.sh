#!/bin/bash

python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/single_block/global_affine_single.json --compile True --num_workers 1 --all True
python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/single_block/global_dtw_single.json --compile True --num_workers 1 --all True
python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/single_block/global_linear_sigle.json --compile True --num_workers 1 --all True
python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/single_block/global_two_piece_affine_single.json --compile True --num_workers 1 --all True
python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/single_block/local_affine_single.json --compile True --num_workers 1 --all True