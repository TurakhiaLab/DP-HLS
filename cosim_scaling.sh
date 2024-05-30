#!/bin/bash

python /home/centos/workspace/DP-HLS/py-hls/auto_cosim.py --config /home/centos/workspace/DP-HLS/compile_configs/scaling_global_linear/global_linear_scaling_pe.json --simulate True
python /home/centos/workspace/DP-HLS/py-hls/auto_cosim.py --config /home/centos/workspace/DP-HLS/compile_configs/scaling_global_linear/global_linear_scaling_blocks.json --simulate True
python /home/centos/workspace/DP-HLS/py-hls/auto_cosim.py --config /home/centos/workspace/DP-HLS/compile_configs/scaling_global_dtw/global_dtw_scaling_pes.json --simulate True
python /home/centos/workspace/DP-HLS/py-hls/auto_cosim.py --config /home/centos/workspace/DP-HLS/compile_configs/scaling_global_dtw/global_dtw_scaling_blocks.json --simulate True
