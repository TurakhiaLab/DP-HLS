#!/bin/bash

python /home/centos/workspace/DP-HLS/py-hls/auto_cosim.py --config /home/centos/workspace/DP-HLS/compile_configs/local_affine/test_cosim_config.json --simulate True
python /home/centos/workspace/DP-HLS/py-hls/auto_cosim.py --config /home/centos/workspace/DP-HLS/compile_configs/global_affine/global_affine_vitis.json --simulate True
python /home/centos/workspace/DP-HLS/py-hls/auto_cosim.py --config /home/centos/workspace/DP-HLS/compile_configs/local_linear/local_linear.json --simulate True

