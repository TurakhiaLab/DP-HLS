#!/bin/bash

DEMO_ROOT=$(pwd)
CONFIG_FILE=$DEMO_ROOT/config.json

python3 $DEMO_ROOT/../../py-hls/parallel_compile.py --config $CONFIG_FILE --compile True --num_workers 1 --all True
