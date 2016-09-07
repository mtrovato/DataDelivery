-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
-- Date        : Wed Aug 31 15:56:44 2016
-- Host        : nuhep-75.phys.northwestern.edu running 64-bit CentOS release 6.5 (Final)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/FIFO_sort_by_layer/FIFO_sort_by_layer_stub.vhdl
-- Design      : FIFO_sort_by_layer
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FIFO_sort_by_layer is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end FIFO_sort_by_layer;

architecture stub of FIFO_sort_by_layer is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,din[31:0],wr_en,rd_en,dout[31:0],full,empty,almost_empty,valid,data_count[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v12_0,Vivado 2015.1";
begin
end;
