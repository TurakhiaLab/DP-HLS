from setuptools import setup, Extension
import pybind11, glob, os

cpp_args = ['-std=c++17']

sources=[
    "./module.cpp",
    "./src/align/align.cpp",
    "./src/pe/pe.cpp",
    "./src/toplevel/seq_align_multiple.cpp",
    "./src/pyapi.cpp",
    "./src/traceback.cpp",
    "./src/utils.cpp"
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
    extra_compile_args=cpp_args,  # ["-fsanitize=address"],
    )

setup(
    name='alignhls',
    version='1.0',
    description='Pythen interface for HLS alignment',
    ext_modules=[sfc_module],
)