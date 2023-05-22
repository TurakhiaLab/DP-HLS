



# DP-HLS: Dynamic Programming FPGA Acceleration using High-Level Synthesis

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
