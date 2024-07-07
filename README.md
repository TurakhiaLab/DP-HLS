# DP-HLS: Dynamic Programming FPGA Acceleration using High-Level Synthesis
The following information is depracated

**HLS Tool**: Vitis HLS<br>
**Device**: <br>
**Frequency**: 250MHz <br>
**Length of the reference sequence**:64 <br> 
**Length of the query sequence**:64<br>
**Number of Processing Elements (PE)**:16<br>

### Following is the table summarizing the resource usage with various set of sequence alignment algorithms:<br>

These resource utilization numbers are only for kernels implementing DP matrix and instantiates PEs. Extra numbers for additional logic (such as traceback, etc.) will be added soon. 

<table>  
<thead> 
<tr>
      <th rowspan="2">Sequence Alignment Algorithms</th>
      <th rowspan="2">Gap Penalty</th>
      <th rowspan="2">Banding</th>
      <th colspan='3'>Resource Utilization </th>
    </tr>
    <tr>
   <th>FF</th>
   <th>LUT</th> 
    <th>BRAM</th> 
    </tr>
  </thead>
  <tbody>
    <tr>
      <td rowspan="4">Smith Waterman</td>
      <td rowspan="2">Linear</td>
      <td><input type="text"/>Non Banded</td>
      <td><input type="text"/>1939</td>
	 <td><input type="text" />9067</td>
	  <td><input type="text" />16</td>
    </tr>
    <tr>
      <td><input type="text"/>Banded</td>
      <td><input type="text" />4678</td>
      <td><input type="text" />40880</td>
       <td><input type="text" />32</td>
    </tr>
        <tr>
      <td rowspan="2">Affine</td>
      <td><input type="text" />Non Banded</td>
      <td><input type="text" />4301</td>
	 <td><input type="text" />16581</td>
	  <td><input type="text" />32</td>
    </tr>
    <tr>
      <td><input type="text" />Banded</td>
      <td><input type="text" /></td>
      <td><input type="text" /></td>
       <td><input type="text" /></td>
    </tr>
     <tr>
      <td rowspan="2">Needleman Wunsch</td>
      <td>Linear</td>
      <td><input type="text" /></td>
      <td><input type="text" />3358</td>
	 <td><input type="text" />9384</td>
	  <td><input type="text" />0</td>
    </tr>
    <tr>
      <td>Affine</td>
      <td><input type="text" /></td>
      <td><input type="text" /></td>
      <td><input type="text" /></td>
       <td><input type="text" /></td>
    </tr>
  </tbody>
</table>






# DP-HLS: Dynamic Programming FPGA Acceleration using High-Level Synthesis

## Table of Contents
- [Overview](#overview)
- [Getting Started](#gettingstarted) 
- [How to use](#usage)
- [Results](#results)
- [References](#references)

## <a name="overview"></a> Overview

We plan to accelerate and implement major important algorithms based on dynamic programming used in Bioinformatics applications. User can configure the parameterizable kernels as per their usecase to be implemented on an FPGA device.

## <a name="gettingstarted"></a> Getting Started

## <a name="usage"></a> How to use

Modify the parameters in `params.h` file as per your use-case before running our code. Currently our code generates random query and reference sequences as the inputs. You can configure this by reading the sequences from an input file in `seq_align_test.cpp`

Create a project in Xilinx Vitis HLS tool and select our code as source files. Select a device and clock frequency, then synthesize the code. Follow the steps for synthesizing the code from [their documentation](https://docs.xilinx.com/r/en-US/ug1399-vitis-hls/Using-Vitis-HLS).

## <a name="results"></a> Results

Currently our code performs local sequence alignment using Smith Waterman algorithm with affine gap penalty (we do not perform traceback now. Support for traceback will be added soon)

**HLS Tool**: Xilinx Vitis HLS<br>
**Device**: Zynq UltraScale+ MPSoC (xczu7ev-ffvc1156-2-i) <br>
**Frequency**: 250 MHz <br>
**Length of the reference sequence (ref_length)**: 1024 <br> 
**Length of the query sequence (query_length)**: 1024 <br>
**Number of Processing Elements (PE)**: 32 <br>
**Data type**: 16 bit fixed point <br>
**Number of kernels in parallel (N_BLOCKS)**: 8 <br>

### Following is the table summarizing the resource usage with various set of sequence alignment algorithms:<br>


<table>  
<thead> 
<tr>
      <th rowspan="2">Sequence Alignment Algorithms</th>
      <th rowspan="2">Gap Penalty</th>
      <th rowspan="2">Banding</th>
      <th colspan='3'>Resource Utilization </th>
    </tr>
    <tr>
   <th>FF</th>
   <th>LUT</th> 
    <th>BRAM</th> 
    </tr>
  </thead>
  <tbody>
    <tr>
      <td rowspan="4">Smith Waterman</td>
      <td rowspan="2">Linear</td>
      <td><input type="text"/>Non Banded</td>
      <td><input type="text"/></td>
	 <td><input type="text" /></td>
	  <td><input type="text" /></td>
    </tr>
    <tr>
      <td><input type="text"/>Banded</td>
      <td><input type="text" /></td>
      <td><input type="text" /></td>
       <td><input type="text" /></td>
    </tr>
        <tr>
      <td rowspan="2">Affine</td>
      <td><input type="text" />Non Banded</td>
      <td><input type="text" />16590</td>
	 <td><input type="text" />47526</td>
	  <td><input type="text" />144</td>
    </tr>
    <tr>
      <td><input type="text" />Banded</td>
      <td><input type="text" /></td>
      <td><input type="text" /></td>
       <td><input type="text" /></td>
    </tr>
     <tr>
      <td rowspan="2">Needleman Wunsch</td>
      <td>Linear</td>
      <td><input type="text" /></td>
      <td><input type="text" /></td>
	 <td><input type="text" /></td>
	  <td><input type="text" />0</td>
    </tr>
    <tr>
      <td>Affine</td>
      <td><input type="text" /></td>
      <td><input type="text" /></td>
      <td><input type="text" /></td>
       <td><input type="text" /></td>
    </tr>
  </tbody>
</table>

## <a name="references"></a> References

DP-HLS currently only has support on Unix-based systems. 

## Building DP-HLS

## Simulating DP-HLS

## Synthesizing DP-HLS

