#!/bin/bash

python setup.py clean --all
pip install -v -e .
python demo.py
