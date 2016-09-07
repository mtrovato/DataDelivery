-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
-- Date        : Wed Mar 16 00:37:41 2016
-- Host        : nucts01 running 64-bit CentOS release 6.5 (Final)
-- Command     : write_vhdl -force -mode synth_stub
--               /root/vivado_silvia/PRBF2_V6/PRBF2_V6_32b/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/FIFO_PRBF2_out/FIFO_PRBF2_out_stub.vhdl
-- Design      : FIFO_PRBF2_out
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FIFO_PRBF2_out is
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
    valid : out STD_LOGIC
  );

end FIFO_PRBF2_out;

architecture stub of FIFO_PRBF2_out is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,din[31:0],wr_en,rd_en,dout[31:0],full,empty,almost_empty,valid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v12_0,Vivado 2015.1";
begin
end;
