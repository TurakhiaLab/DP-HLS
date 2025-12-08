#!/bin/bash

python /home/ubuntu/DP-HLS/py-hls/parallel_compile.py --config /home/ubuntu/DP-HLS/compile_configs/sdtw/sdtw_rtl_benchmark.json --compile True --num_workers 1 --all True
