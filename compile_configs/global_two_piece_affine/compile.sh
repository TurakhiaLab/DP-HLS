#!/bin/bash

python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/global_two_piece_affine/two_piece_affine_common_config.json --compile True --num_workers 2 --all True
