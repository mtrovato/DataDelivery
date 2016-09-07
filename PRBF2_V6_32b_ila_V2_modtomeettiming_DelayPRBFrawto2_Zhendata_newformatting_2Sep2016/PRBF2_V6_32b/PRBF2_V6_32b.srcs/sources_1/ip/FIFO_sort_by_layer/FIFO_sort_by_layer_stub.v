// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
// Date        : Wed Aug 31 15:56:44 2016
// Host        : nuhep-75.phys.northwestern.edu running 64-bit CentOS release 6.5 (Final)
// Command     : write_verilog -force -mode synth_stub
//               /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/FIFO_sort_by_layer/FIFO_sort_by_layer_stub.v
// Design      : FIFO_sort_by_layer
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v12_0,Vivado 2015.1" *)
module FIFO_sort_by_layer(clk, rst, din, wr_en, rd_en, dout, full, empty, almost_empty, valid, data_count)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,din[31:0],wr_en,rd_en,dout[31:0],full,empty,almost_empty,valid,data_count[7:0]" */;
  input clk;
  input rst;
  input [31:0]din;
  input wr_en;
  input rd_en;
  output [31:0]dout;
  output full;
  output empty;
  output almost_empty;
  output valid;
  output [7:0]data_count;
endmodule
