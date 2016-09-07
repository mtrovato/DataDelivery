-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
-- Date        : Fri Jun 19 10:48:08 2015
-- Host        : nucts01 running 64-bit CentOS release 6.5 (Final)
-- Command     : write_vhdl -force -mode synth_stub
--               /root/vivado_silvia/PBRF2_V1/PRBF2_V1.srcs/sources_1/ip/ila_1_2/ila_1_stub.vhdl
-- Design      : ila_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_1 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end ila_1;

architecture stub of ila_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[31:0],probe1[255:0],probe2[255:0],probe3[23:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ila,Vivado 2015.1";
begin
end;
