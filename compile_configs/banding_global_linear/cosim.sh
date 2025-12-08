#!/bin/bash

python $1/py-hls/auto_cosim.py --config $1/compile_configs/banding_global_linear/banding_global_linear.json --simulate True
