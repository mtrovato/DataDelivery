// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
// Date        : Fri Jun 19 10:48:08 2015
// Host        : nucts01 running 64-bit CentOS release 6.5 (Final)
// Command     : write_verilog -force -mode synth_stub
//               /root/vivado_silvia/PBRF2_V1/PRBF2_V1.srcs/sources_1/ip/ila_1_2/ila_1_stub.v
// Design      : ila_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ila,Vivado 2015.1" *)
module ila_1(clk, probe0, probe1, probe2, probe3)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[255:0],probe2[255:0],probe3[23:0]" */;
  input clk;
  input [31:0]probe0;
  input [255:0]probe1;
  input [255:0]probe2;
  input [23:0]probe3;
endmodule
