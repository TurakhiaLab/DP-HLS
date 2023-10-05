from setuptools import setup, Extension
import pybind11, glob, os

cpp_args = ['-std=c++17']

sources=[
    "./increment/module.cpp",
    "./increment/src/align/align.cpp",
    "./increment/src/pe/pe.cpp",
    "./increment/src/toplevel/seq_align_multiple.cpp",
    "./increment/src/pyapi.cpp",
    "./increment/src/traceback.cpp"
         ]


sfc_module = Extension(
    'alignhls',
    sources=sources,
    include_dirs=[
        "/home/yic033@AD.UCSD.EDU/anaconda3/envs/align/lib/python3.10/site-packages/pybind11/include",
        "/home/AD.UCSD.EDU/swalia/Xilinx/Vitis_HLS/2023.1/include"    
    ],
    library_dirs=[
        "/home/AD.UCSD.EDU/swalia/Xilinx/Vitis_HLS/2023.1/include/lib"
    ],
    language='c++',
    extra_compile_args=cpp_args,
    )

setup(
    name='alignhls',
    version='1.0',
    description='Pythen interface for HLS alignment',
    ext_modules=[sfc_module],
)