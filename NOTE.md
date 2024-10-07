# Problems with the Vitis HLS 2021.2 Version

There is an multiple line function definition in the `/opt/Xilinx/Vitis_HLS/2021.2/include/hls_vector.h` file which will result in compilation errors. Need to change that function to a single line expression as follows: 
```cpp
constexpr size_t gp2(size_t N) { return N == 0 ? 0 : N % 2 != 0 ? 1 : 2 * gp2(N / 2); }
```

Then we need to install libusan:
```bash
yum install libasan
```