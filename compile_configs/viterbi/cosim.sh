#!/bin/bash

python $1/py-hls/auto_cosim.py --config $1/compile_configs/viterbi/viterbi_common_configs_16.json --simulate True
# python $1/py-hls/auto_cosim.py --config $1/compile_configs/viterbi/viterbi_common_configs_32.json --simulate True
