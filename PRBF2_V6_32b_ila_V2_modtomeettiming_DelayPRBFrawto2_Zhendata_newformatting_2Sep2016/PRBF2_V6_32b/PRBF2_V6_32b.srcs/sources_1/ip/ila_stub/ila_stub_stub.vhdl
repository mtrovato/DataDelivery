-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
-- Date        : Wed Sep  7 14:02:42 2016
-- Host        : nuhep-75.phys.northwestern.edu running 64-bit CentOS release 6.5 (Final)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/ila_stub/ila_stub_stub.vhdl
-- Design      : ila_stub
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_stub is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe29 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe33 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe40 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe42 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe43 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe46 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe48 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe49 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe50 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end ila_stub;

architecture stub of ila_stub is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[1:0],probe1[31:0],probe2[31:0],probe3[31:0],probe4[31:0],probe5[31:0],probe6[31:0],probe7[31:0],probe8[31:0],probe9[31:0],probe10[31:0],probe11[39:0],probe12[39:0],probe13[31:0],probe14[1:0],probe15[7:0],probe16[7:0],probe17[7:0],probe18[7:0],probe19[31:0],probe20[31:0],probe21[31:0],probe22[31:0],probe23[7:0],probe24[23:0],probe25[3:0],probe26[9:0],probe27[5:0],probe28[0:0],probe29[31:0],probe30[31:0],probe31[31:0],probe32[31:0],probe33[31:0],probe34[31:0],probe35[31:0],probe36[31:0],probe37[31:0],probe38[31:0],probe39[31:0],probe40[31:0],probe41[31:0],probe42[31:0],probe43[31:0],probe44[31:0],probe45[31:0],probe46[31:0],probe47[31:0],probe48[31:0],probe49[31:0],probe50[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ila,Vivado 2015.1";
begin
end;
