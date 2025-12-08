#!/bin/bash

python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/protein_local_affine/protein_local_affine_32.json --compile True --num_workers 1 --all True
