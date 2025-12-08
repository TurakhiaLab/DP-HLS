#!/bin/bash

python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/banding_local_affine_scored/banding_local_affine_scored_common.json --compile True --num_workers 2 --all True
