#!/bin/bash

python $1/py-hls/auto_cosim.py --config $1/compile_configs/overlap_suffix_prefix/overlap_suffix_prefix_config.json --simulate True
