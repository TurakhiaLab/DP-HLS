# Single Benchmark

To run sigle benchmark
`PYTHONPATH=/home/centos/efs/DP-HLS/benchmark:$PYTHONPATH python`
then 
```
>>> import utils
>>> utils.run_benchmark_single("/home/centos/efs/kernels/global_affine/global_affine_256_256_64_8", repeat=10)
Kernel global_affine_256_256_64_8 execution time: 20.5
('global_affine_256_256_64_8', 20.5)
```