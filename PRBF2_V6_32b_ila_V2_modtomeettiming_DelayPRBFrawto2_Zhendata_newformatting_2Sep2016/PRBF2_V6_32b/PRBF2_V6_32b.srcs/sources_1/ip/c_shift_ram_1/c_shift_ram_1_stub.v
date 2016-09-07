// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
// Date        : Wed Aug 31 15:57:24 2016
// Host        : nuhep-75.phys.northwestern.edu running 64-bit CentOS release 6.5 (Final)
// Command     : write_verilog -force -mode synth_stub
//               /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/c_shift_ram_1/c_shift_ram_1_stub.v
// Design      : c_shift_ram_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_shift_ram_v12_0,Vivado 2015.1" *)
module c_shift_ram_1(D, CLK, Q)
/* synthesis syn_black_box black_box_pad_pin="D[0:0],CLK,Q[0:0]" */;
  input [0:0]D;
  input CLK;
  output [0:0]Q;
endmodule
