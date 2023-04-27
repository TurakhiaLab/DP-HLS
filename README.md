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

Select a device and clock frequency before synthesizing the code in Xilinx Vitis HLS.

## <a name="results"></a> Results

Currently our code performs local sequence alignment using Smith Waterman algorithm with affine gap penalty. 

**HLS Tool**: Xilinx Vitis HLS<br>
**Device**: Zynq UltraScale+ MPSoC (xczu7ev-ffvc1156-2-i)
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
      <td><input type="text" /></td>
	 <td><input type="text" /></td>
	  <td><input type="text" /></td>
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
