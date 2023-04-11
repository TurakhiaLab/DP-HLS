// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module seq_align_multiple_seq_align_multiple_Pipeline_VITIS_LOOP_286_2_dummies_inner_V_RAM_AUTO_1R1W (
    address0, ce0, q0, 
    reset, clk);

parameter DataWidth = 10;
parameter AddressWidth = 3;
parameter AddressRange = 8;
 
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;

input reset;
input clk;

 
reg [DataWidth-1:0] rom0[0:AddressRange-1];


initial begin
     
    $readmemh("./seq_align_multiple_seq_align_multiple_Pipeline_VITIS_LOOP_286_2_dummies_inner_V_RAM_AUTO_1R1W.dat", rom0);
end

  
always @(posedge clk) 
begin 
    if (ce0) 
    begin
        q0 <= rom0[address0];
    end
end


endmodule

