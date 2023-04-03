// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Mar 13 11:25:11 2023
// Host        : LAPTOP-L296DK7B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/coole/Documents/GIT/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/prescaler/prescaler_stub.v
// Design      : prescaler
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module prescaler(clk_25MHz, reset, locked, clk_100MHz)
/* synthesis syn_black_box black_box_pad_pin="clk_25MHz,reset,locked,clk_100MHz" */;
  output clk_25MHz;
  input reset;
  output locked;
  input clk_100MHz;
endmodule
