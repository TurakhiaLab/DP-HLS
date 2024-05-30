#!/bin/bash

python /home/centos/workspace/DP-HLS/py-hls/parallel_compile.py --config /home/centos/workspace/DP-HLS/compile_configs/global_two_piece_affine/two_piece_affine_common_config_max.json --compile True --num_workers 1 --all True
python /home/centos/workspace/DP-HLS/py-hls/parallel_compile.py --config /home/centos/workspace/DP-HLS/compile_configs/global_affine/global_affine_common_config.json --compile True --num_workers 1 --all True
python /home/centos/workspace/DP-HLS/py-hls/parallel_compile.py --config /home/centos/workspace/DP-HLS/compile_configs/local_linear/local_linear_common_configs.json --compile True --num_workers 1 --all True
