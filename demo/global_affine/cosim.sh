#!/bin/bash

DEMO_ROOT=$(pwd)
CONFIG_FILE=$DEMO_ROOT/config.json

python3 $DEMO_ROOT/../../py-hls/auto_cosim.py --config $CONFIG_FILE --simulate True
