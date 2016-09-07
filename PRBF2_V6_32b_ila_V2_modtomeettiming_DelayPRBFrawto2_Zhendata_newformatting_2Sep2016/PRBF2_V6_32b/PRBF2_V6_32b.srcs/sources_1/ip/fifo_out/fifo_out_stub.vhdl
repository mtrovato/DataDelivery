-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
-- Date        : Mon Jul 27 12:05:09 2015
-- Host        : nucts01 running 64-bit CentOS release 6.5 (Final)
-- Command     : write_vhdl -force -mode synth_stub
--               /root/vivado_silvia/PRBF2_V3_backup/PRBF2_V2/PRBF2_V2.srcs/sources_1/ip/fifo_out/fifo_out_stub.vhdl
-- Design      : fifo_out
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fifo_out is
  Port ( 
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 39 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 39 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC
  );

end fifo_out;

architecture stub of fifo_out is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,din[39:0],wr_en,rd_en,dout[39:0],full,empty,valid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v12_0,Vivado 2015.1";
begin
end;
