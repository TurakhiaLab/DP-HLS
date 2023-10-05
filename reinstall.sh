#!/bin/bash

python setup.py clean --all

#rm -rf build/lib.linux-x86_64-cpython-310 build/temp.linux-x86_64-cpython-310
#rm alignhls.cpython-310-x86_64-linux-gnu.so
#rm -rf /home/yic033@AD.UCSD.EDU/DP-HLS/alignhls.egg-info
pip install -v -e .
