#!/bin/bash

python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/scaling_local_affine/local_affine_scaling_pe.json --compile True --num_workers 6 --all True
