#!/bin/bash

rm -rf build/lib.linux-x86_64-cpython-310 build/temp.linux-x86_64-cpython-310
rm alignhls.cpython-310-x86_64-linux-gnu.so
CXX=g++ pip install -v -e .
