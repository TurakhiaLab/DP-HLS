#!/bin/bash

# # Example
# build=(
#     "/home/centos/workspace/kernels/global_affine/global_affine_1024_1024_16_16"
# )

builds=(
    # "/home/centos/workspace/kernels/global_affine_unrolled/global_affine_unrolled_256_256_32_4"
    # "/home/centos/workspace/kernels/global_affine_unrolled/global_affine_unrolled_256_256_32_8"
    "/home/centos/workspace/kernels/global_affine_unrolled/global_affine_unrolled_256_256_32_16"
)

source ~/workspace/aws-fpga/vitis_setup.sh

# The -o flag is the name of the output .awsxclbin file. 

# Loop through the array and upload each package
for build in "${builds[@]}"; do
    cd ${build} && /home/centos/workspace/aws-fpga/Vitis/tools/create_vitis_afi.sh -xclbin=${build}/build_dir.hw.xilinx_aws-vu9p-f1_shell-v04261818_201920_3/seq_align_kernel.xclbin -o=./afi_creation -s3_bucket=dp-hls-fpga -s3_dcp_key=kernel-deploy/dcp -s3_logs_key=kernel-deploy/logs
done
