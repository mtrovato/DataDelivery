// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
// Date        : Wed Aug 31 15:57:07 2016
// Host        : nuhep-75.phys.northwestern.edu running 64-bit CentOS release 6.5 (Final)
// Command     : write_verilog -force -mode synth_stub
//               /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/fifo_TX_RX/fifo_TX_RX_stub.v
// Design      : fifo_TX_RX
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v12_0,Vivado 2015.1" *)
module fifo_TX_RX(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, empty, valid)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[31:0],wr_en,rd_en,dout[31:0],full,empty,valid" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [31:0]din;
  input wr_en;
  input rd_en;
  output [31:0]dout;
  output full;
  output empty;
  output valid;
endmodule
