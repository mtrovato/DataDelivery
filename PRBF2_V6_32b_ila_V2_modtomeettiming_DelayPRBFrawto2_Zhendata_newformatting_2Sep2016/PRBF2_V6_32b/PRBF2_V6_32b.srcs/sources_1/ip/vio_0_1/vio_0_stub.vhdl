-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
-- Date        : Mon Sep  5 14:23:12 2016
-- Host        : nuhep-75.phys.northwestern.edu running 64-bit CentOS release 6.5 (Final)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/vio_0_1/vio_0_stub.vhdl
-- Design      : vio_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vio_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end vio_0;

architecture stub of vio_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_in0[0:0],probe_out0[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "vio,Vivado 2015.1";
begin
end;
