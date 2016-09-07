// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
// Date        : Mon Jul 27 12:05:09 2015
// Host        : nucts01 running 64-bit CentOS release 6.5 (Final)
// Command     : write_verilog -force -mode synth_stub
//               /root/vivado_silvia/PRBF2_V3_backup/PRBF2_V2/PRBF2_V2.srcs/sources_1/ip/fifo_out/fifo_out_stub.v
// Design      : fifo_out
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v12_0,Vivado 2015.1" *)
module fifo_out(clk, din, wr_en, rd_en, dout, full, empty, valid)
/* synthesis syn_black_box black_box_pad_pin="clk,din[39:0],wr_en,rd_en,dout[39:0],full,empty,valid" */;
  input clk;
  input [39:0]din;
  input wr_en;
  input rd_en;
  output [39:0]dout;
  output full;
  output empty;
  output valid;
endmodule
