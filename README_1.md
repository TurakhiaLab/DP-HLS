# Usage
There is a folder for the full compilatio nfor each kernel. 

After creating a folder for the kernel, please soft link the `src`, `include`, and `common` folders under the kernel folder. 
Then copy the `Makefile` and `utils.mk` to the current folder. Do not forget to modify the proper kernel file. 

# Notice
When migrating a `params.h` file, remember to add vitis libeary header, remove the definition for `MAX_QUERY_LENGTH`, `MAX_REFERENCE_LENGTH`, `PE_NUM`, and `N_BLOCKS`. Also remember to add common definitions across different kernels.  

# Note
We can not put the pragma array partition within the same block we declared the hls::vector, or it will result in error in HLS such that it found the conflicting pragma of array partition and aggragate, where aggragate is done when declaring the vector. 