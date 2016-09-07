-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
-- Date        : Thu Mar 17 17:28:18 2016
-- Host        : nucts01 running 64-bit CentOS release 6.5 (Final)
-- Command     : write_vhdl -force -mode synth_stub
--               /root/vivado_silvia/PRBF2_V6/PRBF2_V6_32b/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1_stub.vhdl
-- Design      : clk_wiz_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wiz_1 is
  Port ( 
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC
  );

end clk_wiz_1;

architecture stub of clk_wiz_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in1,clk_out1,reset,locked";
begin
end;
