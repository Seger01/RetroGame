// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Apr  4 12:06:47 2023
// Host        : 63807-villa1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/RetroProject/RetroGame/RetroSound/RetroSound.gen/sources_1/ip/whiteNoiseSample/whiteNoiseSample_stub.v
// Design      : whiteNoiseSample
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *)
module whiteNoiseSample(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[5:0],douta[7:0]" */;
  input clka;
  input ena;
  input [5:0]addra;
  output [7:0]douta;
endmodule
