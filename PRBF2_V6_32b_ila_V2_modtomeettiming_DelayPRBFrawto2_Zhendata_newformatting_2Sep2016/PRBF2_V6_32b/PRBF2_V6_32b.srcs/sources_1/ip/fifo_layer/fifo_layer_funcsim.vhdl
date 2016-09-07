-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
-- Date        : Thu Feb 11 22:42:25 2016
-- Host        : nucts01 running 64-bit CentOS release 6.5 (Final)
-- Command     : write_vhdl -force -mode funcsim
--               /root/vivado_silvia/PRBF2_V6/PRBF2_V6_32b/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/fifo_layer/fifo_layer_funcsim.vhdl
-- Design      : fifo_layer
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_compare is
  port (
    comp0 : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_compare : entity is "compare";
end fifo_layer_compare;

architecture STRUCTURE of fifo_layer_compare is
  signal \gmux.gm[3].gms.ms_n_0\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gmux.gm[3].gms.ms_n_0\,
      CO(2 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \gmux.gm[3].gms.ms_n_0\,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg_0(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_compare_0 is
  port (
    comp1 : out STD_LOGIC;
    v1_reg_1 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_compare_0 : entity is "compare";
end fifo_layer_compare_0;

architecture STRUCTURE of fifo_layer_compare_0 is
  signal \gmux.gm[3].gms.ms_n_0\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gmux.gm[3].gms.ms_n_0\,
      CO(2 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_1(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \gmux.gm[3].gms.ms_n_0\,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg_1(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_compare_1 is
  port (
    comp0 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_compare_1 : entity is "compare";
end fifo_layer_compare_1;

architecture STRUCTURE of fifo_layer_compare_1 is
  signal \gmux.gm[3].gms.ms_n_0\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gmux.gm[3].gms.ms_n_0\,
      CO(2 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \gmux.gm[3].gms.ms_n_0\,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_compare_2 is
  port (
    comp1 : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_compare_2 : entity is "compare";
end fifo_layer_compare_2;

architecture STRUCTURE of fifo_layer_compare_2 is
  signal \gmux.gm[3].gms.ms_n_0\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gmux.gm[3].gms.ms_n_0\,
      CO(2 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \gmux.gm[3].gms.ms_n_0\,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg_0(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_compare_3 is
  port (
    comp2 : out STD_LOGIC;
    v1_reg_1 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_compare_3 : entity is "compare";
end fifo_layer_compare_3;

architecture STRUCTURE of fifo_layer_compare_3 is
  signal \gmux.gm[3].gms.ms_n_0\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gmux.gm[3].gms.ms_n_0\,
      CO(2 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_1(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \gmux.gm[3].gms.ms_n_0\,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp2,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg_1(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_dmem is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \gcc0.gc0.count_d1_reg[7]\ : in STD_LOGIC;
    \gc1.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]_0\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[9]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[7]_0\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[9]_0\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[9]_1\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[9]_2\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[7]_1\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]_1\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]_2\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]_3\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[7]_2\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[7]_3\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[6]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[7]_4\ : in STD_LOGIC;
    ADDRC : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gc1.count_d2_reg[5]_rep__0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ADDRD : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ADDRA : in STD_LOGIC_VECTOR ( 5 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_dmem : entity is "dmem";
end fifo_layer_dmem;

architecture STRUCTURE of fifo_layer_dmem is
  signal RAM_reg_0_63_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_9_11_n_2 : STD_LOGIC;
  signal \gpr1.dout_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[0]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[0]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[0]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[10]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[10]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[10]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[10]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[11]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[11]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[11]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[11]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[12]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[12]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[12]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[12]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[13]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[13]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[13]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[13]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[14]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[14]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[14]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[14]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[15]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[15]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[15]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[15]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[16]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[16]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[16]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[16]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[17]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[17]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[17]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[17]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[18]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[18]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[18]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[18]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[19]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[19]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[19]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[19]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[1]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[1]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[1]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[1]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[20]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[20]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[20]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[20]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[21]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[21]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[21]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[21]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[22]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[22]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[22]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[22]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[23]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[23]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[23]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[23]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[24]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[24]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[24]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[24]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[25]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[25]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[25]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[25]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[26]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[26]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[26]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[26]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[27]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[27]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[27]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[27]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[28]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[28]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[28]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[28]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[29]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[29]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[29]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[29]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[2]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[2]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[2]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[2]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[30]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[30]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[30]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[30]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[31]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[31]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[31]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[31]_i_8_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[3]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[3]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[3]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[3]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[4]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[4]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[4]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[4]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[5]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[5]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[5]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[5]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[6]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[6]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[6]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[6]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[7]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[7]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[8]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[8]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[8]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[8]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[9]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[9]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[9]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[9]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[17]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[21]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[22]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[24]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[25]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[26]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[28]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[29]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[30]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_9_11_DOD_UNCONNECTED : STD_LOGIC;
begin
RAM_reg_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_0_63_0_2_n_0,
      DOB => RAM_reg_0_63_0_2_n_1,
      DOC => RAM_reg_0_63_0_2_n_2,
      DOD => NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]\
    );
RAM_reg_0_63_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_0_63_12_14_n_0,
      DOB => RAM_reg_0_63_12_14_n_1,
      DOC => RAM_reg_0_63_12_14_n_2,
      DOD => NLW_RAM_reg_0_63_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]\
    );
RAM_reg_0_63_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_0_63_15_17_n_0,
      DOB => RAM_reg_0_63_15_17_n_1,
      DOC => RAM_reg_0_63_15_17_n_2,
      DOD => NLW_RAM_reg_0_63_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]\
    );
RAM_reg_0_63_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_0_63_18_20_n_0,
      DOB => RAM_reg_0_63_18_20_n_1,
      DOC => RAM_reg_0_63_18_20_n_2,
      DOD => NLW_RAM_reg_0_63_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]\
    );
RAM_reg_0_63_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_0_63_21_23_n_0,
      DOB => RAM_reg_0_63_21_23_n_1,
      DOC => RAM_reg_0_63_21_23_n_2,
      DOD => NLW_RAM_reg_0_63_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]\
    );
RAM_reg_0_63_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_0_63_24_26_n_0,
      DOB => RAM_reg_0_63_24_26_n_1,
      DOC => RAM_reg_0_63_24_26_n_2,
      DOD => NLW_RAM_reg_0_63_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]\
    );
RAM_reg_0_63_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_0_63_27_29_n_0,
      DOB => RAM_reg_0_63_27_29_n_1,
      DOC => RAM_reg_0_63_27_29_n_2,
      DOD => NLW_RAM_reg_0_63_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]\
    );
RAM_reg_0_63_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_0_63_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_0_63_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]\
    );
RAM_reg_0_63_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_0_63_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_0_63_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]\
    );
RAM_reg_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_0_63_3_5_n_0,
      DOB => RAM_reg_0_63_3_5_n_1,
      DOC => RAM_reg_0_63_3_5_n_2,
      DOD => NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]\
    );
RAM_reg_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_0_63_6_8_n_0,
      DOB => RAM_reg_0_63_6_8_n_1,
      DOC => RAM_reg_0_63_6_8_n_2,
      DOD => NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]\
    );
RAM_reg_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_0_63_9_11_n_0,
      DOB => RAM_reg_0_63_9_11_n_1,
      DOC => RAM_reg_0_63_9_11_n_2,
      DOD => NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]\
    );
RAM_reg_128_191_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_128_191_0_2_n_0,
      DOB => RAM_reg_128_191_0_2_n_1,
      DOC => RAM_reg_128_191_0_2_n_2,
      DOD => NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_0\
    );
RAM_reg_128_191_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_128_191_12_14_n_0,
      DOB => RAM_reg_128_191_12_14_n_1,
      DOC => RAM_reg_128_191_12_14_n_2,
      DOD => NLW_RAM_reg_128_191_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_0\
    );
RAM_reg_128_191_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_128_191_15_17_n_0,
      DOB => RAM_reg_128_191_15_17_n_1,
      DOC => RAM_reg_128_191_15_17_n_2,
      DOD => NLW_RAM_reg_128_191_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_0\
    );
RAM_reg_128_191_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_128_191_18_20_n_0,
      DOB => RAM_reg_128_191_18_20_n_1,
      DOC => RAM_reg_128_191_18_20_n_2,
      DOD => NLW_RAM_reg_128_191_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_0\
    );
RAM_reg_128_191_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_128_191_21_23_n_0,
      DOB => RAM_reg_128_191_21_23_n_1,
      DOC => RAM_reg_128_191_21_23_n_2,
      DOD => NLW_RAM_reg_128_191_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_0\
    );
RAM_reg_128_191_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_128_191_24_26_n_0,
      DOB => RAM_reg_128_191_24_26_n_1,
      DOC => RAM_reg_128_191_24_26_n_2,
      DOD => NLW_RAM_reg_128_191_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_0\
    );
RAM_reg_128_191_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_128_191_27_29_n_0,
      DOB => RAM_reg_128_191_27_29_n_1,
      DOC => RAM_reg_128_191_27_29_n_2,
      DOD => NLW_RAM_reg_128_191_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_0\
    );
RAM_reg_128_191_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_128_191_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_128_191_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_0\
    );
RAM_reg_128_191_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_128_191_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_128_191_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_0\
    );
RAM_reg_128_191_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_128_191_3_5_n_0,
      DOB => RAM_reg_128_191_3_5_n_1,
      DOC => RAM_reg_128_191_3_5_n_2,
      DOD => NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_0\
    );
RAM_reg_128_191_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_128_191_6_8_n_0,
      DOB => RAM_reg_128_191_6_8_n_1,
      DOC => RAM_reg_128_191_6_8_n_2,
      DOD => NLW_RAM_reg_128_191_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_0\
    );
RAM_reg_128_191_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_128_191_9_11_n_0,
      DOB => RAM_reg_128_191_9_11_n_1,
      DOC => RAM_reg_128_191_9_11_n_2,
      DOD => NLW_RAM_reg_128_191_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_0\
    );
RAM_reg_192_255_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_192_255_0_2_n_0,
      DOB => RAM_reg_192_255_0_2_n_1,
      DOC => RAM_reg_192_255_0_2_n_2,
      DOD => NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]\
    );
RAM_reg_192_255_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_192_255_12_14_n_0,
      DOB => RAM_reg_192_255_12_14_n_1,
      DOC => RAM_reg_192_255_12_14_n_2,
      DOD => NLW_RAM_reg_192_255_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]\
    );
RAM_reg_192_255_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_192_255_15_17_n_0,
      DOB => RAM_reg_192_255_15_17_n_1,
      DOC => RAM_reg_192_255_15_17_n_2,
      DOD => NLW_RAM_reg_192_255_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]\
    );
RAM_reg_192_255_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_192_255_18_20_n_0,
      DOB => RAM_reg_192_255_18_20_n_1,
      DOC => RAM_reg_192_255_18_20_n_2,
      DOD => NLW_RAM_reg_192_255_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]\
    );
RAM_reg_192_255_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_192_255_21_23_n_0,
      DOB => RAM_reg_192_255_21_23_n_1,
      DOC => RAM_reg_192_255_21_23_n_2,
      DOD => NLW_RAM_reg_192_255_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]\
    );
RAM_reg_192_255_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_192_255_24_26_n_0,
      DOB => RAM_reg_192_255_24_26_n_1,
      DOC => RAM_reg_192_255_24_26_n_2,
      DOD => NLW_RAM_reg_192_255_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]\
    );
RAM_reg_192_255_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_192_255_27_29_n_0,
      DOB => RAM_reg_192_255_27_29_n_1,
      DOC => RAM_reg_192_255_27_29_n_2,
      DOD => NLW_RAM_reg_192_255_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]\
    );
RAM_reg_192_255_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_192_255_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_192_255_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]\
    );
RAM_reg_192_255_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_192_255_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_192_255_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]\
    );
RAM_reg_192_255_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_192_255_3_5_n_0,
      DOB => RAM_reg_192_255_3_5_n_1,
      DOC => RAM_reg_192_255_3_5_n_2,
      DOD => NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]\
    );
RAM_reg_192_255_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_192_255_6_8_n_0,
      DOB => RAM_reg_192_255_6_8_n_1,
      DOC => RAM_reg_192_255_6_8_n_2,
      DOD => NLW_RAM_reg_192_255_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]\
    );
RAM_reg_192_255_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_192_255_9_11_n_0,
      DOB => RAM_reg_192_255_9_11_n_1,
      DOC => RAM_reg_192_255_9_11_n_2,
      DOD => NLW_RAM_reg_192_255_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]\
    );
RAM_reg_256_319_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_256_319_0_2_n_0,
      DOB => RAM_reg_256_319_0_2_n_1,
      DOC => RAM_reg_256_319_0_2_n_2,
      DOD => NLW_RAM_reg_256_319_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_0\
    );
RAM_reg_256_319_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_256_319_12_14_n_0,
      DOB => RAM_reg_256_319_12_14_n_1,
      DOC => RAM_reg_256_319_12_14_n_2,
      DOD => NLW_RAM_reg_256_319_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_0\
    );
RAM_reg_256_319_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_256_319_15_17_n_0,
      DOB => RAM_reg_256_319_15_17_n_1,
      DOC => RAM_reg_256_319_15_17_n_2,
      DOD => NLW_RAM_reg_256_319_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_0\
    );
RAM_reg_256_319_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_256_319_18_20_n_0,
      DOB => RAM_reg_256_319_18_20_n_1,
      DOC => RAM_reg_256_319_18_20_n_2,
      DOD => NLW_RAM_reg_256_319_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_0\
    );
RAM_reg_256_319_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_256_319_21_23_n_0,
      DOB => RAM_reg_256_319_21_23_n_1,
      DOC => RAM_reg_256_319_21_23_n_2,
      DOD => NLW_RAM_reg_256_319_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_0\
    );
RAM_reg_256_319_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_256_319_24_26_n_0,
      DOB => RAM_reg_256_319_24_26_n_1,
      DOC => RAM_reg_256_319_24_26_n_2,
      DOD => NLW_RAM_reg_256_319_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_0\
    );
RAM_reg_256_319_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_256_319_27_29_n_0,
      DOB => RAM_reg_256_319_27_29_n_1,
      DOC => RAM_reg_256_319_27_29_n_2,
      DOD => NLW_RAM_reg_256_319_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_0\
    );
RAM_reg_256_319_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_256_319_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_256_319_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_0\
    );
RAM_reg_256_319_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_256_319_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_256_319_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_0\
    );
RAM_reg_256_319_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_256_319_3_5_n_0,
      DOB => RAM_reg_256_319_3_5_n_1,
      DOC => RAM_reg_256_319_3_5_n_2,
      DOD => NLW_RAM_reg_256_319_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_0\
    );
RAM_reg_256_319_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_256_319_6_8_n_0,
      DOB => RAM_reg_256_319_6_8_n_1,
      DOC => RAM_reg_256_319_6_8_n_2,
      DOD => NLW_RAM_reg_256_319_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_0\
    );
RAM_reg_256_319_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_256_319_9_11_n_0,
      DOB => RAM_reg_256_319_9_11_n_1,
      DOC => RAM_reg_256_319_9_11_n_2,
      DOD => NLW_RAM_reg_256_319_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_0\
    );
RAM_reg_320_383_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_320_383_0_2_n_0,
      DOB => RAM_reg_320_383_0_2_n_1,
      DOC => RAM_reg_320_383_0_2_n_2,
      DOD => NLW_RAM_reg_320_383_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_0\
    );
RAM_reg_320_383_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_320_383_12_14_n_0,
      DOB => RAM_reg_320_383_12_14_n_1,
      DOC => RAM_reg_320_383_12_14_n_2,
      DOD => NLW_RAM_reg_320_383_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_0\
    );
RAM_reg_320_383_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_320_383_15_17_n_0,
      DOB => RAM_reg_320_383_15_17_n_1,
      DOC => RAM_reg_320_383_15_17_n_2,
      DOD => NLW_RAM_reg_320_383_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_0\
    );
RAM_reg_320_383_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_320_383_18_20_n_0,
      DOB => RAM_reg_320_383_18_20_n_1,
      DOC => RAM_reg_320_383_18_20_n_2,
      DOD => NLW_RAM_reg_320_383_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_0\
    );
RAM_reg_320_383_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_320_383_21_23_n_0,
      DOB => RAM_reg_320_383_21_23_n_1,
      DOC => RAM_reg_320_383_21_23_n_2,
      DOD => NLW_RAM_reg_320_383_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_0\
    );
RAM_reg_320_383_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_320_383_24_26_n_0,
      DOB => RAM_reg_320_383_24_26_n_1,
      DOC => RAM_reg_320_383_24_26_n_2,
      DOD => NLW_RAM_reg_320_383_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_0\
    );
RAM_reg_320_383_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_320_383_27_29_n_0,
      DOB => RAM_reg_320_383_27_29_n_1,
      DOC => RAM_reg_320_383_27_29_n_2,
      DOD => NLW_RAM_reg_320_383_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_0\
    );
RAM_reg_320_383_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_320_383_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_320_383_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_0\
    );
RAM_reg_320_383_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_320_383_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_320_383_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_0\
    );
RAM_reg_320_383_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_320_383_3_5_n_0,
      DOB => RAM_reg_320_383_3_5_n_1,
      DOC => RAM_reg_320_383_3_5_n_2,
      DOD => NLW_RAM_reg_320_383_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_0\
    );
RAM_reg_320_383_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_320_383_6_8_n_0,
      DOB => RAM_reg_320_383_6_8_n_1,
      DOC => RAM_reg_320_383_6_8_n_2,
      DOD => NLW_RAM_reg_320_383_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_0\
    );
RAM_reg_320_383_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_320_383_9_11_n_0,
      DOB => RAM_reg_320_383_9_11_n_1,
      DOC => RAM_reg_320_383_9_11_n_2,
      DOD => NLW_RAM_reg_320_383_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_0\
    );
RAM_reg_384_447_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_384_447_0_2_n_0,
      DOB => RAM_reg_384_447_0_2_n_1,
      DOC => RAM_reg_384_447_0_2_n_2,
      DOD => NLW_RAM_reg_384_447_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_1\
    );
RAM_reg_384_447_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_384_447_12_14_n_0,
      DOB => RAM_reg_384_447_12_14_n_1,
      DOC => RAM_reg_384_447_12_14_n_2,
      DOD => NLW_RAM_reg_384_447_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_1\
    );
RAM_reg_384_447_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_384_447_15_17_n_0,
      DOB => RAM_reg_384_447_15_17_n_1,
      DOC => RAM_reg_384_447_15_17_n_2,
      DOD => NLW_RAM_reg_384_447_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_1\
    );
RAM_reg_384_447_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_384_447_18_20_n_0,
      DOB => RAM_reg_384_447_18_20_n_1,
      DOC => RAM_reg_384_447_18_20_n_2,
      DOD => NLW_RAM_reg_384_447_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_1\
    );
RAM_reg_384_447_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_384_447_21_23_n_0,
      DOB => RAM_reg_384_447_21_23_n_1,
      DOC => RAM_reg_384_447_21_23_n_2,
      DOD => NLW_RAM_reg_384_447_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_1\
    );
RAM_reg_384_447_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_384_447_24_26_n_0,
      DOB => RAM_reg_384_447_24_26_n_1,
      DOC => RAM_reg_384_447_24_26_n_2,
      DOD => NLW_RAM_reg_384_447_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_1\
    );
RAM_reg_384_447_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_384_447_27_29_n_0,
      DOB => RAM_reg_384_447_27_29_n_1,
      DOC => RAM_reg_384_447_27_29_n_2,
      DOD => NLW_RAM_reg_384_447_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_1\
    );
RAM_reg_384_447_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_384_447_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_384_447_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_1\
    );
RAM_reg_384_447_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_384_447_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_384_447_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_1\
    );
RAM_reg_384_447_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_384_447_3_5_n_0,
      DOB => RAM_reg_384_447_3_5_n_1,
      DOC => RAM_reg_384_447_3_5_n_2,
      DOD => NLW_RAM_reg_384_447_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_1\
    );
RAM_reg_384_447_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_384_447_6_8_n_0,
      DOB => RAM_reg_384_447_6_8_n_1,
      DOC => RAM_reg_384_447_6_8_n_2,
      DOD => NLW_RAM_reg_384_447_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_1\
    );
RAM_reg_384_447_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_384_447_9_11_n_0,
      DOB => RAM_reg_384_447_9_11_n_1,
      DOC => RAM_reg_384_447_9_11_n_2,
      DOD => NLW_RAM_reg_384_447_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_1\
    );
RAM_reg_448_511_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_448_511_0_2_n_0,
      DOB => RAM_reg_448_511_0_2_n_1,
      DOC => RAM_reg_448_511_0_2_n_2,
      DOD => NLW_RAM_reg_448_511_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_2\
    );
RAM_reg_448_511_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_448_511_12_14_n_0,
      DOB => RAM_reg_448_511_12_14_n_1,
      DOC => RAM_reg_448_511_12_14_n_2,
      DOD => NLW_RAM_reg_448_511_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_2\
    );
RAM_reg_448_511_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_448_511_15_17_n_0,
      DOB => RAM_reg_448_511_15_17_n_1,
      DOC => RAM_reg_448_511_15_17_n_2,
      DOD => NLW_RAM_reg_448_511_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_2\
    );
RAM_reg_448_511_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_448_511_18_20_n_0,
      DOB => RAM_reg_448_511_18_20_n_1,
      DOC => RAM_reg_448_511_18_20_n_2,
      DOD => NLW_RAM_reg_448_511_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_2\
    );
RAM_reg_448_511_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_448_511_21_23_n_0,
      DOB => RAM_reg_448_511_21_23_n_1,
      DOC => RAM_reg_448_511_21_23_n_2,
      DOD => NLW_RAM_reg_448_511_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_2\
    );
RAM_reg_448_511_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_448_511_24_26_n_0,
      DOB => RAM_reg_448_511_24_26_n_1,
      DOC => RAM_reg_448_511_24_26_n_2,
      DOD => NLW_RAM_reg_448_511_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_2\
    );
RAM_reg_448_511_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_448_511_27_29_n_0,
      DOB => RAM_reg_448_511_27_29_n_1,
      DOC => RAM_reg_448_511_27_29_n_2,
      DOD => NLW_RAM_reg_448_511_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_2\
    );
RAM_reg_448_511_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_448_511_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_448_511_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_2\
    );
RAM_reg_448_511_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_448_511_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_448_511_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_2\
    );
RAM_reg_448_511_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_448_511_3_5_n_0,
      DOB => RAM_reg_448_511_3_5_n_1,
      DOC => RAM_reg_448_511_3_5_n_2,
      DOD => NLW_RAM_reg_448_511_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_2\
    );
RAM_reg_448_511_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_448_511_6_8_n_0,
      DOB => RAM_reg_448_511_6_8_n_1,
      DOC => RAM_reg_448_511_6_8_n_2,
      DOD => NLW_RAM_reg_448_511_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_2\
    );
RAM_reg_448_511_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_448_511_9_11_n_0,
      DOB => RAM_reg_448_511_9_11_n_1,
      DOC => RAM_reg_448_511_9_11_n_2,
      DOD => NLW_RAM_reg_448_511_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[9]_2\
    );
RAM_reg_512_575_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_512_575_0_2_n_0,
      DOB => RAM_reg_512_575_0_2_n_1,
      DOC => RAM_reg_512_575_0_2_n_2,
      DOD => NLW_RAM_reg_512_575_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_1\
    );
RAM_reg_512_575_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_512_575_12_14_n_0,
      DOB => RAM_reg_512_575_12_14_n_1,
      DOC => RAM_reg_512_575_12_14_n_2,
      DOD => NLW_RAM_reg_512_575_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_1\
    );
RAM_reg_512_575_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_512_575_15_17_n_0,
      DOB => RAM_reg_512_575_15_17_n_1,
      DOC => RAM_reg_512_575_15_17_n_2,
      DOD => NLW_RAM_reg_512_575_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_1\
    );
RAM_reg_512_575_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_512_575_18_20_n_0,
      DOB => RAM_reg_512_575_18_20_n_1,
      DOC => RAM_reg_512_575_18_20_n_2,
      DOD => NLW_RAM_reg_512_575_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_1\
    );
RAM_reg_512_575_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_512_575_21_23_n_0,
      DOB => RAM_reg_512_575_21_23_n_1,
      DOC => RAM_reg_512_575_21_23_n_2,
      DOD => NLW_RAM_reg_512_575_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_1\
    );
RAM_reg_512_575_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_512_575_24_26_n_0,
      DOB => RAM_reg_512_575_24_26_n_1,
      DOC => RAM_reg_512_575_24_26_n_2,
      DOD => NLW_RAM_reg_512_575_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_1\
    );
RAM_reg_512_575_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_512_575_27_29_n_0,
      DOB => RAM_reg_512_575_27_29_n_1,
      DOC => RAM_reg_512_575_27_29_n_2,
      DOD => NLW_RAM_reg_512_575_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_1\
    );
RAM_reg_512_575_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_512_575_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_512_575_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_1\
    );
RAM_reg_512_575_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_512_575_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_512_575_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_1\
    );
RAM_reg_512_575_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_512_575_3_5_n_0,
      DOB => RAM_reg_512_575_3_5_n_1,
      DOC => RAM_reg_512_575_3_5_n_2,
      DOD => NLW_RAM_reg_512_575_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_1\
    );
RAM_reg_512_575_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_512_575_6_8_n_0,
      DOB => RAM_reg_512_575_6_8_n_1,
      DOC => RAM_reg_512_575_6_8_n_2,
      DOD => NLW_RAM_reg_512_575_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_1\
    );
RAM_reg_512_575_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_512_575_9_11_n_0,
      DOB => RAM_reg_512_575_9_11_n_1,
      DOC => RAM_reg_512_575_9_11_n_2,
      DOD => NLW_RAM_reg_512_575_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_1\
    );
RAM_reg_576_639_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_576_639_0_2_n_0,
      DOB => RAM_reg_576_639_0_2_n_1,
      DOC => RAM_reg_576_639_0_2_n_2,
      DOD => NLW_RAM_reg_576_639_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_1\
    );
RAM_reg_576_639_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_576_639_12_14_n_0,
      DOB => RAM_reg_576_639_12_14_n_1,
      DOC => RAM_reg_576_639_12_14_n_2,
      DOD => NLW_RAM_reg_576_639_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_1\
    );
RAM_reg_576_639_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_576_639_15_17_n_0,
      DOB => RAM_reg_576_639_15_17_n_1,
      DOC => RAM_reg_576_639_15_17_n_2,
      DOD => NLW_RAM_reg_576_639_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_1\
    );
RAM_reg_576_639_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_576_639_18_20_n_0,
      DOB => RAM_reg_576_639_18_20_n_1,
      DOC => RAM_reg_576_639_18_20_n_2,
      DOD => NLW_RAM_reg_576_639_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_1\
    );
RAM_reg_576_639_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_576_639_21_23_n_0,
      DOB => RAM_reg_576_639_21_23_n_1,
      DOC => RAM_reg_576_639_21_23_n_2,
      DOD => NLW_RAM_reg_576_639_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_1\
    );
RAM_reg_576_639_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_576_639_24_26_n_0,
      DOB => RAM_reg_576_639_24_26_n_1,
      DOC => RAM_reg_576_639_24_26_n_2,
      DOD => NLW_RAM_reg_576_639_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_1\
    );
RAM_reg_576_639_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_576_639_27_29_n_0,
      DOB => RAM_reg_576_639_27_29_n_1,
      DOC => RAM_reg_576_639_27_29_n_2,
      DOD => NLW_RAM_reg_576_639_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_1\
    );
RAM_reg_576_639_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_576_639_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_576_639_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_1\
    );
RAM_reg_576_639_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_576_639_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_576_639_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_1\
    );
RAM_reg_576_639_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_576_639_3_5_n_0,
      DOB => RAM_reg_576_639_3_5_n_1,
      DOC => RAM_reg_576_639_3_5_n_2,
      DOD => NLW_RAM_reg_576_639_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_1\
    );
RAM_reg_576_639_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_576_639_6_8_n_0,
      DOB => RAM_reg_576_639_6_8_n_1,
      DOC => RAM_reg_576_639_6_8_n_2,
      DOD => NLW_RAM_reg_576_639_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_1\
    );
RAM_reg_576_639_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_576_639_9_11_n_0,
      DOB => RAM_reg_576_639_9_11_n_1,
      DOC => RAM_reg_576_639_9_11_n_2,
      DOD => NLW_RAM_reg_576_639_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_1\
    );
RAM_reg_640_703_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_640_703_0_2_n_0,
      DOB => RAM_reg_640_703_0_2_n_1,
      DOC => RAM_reg_640_703_0_2_n_2,
      DOD => NLW_RAM_reg_640_703_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_2\
    );
RAM_reg_640_703_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_640_703_12_14_n_0,
      DOB => RAM_reg_640_703_12_14_n_1,
      DOC => RAM_reg_640_703_12_14_n_2,
      DOD => NLW_RAM_reg_640_703_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_2\
    );
RAM_reg_640_703_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_640_703_15_17_n_0,
      DOB => RAM_reg_640_703_15_17_n_1,
      DOC => RAM_reg_640_703_15_17_n_2,
      DOD => NLW_RAM_reg_640_703_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_2\
    );
RAM_reg_640_703_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_640_703_18_20_n_0,
      DOB => RAM_reg_640_703_18_20_n_1,
      DOC => RAM_reg_640_703_18_20_n_2,
      DOD => NLW_RAM_reg_640_703_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_2\
    );
RAM_reg_640_703_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_640_703_21_23_n_0,
      DOB => RAM_reg_640_703_21_23_n_1,
      DOC => RAM_reg_640_703_21_23_n_2,
      DOD => NLW_RAM_reg_640_703_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_2\
    );
RAM_reg_640_703_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_640_703_24_26_n_0,
      DOB => RAM_reg_640_703_24_26_n_1,
      DOC => RAM_reg_640_703_24_26_n_2,
      DOD => NLW_RAM_reg_640_703_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_2\
    );
RAM_reg_640_703_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_640_703_27_29_n_0,
      DOB => RAM_reg_640_703_27_29_n_1,
      DOC => RAM_reg_640_703_27_29_n_2,
      DOD => NLW_RAM_reg_640_703_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_2\
    );
RAM_reg_640_703_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_640_703_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_640_703_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_2\
    );
RAM_reg_640_703_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_640_703_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_640_703_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_2\
    );
RAM_reg_640_703_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_640_703_3_5_n_0,
      DOB => RAM_reg_640_703_3_5_n_1,
      DOC => RAM_reg_640_703_3_5_n_2,
      DOD => NLW_RAM_reg_640_703_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_2\
    );
RAM_reg_640_703_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_640_703_6_8_n_0,
      DOB => RAM_reg_640_703_6_8_n_1,
      DOC => RAM_reg_640_703_6_8_n_2,
      DOD => NLW_RAM_reg_640_703_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_2\
    );
RAM_reg_640_703_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_640_703_9_11_n_0,
      DOB => RAM_reg_640_703_9_11_n_1,
      DOC => RAM_reg_640_703_9_11_n_2,
      DOD => NLW_RAM_reg_640_703_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_2\
    );
RAM_reg_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_64_127_0_2_n_0,
      DOB => RAM_reg_64_127_0_2_n_1,
      DOC => RAM_reg_64_127_0_2_n_2,
      DOD => NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]\
    );
RAM_reg_64_127_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_64_127_12_14_n_0,
      DOB => RAM_reg_64_127_12_14_n_1,
      DOC => RAM_reg_64_127_12_14_n_2,
      DOD => NLW_RAM_reg_64_127_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]\
    );
RAM_reg_64_127_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_64_127_15_17_n_0,
      DOB => RAM_reg_64_127_15_17_n_1,
      DOC => RAM_reg_64_127_15_17_n_2,
      DOD => NLW_RAM_reg_64_127_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]\
    );
RAM_reg_64_127_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_64_127_18_20_n_0,
      DOB => RAM_reg_64_127_18_20_n_1,
      DOC => RAM_reg_64_127_18_20_n_2,
      DOD => NLW_RAM_reg_64_127_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]\
    );
RAM_reg_64_127_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_64_127_21_23_n_0,
      DOB => RAM_reg_64_127_21_23_n_1,
      DOC => RAM_reg_64_127_21_23_n_2,
      DOD => NLW_RAM_reg_64_127_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]\
    );
RAM_reg_64_127_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_64_127_24_26_n_0,
      DOB => RAM_reg_64_127_24_26_n_1,
      DOC => RAM_reg_64_127_24_26_n_2,
      DOD => NLW_RAM_reg_64_127_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]\
    );
RAM_reg_64_127_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_64_127_27_29_n_0,
      DOB => RAM_reg_64_127_27_29_n_1,
      DOC => RAM_reg_64_127_27_29_n_2,
      DOD => NLW_RAM_reg_64_127_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]\
    );
RAM_reg_64_127_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_64_127_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_64_127_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]\
    );
RAM_reg_64_127_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_64_127_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_64_127_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]\
    );
RAM_reg_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_64_127_3_5_n_0,
      DOB => RAM_reg_64_127_3_5_n_1,
      DOC => RAM_reg_64_127_3_5_n_2,
      DOD => NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]\
    );
RAM_reg_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_64_127_6_8_n_0,
      DOB => RAM_reg_64_127_6_8_n_1,
      DOC => RAM_reg_64_127_6_8_n_2,
      DOD => NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]\
    );
RAM_reg_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_64_127_9_11_n_0,
      DOB => RAM_reg_64_127_9_11_n_1,
      DOC => RAM_reg_64_127_9_11_n_2,
      DOD => NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]\
    );
RAM_reg_704_767_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_704_767_0_2_n_0,
      DOB => RAM_reg_704_767_0_2_n_1,
      DOC => RAM_reg_704_767_0_2_n_2,
      DOD => NLW_RAM_reg_704_767_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_3\
    );
RAM_reg_704_767_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_704_767_12_14_n_0,
      DOB => RAM_reg_704_767_12_14_n_1,
      DOC => RAM_reg_704_767_12_14_n_2,
      DOD => NLW_RAM_reg_704_767_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_3\
    );
RAM_reg_704_767_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_704_767_15_17_n_0,
      DOB => RAM_reg_704_767_15_17_n_1,
      DOC => RAM_reg_704_767_15_17_n_2,
      DOD => NLW_RAM_reg_704_767_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_3\
    );
RAM_reg_704_767_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_704_767_18_20_n_0,
      DOB => RAM_reg_704_767_18_20_n_1,
      DOC => RAM_reg_704_767_18_20_n_2,
      DOD => NLW_RAM_reg_704_767_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_3\
    );
RAM_reg_704_767_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_704_767_21_23_n_0,
      DOB => RAM_reg_704_767_21_23_n_1,
      DOC => RAM_reg_704_767_21_23_n_2,
      DOD => NLW_RAM_reg_704_767_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_3\
    );
RAM_reg_704_767_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_704_767_24_26_n_0,
      DOB => RAM_reg_704_767_24_26_n_1,
      DOC => RAM_reg_704_767_24_26_n_2,
      DOD => NLW_RAM_reg_704_767_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_3\
    );
RAM_reg_704_767_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_704_767_27_29_n_0,
      DOB => RAM_reg_704_767_27_29_n_1,
      DOC => RAM_reg_704_767_27_29_n_2,
      DOD => NLW_RAM_reg_704_767_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_3\
    );
RAM_reg_704_767_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_704_767_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_704_767_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_3\
    );
RAM_reg_704_767_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_704_767_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_704_767_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_3\
    );
RAM_reg_704_767_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_704_767_3_5_n_0,
      DOB => RAM_reg_704_767_3_5_n_1,
      DOC => RAM_reg_704_767_3_5_n_2,
      DOD => NLW_RAM_reg_704_767_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_3\
    );
RAM_reg_704_767_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_704_767_6_8_n_0,
      DOB => RAM_reg_704_767_6_8_n_1,
      DOC => RAM_reg_704_767_6_8_n_2,
      DOD => NLW_RAM_reg_704_767_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_3\
    );
RAM_reg_704_767_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_704_767_9_11_n_0,
      DOB => RAM_reg_704_767_9_11_n_1,
      DOC => RAM_reg_704_767_9_11_n_2,
      DOD => NLW_RAM_reg_704_767_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[8]_3\
    );
RAM_reg_768_831_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_768_831_0_2_n_0,
      DOB => RAM_reg_768_831_0_2_n_1,
      DOC => RAM_reg_768_831_0_2_n_2,
      DOD => NLW_RAM_reg_768_831_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_2\
    );
RAM_reg_768_831_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_768_831_12_14_n_0,
      DOB => RAM_reg_768_831_12_14_n_1,
      DOC => RAM_reg_768_831_12_14_n_2,
      DOD => NLW_RAM_reg_768_831_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_2\
    );
RAM_reg_768_831_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_768_831_15_17_n_0,
      DOB => RAM_reg_768_831_15_17_n_1,
      DOC => RAM_reg_768_831_15_17_n_2,
      DOD => NLW_RAM_reg_768_831_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_2\
    );
RAM_reg_768_831_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_768_831_18_20_n_0,
      DOB => RAM_reg_768_831_18_20_n_1,
      DOC => RAM_reg_768_831_18_20_n_2,
      DOD => NLW_RAM_reg_768_831_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_2\
    );
RAM_reg_768_831_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_768_831_21_23_n_0,
      DOB => RAM_reg_768_831_21_23_n_1,
      DOC => RAM_reg_768_831_21_23_n_2,
      DOD => NLW_RAM_reg_768_831_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_2\
    );
RAM_reg_768_831_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_768_831_24_26_n_0,
      DOB => RAM_reg_768_831_24_26_n_1,
      DOC => RAM_reg_768_831_24_26_n_2,
      DOD => NLW_RAM_reg_768_831_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_2\
    );
RAM_reg_768_831_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_768_831_27_29_n_0,
      DOB => RAM_reg_768_831_27_29_n_1,
      DOC => RAM_reg_768_831_27_29_n_2,
      DOD => NLW_RAM_reg_768_831_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_2\
    );
RAM_reg_768_831_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_768_831_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_768_831_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_2\
    );
RAM_reg_768_831_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_768_831_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_768_831_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_2\
    );
RAM_reg_768_831_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_768_831_3_5_n_0,
      DOB => RAM_reg_768_831_3_5_n_1,
      DOC => RAM_reg_768_831_3_5_n_2,
      DOD => NLW_RAM_reg_768_831_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_2\
    );
RAM_reg_768_831_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_768_831_6_8_n_0,
      DOB => RAM_reg_768_831_6_8_n_1,
      DOC => RAM_reg_768_831_6_8_n_2,
      DOD => NLW_RAM_reg_768_831_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_2\
    );
RAM_reg_768_831_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_768_831_9_11_n_0,
      DOB => RAM_reg_768_831_9_11_n_1,
      DOC => RAM_reg_768_831_9_11_n_2,
      DOD => NLW_RAM_reg_768_831_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_2\
    );
RAM_reg_832_895_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_832_895_0_2_n_0,
      DOB => RAM_reg_832_895_0_2_n_1,
      DOC => RAM_reg_832_895_0_2_n_2,
      DOD => NLW_RAM_reg_832_895_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_3\
    );
RAM_reg_832_895_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_832_895_12_14_n_0,
      DOB => RAM_reg_832_895_12_14_n_1,
      DOC => RAM_reg_832_895_12_14_n_2,
      DOD => NLW_RAM_reg_832_895_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_3\
    );
RAM_reg_832_895_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_832_895_15_17_n_0,
      DOB => RAM_reg_832_895_15_17_n_1,
      DOC => RAM_reg_832_895_15_17_n_2,
      DOD => NLW_RAM_reg_832_895_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_3\
    );
RAM_reg_832_895_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_832_895_18_20_n_0,
      DOB => RAM_reg_832_895_18_20_n_1,
      DOC => RAM_reg_832_895_18_20_n_2,
      DOD => NLW_RAM_reg_832_895_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_3\
    );
RAM_reg_832_895_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_832_895_21_23_n_0,
      DOB => RAM_reg_832_895_21_23_n_1,
      DOC => RAM_reg_832_895_21_23_n_2,
      DOD => NLW_RAM_reg_832_895_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_3\
    );
RAM_reg_832_895_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_832_895_24_26_n_0,
      DOB => RAM_reg_832_895_24_26_n_1,
      DOC => RAM_reg_832_895_24_26_n_2,
      DOD => NLW_RAM_reg_832_895_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_3\
    );
RAM_reg_832_895_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_832_895_27_29_n_0,
      DOB => RAM_reg_832_895_27_29_n_1,
      DOC => RAM_reg_832_895_27_29_n_2,
      DOD => NLW_RAM_reg_832_895_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_3\
    );
RAM_reg_832_895_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_832_895_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_832_895_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_3\
    );
RAM_reg_832_895_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_832_895_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_832_895_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_3\
    );
RAM_reg_832_895_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_832_895_3_5_n_0,
      DOB => RAM_reg_832_895_3_5_n_1,
      DOC => RAM_reg_832_895_3_5_n_2,
      DOD => NLW_RAM_reg_832_895_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_3\
    );
RAM_reg_832_895_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_832_895_6_8_n_0,
      DOB => RAM_reg_832_895_6_8_n_1,
      DOC => RAM_reg_832_895_6_8_n_2,
      DOD => NLW_RAM_reg_832_895_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_3\
    );
RAM_reg_832_895_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_832_895_9_11_n_0,
      DOB => RAM_reg_832_895_9_11_n_1,
      DOC => RAM_reg_832_895_9_11_n_2,
      DOD => NLW_RAM_reg_832_895_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_3\
    );
RAM_reg_896_959_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_896_959_0_2_n_0,
      DOB => RAM_reg_896_959_0_2_n_1,
      DOC => RAM_reg_896_959_0_2_n_2,
      DOD => NLW_RAM_reg_896_959_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[6]\
    );
RAM_reg_896_959_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_896_959_12_14_n_0,
      DOB => RAM_reg_896_959_12_14_n_1,
      DOC => RAM_reg_896_959_12_14_n_2,
      DOD => NLW_RAM_reg_896_959_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[6]\
    );
RAM_reg_896_959_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_896_959_15_17_n_0,
      DOB => RAM_reg_896_959_15_17_n_1,
      DOC => RAM_reg_896_959_15_17_n_2,
      DOD => NLW_RAM_reg_896_959_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[6]\
    );
RAM_reg_896_959_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_896_959_18_20_n_0,
      DOB => RAM_reg_896_959_18_20_n_1,
      DOC => RAM_reg_896_959_18_20_n_2,
      DOD => NLW_RAM_reg_896_959_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[6]\
    );
RAM_reg_896_959_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_896_959_21_23_n_0,
      DOB => RAM_reg_896_959_21_23_n_1,
      DOC => RAM_reg_896_959_21_23_n_2,
      DOD => NLW_RAM_reg_896_959_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[6]\
    );
RAM_reg_896_959_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_896_959_24_26_n_0,
      DOB => RAM_reg_896_959_24_26_n_1,
      DOC => RAM_reg_896_959_24_26_n_2,
      DOD => NLW_RAM_reg_896_959_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[6]\
    );
RAM_reg_896_959_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_896_959_27_29_n_0,
      DOB => RAM_reg_896_959_27_29_n_1,
      DOC => RAM_reg_896_959_27_29_n_2,
      DOD => NLW_RAM_reg_896_959_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[6]\
    );
RAM_reg_896_959_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_896_959_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_896_959_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[6]\
    );
RAM_reg_896_959_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_896_959_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_896_959_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[6]\
    );
RAM_reg_896_959_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_896_959_3_5_n_0,
      DOB => RAM_reg_896_959_3_5_n_1,
      DOC => RAM_reg_896_959_3_5_n_2,
      DOD => NLW_RAM_reg_896_959_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[6]\
    );
RAM_reg_896_959_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_896_959_6_8_n_0,
      DOB => RAM_reg_896_959_6_8_n_1,
      DOC => RAM_reg_896_959_6_8_n_2,
      DOD => NLW_RAM_reg_896_959_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[6]\
    );
RAM_reg_896_959_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_896_959_9_11_n_0,
      DOB => RAM_reg_896_959_9_11_n_1,
      DOC => RAM_reg_896_959_9_11_n_2,
      DOD => NLW_RAM_reg_896_959_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[6]\
    );
RAM_reg_960_1023_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_960_1023_0_2_n_0,
      DOB => RAM_reg_960_1023_0_2_n_1,
      DOC => RAM_reg_960_1023_0_2_n_2,
      DOD => NLW_RAM_reg_960_1023_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_4\
    );
RAM_reg_960_1023_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(12),
      DIB => din(13),
      DIC => din(14),
      DID => '0',
      DOA => RAM_reg_960_1023_12_14_n_0,
      DOB => RAM_reg_960_1023_12_14_n_1,
      DOC => RAM_reg_960_1023_12_14_n_2,
      DOD => NLW_RAM_reg_960_1023_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_4\
    );
RAM_reg_960_1023_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(15),
      DIB => din(16),
      DIC => din(17),
      DID => '0',
      DOA => RAM_reg_960_1023_15_17_n_0,
      DOB => RAM_reg_960_1023_15_17_n_1,
      DOC => RAM_reg_960_1023_15_17_n_2,
      DOD => NLW_RAM_reg_960_1023_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_4\
    );
RAM_reg_960_1023_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(18),
      DIB => din(19),
      DIC => din(20),
      DID => '0',
      DOA => RAM_reg_960_1023_18_20_n_0,
      DOB => RAM_reg_960_1023_18_20_n_1,
      DOC => RAM_reg_960_1023_18_20_n_2,
      DOD => NLW_RAM_reg_960_1023_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_4\
    );
RAM_reg_960_1023_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(21),
      DIB => din(22),
      DIC => din(23),
      DID => '0',
      DOA => RAM_reg_960_1023_21_23_n_0,
      DOB => RAM_reg_960_1023_21_23_n_1,
      DOC => RAM_reg_960_1023_21_23_n_2,
      DOD => NLW_RAM_reg_960_1023_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_4\
    );
RAM_reg_960_1023_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(24),
      DIB => din(25),
      DIC => din(26),
      DID => '0',
      DOA => RAM_reg_960_1023_24_26_n_0,
      DOB => RAM_reg_960_1023_24_26_n_1,
      DOC => RAM_reg_960_1023_24_26_n_2,
      DOD => NLW_RAM_reg_960_1023_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_4\
    );
RAM_reg_960_1023_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRA(5 downto 0),
      ADDRB(5 downto 0) => ADDRA(5 downto 0),
      ADDRC(5 downto 0) => ADDRA(5 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => din(27),
      DIB => din(28),
      DIC => din(29),
      DID => '0',
      DOA => RAM_reg_960_1023_27_29_n_0,
      DOB => RAM_reg_960_1023_27_29_n_1,
      DOC => RAM_reg_960_1023_27_29_n_2,
      DOD => NLW_RAM_reg_960_1023_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_4\
    );
RAM_reg_960_1023_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(30),
      DPO => RAM_reg_960_1023_30_30_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_960_1023_30_30_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_4\
    );
RAM_reg_960_1023_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => din(31),
      DPO => RAM_reg_960_1023_31_31_n_0,
      DPRA0 => ADDRA(0),
      DPRA1 => ADDRA(1),
      DPRA2 => ADDRA(2),
      DPRA3 => ADDRA(3),
      DPRA4 => ADDRA(4),
      DPRA5 => ADDRA(5),
      SPO => NLW_RAM_reg_960_1023_31_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_4\
    );
RAM_reg_960_1023_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_960_1023_3_5_n_0,
      DOB => RAM_reg_960_1023_3_5_n_1,
      DOC => RAM_reg_960_1023_3_5_n_2,
      DOD => NLW_RAM_reg_960_1023_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_4\
    );
RAM_reg_960_1023_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRB(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRC(5 downto 0) => \gc1.count_d2_reg[9]\(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(6),
      DIB => din(7),
      DIC => din(8),
      DID => '0',
      DOA => RAM_reg_960_1023_6_8_n_0,
      DOB => RAM_reg_960_1023_6_8_n_1,
      DOC => RAM_reg_960_1023_6_8_n_2,
      DOD => NLW_RAM_reg_960_1023_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_4\
    );
RAM_reg_960_1023_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => ADDRC(5 downto 0),
      ADDRB(5 downto 0) => ADDRC(5 downto 0),
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => din(9),
      DIB => din(10),
      DIC => din(11),
      DID => '0',
      DOA => RAM_reg_960_1023_9_11_n_0,
      DOB => RAM_reg_960_1023_9_11_n_1,
      DOC => RAM_reg_960_1023_9_11_n_2,
      DOD => NLW_RAM_reg_960_1023_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => \gcc0.gc0.count_d1_reg[7]_4\
    );
\gpr1.dout_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_2_n_0,
      I1 => RAM_reg_128_191_0_2_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_0_2_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_0_2_n_0,
      O => \gpr1.dout_i[0]_i_4_n_0\
    );
\gpr1.dout_i[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_2_n_0,
      I1 => RAM_reg_384_447_0_2_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_0_2_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_0_2_n_0,
      O => \gpr1.dout_i[0]_i_5_n_0\
    );
\gpr1.dout_i[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_0_2_n_0,
      I1 => RAM_reg_640_703_0_2_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_0_2_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_0_2_n_0,
      O => \gpr1.dout_i[0]_i_6_n_0\
    );
\gpr1.dout_i[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_0_2_n_0,
      I1 => RAM_reg_896_959_0_2_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_0_2_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_0_2_n_0,
      O => \gpr1.dout_i[0]_i_7_n_0\
    );
\gpr1.dout_i[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_9_11_n_1,
      I1 => RAM_reg_128_191_9_11_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_9_11_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_9_11_n_1,
      O => \gpr1.dout_i[10]_i_4_n_0\
    );
\gpr1.dout_i[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_9_11_n_1,
      I1 => RAM_reg_384_447_9_11_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_9_11_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_9_11_n_1,
      O => \gpr1.dout_i[10]_i_5_n_0\
    );
\gpr1.dout_i[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_9_11_n_1,
      I1 => RAM_reg_640_703_9_11_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_9_11_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_9_11_n_1,
      O => \gpr1.dout_i[10]_i_6_n_0\
    );
\gpr1.dout_i[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_9_11_n_1,
      I1 => RAM_reg_896_959_9_11_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_9_11_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_9_11_n_1,
      O => \gpr1.dout_i[10]_i_7_n_0\
    );
\gpr1.dout_i[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_9_11_n_2,
      I1 => RAM_reg_128_191_9_11_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_9_11_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_9_11_n_2,
      O => \gpr1.dout_i[11]_i_4_n_0\
    );
\gpr1.dout_i[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_9_11_n_2,
      I1 => RAM_reg_384_447_9_11_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_9_11_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_9_11_n_2,
      O => \gpr1.dout_i[11]_i_5_n_0\
    );
\gpr1.dout_i[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_9_11_n_2,
      I1 => RAM_reg_640_703_9_11_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_9_11_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_9_11_n_2,
      O => \gpr1.dout_i[11]_i_6_n_0\
    );
\gpr1.dout_i[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_9_11_n_2,
      I1 => RAM_reg_896_959_9_11_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_9_11_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_9_11_n_2,
      O => \gpr1.dout_i[11]_i_7_n_0\
    );
\gpr1.dout_i[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_12_14_n_0,
      I1 => RAM_reg_128_191_12_14_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_12_14_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_12_14_n_0,
      O => \gpr1.dout_i[12]_i_4_n_0\
    );
\gpr1.dout_i[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_12_14_n_0,
      I1 => RAM_reg_384_447_12_14_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_12_14_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_12_14_n_0,
      O => \gpr1.dout_i[12]_i_5_n_0\
    );
\gpr1.dout_i[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_12_14_n_0,
      I1 => RAM_reg_640_703_12_14_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_12_14_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_12_14_n_0,
      O => \gpr1.dout_i[12]_i_6_n_0\
    );
\gpr1.dout_i[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_12_14_n_0,
      I1 => RAM_reg_896_959_12_14_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_12_14_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_12_14_n_0,
      O => \gpr1.dout_i[12]_i_7_n_0\
    );
\gpr1.dout_i[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_12_14_n_1,
      I1 => RAM_reg_128_191_12_14_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_12_14_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_12_14_n_1,
      O => \gpr1.dout_i[13]_i_4_n_0\
    );
\gpr1.dout_i[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_12_14_n_1,
      I1 => RAM_reg_384_447_12_14_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_12_14_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_12_14_n_1,
      O => \gpr1.dout_i[13]_i_5_n_0\
    );
\gpr1.dout_i[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_12_14_n_1,
      I1 => RAM_reg_640_703_12_14_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_12_14_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_12_14_n_1,
      O => \gpr1.dout_i[13]_i_6_n_0\
    );
\gpr1.dout_i[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_12_14_n_1,
      I1 => RAM_reg_896_959_12_14_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_12_14_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_12_14_n_1,
      O => \gpr1.dout_i[13]_i_7_n_0\
    );
\gpr1.dout_i[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_12_14_n_2,
      I1 => RAM_reg_128_191_12_14_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_12_14_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_12_14_n_2,
      O => \gpr1.dout_i[14]_i_4_n_0\
    );
\gpr1.dout_i[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_12_14_n_2,
      I1 => RAM_reg_384_447_12_14_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_12_14_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_12_14_n_2,
      O => \gpr1.dout_i[14]_i_5_n_0\
    );
\gpr1.dout_i[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_12_14_n_2,
      I1 => RAM_reg_640_703_12_14_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_12_14_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_12_14_n_2,
      O => \gpr1.dout_i[14]_i_6_n_0\
    );
\gpr1.dout_i[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_12_14_n_2,
      I1 => RAM_reg_896_959_12_14_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_12_14_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_12_14_n_2,
      O => \gpr1.dout_i[14]_i_7_n_0\
    );
\gpr1.dout_i[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_15_17_n_0,
      I1 => RAM_reg_128_191_15_17_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_15_17_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_15_17_n_0,
      O => \gpr1.dout_i[15]_i_4_n_0\
    );
\gpr1.dout_i[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_15_17_n_0,
      I1 => RAM_reg_384_447_15_17_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_15_17_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_15_17_n_0,
      O => \gpr1.dout_i[15]_i_5_n_0\
    );
\gpr1.dout_i[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_15_17_n_0,
      I1 => RAM_reg_640_703_15_17_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_15_17_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_15_17_n_0,
      O => \gpr1.dout_i[15]_i_6_n_0\
    );
\gpr1.dout_i[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_15_17_n_0,
      I1 => RAM_reg_896_959_15_17_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_15_17_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_15_17_n_0,
      O => \gpr1.dout_i[15]_i_7_n_0\
    );
\gpr1.dout_i[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_15_17_n_1,
      I1 => RAM_reg_128_191_15_17_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_15_17_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_15_17_n_1,
      O => \gpr1.dout_i[16]_i_4_n_0\
    );
\gpr1.dout_i[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_15_17_n_1,
      I1 => RAM_reg_384_447_15_17_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_15_17_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_15_17_n_1,
      O => \gpr1.dout_i[16]_i_5_n_0\
    );
\gpr1.dout_i[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_15_17_n_1,
      I1 => RAM_reg_640_703_15_17_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_15_17_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_15_17_n_1,
      O => \gpr1.dout_i[16]_i_6_n_0\
    );
\gpr1.dout_i[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_15_17_n_1,
      I1 => RAM_reg_896_959_15_17_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_15_17_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_15_17_n_1,
      O => \gpr1.dout_i[16]_i_7_n_0\
    );
\gpr1.dout_i[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_15_17_n_2,
      I1 => RAM_reg_128_191_15_17_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_15_17_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_15_17_n_2,
      O => \gpr1.dout_i[17]_i_4_n_0\
    );
\gpr1.dout_i[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_15_17_n_2,
      I1 => RAM_reg_384_447_15_17_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_15_17_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_15_17_n_2,
      O => \gpr1.dout_i[17]_i_5_n_0\
    );
\gpr1.dout_i[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_15_17_n_2,
      I1 => RAM_reg_640_703_15_17_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_15_17_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_15_17_n_2,
      O => \gpr1.dout_i[17]_i_6_n_0\
    );
\gpr1.dout_i[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_15_17_n_2,
      I1 => RAM_reg_896_959_15_17_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_15_17_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_15_17_n_2,
      O => \gpr1.dout_i[17]_i_7_n_0\
    );
\gpr1.dout_i[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_18_20_n_0,
      I1 => RAM_reg_128_191_18_20_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_18_20_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_18_20_n_0,
      O => \gpr1.dout_i[18]_i_4_n_0\
    );
\gpr1.dout_i[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_18_20_n_0,
      I1 => RAM_reg_384_447_18_20_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_18_20_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_18_20_n_0,
      O => \gpr1.dout_i[18]_i_5_n_0\
    );
\gpr1.dout_i[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_18_20_n_0,
      I1 => RAM_reg_640_703_18_20_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_18_20_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_18_20_n_0,
      O => \gpr1.dout_i[18]_i_6_n_0\
    );
\gpr1.dout_i[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_18_20_n_0,
      I1 => RAM_reg_896_959_18_20_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_18_20_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_18_20_n_0,
      O => \gpr1.dout_i[18]_i_7_n_0\
    );
\gpr1.dout_i[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_18_20_n_1,
      I1 => RAM_reg_128_191_18_20_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_18_20_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_18_20_n_1,
      O => \gpr1.dout_i[19]_i_4_n_0\
    );
\gpr1.dout_i[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_18_20_n_1,
      I1 => RAM_reg_384_447_18_20_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_18_20_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_18_20_n_1,
      O => \gpr1.dout_i[19]_i_5_n_0\
    );
\gpr1.dout_i[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_18_20_n_1,
      I1 => RAM_reg_640_703_18_20_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_18_20_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_18_20_n_1,
      O => \gpr1.dout_i[19]_i_6_n_0\
    );
\gpr1.dout_i[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_18_20_n_1,
      I1 => RAM_reg_896_959_18_20_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_18_20_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_18_20_n_1,
      O => \gpr1.dout_i[19]_i_7_n_0\
    );
\gpr1.dout_i[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_2_n_1,
      I1 => RAM_reg_128_191_0_2_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_0_2_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_0_2_n_1,
      O => \gpr1.dout_i[1]_i_4_n_0\
    );
\gpr1.dout_i[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_2_n_1,
      I1 => RAM_reg_384_447_0_2_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_0_2_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_0_2_n_1,
      O => \gpr1.dout_i[1]_i_5_n_0\
    );
\gpr1.dout_i[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_0_2_n_1,
      I1 => RAM_reg_640_703_0_2_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_0_2_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_0_2_n_1,
      O => \gpr1.dout_i[1]_i_6_n_0\
    );
\gpr1.dout_i[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_0_2_n_1,
      I1 => RAM_reg_896_959_0_2_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_0_2_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_0_2_n_1,
      O => \gpr1.dout_i[1]_i_7_n_0\
    );
\gpr1.dout_i[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_18_20_n_2,
      I1 => RAM_reg_128_191_18_20_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_18_20_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_18_20_n_2,
      O => \gpr1.dout_i[20]_i_4_n_0\
    );
\gpr1.dout_i[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_18_20_n_2,
      I1 => RAM_reg_384_447_18_20_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_18_20_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_18_20_n_2,
      O => \gpr1.dout_i[20]_i_5_n_0\
    );
\gpr1.dout_i[20]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_18_20_n_2,
      I1 => RAM_reg_640_703_18_20_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_18_20_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_18_20_n_2,
      O => \gpr1.dout_i[20]_i_6_n_0\
    );
\gpr1.dout_i[20]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_18_20_n_2,
      I1 => RAM_reg_896_959_18_20_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_18_20_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_18_20_n_2,
      O => \gpr1.dout_i[20]_i_7_n_0\
    );
\gpr1.dout_i[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_21_23_n_0,
      I1 => RAM_reg_128_191_21_23_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_21_23_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_21_23_n_0,
      O => \gpr1.dout_i[21]_i_4_n_0\
    );
\gpr1.dout_i[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_21_23_n_0,
      I1 => RAM_reg_384_447_21_23_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_21_23_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_21_23_n_0,
      O => \gpr1.dout_i[21]_i_5_n_0\
    );
\gpr1.dout_i[21]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_21_23_n_0,
      I1 => RAM_reg_640_703_21_23_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_21_23_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_21_23_n_0,
      O => \gpr1.dout_i[21]_i_6_n_0\
    );
\gpr1.dout_i[21]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_21_23_n_0,
      I1 => RAM_reg_896_959_21_23_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_21_23_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_21_23_n_0,
      O => \gpr1.dout_i[21]_i_7_n_0\
    );
\gpr1.dout_i[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_21_23_n_1,
      I1 => RAM_reg_128_191_21_23_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_21_23_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_21_23_n_1,
      O => \gpr1.dout_i[22]_i_4_n_0\
    );
\gpr1.dout_i[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_21_23_n_1,
      I1 => RAM_reg_384_447_21_23_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_21_23_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_21_23_n_1,
      O => \gpr1.dout_i[22]_i_5_n_0\
    );
\gpr1.dout_i[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_21_23_n_1,
      I1 => RAM_reg_640_703_21_23_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_21_23_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_21_23_n_1,
      O => \gpr1.dout_i[22]_i_6_n_0\
    );
\gpr1.dout_i[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_21_23_n_1,
      I1 => RAM_reg_896_959_21_23_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_21_23_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_21_23_n_1,
      O => \gpr1.dout_i[22]_i_7_n_0\
    );
\gpr1.dout_i[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_21_23_n_2,
      I1 => RAM_reg_128_191_21_23_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_21_23_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_21_23_n_2,
      O => \gpr1.dout_i[23]_i_4_n_0\
    );
\gpr1.dout_i[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_21_23_n_2,
      I1 => RAM_reg_384_447_21_23_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_21_23_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_21_23_n_2,
      O => \gpr1.dout_i[23]_i_5_n_0\
    );
\gpr1.dout_i[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_21_23_n_2,
      I1 => RAM_reg_640_703_21_23_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_21_23_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_21_23_n_2,
      O => \gpr1.dout_i[23]_i_6_n_0\
    );
\gpr1.dout_i[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_21_23_n_2,
      I1 => RAM_reg_896_959_21_23_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_21_23_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_21_23_n_2,
      O => \gpr1.dout_i[23]_i_7_n_0\
    );
\gpr1.dout_i[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_24_26_n_0,
      I1 => RAM_reg_128_191_24_26_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_24_26_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_24_26_n_0,
      O => \gpr1.dout_i[24]_i_4_n_0\
    );
\gpr1.dout_i[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_24_26_n_0,
      I1 => RAM_reg_384_447_24_26_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_24_26_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_24_26_n_0,
      O => \gpr1.dout_i[24]_i_5_n_0\
    );
\gpr1.dout_i[24]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_24_26_n_0,
      I1 => RAM_reg_640_703_24_26_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_24_26_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_24_26_n_0,
      O => \gpr1.dout_i[24]_i_6_n_0\
    );
\gpr1.dout_i[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_24_26_n_0,
      I1 => RAM_reg_896_959_24_26_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_24_26_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_24_26_n_0,
      O => \gpr1.dout_i[24]_i_7_n_0\
    );
\gpr1.dout_i[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_24_26_n_1,
      I1 => RAM_reg_128_191_24_26_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_24_26_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_24_26_n_1,
      O => \gpr1.dout_i[25]_i_4_n_0\
    );
\gpr1.dout_i[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_24_26_n_1,
      I1 => RAM_reg_384_447_24_26_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_24_26_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_24_26_n_1,
      O => \gpr1.dout_i[25]_i_5_n_0\
    );
\gpr1.dout_i[25]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_24_26_n_1,
      I1 => RAM_reg_640_703_24_26_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_24_26_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_24_26_n_1,
      O => \gpr1.dout_i[25]_i_6_n_0\
    );
\gpr1.dout_i[25]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_24_26_n_1,
      I1 => RAM_reg_896_959_24_26_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_24_26_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_24_26_n_1,
      O => \gpr1.dout_i[25]_i_7_n_0\
    );
\gpr1.dout_i[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_24_26_n_2,
      I1 => RAM_reg_128_191_24_26_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_24_26_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_24_26_n_2,
      O => \gpr1.dout_i[26]_i_4_n_0\
    );
\gpr1.dout_i[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_24_26_n_2,
      I1 => RAM_reg_384_447_24_26_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_24_26_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_24_26_n_2,
      O => \gpr1.dout_i[26]_i_5_n_0\
    );
\gpr1.dout_i[26]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_24_26_n_2,
      I1 => RAM_reg_640_703_24_26_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_24_26_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_24_26_n_2,
      O => \gpr1.dout_i[26]_i_6_n_0\
    );
\gpr1.dout_i[26]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_24_26_n_2,
      I1 => RAM_reg_896_959_24_26_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_24_26_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_24_26_n_2,
      O => \gpr1.dout_i[26]_i_7_n_0\
    );
\gpr1.dout_i[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_27_29_n_0,
      I1 => RAM_reg_128_191_27_29_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_27_29_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_27_29_n_0,
      O => \gpr1.dout_i[27]_i_4_n_0\
    );
\gpr1.dout_i[27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_27_29_n_0,
      I1 => RAM_reg_384_447_27_29_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_27_29_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_27_29_n_0,
      O => \gpr1.dout_i[27]_i_5_n_0\
    );
\gpr1.dout_i[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_27_29_n_0,
      I1 => RAM_reg_640_703_27_29_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_27_29_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_27_29_n_0,
      O => \gpr1.dout_i[27]_i_6_n_0\
    );
\gpr1.dout_i[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_27_29_n_0,
      I1 => RAM_reg_896_959_27_29_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_27_29_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_27_29_n_0,
      O => \gpr1.dout_i[27]_i_7_n_0\
    );
\gpr1.dout_i[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_27_29_n_1,
      I1 => RAM_reg_128_191_27_29_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_27_29_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_27_29_n_1,
      O => \gpr1.dout_i[28]_i_4_n_0\
    );
\gpr1.dout_i[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_27_29_n_1,
      I1 => RAM_reg_384_447_27_29_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_27_29_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_27_29_n_1,
      O => \gpr1.dout_i[28]_i_5_n_0\
    );
\gpr1.dout_i[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_27_29_n_1,
      I1 => RAM_reg_640_703_27_29_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_27_29_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_27_29_n_1,
      O => \gpr1.dout_i[28]_i_6_n_0\
    );
\gpr1.dout_i[28]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_27_29_n_1,
      I1 => RAM_reg_896_959_27_29_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_27_29_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_27_29_n_1,
      O => \gpr1.dout_i[28]_i_7_n_0\
    );
\gpr1.dout_i[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_27_29_n_2,
      I1 => RAM_reg_128_191_27_29_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_27_29_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_27_29_n_2,
      O => \gpr1.dout_i[29]_i_4_n_0\
    );
\gpr1.dout_i[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_27_29_n_2,
      I1 => RAM_reg_384_447_27_29_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_27_29_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_27_29_n_2,
      O => \gpr1.dout_i[29]_i_5_n_0\
    );
\gpr1.dout_i[29]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_27_29_n_2,
      I1 => RAM_reg_640_703_27_29_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_27_29_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_27_29_n_2,
      O => \gpr1.dout_i[29]_i_6_n_0\
    );
\gpr1.dout_i[29]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_27_29_n_2,
      I1 => RAM_reg_896_959_27_29_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_27_29_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_27_29_n_2,
      O => \gpr1.dout_i[29]_i_7_n_0\
    );
\gpr1.dout_i[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_2_n_2,
      I1 => RAM_reg_128_191_0_2_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_0_2_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_0_2_n_2,
      O => \gpr1.dout_i[2]_i_4_n_0\
    );
\gpr1.dout_i[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_2_n_2,
      I1 => RAM_reg_384_447_0_2_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_0_2_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_0_2_n_2,
      O => \gpr1.dout_i[2]_i_5_n_0\
    );
\gpr1.dout_i[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_0_2_n_2,
      I1 => RAM_reg_640_703_0_2_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_0_2_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_0_2_n_2,
      O => \gpr1.dout_i[2]_i_6_n_0\
    );
\gpr1.dout_i[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_0_2_n_2,
      I1 => RAM_reg_896_959_0_2_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_0_2_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_0_2_n_2,
      O => \gpr1.dout_i[2]_i_7_n_0\
    );
\gpr1.dout_i[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_30_30_n_0,
      I1 => RAM_reg_128_191_30_30_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_30_30_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_30_30_n_0,
      O => \gpr1.dout_i[30]_i_4_n_0\
    );
\gpr1.dout_i[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_30_30_n_0,
      I1 => RAM_reg_384_447_30_30_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_30_30_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_30_30_n_0,
      O => \gpr1.dout_i[30]_i_5_n_0\
    );
\gpr1.dout_i[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_30_30_n_0,
      I1 => RAM_reg_640_703_30_30_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_30_30_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_30_30_n_0,
      O => \gpr1.dout_i[30]_i_6_n_0\
    );
\gpr1.dout_i[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_30_30_n_0,
      I1 => RAM_reg_896_959_30_30_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_30_30_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_30_30_n_0,
      O => \gpr1.dout_i[30]_i_7_n_0\
    );
\gpr1.dout_i[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_31_31_n_0,
      I1 => RAM_reg_128_191_31_31_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_31_31_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_31_31_n_0,
      O => \gpr1.dout_i[31]_i_5_n_0\
    );
\gpr1.dout_i[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_31_31_n_0,
      I1 => RAM_reg_384_447_31_31_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_31_31_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_31_31_n_0,
      O => \gpr1.dout_i[31]_i_6_n_0\
    );
\gpr1.dout_i[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_31_31_n_0,
      I1 => RAM_reg_640_703_31_31_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_31_31_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_31_31_n_0,
      O => \gpr1.dout_i[31]_i_7_n_0\
    );
\gpr1.dout_i[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_31_31_n_0,
      I1 => RAM_reg_896_959_31_31_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_31_31_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_31_31_n_0,
      O => \gpr1.dout_i[31]_i_8_n_0\
    );
\gpr1.dout_i[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_3_5_n_0,
      I1 => RAM_reg_128_191_3_5_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_3_5_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_3_5_n_0,
      O => \gpr1.dout_i[3]_i_4_n_0\
    );
\gpr1.dout_i[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_3_5_n_0,
      I1 => RAM_reg_384_447_3_5_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_3_5_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_3_5_n_0,
      O => \gpr1.dout_i[3]_i_5_n_0\
    );
\gpr1.dout_i[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_3_5_n_0,
      I1 => RAM_reg_640_703_3_5_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_3_5_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_3_5_n_0,
      O => \gpr1.dout_i[3]_i_6_n_0\
    );
\gpr1.dout_i[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_3_5_n_0,
      I1 => RAM_reg_896_959_3_5_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_3_5_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_3_5_n_0,
      O => \gpr1.dout_i[3]_i_7_n_0\
    );
\gpr1.dout_i[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_3_5_n_1,
      I1 => RAM_reg_128_191_3_5_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_3_5_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_3_5_n_1,
      O => \gpr1.dout_i[4]_i_4_n_0\
    );
\gpr1.dout_i[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_3_5_n_1,
      I1 => RAM_reg_384_447_3_5_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_3_5_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_3_5_n_1,
      O => \gpr1.dout_i[4]_i_5_n_0\
    );
\gpr1.dout_i[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_3_5_n_1,
      I1 => RAM_reg_640_703_3_5_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_3_5_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_3_5_n_1,
      O => \gpr1.dout_i[4]_i_6_n_0\
    );
\gpr1.dout_i[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_3_5_n_1,
      I1 => RAM_reg_896_959_3_5_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_3_5_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_3_5_n_1,
      O => \gpr1.dout_i[4]_i_7_n_0\
    );
\gpr1.dout_i[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_3_5_n_2,
      I1 => RAM_reg_128_191_3_5_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_3_5_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_3_5_n_2,
      O => \gpr1.dout_i[5]_i_4_n_0\
    );
\gpr1.dout_i[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_3_5_n_2,
      I1 => RAM_reg_384_447_3_5_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_3_5_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_3_5_n_2,
      O => \gpr1.dout_i[5]_i_5_n_0\
    );
\gpr1.dout_i[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_3_5_n_2,
      I1 => RAM_reg_640_703_3_5_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_3_5_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_3_5_n_2,
      O => \gpr1.dout_i[5]_i_6_n_0\
    );
\gpr1.dout_i[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_3_5_n_2,
      I1 => RAM_reg_896_959_3_5_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_3_5_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_3_5_n_2,
      O => \gpr1.dout_i[5]_i_7_n_0\
    );
\gpr1.dout_i[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_6_8_n_0,
      I1 => RAM_reg_128_191_6_8_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_6_8_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_6_8_n_0,
      O => \gpr1.dout_i[6]_i_4_n_0\
    );
\gpr1.dout_i[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_6_8_n_0,
      I1 => RAM_reg_384_447_6_8_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_6_8_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_6_8_n_0,
      O => \gpr1.dout_i[6]_i_5_n_0\
    );
\gpr1.dout_i[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_6_8_n_0,
      I1 => RAM_reg_640_703_6_8_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_6_8_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_6_8_n_0,
      O => \gpr1.dout_i[6]_i_6_n_0\
    );
\gpr1.dout_i[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_6_8_n_0,
      I1 => RAM_reg_896_959_6_8_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_6_8_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_6_8_n_0,
      O => \gpr1.dout_i[6]_i_7_n_0\
    );
\gpr1.dout_i[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_6_8_n_1,
      I1 => RAM_reg_128_191_6_8_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_6_8_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_6_8_n_1,
      O => \gpr1.dout_i[7]_i_4_n_0\
    );
\gpr1.dout_i[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_6_8_n_1,
      I1 => RAM_reg_384_447_6_8_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_6_8_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_6_8_n_1,
      O => \gpr1.dout_i[7]_i_5_n_0\
    );
\gpr1.dout_i[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_6_8_n_1,
      I1 => RAM_reg_640_703_6_8_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_6_8_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_6_8_n_1,
      O => \gpr1.dout_i[7]_i_6_n_0\
    );
\gpr1.dout_i[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_6_8_n_1,
      I1 => RAM_reg_896_959_6_8_n_1,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_6_8_n_1,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_6_8_n_1,
      O => \gpr1.dout_i[7]_i_7_n_0\
    );
\gpr1.dout_i[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_6_8_n_2,
      I1 => RAM_reg_128_191_6_8_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_6_8_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_6_8_n_2,
      O => \gpr1.dout_i[8]_i_4_n_0\
    );
\gpr1.dout_i[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_6_8_n_2,
      I1 => RAM_reg_384_447_6_8_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_6_8_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_6_8_n_2,
      O => \gpr1.dout_i[8]_i_5_n_0\
    );
\gpr1.dout_i[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_6_8_n_2,
      I1 => RAM_reg_640_703_6_8_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_6_8_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_6_8_n_2,
      O => \gpr1.dout_i[8]_i_6_n_0\
    );
\gpr1.dout_i[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_6_8_n_2,
      I1 => RAM_reg_896_959_6_8_n_2,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_6_8_n_2,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_6_8_n_2,
      O => \gpr1.dout_i[8]_i_7_n_0\
    );
\gpr1.dout_i[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_9_11_n_0,
      I1 => RAM_reg_128_191_9_11_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_64_127_9_11_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_0_63_9_11_n_0,
      O => \gpr1.dout_i[9]_i_4_n_0\
    );
\gpr1.dout_i[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_9_11_n_0,
      I1 => RAM_reg_384_447_9_11_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_320_383_9_11_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_256_319_9_11_n_0,
      O => \gpr1.dout_i[9]_i_5_n_0\
    );
\gpr1.dout_i[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_9_11_n_0,
      I1 => RAM_reg_640_703_9_11_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_576_639_9_11_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_512_575_9_11_n_0,
      O => \gpr1.dout_i[9]_i_6_n_0\
    );
\gpr1.dout_i[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_9_11_n_0,
      I1 => RAM_reg_896_959_9_11_n_0,
      I2 => \gc1.count_d2_reg[9]\(7),
      I3 => RAM_reg_832_895_9_11_n_0,
      I4 => \gc1.count_d2_reg[9]\(6),
      I5 => RAM_reg_768_831_9_11_n_0,
      O => \gpr1.dout_i[9]_i_7_n_0\
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(0),
      Q => dout(0)
    );
\gpr1.dout_i_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[0]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[0]_i_3_n_0\,
      O => p_0_out(0),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[0]_i_4_n_0\,
      I1 => \gpr1.dout_i[0]_i_5_n_0\,
      O => \gpr1.dout_i_reg[0]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[0]_i_6_n_0\,
      I1 => \gpr1.dout_i[0]_i_7_n_0\,
      O => \gpr1.dout_i_reg[0]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(10),
      Q => dout(10)
    );
\gpr1.dout_i_reg[10]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[10]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[10]_i_3_n_0\,
      O => p_0_out(10),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[10]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[10]_i_4_n_0\,
      I1 => \gpr1.dout_i[10]_i_5_n_0\,
      O => \gpr1.dout_i_reg[10]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[10]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[10]_i_6_n_0\,
      I1 => \gpr1.dout_i[10]_i_7_n_0\,
      O => \gpr1.dout_i_reg[10]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(11),
      Q => dout(11)
    );
\gpr1.dout_i_reg[11]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[11]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[11]_i_3_n_0\,
      O => p_0_out(11),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[11]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[11]_i_4_n_0\,
      I1 => \gpr1.dout_i[11]_i_5_n_0\,
      O => \gpr1.dout_i_reg[11]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[11]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[11]_i_6_n_0\,
      I1 => \gpr1.dout_i[11]_i_7_n_0\,
      O => \gpr1.dout_i_reg[11]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(12),
      Q => dout(12)
    );
\gpr1.dout_i_reg[12]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[12]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[12]_i_3_n_0\,
      O => p_0_out(12),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[12]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[12]_i_4_n_0\,
      I1 => \gpr1.dout_i[12]_i_5_n_0\,
      O => \gpr1.dout_i_reg[12]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[12]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[12]_i_6_n_0\,
      I1 => \gpr1.dout_i[12]_i_7_n_0\,
      O => \gpr1.dout_i_reg[12]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(13),
      Q => dout(13)
    );
\gpr1.dout_i_reg[13]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[13]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[13]_i_3_n_0\,
      O => p_0_out(13),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[13]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[13]_i_4_n_0\,
      I1 => \gpr1.dout_i[13]_i_5_n_0\,
      O => \gpr1.dout_i_reg[13]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[13]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[13]_i_6_n_0\,
      I1 => \gpr1.dout_i[13]_i_7_n_0\,
      O => \gpr1.dout_i_reg[13]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(14),
      Q => dout(14)
    );
\gpr1.dout_i_reg[14]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[14]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[14]_i_3_n_0\,
      O => p_0_out(14),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[14]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[14]_i_4_n_0\,
      I1 => \gpr1.dout_i[14]_i_5_n_0\,
      O => \gpr1.dout_i_reg[14]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[14]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[14]_i_6_n_0\,
      I1 => \gpr1.dout_i[14]_i_7_n_0\,
      O => \gpr1.dout_i_reg[14]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(15),
      Q => dout(15)
    );
\gpr1.dout_i_reg[15]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[15]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[15]_i_3_n_0\,
      O => p_0_out(15),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[15]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[15]_i_4_n_0\,
      I1 => \gpr1.dout_i[15]_i_5_n_0\,
      O => \gpr1.dout_i_reg[15]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[15]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[15]_i_6_n_0\,
      I1 => \gpr1.dout_i[15]_i_7_n_0\,
      O => \gpr1.dout_i_reg[15]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(16),
      Q => dout(16)
    );
\gpr1.dout_i_reg[16]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[16]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[16]_i_3_n_0\,
      O => p_0_out(16),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[16]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[16]_i_4_n_0\,
      I1 => \gpr1.dout_i[16]_i_5_n_0\,
      O => \gpr1.dout_i_reg[16]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[16]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[16]_i_6_n_0\,
      I1 => \gpr1.dout_i[16]_i_7_n_0\,
      O => \gpr1.dout_i_reg[16]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(17),
      Q => dout(17)
    );
\gpr1.dout_i_reg[17]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[17]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[17]_i_3_n_0\,
      O => p_0_out(17),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[17]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[17]_i_4_n_0\,
      I1 => \gpr1.dout_i[17]_i_5_n_0\,
      O => \gpr1.dout_i_reg[17]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[17]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[17]_i_6_n_0\,
      I1 => \gpr1.dout_i[17]_i_7_n_0\,
      O => \gpr1.dout_i_reg[17]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(18),
      Q => dout(18)
    );
\gpr1.dout_i_reg[18]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[18]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[18]_i_3_n_0\,
      O => p_0_out(18),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[18]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[18]_i_4_n_0\,
      I1 => \gpr1.dout_i[18]_i_5_n_0\,
      O => \gpr1.dout_i_reg[18]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[18]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[18]_i_6_n_0\,
      I1 => \gpr1.dout_i[18]_i_7_n_0\,
      O => \gpr1.dout_i_reg[18]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(19),
      Q => dout(19)
    );
\gpr1.dout_i_reg[19]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[19]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[19]_i_3_n_0\,
      O => p_0_out(19),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[19]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[19]_i_4_n_0\,
      I1 => \gpr1.dout_i[19]_i_5_n_0\,
      O => \gpr1.dout_i_reg[19]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[19]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[19]_i_6_n_0\,
      I1 => \gpr1.dout_i[19]_i_7_n_0\,
      O => \gpr1.dout_i_reg[19]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(1),
      Q => dout(1)
    );
\gpr1.dout_i_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[1]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[1]_i_3_n_0\,
      O => p_0_out(1),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[1]_i_4_n_0\,
      I1 => \gpr1.dout_i[1]_i_5_n_0\,
      O => \gpr1.dout_i_reg[1]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[1]_i_6_n_0\,
      I1 => \gpr1.dout_i[1]_i_7_n_0\,
      O => \gpr1.dout_i_reg[1]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(20),
      Q => dout(20)
    );
\gpr1.dout_i_reg[20]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[20]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[20]_i_3_n_0\,
      O => p_0_out(20),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[20]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[20]_i_4_n_0\,
      I1 => \gpr1.dout_i[20]_i_5_n_0\,
      O => \gpr1.dout_i_reg[20]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[20]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[20]_i_6_n_0\,
      I1 => \gpr1.dout_i[20]_i_7_n_0\,
      O => \gpr1.dout_i_reg[20]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(21),
      Q => dout(21)
    );
\gpr1.dout_i_reg[21]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[21]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[21]_i_3_n_0\,
      O => p_0_out(21),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[21]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[21]_i_4_n_0\,
      I1 => \gpr1.dout_i[21]_i_5_n_0\,
      O => \gpr1.dout_i_reg[21]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[21]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[21]_i_6_n_0\,
      I1 => \gpr1.dout_i[21]_i_7_n_0\,
      O => \gpr1.dout_i_reg[21]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(22),
      Q => dout(22)
    );
\gpr1.dout_i_reg[22]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[22]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[22]_i_3_n_0\,
      O => p_0_out(22),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[22]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[22]_i_4_n_0\,
      I1 => \gpr1.dout_i[22]_i_5_n_0\,
      O => \gpr1.dout_i_reg[22]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[22]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[22]_i_6_n_0\,
      I1 => \gpr1.dout_i[22]_i_7_n_0\,
      O => \gpr1.dout_i_reg[22]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(23),
      Q => dout(23)
    );
\gpr1.dout_i_reg[23]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[23]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[23]_i_3_n_0\,
      O => p_0_out(23),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[23]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[23]_i_4_n_0\,
      I1 => \gpr1.dout_i[23]_i_5_n_0\,
      O => \gpr1.dout_i_reg[23]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[23]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[23]_i_6_n_0\,
      I1 => \gpr1.dout_i[23]_i_7_n_0\,
      O => \gpr1.dout_i_reg[23]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(24),
      Q => dout(24)
    );
\gpr1.dout_i_reg[24]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[24]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[24]_i_3_n_0\,
      O => p_0_out(24),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[24]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[24]_i_4_n_0\,
      I1 => \gpr1.dout_i[24]_i_5_n_0\,
      O => \gpr1.dout_i_reg[24]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[24]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[24]_i_6_n_0\,
      I1 => \gpr1.dout_i[24]_i_7_n_0\,
      O => \gpr1.dout_i_reg[24]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(25),
      Q => dout(25)
    );
\gpr1.dout_i_reg[25]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[25]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[25]_i_3_n_0\,
      O => p_0_out(25),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[25]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[25]_i_4_n_0\,
      I1 => \gpr1.dout_i[25]_i_5_n_0\,
      O => \gpr1.dout_i_reg[25]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[25]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[25]_i_6_n_0\,
      I1 => \gpr1.dout_i[25]_i_7_n_0\,
      O => \gpr1.dout_i_reg[25]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(26),
      Q => dout(26)
    );
\gpr1.dout_i_reg[26]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[26]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[26]_i_3_n_0\,
      O => p_0_out(26),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[26]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[26]_i_4_n_0\,
      I1 => \gpr1.dout_i[26]_i_5_n_0\,
      O => \gpr1.dout_i_reg[26]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[26]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[26]_i_6_n_0\,
      I1 => \gpr1.dout_i[26]_i_7_n_0\,
      O => \gpr1.dout_i_reg[26]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(27),
      Q => dout(27)
    );
\gpr1.dout_i_reg[27]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[27]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[27]_i_3_n_0\,
      O => p_0_out(27),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[27]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[27]_i_4_n_0\,
      I1 => \gpr1.dout_i[27]_i_5_n_0\,
      O => \gpr1.dout_i_reg[27]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[27]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[27]_i_6_n_0\,
      I1 => \gpr1.dout_i[27]_i_7_n_0\,
      O => \gpr1.dout_i_reg[27]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(28),
      Q => dout(28)
    );
\gpr1.dout_i_reg[28]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[28]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[28]_i_3_n_0\,
      O => p_0_out(28),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[28]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[28]_i_4_n_0\,
      I1 => \gpr1.dout_i[28]_i_5_n_0\,
      O => \gpr1.dout_i_reg[28]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[28]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[28]_i_6_n_0\,
      I1 => \gpr1.dout_i[28]_i_7_n_0\,
      O => \gpr1.dout_i_reg[28]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(29),
      Q => dout(29)
    );
\gpr1.dout_i_reg[29]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[29]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[29]_i_3_n_0\,
      O => p_0_out(29),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[29]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[29]_i_4_n_0\,
      I1 => \gpr1.dout_i[29]_i_5_n_0\,
      O => \gpr1.dout_i_reg[29]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[29]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[29]_i_6_n_0\,
      I1 => \gpr1.dout_i[29]_i_7_n_0\,
      O => \gpr1.dout_i_reg[29]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(2),
      Q => dout(2)
    );
\gpr1.dout_i_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[2]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[2]_i_3_n_0\,
      O => p_0_out(2),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[2]_i_4_n_0\,
      I1 => \gpr1.dout_i[2]_i_5_n_0\,
      O => \gpr1.dout_i_reg[2]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[2]_i_6_n_0\,
      I1 => \gpr1.dout_i[2]_i_7_n_0\,
      O => \gpr1.dout_i_reg[2]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(30),
      Q => dout(30)
    );
\gpr1.dout_i_reg[30]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[30]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[30]_i_3_n_0\,
      O => p_0_out(30),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[30]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[30]_i_4_n_0\,
      I1 => \gpr1.dout_i[30]_i_5_n_0\,
      O => \gpr1.dout_i_reg[30]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[30]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[30]_i_6_n_0\,
      I1 => \gpr1.dout_i[30]_i_7_n_0\,
      O => \gpr1.dout_i_reg[30]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(31),
      Q => dout(31)
    );
\gpr1.dout_i_reg[31]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[31]_i_3_n_0\,
      I1 => \gpr1.dout_i_reg[31]_i_4_n_0\,
      O => p_0_out(31),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[31]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[31]_i_5_n_0\,
      I1 => \gpr1.dout_i[31]_i_6_n_0\,
      O => \gpr1.dout_i_reg[31]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[31]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[31]_i_7_n_0\,
      I1 => \gpr1.dout_i[31]_i_8_n_0\,
      O => \gpr1.dout_i_reg[31]_i_4_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(3),
      Q => dout(3)
    );
\gpr1.dout_i_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[3]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[3]_i_3_n_0\,
      O => p_0_out(3),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[3]_i_4_n_0\,
      I1 => \gpr1.dout_i[3]_i_5_n_0\,
      O => \gpr1.dout_i_reg[3]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[3]_i_6_n_0\,
      I1 => \gpr1.dout_i[3]_i_7_n_0\,
      O => \gpr1.dout_i_reg[3]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(4),
      Q => dout(4)
    );
\gpr1.dout_i_reg[4]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[4]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[4]_i_3_n_0\,
      O => p_0_out(4),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[4]_i_4_n_0\,
      I1 => \gpr1.dout_i[4]_i_5_n_0\,
      O => \gpr1.dout_i_reg[4]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[4]_i_6_n_0\,
      I1 => \gpr1.dout_i[4]_i_7_n_0\,
      O => \gpr1.dout_i_reg[4]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(5),
      Q => dout(5)
    );
\gpr1.dout_i_reg[5]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[5]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[5]_i_3_n_0\,
      O => p_0_out(5),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[5]_i_4_n_0\,
      I1 => \gpr1.dout_i[5]_i_5_n_0\,
      O => \gpr1.dout_i_reg[5]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[5]_i_6_n_0\,
      I1 => \gpr1.dout_i[5]_i_7_n_0\,
      O => \gpr1.dout_i_reg[5]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(6),
      Q => dout(6)
    );
\gpr1.dout_i_reg[6]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[6]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[6]_i_3_n_0\,
      O => p_0_out(6),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[6]_i_4_n_0\,
      I1 => \gpr1.dout_i[6]_i_5_n_0\,
      O => \gpr1.dout_i_reg[6]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[6]_i_6_n_0\,
      I1 => \gpr1.dout_i[6]_i_7_n_0\,
      O => \gpr1.dout_i_reg[6]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(7),
      Q => dout(7)
    );
\gpr1.dout_i_reg[7]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[7]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[7]_i_3_n_0\,
      O => p_0_out(7),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[7]_i_4_n_0\,
      I1 => \gpr1.dout_i[7]_i_5_n_0\,
      O => \gpr1.dout_i_reg[7]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[7]_i_6_n_0\,
      I1 => \gpr1.dout_i[7]_i_7_n_0\,
      O => \gpr1.dout_i_reg[7]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(8),
      Q => dout(8)
    );
\gpr1.dout_i_reg[8]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[8]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[8]_i_3_n_0\,
      O => p_0_out(8),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[8]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[8]_i_4_n_0\,
      I1 => \gpr1.dout_i[8]_i_5_n_0\,
      O => \gpr1.dout_i_reg[8]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[8]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[8]_i_6_n_0\,
      I1 => \gpr1.dout_i[8]_i_7_n_0\,
      O => \gpr1.dout_i_reg[8]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(9),
      Q => dout(9)
    );
\gpr1.dout_i_reg[9]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[9]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[9]_i_3_n_0\,
      O => p_0_out(9),
      S => \gc1.count_d2_reg[9]\(9)
    );
\gpr1.dout_i_reg[9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[9]_i_4_n_0\,
      I1 => \gpr1.dout_i[9]_i_5_n_0\,
      O => \gpr1.dout_i_reg[9]_i_2_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
\gpr1.dout_i_reg[9]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[9]_i_6_n_0\,
      I1 => \gpr1.dout_i[9]_i_7_n_0\,
      O => \gpr1.dout_i_reg[9]_i_3_n_0\,
      S => \gc1.count_d2_reg[9]\(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_rd_bin_cntr is
  port (
    ram_full_comb : out STD_LOGIC;
    ram_empty_i0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpr1.dout_i_reg[31]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpr1.dout_i_reg[31]_0\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_1\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_2\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_3\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_4\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_5\ : out STD_LOGIC;
    v1_reg_2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ADDRC : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gpr1.dout_i_reg[24]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_en : in STD_LOGIC;
    comp1 : in STD_LOGIC;
    rst_full_gen_i : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    comp0 : in STD_LOGIC;
    p_14_out : in STD_LOGIC;
    comp0_3 : in STD_LOGIC;
    p_18_out : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    comp1_4 : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gcc0.gc0.count_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_rd_bin_cntr : entity is "rd_bin_cntr";
end fifo_layer_rd_bin_cntr;

architecture STRUCTURE of fifo_layer_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gc1.count[9]_i_2_n_0\ : STD_LOGIC;
  signal \^gpr1.dout_i_reg[31]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^gpr1.dout_i_reg[31]_0\ : STD_LOGIC;
  signal \^gpr1.dout_i_reg[31]_1\ : STD_LOGIC;
  signal \^gpr1.dout_i_reg[31]_2\ : STD_LOGIC;
  signal \^gpr1.dout_i_reg[31]_3\ : STD_LOGIC;
  signal \^gpr1.dout_i_reg[31]_4\ : STD_LOGIC;
  signal \^gpr1.dout_i_reg[31]_5\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc1.count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gc1.count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gc1.count[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gc1.count[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gc1.count[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gc1.count[9]_i_2\ : label is "soft_lutpair1";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[0]\ : label is "gc1.count_d2_reg[0]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[0]_rep\ : label is "gc1.count_d2_reg[0]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[0]_rep__0\ : label is "gc1.count_d2_reg[0]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[0]_rep__1\ : label is "gc1.count_d2_reg[0]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[1]\ : label is "gc1.count_d2_reg[1]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[1]_rep\ : label is "gc1.count_d2_reg[1]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[1]_rep__0\ : label is "gc1.count_d2_reg[1]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[1]_rep__1\ : label is "gc1.count_d2_reg[1]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[2]\ : label is "gc1.count_d2_reg[2]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[2]_rep\ : label is "gc1.count_d2_reg[2]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[2]_rep__0\ : label is "gc1.count_d2_reg[2]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[2]_rep__1\ : label is "gc1.count_d2_reg[2]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[3]\ : label is "gc1.count_d2_reg[3]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[3]_rep\ : label is "gc1.count_d2_reg[3]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[3]_rep__0\ : label is "gc1.count_d2_reg[3]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[3]_rep__1\ : label is "gc1.count_d2_reg[3]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[4]\ : label is "gc1.count_d2_reg[4]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[4]_rep\ : label is "gc1.count_d2_reg[4]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[4]_rep__0\ : label is "gc1.count_d2_reg[4]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[4]_rep__1\ : label is "gc1.count_d2_reg[4]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[5]\ : label is "gc1.count_d2_reg[5]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[5]_rep\ : label is "gc1.count_d2_reg[5]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[5]_rep__0\ : label is "gc1.count_d2_reg[5]";
  attribute ORIG_CELL_NAME of \gc1.count_d2_reg[5]_rep__1\ : label is "gc1.count_d2_reg[5]";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  \gpr1.dout_i_reg[31]\(9 downto 0) <= \^gpr1.dout_i_reg[31]\(9 downto 0);
  \gpr1.dout_i_reg[31]_0\ <= \^gpr1.dout_i_reg[31]_0\;
  \gpr1.dout_i_reg[31]_1\ <= \^gpr1.dout_i_reg[31]_1\;
  \gpr1.dout_i_reg[31]_2\ <= \^gpr1.dout_i_reg[31]_2\;
  \gpr1.dout_i_reg[31]_3\ <= \^gpr1.dout_i_reg[31]_3\;
  \gpr1.dout_i_reg[31]_4\ <= \^gpr1.dout_i_reg[31]_4\;
  \gpr1.dout_i_reg[31]_5\ <= \^gpr1.dout_i_reg[31]_5\;
\gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => plusOp(2)
    );
\gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => plusOp(3)
    );
\gc1.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => plusOp(4)
    );
\gc1.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => plusOp(5)
    );
\gc1.count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gc1.count[9]_i_2_n_0\,
      I2 => \^q\(5),
      O => plusOp(6)
    );
\gc1.count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \gc1.count[9]_i_2_n_0\,
      I3 => \^q\(6),
      O => plusOp(7)
    );
\gc1.count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \gc1.count[9]_i_2_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(7),
      O => plusOp(8)
    );
\gc1.count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \gc1.count[9]_i_2_n_0\,
      I4 => \^q\(6),
      I5 => \^q\(8),
      O => plusOp(9)
    );
\gc1.count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \gc1.count[9]_i_2_n_0\
    );
\gc1.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => p_14_out,
      D => \^q\(0),
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      Q => rd_pntr_plus1(0)
    );
\gc1.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(1),
      Q => rd_pntr_plus1(1)
    );
\gc1.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(2),
      Q => rd_pntr_plus1(2)
    );
\gc1.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(3),
      Q => rd_pntr_plus1(3)
    );
\gc1.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(4),
      Q => rd_pntr_plus1(4)
    );
\gc1.count_d1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(5),
      Q => rd_pntr_plus1(5)
    );
\gc1.count_d1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(6),
      Q => rd_pntr_plus1(6)
    );
\gc1.count_d1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(7),
      Q => rd_pntr_plus1(7)
    );
\gc1.count_d1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(8),
      Q => rd_pntr_plus1(8)
    );
\gc1.count_d1_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(9),
      Q => rd_pntr_plus1(9)
    );
\gc1.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(0),
      Q => \^gpr1.dout_i_reg[31]\(0)
    );
\gc1.count_d2_reg[0]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(0),
      Q => ADDRC(0)
    );
\gc1.count_d2_reg[0]_rep__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(0),
      Q => \gpr1.dout_i_reg[24]\(0)
    );
\gc1.count_d2_reg[0]_rep__1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(0),
      Q => \^gpr1.dout_i_reg[31]_5\
    );
\gc1.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(1),
      Q => \^gpr1.dout_i_reg[31]\(1)
    );
\gc1.count_d2_reg[1]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(1),
      Q => ADDRC(1)
    );
\gc1.count_d2_reg[1]_rep__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(1),
      Q => \gpr1.dout_i_reg[24]\(1)
    );
\gc1.count_d2_reg[1]_rep__1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(1),
      Q => \^gpr1.dout_i_reg[31]_4\
    );
\gc1.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(2),
      Q => \^gpr1.dout_i_reg[31]\(2)
    );
\gc1.count_d2_reg[2]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(2),
      Q => ADDRC(2)
    );
\gc1.count_d2_reg[2]_rep__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(2),
      Q => \gpr1.dout_i_reg[24]\(2)
    );
\gc1.count_d2_reg[2]_rep__1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(2),
      Q => \^gpr1.dout_i_reg[31]_3\
    );
\gc1.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(3),
      Q => \^gpr1.dout_i_reg[31]\(3)
    );
\gc1.count_d2_reg[3]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(3),
      Q => ADDRC(3)
    );
\gc1.count_d2_reg[3]_rep__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(3),
      Q => \gpr1.dout_i_reg[24]\(3)
    );
\gc1.count_d2_reg[3]_rep__1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(3),
      Q => \^gpr1.dout_i_reg[31]_2\
    );
\gc1.count_d2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(4),
      Q => \^gpr1.dout_i_reg[31]\(4)
    );
\gc1.count_d2_reg[4]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(4),
      Q => ADDRC(4)
    );
\gc1.count_d2_reg[4]_rep__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(4),
      Q => \gpr1.dout_i_reg[24]\(4)
    );
\gc1.count_d2_reg[4]_rep__1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(4),
      Q => \^gpr1.dout_i_reg[31]_1\
    );
\gc1.count_d2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(5),
      Q => \^gpr1.dout_i_reg[31]\(5)
    );
\gc1.count_d2_reg[5]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(5),
      Q => ADDRC(5)
    );
\gc1.count_d2_reg[5]_rep__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(5),
      Q => \gpr1.dout_i_reg[24]\(5)
    );
\gc1.count_d2_reg[5]_rep__1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(5),
      Q => \^gpr1.dout_i_reg[31]_0\
    );
\gc1.count_d2_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(6),
      Q => \^gpr1.dout_i_reg[31]\(6)
    );
\gc1.count_d2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(7),
      Q => \^gpr1.dout_i_reg[31]\(7)
    );
\gc1.count_d2_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(8),
      Q => \^gpr1.dout_i_reg[31]\(8)
    );
\gc1.count_d2_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(9),
      Q => \^gpr1.dout_i_reg[31]\(9)
    );
\gc1.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => plusOp(0),
      Q => \^q\(0)
    );
\gc1.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => p_14_out,
      D => plusOp(1),
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      Q => \^q\(1)
    );
\gc1.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => plusOp(2),
      Q => \^q\(2)
    );
\gc1.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => plusOp(3),
      Q => \^q\(3)
    );
\gc1.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => plusOp(4),
      Q => \^q\(4)
    );
\gc1.count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => plusOp(5),
      Q => \^q\(5)
    );
\gc1.count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => plusOp(6),
      Q => \^q\(6)
    );
\gc1.count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => plusOp(7),
      Q => \^q\(7)
    );
\gc1.count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => plusOp(8),
      Q => \^q\(8)
    );
\gc1.count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_14_out,
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => plusOp(9),
      Q => \^q\(9)
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]_4\,
      I1 => \gcc0.gc0.count_d1_reg[9]\(1),
      I2 => \^gpr1.dout_i_reg[31]_5\,
      I3 => \gcc0.gc0.count_d1_reg[9]\(0),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]_4\,
      I1 => \gcc0.gc0.count_d1_reg[9]\(1),
      I2 => \^gpr1.dout_i_reg[31]_5\,
      I3 => \gcc0.gc0.count_d1_reg[9]\(0),
      O => v1_reg_1(0)
    );
\gmux.gm[0].gm1.m1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => \gcc0.gc0.count_d1_reg[9]\(1),
      I2 => rd_pntr_plus1(0),
      I3 => \gcc0.gc0.count_d1_reg[9]\(0),
      O => v1_reg_2(0)
    );
\gmux.gm[0].gm1.m1_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]_4\,
      I1 => \gcc0.gc0.count_reg[9]\(1),
      I2 => \^gpr1.dout_i_reg[31]_5\,
      I3 => \gcc0.gc0.count_reg[9]\(0),
      O => v1_reg_0(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]_2\,
      I1 => \gcc0.gc0.count_d1_reg[9]\(3),
      I2 => \^gpr1.dout_i_reg[31]_3\,
      I3 => \gcc0.gc0.count_d1_reg[9]\(2),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]_2\,
      I1 => \gcc0.gc0.count_d1_reg[9]\(3),
      I2 => \^gpr1.dout_i_reg[31]_3\,
      I3 => \gcc0.gc0.count_d1_reg[9]\(2),
      O => v1_reg_1(1)
    );
\gmux.gm[1].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => \gcc0.gc0.count_d1_reg[9]\(3),
      I2 => rd_pntr_plus1(2),
      I3 => \gcc0.gc0.count_d1_reg[9]\(2),
      O => v1_reg_2(1)
    );
\gmux.gm[1].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]_2\,
      I1 => \gcc0.gc0.count_reg[9]\(3),
      I2 => \^gpr1.dout_i_reg[31]_3\,
      I3 => \gcc0.gc0.count_reg[9]\(2),
      O => v1_reg_0(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]_0\,
      I1 => \gcc0.gc0.count_d1_reg[9]\(5),
      I2 => \^gpr1.dout_i_reg[31]_1\,
      I3 => \gcc0.gc0.count_d1_reg[9]\(4),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]_0\,
      I1 => \gcc0.gc0.count_d1_reg[9]\(5),
      I2 => \^gpr1.dout_i_reg[31]_1\,
      I3 => \gcc0.gc0.count_d1_reg[9]\(4),
      O => v1_reg_1(2)
    );
\gmux.gm[2].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(5),
      I1 => \gcc0.gc0.count_d1_reg[9]\(5),
      I2 => rd_pntr_plus1(4),
      I3 => \gcc0.gc0.count_d1_reg[9]\(4),
      O => v1_reg_2(2)
    );
\gmux.gm[2].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]_0\,
      I1 => \gcc0.gc0.count_reg[9]\(5),
      I2 => \^gpr1.dout_i_reg[31]_1\,
      I3 => \gcc0.gc0.count_reg[9]\(4),
      O => v1_reg_0(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]\(7),
      I1 => \gcc0.gc0.count_d1_reg[9]\(7),
      I2 => \^gpr1.dout_i_reg[31]\(6),
      I3 => \gcc0.gc0.count_d1_reg[9]\(6),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]\(7),
      I1 => \gcc0.gc0.count_d1_reg[9]\(7),
      I2 => \^gpr1.dout_i_reg[31]\(6),
      I3 => \gcc0.gc0.count_d1_reg[9]\(6),
      O => v1_reg_1(3)
    );
\gmux.gm[3].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(7),
      I1 => \gcc0.gc0.count_d1_reg[9]\(7),
      I2 => rd_pntr_plus1(6),
      I3 => \gcc0.gc0.count_d1_reg[9]\(6),
      O => v1_reg_2(3)
    );
\gmux.gm[3].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]\(7),
      I1 => \gcc0.gc0.count_reg[9]\(7),
      I2 => \^gpr1.dout_i_reg[31]\(6),
      I3 => \gcc0.gc0.count_reg[9]\(6),
      O => v1_reg_0(3)
    );
\gmux.gm[4].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]\(9),
      I1 => \gcc0.gc0.count_d1_reg[9]\(9),
      I2 => \^gpr1.dout_i_reg[31]\(8),
      I3 => \gcc0.gc0.count_d1_reg[9]\(8),
      O => v1_reg(4)
    );
\gmux.gm[4].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]\(9),
      I1 => \gcc0.gc0.count_d1_reg[9]\(9),
      I2 => \^gpr1.dout_i_reg[31]\(8),
      I3 => \gcc0.gc0.count_d1_reg[9]\(8),
      O => v1_reg_1(4)
    );
\gmux.gm[4].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(9),
      I1 => \gcc0.gc0.count_d1_reg[9]\(9),
      I2 => rd_pntr_plus1(8),
      I3 => \gcc0.gc0.count_d1_reg[9]\(8),
      O => v1_reg_2(4)
    );
\gmux.gm[4].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[31]\(9),
      I1 => \gcc0.gc0.count_reg[9]\(9),
      I2 => \^gpr1.dout_i_reg[31]\(8),
      I3 => \gcc0.gc0.count_reg[9]\(8),
      O => v1_reg_0(4)
    );
ram_empty_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F3F700F700F700"
    )
        port map (
      I0 => comp0_3,
      I1 => wr_en,
      I2 => p_1_out,
      I3 => p_18_out,
      I4 => rd_en,
      I5 => comp1_4,
      O => ram_empty_i0
    );
ram_full_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F000F880F88"
    )
        port map (
      I0 => wr_en,
      I1 => comp1,
      I2 => rst_full_gen_i,
      I3 => p_1_out,
      I4 => comp0,
      I5 => p_14_out,
      O => ram_full_comb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_rd_handshaking_flags is
  port (
    valid : out STD_LOGIC;
    ram_valid_i : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_rd_handshaking_flags : entity is "rd_handshaking_flags";
end fifo_layer_rd_handshaking_flags;

architecture STRUCTURE of fifo_layer_rd_handshaking_flags is
begin
\gv.ram_valid_d1_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => Q(0),
      D => ram_valid_i,
      Q => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_reset_blk_ramfifo is
  port (
    rst_full_ff_i : out STD_LOGIC;
    rst_full_gen_i : out STD_LOGIC;
    RST : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    \^rst\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_reset_blk_ramfifo : entity is "reset_blk_ramfifo";
end fifo_layer_reset_blk_ramfifo;

architecture STRUCTURE of fifo_layer_reset_blk_ramfifo is
  signal \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_asreg_d1 : STD_LOGIC;
  signal rd_rst_asreg_d2 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d2 : STD_LOGIC;
  signal rst_d3 : STD_LOGIC;
  signal rst_rd_reg1 : STD_LOGIC;
  signal rst_rd_reg2 : STD_LOGIC;
  signal rst_wr_reg1 : STD_LOGIC;
  signal rst_wr_reg2 : STD_LOGIC;
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_asreg_d1 : STD_LOGIC;
  signal wr_rst_asreg_d2 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute ASYNC_REG of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute ASYNC_REG of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "no";
begin
  rst_full_ff_i <= rst_d2;
\grstd1.grst_full.grst_f.RST_FULL_GEN_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst\,
      D => rst_d3,
      Q => rst_full_gen_i
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \^rst\,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_d1,
      PRE => \^rst\,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_d2,
      PRE => \^rst\,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rd_rst_asreg,
      Q => rd_rst_asreg_d1,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rd_rst_asreg_d1,
      Q => rd_rst_asreg_d2,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_rst_asreg,
      I1 => rd_rst_asreg_d1,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_rst_asreg,
      I1 => rd_rst_asreg_d2,
      O => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\,
      Q => Q(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\,
      Q => Q(1)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \^rst\,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => \^rst\,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \^rst\,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => \^rst\,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wr_rst_asreg,
      Q => wr_rst_asreg_d1,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wr_rst_asreg_d1,
      Q => wr_rst_asreg_d2,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_rst_asreg,
      I1 => wr_rst_asreg_d1,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_rst_asreg,
      I1 => wr_rst_asreg_d2,
      O => \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0\,
      Q => RST
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_updn_cntr is
  port (
    \data_count[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_updn_cntr : entity is "updn_cntr";
end fifo_layer_updn_cntr;

architecture STRUCTURE of fifo_layer_updn_cntr is
  signal \count[3]_i_4_n_0\ : STD_LOGIC;
  signal \count[3]_i_7_n_0\ : STD_LOGIC;
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal \count[7]_i_3_n_0\ : STD_LOGIC;
  signal \count[7]_i_4_n_0\ : STD_LOGIC;
  signal \count[7]_i_5_n_0\ : STD_LOGIC;
  signal \count[9]_i_3_n_0\ : STD_LOGIC;
  signal \count[9]_i_4_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[9]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[9]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[9]_i_2_n_7\ : STD_LOGIC;
  signal \^data_count[9]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_count_reg[9]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_reg[9]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
  \data_count[9]\(9 downto 0) <= \^data_count[9]\(9 downto 0);
\count[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_count[9]\(2),
      I1 => \^data_count[9]\(3),
      O => \count[3]_i_4_n_0\
    );
\count[3]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_count[9]\(0),
      O => \count[3]_i_7_n_0\
    );
\count[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_count[9]\(6),
      I1 => \^data_count[9]\(7),
      O => \count[7]_i_2_n_0\
    );
\count[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_count[9]\(5),
      I1 => \^data_count[9]\(6),
      O => \count[7]_i_3_n_0\
    );
\count[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_count[9]\(4),
      I1 => \^data_count[9]\(5),
      O => \count[7]_i_4_n_0\
    );
\count[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_count[9]\(3),
      I1 => \^data_count[9]\(4),
      O => \count[7]_i_5_n_0\
    );
\count[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_count[9]\(8),
      I1 => \^data_count[9]\(9),
      O => \count[9]_i_3_n_0\
    );
\count[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_count[9]\(7),
      I1 => \^data_count[9]\(8),
      O => \count[9]_i_4_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ram_full_fb_i_reg(0),
      CLR => Q(0),
      D => \count_reg[3]_i_1_n_7\,
      Q => \^data_count[9]\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ram_full_fb_i_reg(0),
      CLR => Q(0),
      D => \count_reg[3]_i_1_n_6\,
      Q => \^data_count[9]\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ram_full_fb_i_reg(0),
      CLR => Q(0),
      D => \count_reg[3]_i_1_n_5\,
      Q => \^data_count[9]\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ram_full_fb_i_reg(0),
      CLR => Q(0),
      D => \count_reg[3]_i_1_n_4\,
      Q => \^data_count[9]\(3)
    );
\count_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[3]_i_1_n_0\,
      CO(2) => \count_reg[3]_i_1_n_1\,
      CO(1) => \count_reg[3]_i_1_n_2\,
      CO(0) => \count_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \^data_count[9]\(2),
      DI(2 downto 1) => DI(1 downto 0),
      DI(0) => \^data_count[9]\(0),
      O(3) => \count_reg[3]_i_1_n_4\,
      O(2) => \count_reg[3]_i_1_n_5\,
      O(1) => \count_reg[3]_i_1_n_6\,
      O(0) => \count_reg[3]_i_1_n_7\,
      S(3) => \count[3]_i_4_n_0\,
      S(2 downto 1) => S(1 downto 0),
      S(0) => \count[3]_i_7_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ram_full_fb_i_reg(0),
      CLR => Q(0),
      D => \count_reg[7]_i_1_n_7\,
      Q => \^data_count[9]\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ram_full_fb_i_reg(0),
      CLR => Q(0),
      D => \count_reg[7]_i_1_n_6\,
      Q => \^data_count[9]\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ram_full_fb_i_reg(0),
      CLR => Q(0),
      D => \count_reg[7]_i_1_n_5\,
      Q => \^data_count[9]\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ram_full_fb_i_reg(0),
      CLR => Q(0),
      D => \count_reg[7]_i_1_n_4\,
      Q => \^data_count[9]\(7)
    );
\count_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[3]_i_1_n_0\,
      CO(3) => \count_reg[7]_i_1_n_0\,
      CO(2) => \count_reg[7]_i_1_n_1\,
      CO(1) => \count_reg[7]_i_1_n_2\,
      CO(0) => \count_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^data_count[9]\(6 downto 3),
      O(3) => \count_reg[7]_i_1_n_4\,
      O(2) => \count_reg[7]_i_1_n_5\,
      O(1) => \count_reg[7]_i_1_n_6\,
      O(0) => \count_reg[7]_i_1_n_7\,
      S(3) => \count[7]_i_2_n_0\,
      S(2) => \count[7]_i_3_n_0\,
      S(1) => \count[7]_i_4_n_0\,
      S(0) => \count[7]_i_5_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ram_full_fb_i_reg(0),
      CLR => Q(0),
      D => \count_reg[9]_i_2_n_7\,
      Q => \^data_count[9]\(8)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ram_full_fb_i_reg(0),
      CLR => Q(0),
      D => \count_reg[9]_i_2_n_6\,
      Q => \^data_count[9]\(9)
    );
\count_reg[9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[7]_i_1_n_0\,
      CO(3 downto 1) => \NLW_count_reg[9]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_reg[9]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => \^data_count[9]\(7),
      O(3 downto 2) => \NLW_count_reg[9]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \count_reg[9]_i_2_n_6\,
      O(0) => \count_reg[9]_i_2_n_7\,
      S(3) => '0',
      S(2) => '0',
      S(1) => \count[9]_i_3_n_0\,
      S(0) => \count[9]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_wr_bin_cntr is
  port (
    \gpr1.dout_i_reg[31]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \gpr1.dout_i_reg[31]_0\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_1\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_2\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_3\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_4\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_0\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_1\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_2\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_3\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_4\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_5\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_6\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_7\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_8\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpr1.dout_i_reg[31]_5\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_6\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_7\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_8\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_9\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_10\ : out STD_LOGIC;
    wr_en : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    \gc1.count_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    p_4_out : in STD_LOGIC;
    clk : in STD_LOGIC;
    RST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_wr_bin_cntr : entity is "wr_bin_cntr";
end fifo_layer_wr_bin_cntr;

architecture STRUCTURE of fifo_layer_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gcc0.gc0.count[9]_i_2_n_0\ : STD_LOGIC;
  signal \^gcc0.gc0.count_d1_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[9]_i_2\ : label is "soft_lutpair5";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \gcc0.gc0.count_d1_reg[0]\ : label is "gcc0.gc0.count_d1_reg[0]";
  attribute ORIG_CELL_NAME of \gcc0.gc0.count_d1_reg[0]_rep\ : label is "gcc0.gc0.count_d1_reg[0]";
  attribute ORIG_CELL_NAME of \gcc0.gc0.count_d1_reg[1]\ : label is "gcc0.gc0.count_d1_reg[1]";
  attribute ORIG_CELL_NAME of \gcc0.gc0.count_d1_reg[1]_rep\ : label is "gcc0.gc0.count_d1_reg[1]";
  attribute ORIG_CELL_NAME of \gcc0.gc0.count_d1_reg[2]\ : label is "gcc0.gc0.count_d1_reg[2]";
  attribute ORIG_CELL_NAME of \gcc0.gc0.count_d1_reg[2]_rep\ : label is "gcc0.gc0.count_d1_reg[2]";
  attribute ORIG_CELL_NAME of \gcc0.gc0.count_d1_reg[3]\ : label is "gcc0.gc0.count_d1_reg[3]";
  attribute ORIG_CELL_NAME of \gcc0.gc0.count_d1_reg[3]_rep\ : label is "gcc0.gc0.count_d1_reg[3]";
  attribute ORIG_CELL_NAME of \gcc0.gc0.count_d1_reg[4]\ : label is "gcc0.gc0.count_d1_reg[4]";
  attribute ORIG_CELL_NAME of \gcc0.gc0.count_d1_reg[4]_rep\ : label is "gcc0.gc0.count_d1_reg[4]";
  attribute ORIG_CELL_NAME of \gcc0.gc0.count_d1_reg[5]\ : label is "gcc0.gc0.count_d1_reg[5]";
  attribute ORIG_CELL_NAME of \gcc0.gc0.count_d1_reg[5]_rep\ : label is "gcc0.gc0.count_d1_reg[5]";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  \gcc0.gc0.count_d1_reg[9]_0\(9 downto 0) <= \^gcc0.gc0.count_d1_reg[9]_0\(9 downto 0);
RAM_reg_0_63_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(9),
      I3 => \^q\(8),
      I4 => wr_en,
      I5 => ram_full_fb_i_reg,
      O => \gpr1.dout_i_reg[31]_1\
    );
RAM_reg_128_191_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \^q\(9),
      I3 => \^q\(7),
      I4 => wr_en,
      I5 => ram_full_fb_i_reg,
      O => \gpr1.dout_i_reg[31]_3\
    );
RAM_reg_192_255_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(8),
      I4 => wr_en,
      I5 => ram_full_fb_i_reg,
      O => \gpr1.dout_i_reg[0]_1\
    );
RAM_reg_256_319_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(9),
      I3 => \^q\(8),
      I4 => wr_en,
      I5 => ram_full_fb_i_reg,
      O => \gpr1.dout_i_reg[31]\
    );
RAM_reg_320_383_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(6),
      I3 => \^q\(7),
      I4 => wr_en,
      I5 => ram_full_fb_i_reg,
      O => \gpr1.dout_i_reg[0]_3\
    );
RAM_reg_384_447_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => wr_en,
      I5 => ram_full_fb_i_reg,
      O => \gpr1.dout_i_reg[0]_5\
    );
RAM_reg_448_511_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => wr_en,
      I4 => ram_full_fb_i_reg,
      I5 => \^q\(8),
      O => \gpr1.dout_i_reg[0]\
    );
RAM_reg_512_575_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(8),
      I3 => \^q\(9),
      I4 => wr_en,
      I5 => ram_full_fb_i_reg,
      O => \gpr1.dout_i_reg[31]_0\
    );
RAM_reg_576_639_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      I2 => \^q\(6),
      I3 => \^q\(7),
      I4 => wr_en,
      I5 => ram_full_fb_i_reg,
      O => \gpr1.dout_i_reg[0]_6\
    );
RAM_reg_640_703_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => wr_en,
      I5 => ram_full_fb_i_reg,
      O => \gpr1.dout_i_reg[0]_7\
    );
RAM_reg_64_127_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(9),
      I3 => \^q\(6),
      I4 => wr_en,
      I5 => ram_full_fb_i_reg,
      O => \gpr1.dout_i_reg[31]_2\
    );
RAM_reg_704_767_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => wr_en,
      I4 => ram_full_fb_i_reg,
      I5 => \^q\(9),
      O => \gpr1.dout_i_reg[0]_0\
    );
RAM_reg_768_831_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(9),
      I2 => \^q\(8),
      I3 => \^q\(6),
      I4 => wr_en,
      I5 => ram_full_fb_i_reg,
      O => \gpr1.dout_i_reg[0]_8\
    );
RAM_reg_832_895_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      I2 => \^q\(6),
      I3 => wr_en,
      I4 => ram_full_fb_i_reg,
      I5 => \^q\(9),
      O => \gpr1.dout_i_reg[0]_2\
    );
RAM_reg_896_959_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => wr_en,
      I4 => ram_full_fb_i_reg,
      I5 => \^q\(9),
      O => \gpr1.dout_i_reg[0]_4\
    );
RAM_reg_960_1023_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(9),
      I3 => \^q\(8),
      I4 => wr_en,
      I5 => ram_full_fb_i_reg,
      O => \gpr1.dout_i_reg[31]_4\
    );
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[9]_0\(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[9]_0\(0),
      I1 => \^gcc0.gc0.count_d1_reg[9]_0\(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[9]_0\(2),
      I1 => \^gcc0.gc0.count_d1_reg[9]_0\(0),
      I2 => \^gcc0.gc0.count_d1_reg[9]_0\(1),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[9]_0\(3),
      I1 => \^gcc0.gc0.count_d1_reg[9]_0\(1),
      I2 => \^gcc0.gc0.count_d1_reg[9]_0\(0),
      I3 => \^gcc0.gc0.count_d1_reg[9]_0\(2),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[9]_0\(2),
      I1 => \^gcc0.gc0.count_d1_reg[9]_0\(0),
      I2 => \^gcc0.gc0.count_d1_reg[9]_0\(1),
      I3 => \^gcc0.gc0.count_d1_reg[9]_0\(3),
      I4 => \^gcc0.gc0.count_d1_reg[9]_0\(4),
      O => \plusOp__0\(4)
    );
\gcc0.gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[9]_0\(5),
      I1 => \^gcc0.gc0.count_d1_reg[9]_0\(2),
      I2 => \^gcc0.gc0.count_d1_reg[9]_0\(0),
      I3 => \^gcc0.gc0.count_d1_reg[9]_0\(1),
      I4 => \^gcc0.gc0.count_d1_reg[9]_0\(3),
      I5 => \^gcc0.gc0.count_d1_reg[9]_0\(4),
      O => \plusOp__0\(5)
    );
\gcc0.gc0.count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[9]_0\(6),
      I1 => \gcc0.gc0.count[9]_i_2_n_0\,
      I2 => \^gcc0.gc0.count_d1_reg[9]_0\(5),
      O => \plusOp__0\(6)
    );
\gcc0.gc0.count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[9]_0\(7),
      I1 => \^gcc0.gc0.count_d1_reg[9]_0\(5),
      I2 => \gcc0.gc0.count[9]_i_2_n_0\,
      I3 => \^gcc0.gc0.count_d1_reg[9]_0\(6),
      O => \plusOp__0\(7)
    );
\gcc0.gc0.count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[9]_0\(8),
      I1 => \^gcc0.gc0.count_d1_reg[9]_0\(6),
      I2 => \gcc0.gc0.count[9]_i_2_n_0\,
      I3 => \^gcc0.gc0.count_d1_reg[9]_0\(5),
      I4 => \^gcc0.gc0.count_d1_reg[9]_0\(7),
      O => \plusOp__0\(8)
    );
\gcc0.gc0.count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[9]_0\(9),
      I1 => \^gcc0.gc0.count_d1_reg[9]_0\(7),
      I2 => \^gcc0.gc0.count_d1_reg[9]_0\(5),
      I3 => \gcc0.gc0.count[9]_i_2_n_0\,
      I4 => \^gcc0.gc0.count_d1_reg[9]_0\(6),
      I5 => \^gcc0.gc0.count_d1_reg[9]_0\(8),
      O => \plusOp__0\(9)
    );
\gcc0.gc0.count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^gcc0.gc0.count_d1_reg[9]_0\(4),
      I1 => \^gcc0.gc0.count_d1_reg[9]_0\(3),
      I2 => \^gcc0.gc0.count_d1_reg[9]_0\(1),
      I3 => \^gcc0.gc0.count_d1_reg[9]_0\(0),
      I4 => \^gcc0.gc0.count_d1_reg[9]_0\(2),
      O => \gcc0.gc0.count[9]_i_2_n_0\
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(0),
      Q => \^q\(0)
    );
\gcc0.gc0.count_d1_reg[0]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(0),
      Q => \gpr1.dout_i_reg[31]_9\
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(1),
      Q => \^q\(1)
    );
\gcc0.gc0.count_d1_reg[1]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(1),
      Q => \gpr1.dout_i_reg[31]_10\
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(2),
      Q => \^q\(2)
    );
\gcc0.gc0.count_d1_reg[2]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(2),
      Q => \gpr1.dout_i_reg[31]_6\
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(3),
      Q => \^q\(3)
    );
\gcc0.gc0.count_d1_reg[3]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(3),
      Q => \gpr1.dout_i_reg[31]_8\
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(4),
      Q => \^q\(4)
    );
\gcc0.gc0.count_d1_reg[4]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(4),
      Q => \gpr1.dout_i_reg[31]_7\
    );
\gcc0.gc0.count_d1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(5),
      Q => \^q\(5)
    );
\gcc0.gc0.count_d1_reg[5]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(5),
      Q => \gpr1.dout_i_reg[31]_5\
    );
\gcc0.gc0.count_d1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(6),
      Q => \^q\(6)
    );
\gcc0.gc0.count_d1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(7),
      Q => \^q\(7)
    );
\gcc0.gc0.count_d1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(8),
      Q => \^q\(8)
    );
\gcc0.gc0.count_d1_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \^gcc0.gc0.count_d1_reg[9]_0\(9),
      Q => \^q\(9)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => p_4_out,
      D => \plusOp__0\(0),
      PRE => RST,
      Q => \^gcc0.gc0.count_d1_reg[9]_0\(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \plusOp__0\(1),
      Q => \^gcc0.gc0.count_d1_reg[9]_0\(1)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \plusOp__0\(2),
      Q => \^gcc0.gc0.count_d1_reg[9]_0\(2)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \plusOp__0\(3),
      Q => \^gcc0.gc0.count_d1_reg[9]_0\(3)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \plusOp__0\(4),
      Q => \^gcc0.gc0.count_d1_reg[9]_0\(4)
    );
\gcc0.gc0.count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \plusOp__0\(5),
      Q => \^gcc0.gc0.count_d1_reg[9]_0\(5)
    );
\gcc0.gc0.count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \plusOp__0\(6),
      Q => \^gcc0.gc0.count_d1_reg[9]_0\(6)
    );
\gcc0.gc0.count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \plusOp__0\(7),
      Q => \^gcc0.gc0.count_d1_reg[9]_0\(7)
    );
\gcc0.gc0.count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \plusOp__0\(8),
      Q => \^gcc0.gc0.count_d1_reg[9]_0\(8)
    );
\gcc0.gc0.count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_4_out,
      CLR => RST,
      D => \plusOp__0\(9),
      Q => \^gcc0.gc0.count_d1_reg[9]_0\(9)
    );
\gmux.gm[0].gm1.m1_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gc1.count_reg[9]\(1),
      I2 => \^q\(0),
      I3 => \gc1.count_reg[9]\(0),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gc1.count_reg[9]\(3),
      I2 => \^q\(2),
      I3 => \gc1.count_reg[9]\(2),
      O => v1_reg(1)
    );
\gmux.gm[2].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gc1.count_reg[9]\(5),
      I2 => \^q\(4),
      I3 => \gc1.count_reg[9]\(4),
      O => v1_reg(2)
    );
\gmux.gm[3].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gc1.count_reg[9]\(7),
      I2 => \^q\(6),
      I3 => \gc1.count_reg[9]\(6),
      O => v1_reg(3)
    );
\gmux.gm[4].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gc1.count_reg[9]\(9),
      I2 => \^q\(8),
      I3 => \gc1.count_reg[9]\(8),
      O => v1_reg(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_dc_ss is
  port (
    \data_count[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_dc_ss : entity is "dc_ss";
end fifo_layer_dc_ss;

architecture STRUCTURE of fifo_layer_dc_ss is
begin
\gsym_dc.dc\: entity work.fifo_layer_updn_cntr
     port map (
      DI(1 downto 0) => DI(1 downto 0),
      Q(0) => Q(0),
      S(1 downto 0) => S(1 downto 0),
      clk => clk,
      \data_count[9]\(9 downto 0) => \data_count[9]\(9 downto 0),
      ram_full_fb_i_reg(0) => ram_full_fb_i_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_memory is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \gcc0.gc0.count_d1_reg[7]\ : in STD_LOGIC;
    \gc1.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]_0\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[9]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[7]_0\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[9]_0\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[9]_1\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[9]_2\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[7]_1\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]_1\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]_2\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]_3\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[7]_2\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[7]_3\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[6]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[7]_4\ : in STD_LOGIC;
    ADDRC : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gc1.count_d2_reg[5]_rep__0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gcc0.gc0.count_d1_reg[5]_rep\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]_rep\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[3]_rep\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[2]_rep\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[1]_rep\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[0]_rep\ : in STD_LOGIC;
    \gc1.count_d2_reg[5]_rep__1\ : in STD_LOGIC;
    \gc1.count_d2_reg[4]_rep__1\ : in STD_LOGIC;
    \gc1.count_d2_reg[3]_rep__1\ : in STD_LOGIC;
    \gc1.count_d2_reg[2]_rep__1\ : in STD_LOGIC;
    \gc1.count_d2_reg[1]_rep__1\ : in STD_LOGIC;
    \gc1.count_d2_reg[0]_rep__1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_memory : entity is "memory";
end fifo_layer_memory;

architecture STRUCTURE of fifo_layer_memory is
begin
\gdm.dm\: entity work.fifo_layer_dmem
     port map (
      ADDRA(5) => \gc1.count_d2_reg[5]_rep__1\,
      ADDRA(4) => \gc1.count_d2_reg[4]_rep__1\,
      ADDRA(3) => \gc1.count_d2_reg[3]_rep__1\,
      ADDRA(2) => \gc1.count_d2_reg[2]_rep__1\,
      ADDRA(1) => \gc1.count_d2_reg[1]_rep__1\,
      ADDRA(0) => \gc1.count_d2_reg[0]_rep__1\,
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      ADDRD(5) => \gcc0.gc0.count_d1_reg[5]_rep\,
      ADDRD(4) => \gcc0.gc0.count_d1_reg[4]_rep\,
      ADDRD(3) => \gcc0.gc0.count_d1_reg[3]_rep\,
      ADDRD(2) => \gcc0.gc0.count_d1_reg[2]_rep\,
      ADDRD(1) => \gcc0.gc0.count_d1_reg[1]_rep\,
      ADDRD(0) => \gcc0.gc0.count_d1_reg[0]_rep\,
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      clk => clk,
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      \gc1.count_d2_reg[5]_rep__0\(5 downto 0) => \gc1.count_d2_reg[5]_rep__0\(5 downto 0),
      \gc1.count_d2_reg[9]\(9 downto 0) => \gc1.count_d2_reg[9]\(9 downto 0),
      \gcc0.gc0.count_d1_reg[6]\ => \gcc0.gc0.count_d1_reg[6]\,
      \gcc0.gc0.count_d1_reg[7]\ => \gcc0.gc0.count_d1_reg[7]\,
      \gcc0.gc0.count_d1_reg[7]_0\ => \gcc0.gc0.count_d1_reg[7]_0\,
      \gcc0.gc0.count_d1_reg[7]_1\ => \gcc0.gc0.count_d1_reg[7]_1\,
      \gcc0.gc0.count_d1_reg[7]_2\ => \gcc0.gc0.count_d1_reg[7]_2\,
      \gcc0.gc0.count_d1_reg[7]_3\ => \gcc0.gc0.count_d1_reg[7]_3\,
      \gcc0.gc0.count_d1_reg[7]_4\ => \gcc0.gc0.count_d1_reg[7]_4\,
      \gcc0.gc0.count_d1_reg[8]\ => \gcc0.gc0.count_d1_reg[8]\,
      \gcc0.gc0.count_d1_reg[8]_0\ => \gcc0.gc0.count_d1_reg[8]_0\,
      \gcc0.gc0.count_d1_reg[8]_1\ => \gcc0.gc0.count_d1_reg[8]_1\,
      \gcc0.gc0.count_d1_reg[8]_2\ => \gcc0.gc0.count_d1_reg[8]_2\,
      \gcc0.gc0.count_d1_reg[8]_3\ => \gcc0.gc0.count_d1_reg[8]_3\,
      \gcc0.gc0.count_d1_reg[9]\ => \gcc0.gc0.count_d1_reg[9]\,
      \gcc0.gc0.count_d1_reg[9]_0\ => \gcc0.gc0.count_d1_reg[9]_0\,
      \gcc0.gc0.count_d1_reg[9]_1\ => \gcc0.gc0.count_d1_reg[9]_1\,
      \gcc0.gc0.count_d1_reg[9]_2\ => \gcc0.gc0.count_d1_reg[9]_2\,
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_rd_status_flags_ss is
  port (
    comp0 : out STD_LOGIC;
    comp1 : out STD_LOGIC;
    \gpr1.dout_i_reg[0]\ : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_14_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_valid_i : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_empty_i0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    \count_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_en : in STD_LOGIC;
    p_1_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_rd_status_flags_ss : entity is "rd_status_flags_ss";
end fifo_layer_rd_status_flags_ss;

architecture STRUCTURE of fifo_layer_rd_status_flags_ss is
  signal \^almost_empty\ : STD_LOGIC;
  signal \^comp1\ : STD_LOGIC;
  signal comp2 : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal \^gpr1.dout_i_reg[0]\ : STD_LOGIC;
  signal \^p_14_out\ : STD_LOGIC;
  signal p_1_out_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc1.count_d1[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gpr1.dout_i[31]_i_1\ : label is "soft_lutpair0";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  almost_empty <= \^almost_empty\;
  comp1 <= \^comp1\;
  empty <= \^empty\;
  \gpr1.dout_i_reg[0]\ <= \^gpr1.dout_i_reg[0]\;
  p_14_out <= \^p_14_out\;
c1: entity work.fifo_layer_compare_1
     port map (
      comp0 => comp0,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
c2: entity work.fifo_layer_compare_2
     port map (
      comp1 => \^comp1\,
      v1_reg_0(4 downto 0) => v1_reg_0(4 downto 0)
    );
\count[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[0]\,
      I1 => rd_en,
      O => DI(1)
    );
\count[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_en,
      I1 => \^gpr1.dout_i_reg[0]\,
      O => DI(0)
    );
\count[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[0]\,
      I1 => rd_en,
      I2 => \count_reg[2]\(1),
      O => S(1)
    );
\count[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[0]\,
      I1 => rd_en,
      I2 => \count_reg[2]\(0),
      O => S(0)
    );
\gae.c3\: entity work.fifo_layer_compare_3
     port map (
      comp2 => comp2,
      v1_reg_1(4 downto 0) => v1_reg_1(4 downto 0)
    );
\gae.ram_aempty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFAA2AAAAAAA2A"
    )
        port map (
      I0 => \^almost_empty\,
      I1 => \^comp1\,
      I2 => wr_en,
      I3 => p_1_out,
      I4 => \^p_14_out\,
      I5 => comp2,
      O => p_1_out_0
    );
\gae.ram_aempty_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_out_0,
      PRE => Q(0),
      Q => \^almost_empty\
    );
\gc1.count_d1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_en,
      I1 => \^gpr1.dout_i_reg[0]\,
      O => \^p_14_out\
    );
\gpr1.dout_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_en,
      I1 => \^gpr1.dout_i_reg[0]\,
      O => E(0)
    );
\gv.ram_valid_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_en,
      I1 => \^empty\,
      O => ram_valid_i
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_empty_i0,
      PRE => Q(0),
      Q => \^gpr1.dout_i_reg[0]\
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_empty_i0,
      PRE => Q(0),
      Q => \^empty\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_wr_status_flags_ss is
  port (
    comp0 : out STD_LOGIC;
    comp1 : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[9]\ : out STD_LOGIC;
    full : out STD_LOGIC;
    \count_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_4_out : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_full_comb : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_full_ff_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    p_18_out : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_wr_status_flags_ss : entity is "wr_status_flags_ss";
end fifo_layer_wr_status_flags_ss;

architecture STRUCTURE of fifo_layer_wr_status_flags_ss is
  signal \^gcc0.gc0.count_d1_reg[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gcc0.gc0.count_d1[9]_i_1\ : label is "soft_lutpair4";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  \gcc0.gc0.count_d1_reg[9]\ <= \^gcc0.gc0.count_d1_reg[9]\;
c0: entity work.fifo_layer_compare
     port map (
      comp0 => comp0,
      v1_reg_0(4 downto 0) => v1_reg_0(4 downto 0)
    );
c1: entity work.fifo_layer_compare_0
     port map (
      comp1 => comp1,
      v1_reg_1(4 downto 0) => v1_reg_1(4 downto 0)
    );
\count[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2D22"
    )
        port map (
      I0 => wr_en,
      I1 => \^gcc0.gc0.count_d1_reg[9]\,
      I2 => p_18_out,
      I3 => rd_en,
      O => \count_reg[0]\(0)
    );
\gcc0.gc0.count_d1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => \^gcc0.gc0.count_d1_reg[9]\,
      O => p_4_out
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_comb,
      PRE => rst_full_ff_i,
      Q => \^gcc0.gc0.count_d1_reg[9]\
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_comb,
      PRE => rst_full_ff_i,
      Q => full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_rd_logic is
  port (
    p_18_out : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    \data_count[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_full_comb : out STD_LOGIC;
    \gc1.count_d1_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpr1.dout_i_reg[31]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \gpr1.dout_i_reg[31]_0\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_1\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_2\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_3\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_4\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_5\ : out STD_LOGIC;
    v1_reg_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ADDRC : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gpr1.dout_i_reg[24]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    v1_reg_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    comp1 : in STD_LOGIC;
    rst_full_gen_i : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    comp0 : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gcc0.gc0.count_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_rd_logic : entity is "rd_logic";
end fifo_layer_rd_logic;

architecture STRUCTURE of fifo_layer_rd_logic is
  signal \c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \c2/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal comp0_1 : STD_LOGIC;
  signal comp1_0 : STD_LOGIC;
  signal \^data_count[9]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \grss.rsts_n_5\ : STD_LOGIC;
  signal \grss.rsts_n_6\ : STD_LOGIC;
  signal \grss.rsts_n_7\ : STD_LOGIC;
  signal \grss.rsts_n_8\ : STD_LOGIC;
  signal p_14_out : STD_LOGIC;
  signal \^p_18_out\ : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_valid_i : STD_LOGIC;
begin
  \data_count[9]\(9 downto 0) <= \^data_count[9]\(9 downto 0);
  p_18_out <= \^p_18_out\;
\grhf.rhf\: entity work.fifo_layer_rd_handshaking_flags
     port map (
      Q(0) => Q(0),
      clk => clk,
      ram_valid_i => ram_valid_i,
      valid => valid
    );
\grss.gdc.dc\: entity work.fifo_layer_dc_ss
     port map (
      DI(1) => \grss.rsts_n_7\,
      DI(0) => \grss.rsts_n_8\,
      Q(0) => Q(0),
      S(1) => \grss.rsts_n_5\,
      S(0) => \grss.rsts_n_6\,
      clk => clk,
      \data_count[9]\(9 downto 0) => \^data_count[9]\(9 downto 0),
      ram_full_fb_i_reg(0) => ram_full_fb_i_reg(0)
    );
\grss.rsts\: entity work.fifo_layer_rd_status_flags_ss
     port map (
      DI(1) => \grss.rsts_n_7\,
      DI(0) => \grss.rsts_n_8\,
      E(0) => E(0),
      Q(0) => Q(0),
      S(1) => \grss.rsts_n_5\,
      S(0) => \grss.rsts_n_6\,
      almost_empty => almost_empty,
      clk => clk,
      comp0 => comp0_1,
      comp1 => comp1_0,
      \count_reg[2]\(1 downto 0) => \^data_count[9]\(2 downto 1),
      empty => empty,
      \gpr1.dout_i_reg[0]\ => \^p_18_out\,
      p_14_out => p_14_out,
      p_1_out => p_1_out,
      ram_empty_i0 => ram_empty_i0,
      ram_valid_i => ram_valid_i,
      rd_en => rd_en,
      v1_reg(4 downto 0) => \c1/v1_reg\(4 downto 0),
      v1_reg_0(4 downto 0) => \c2/v1_reg\(4 downto 0),
      v1_reg_1(4 downto 0) => v1_reg_1(4 downto 0),
      wr_en => wr_en
    );
rpntr: entity work.fifo_layer_rd_bin_cntr
     port map (
      ADDRC(5 downto 0) => ADDRC(5 downto 0),
      Q(9 downto 0) => \gc1.count_d1_reg[9]\(9 downto 0),
      clk => clk,
      comp0 => comp0,
      comp0_3 => comp0_1,
      comp1 => comp1,
      comp1_4 => comp1_0,
      \gcc0.gc0.count_d1_reg[9]\(9 downto 0) => \gcc0.gc0.count_d1_reg[9]\(9 downto 0),
      \gcc0.gc0.count_reg[9]\(9 downto 0) => \gcc0.gc0.count_reg[9]\(9 downto 0),
      \gpr1.dout_i_reg[24]\(5 downto 0) => \gpr1.dout_i_reg[24]\(5 downto 0),
      \gpr1.dout_i_reg[31]\(9 downto 0) => \gpr1.dout_i_reg[31]\(9 downto 0),
      \gpr1.dout_i_reg[31]_0\ => \gpr1.dout_i_reg[31]_0\,
      \gpr1.dout_i_reg[31]_1\ => \gpr1.dout_i_reg[31]_1\,
      \gpr1.dout_i_reg[31]_2\ => \gpr1.dout_i_reg[31]_2\,
      \gpr1.dout_i_reg[31]_3\ => \gpr1.dout_i_reg[31]_3\,
      \gpr1.dout_i_reg[31]_4\ => \gpr1.dout_i_reg[31]_4\,
      \gpr1.dout_i_reg[31]_5\ => \gpr1.dout_i_reg[31]_5\,
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0) => Q(0),
      p_14_out => p_14_out,
      p_18_out => \^p_18_out\,
      p_1_out => p_1_out,
      ram_empty_i0 => ram_empty_i0,
      ram_full_comb => ram_full_comb,
      rd_en => rd_en,
      rst_full_gen_i => rst_full_gen_i,
      v1_reg(4 downto 0) => v1_reg(4 downto 0),
      v1_reg_0(4 downto 0) => v1_reg_0(4 downto 0),
      v1_reg_1(4 downto 0) => \c1/v1_reg\(4 downto 0),
      v1_reg_2(4 downto 0) => \c2/v1_reg\(4 downto 0),
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_wr_logic is
  port (
    comp0 : out STD_LOGIC;
    comp1 : out STD_LOGIC;
    p_1_out : out STD_LOGIC;
    full : out STD_LOGIC;
    \gpr1.dout_i_reg[31]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \gpr1.dout_i_reg[31]_0\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_1\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_2\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_3\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_4\ : out STD_LOGIC;
    \count_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[0]\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_0\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_1\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_2\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_3\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_4\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_5\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_6\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_7\ : out STD_LOGIC;
    \gpr1.dout_i_reg[0]_8\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpr1.dout_i_reg[31]_5\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_6\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_7\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_8\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_9\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_10\ : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_full_comb : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_full_ff_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    p_18_out : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \gc1.count_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    RST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_wr_logic : entity is "wr_logic";
end fifo_layer_wr_logic;

architecture STRUCTURE of fifo_layer_wr_logic is
  signal \^p_1_out\ : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
begin
  p_1_out <= \^p_1_out\;
\gwss.wsts\: entity work.fifo_layer_wr_status_flags_ss
     port map (
      clk => clk,
      comp0 => comp0,
      comp1 => comp1,
      \count_reg[0]\(0) => \count_reg[0]\(0),
      full => full,
      \gcc0.gc0.count_d1_reg[9]\ => \^p_1_out\,
      p_18_out => p_18_out,
      p_4_out => p_4_out,
      ram_full_comb => ram_full_comb,
      rd_en => rd_en,
      rst_full_ff_i => rst_full_ff_i,
      v1_reg_0(4 downto 0) => v1_reg_0(4 downto 0),
      v1_reg_1(4 downto 0) => v1_reg_1(4 downto 0),
      wr_en => wr_en
    );
wpntr: entity work.fifo_layer_wr_bin_cntr
     port map (
      Q(9 downto 0) => Q(9 downto 0),
      RST => RST,
      clk => clk,
      \gc1.count_reg[9]\(9 downto 0) => \gc1.count_reg[9]\(9 downto 0),
      \gcc0.gc0.count_d1_reg[9]_0\(9 downto 0) => \gcc0.gc0.count_d1_reg[9]\(9 downto 0),
      \gpr1.dout_i_reg[0]\ => \gpr1.dout_i_reg[0]\,
      \gpr1.dout_i_reg[0]_0\ => \gpr1.dout_i_reg[0]_0\,
      \gpr1.dout_i_reg[0]_1\ => \gpr1.dout_i_reg[0]_1\,
      \gpr1.dout_i_reg[0]_2\ => \gpr1.dout_i_reg[0]_2\,
      \gpr1.dout_i_reg[0]_3\ => \gpr1.dout_i_reg[0]_3\,
      \gpr1.dout_i_reg[0]_4\ => \gpr1.dout_i_reg[0]_4\,
      \gpr1.dout_i_reg[0]_5\ => \gpr1.dout_i_reg[0]_5\,
      \gpr1.dout_i_reg[0]_6\ => \gpr1.dout_i_reg[0]_6\,
      \gpr1.dout_i_reg[0]_7\ => \gpr1.dout_i_reg[0]_7\,
      \gpr1.dout_i_reg[0]_8\ => \gpr1.dout_i_reg[0]_8\,
      \gpr1.dout_i_reg[31]\ => \gpr1.dout_i_reg[31]\,
      \gpr1.dout_i_reg[31]_0\ => \gpr1.dout_i_reg[31]_0\,
      \gpr1.dout_i_reg[31]_1\ => \gpr1.dout_i_reg[31]_1\,
      \gpr1.dout_i_reg[31]_10\ => \gpr1.dout_i_reg[31]_10\,
      \gpr1.dout_i_reg[31]_2\ => \gpr1.dout_i_reg[31]_2\,
      \gpr1.dout_i_reg[31]_3\ => \gpr1.dout_i_reg[31]_3\,
      \gpr1.dout_i_reg[31]_4\ => \gpr1.dout_i_reg[31]_4\,
      \gpr1.dout_i_reg[31]_5\ => \gpr1.dout_i_reg[31]_5\,
      \gpr1.dout_i_reg[31]_6\ => \gpr1.dout_i_reg[31]_6\,
      \gpr1.dout_i_reg[31]_7\ => \gpr1.dout_i_reg[31]_7\,
      \gpr1.dout_i_reg[31]_8\ => \gpr1.dout_i_reg[31]_8\,
      \gpr1.dout_i_reg[31]_9\ => \gpr1.dout_i_reg[31]_9\,
      p_4_out => p_4_out,
      ram_full_fb_i_reg => \^p_1_out\,
      v1_reg(4 downto 0) => v1_reg(4 downto 0),
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_fifo_generator_ramfifo is
  port (
    data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    full : out STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_fifo_generator_ramfifo : entity is "fifo_generator_ramfifo";
end fifo_layer_fifo_generator_ramfifo;

architecture STRUCTURE of fifo_layer_fifo_generator_ramfifo is
  signal \^rst\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_41\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_42\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_43\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_44\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_45\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_46\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_52\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_53\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_54\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_55\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_56\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_57\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_58\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_59\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_60\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_61\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_62\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_63\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_15\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_16\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_17\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_18\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_19\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_20\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_21\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_22\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_23\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_24\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_25\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_26\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_27\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_28\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_29\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_30\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_4\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_46\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_47\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_48\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_49\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_50\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_51\ : STD_LOGIC;
  signal \grss.rsts/gae.c3/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gwss.wsts/c0/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gwss.wsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gwss.wsts/comp0\ : STD_LOGIC;
  signal \gwss.wsts/comp1\ : STD_LOGIC;
  signal \gwss.wsts/ram_full_comb\ : STD_LOGIC;
  signal p_10_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_18_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_20_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_9_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_4 : STD_LOGIC;
begin
\gntv_or_sync_fifo.gl0.rd\: entity work.fifo_layer_rd_logic
     port map (
      ADDRC(5) => \gntv_or_sync_fifo.gl0.rd_n_52\,
      ADDRC(4) => \gntv_or_sync_fifo.gl0.rd_n_53\,
      ADDRC(3) => \gntv_or_sync_fifo.gl0.rd_n_54\,
      ADDRC(2) => \gntv_or_sync_fifo.gl0.rd_n_55\,
      ADDRC(1) => \gntv_or_sync_fifo.gl0.rd_n_56\,
      ADDRC(0) => \gntv_or_sync_fifo.gl0.rd_n_57\,
      E(0) => ram_rd_en_i,
      Q(0) => clear,
      almost_empty => almost_empty,
      clk => clk,
      comp0 => \gwss.wsts/comp0\,
      comp1 => \gwss.wsts/comp1\,
      \data_count[9]\(9 downto 0) => data_count(9 downto 0),
      empty => empty,
      \gc1.count_d1_reg[9]\(9 downto 0) => rd_pntr_plus2(9 downto 0),
      \gcc0.gc0.count_d1_reg[9]\(9 downto 0) => p_10_out(9 downto 0),
      \gcc0.gc0.count_reg[9]\(9 downto 0) => p_9_out(9 downto 0),
      \gpr1.dout_i_reg[24]\(5) => \gntv_or_sync_fifo.gl0.rd_n_58\,
      \gpr1.dout_i_reg[24]\(4) => \gntv_or_sync_fifo.gl0.rd_n_59\,
      \gpr1.dout_i_reg[24]\(3) => \gntv_or_sync_fifo.gl0.rd_n_60\,
      \gpr1.dout_i_reg[24]\(2) => \gntv_or_sync_fifo.gl0.rd_n_61\,
      \gpr1.dout_i_reg[24]\(1) => \gntv_or_sync_fifo.gl0.rd_n_62\,
      \gpr1.dout_i_reg[24]\(0) => \gntv_or_sync_fifo.gl0.rd_n_63\,
      \gpr1.dout_i_reg[31]\(9 downto 0) => p_20_out(9 downto 0),
      \gpr1.dout_i_reg[31]_0\ => \gntv_or_sync_fifo.gl0.rd_n_41\,
      \gpr1.dout_i_reg[31]_1\ => \gntv_or_sync_fifo.gl0.rd_n_42\,
      \gpr1.dout_i_reg[31]_2\ => \gntv_or_sync_fifo.gl0.rd_n_43\,
      \gpr1.dout_i_reg[31]_3\ => \gntv_or_sync_fifo.gl0.rd_n_44\,
      \gpr1.dout_i_reg[31]_4\ => \gntv_or_sync_fifo.gl0.rd_n_45\,
      \gpr1.dout_i_reg[31]_5\ => \gntv_or_sync_fifo.gl0.rd_n_46\,
      p_18_out => p_18_out,
      p_1_out => p_1_out,
      ram_full_comb => \gwss.wsts/ram_full_comb\,
      ram_full_fb_i_reg(0) => \gntv_or_sync_fifo.gl0.wr_n_20\,
      rd_en => rd_en,
      rst_full_gen_i => rst_full_gen_i,
      v1_reg(4 downto 0) => \gwss.wsts/c0/v1_reg\(4 downto 0),
      v1_reg_0(4 downto 0) => \gwss.wsts/c1/v1_reg\(4 downto 0),
      v1_reg_1(4 downto 0) => \grss.rsts/gae.c3/v1_reg\(4 downto 0),
      valid => valid,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.fifo_layer_wr_logic
     port map (
      Q(9 downto 0) => p_10_out(9 downto 0),
      RST => \^rst\,
      clk => clk,
      comp0 => \gwss.wsts/comp0\,
      comp1 => \gwss.wsts/comp1\,
      \count_reg[0]\(0) => \gntv_or_sync_fifo.gl0.wr_n_20\,
      full => full,
      \gc1.count_reg[9]\(9 downto 0) => rd_pntr_plus2(9 downto 0),
      \gcc0.gc0.count_d1_reg[9]\(9 downto 0) => p_9_out(9 downto 0),
      \gpr1.dout_i_reg[0]\ => \gntv_or_sync_fifo.gl0.wr_n_21\,
      \gpr1.dout_i_reg[0]_0\ => \gntv_or_sync_fifo.gl0.wr_n_22\,
      \gpr1.dout_i_reg[0]_1\ => \gntv_or_sync_fifo.gl0.wr_n_23\,
      \gpr1.dout_i_reg[0]_2\ => \gntv_or_sync_fifo.gl0.wr_n_24\,
      \gpr1.dout_i_reg[0]_3\ => \gntv_or_sync_fifo.gl0.wr_n_25\,
      \gpr1.dout_i_reg[0]_4\ => \gntv_or_sync_fifo.gl0.wr_n_26\,
      \gpr1.dout_i_reg[0]_5\ => \gntv_or_sync_fifo.gl0.wr_n_27\,
      \gpr1.dout_i_reg[0]_6\ => \gntv_or_sync_fifo.gl0.wr_n_28\,
      \gpr1.dout_i_reg[0]_7\ => \gntv_or_sync_fifo.gl0.wr_n_29\,
      \gpr1.dout_i_reg[0]_8\ => \gntv_or_sync_fifo.gl0.wr_n_30\,
      \gpr1.dout_i_reg[31]\ => \gntv_or_sync_fifo.gl0.wr_n_4\,
      \gpr1.dout_i_reg[31]_0\ => \gntv_or_sync_fifo.gl0.wr_n_15\,
      \gpr1.dout_i_reg[31]_1\ => \gntv_or_sync_fifo.gl0.wr_n_16\,
      \gpr1.dout_i_reg[31]_10\ => \gntv_or_sync_fifo.gl0.wr_n_51\,
      \gpr1.dout_i_reg[31]_2\ => \gntv_or_sync_fifo.gl0.wr_n_17\,
      \gpr1.dout_i_reg[31]_3\ => \gntv_or_sync_fifo.gl0.wr_n_18\,
      \gpr1.dout_i_reg[31]_4\ => \gntv_or_sync_fifo.gl0.wr_n_19\,
      \gpr1.dout_i_reg[31]_5\ => \gntv_or_sync_fifo.gl0.wr_n_46\,
      \gpr1.dout_i_reg[31]_6\ => \gntv_or_sync_fifo.gl0.wr_n_47\,
      \gpr1.dout_i_reg[31]_7\ => \gntv_or_sync_fifo.gl0.wr_n_48\,
      \gpr1.dout_i_reg[31]_8\ => \gntv_or_sync_fifo.gl0.wr_n_49\,
      \gpr1.dout_i_reg[31]_9\ => \gntv_or_sync_fifo.gl0.wr_n_50\,
      p_18_out => p_18_out,
      p_1_out => p_1_out,
      ram_full_comb => \gwss.wsts/ram_full_comb\,
      rd_en => rd_en,
      rst_full_ff_i => rst_full_ff_i,
      v1_reg(4 downto 0) => \grss.rsts/gae.c3/v1_reg\(4 downto 0),
      v1_reg_0(4 downto 0) => \gwss.wsts/c0/v1_reg\(4 downto 0),
      v1_reg_1(4 downto 0) => \gwss.wsts/c1/v1_reg\(4 downto 0),
      wr_en => wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.fifo_layer_memory
     port map (
      ADDRC(5) => \gntv_or_sync_fifo.gl0.rd_n_52\,
      ADDRC(4) => \gntv_or_sync_fifo.gl0.rd_n_53\,
      ADDRC(3) => \gntv_or_sync_fifo.gl0.rd_n_54\,
      ADDRC(2) => \gntv_or_sync_fifo.gl0.rd_n_55\,
      ADDRC(1) => \gntv_or_sync_fifo.gl0.rd_n_56\,
      ADDRC(0) => \gntv_or_sync_fifo.gl0.rd_n_57\,
      E(0) => ram_rd_en_i,
      Q(5 downto 0) => p_10_out(5 downto 0),
      clk => clk,
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      \gc1.count_d2_reg[0]_rep__1\ => \gntv_or_sync_fifo.gl0.rd_n_46\,
      \gc1.count_d2_reg[1]_rep__1\ => \gntv_or_sync_fifo.gl0.rd_n_45\,
      \gc1.count_d2_reg[2]_rep__1\ => \gntv_or_sync_fifo.gl0.rd_n_44\,
      \gc1.count_d2_reg[3]_rep__1\ => \gntv_or_sync_fifo.gl0.rd_n_43\,
      \gc1.count_d2_reg[4]_rep__1\ => \gntv_or_sync_fifo.gl0.rd_n_42\,
      \gc1.count_d2_reg[5]_rep__0\(5) => \gntv_or_sync_fifo.gl0.rd_n_58\,
      \gc1.count_d2_reg[5]_rep__0\(4) => \gntv_or_sync_fifo.gl0.rd_n_59\,
      \gc1.count_d2_reg[5]_rep__0\(3) => \gntv_or_sync_fifo.gl0.rd_n_60\,
      \gc1.count_d2_reg[5]_rep__0\(2) => \gntv_or_sync_fifo.gl0.rd_n_61\,
      \gc1.count_d2_reg[5]_rep__0\(1) => \gntv_or_sync_fifo.gl0.rd_n_62\,
      \gc1.count_d2_reg[5]_rep__0\(0) => \gntv_or_sync_fifo.gl0.rd_n_63\,
      \gc1.count_d2_reg[5]_rep__1\ => \gntv_or_sync_fifo.gl0.rd_n_41\,
      \gc1.count_d2_reg[9]\(9 downto 0) => p_20_out(9 downto 0),
      \gcc0.gc0.count_d1_reg[0]_rep\ => \gntv_or_sync_fifo.gl0.wr_n_50\,
      \gcc0.gc0.count_d1_reg[1]_rep\ => \gntv_or_sync_fifo.gl0.wr_n_51\,
      \gcc0.gc0.count_d1_reg[2]_rep\ => \gntv_or_sync_fifo.gl0.wr_n_47\,
      \gcc0.gc0.count_d1_reg[3]_rep\ => \gntv_or_sync_fifo.gl0.wr_n_49\,
      \gcc0.gc0.count_d1_reg[4]_rep\ => \gntv_or_sync_fifo.gl0.wr_n_48\,
      \gcc0.gc0.count_d1_reg[5]_rep\ => \gntv_or_sync_fifo.gl0.wr_n_46\,
      \gcc0.gc0.count_d1_reg[6]\ => \gntv_or_sync_fifo.gl0.wr_n_26\,
      \gcc0.gc0.count_d1_reg[7]\ => \gntv_or_sync_fifo.gl0.wr_n_16\,
      \gcc0.gc0.count_d1_reg[7]_0\ => \gntv_or_sync_fifo.gl0.wr_n_4\,
      \gcc0.gc0.count_d1_reg[7]_1\ => \gntv_or_sync_fifo.gl0.wr_n_15\,
      \gcc0.gc0.count_d1_reg[7]_2\ => \gntv_or_sync_fifo.gl0.wr_n_30\,
      \gcc0.gc0.count_d1_reg[7]_3\ => \gntv_or_sync_fifo.gl0.wr_n_24\,
      \gcc0.gc0.count_d1_reg[7]_4\ => \gntv_or_sync_fifo.gl0.wr_n_19\,
      \gcc0.gc0.count_d1_reg[8]\ => \gntv_or_sync_fifo.gl0.wr_n_17\,
      \gcc0.gc0.count_d1_reg[8]_0\ => \gntv_or_sync_fifo.gl0.wr_n_18\,
      \gcc0.gc0.count_d1_reg[8]_1\ => \gntv_or_sync_fifo.gl0.wr_n_28\,
      \gcc0.gc0.count_d1_reg[8]_2\ => \gntv_or_sync_fifo.gl0.wr_n_29\,
      \gcc0.gc0.count_d1_reg[8]_3\ => \gntv_or_sync_fifo.gl0.wr_n_22\,
      \gcc0.gc0.count_d1_reg[9]\ => \gntv_or_sync_fifo.gl0.wr_n_23\,
      \gcc0.gc0.count_d1_reg[9]_0\ => \gntv_or_sync_fifo.gl0.wr_n_25\,
      \gcc0.gc0.count_d1_reg[9]_1\ => \gntv_or_sync_fifo.gl0.wr_n_27\,
      \gcc0.gc0.count_d1_reg[9]_2\ => \gntv_or_sync_fifo.gl0.wr_n_21\,
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0) => rstblk_n_4
    );
rstblk: entity work.fifo_layer_reset_blk_ramfifo
     port map (
      Q(1) => clear,
      Q(0) => rstblk_n_4,
      RST => \^rst\,
      clk => clk,
      \^rst\ => rst,
      rst_full_ff_i => rst_full_ff_i,
      rst_full_gen_i => rst_full_gen_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_fifo_generator_top is
  port (
    DATA_COUNT : out STD_LOGIC_VECTOR ( 9 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    full : out STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_fifo_generator_top : entity is "fifo_generator_top";
end fifo_layer_fifo_generator_top;

architecture STRUCTURE of fifo_layer_fifo_generator_top is
begin
\grf.rf\: entity work.fifo_layer_fifo_generator_ramfifo
     port map (
      almost_empty => almost_empty,
      clk => clk,
      data_count(9 downto 0) => DATA_COUNT(9 downto 0),
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      valid => valid,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_fifo_generator_v12_0_synth is
  port (
    data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    full : out STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_fifo_generator_v12_0_synth : entity is "fifo_generator_v12_0_synth";
end fifo_layer_fifo_generator_v12_0_synth;

architecture STRUCTURE of fifo_layer_fifo_generator_v12_0_synth is
begin
\gconvfifo.rf\: entity work.fifo_layer_fifo_generator_top
     port map (
      DATA_COUNT(9 downto 0) => data_count(9 downto 0),
      almost_empty => almost_empty,
      clk => clk,
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      valid => valid,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer_fifo_generator_v12_0 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of fifo_layer_fifo_generator_v12_0 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 32;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of fifo_layer_fifo_generator_v12_0 : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of fifo_layer_fifo_generator_v12_0 : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of fifo_layer_fifo_generator_v12_0 : entity is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of fifo_layer_fifo_generator_v12_0 : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of fifo_layer_fifo_generator_v12_0 : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of fifo_layer_fifo_generator_v12_0 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 32;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of fifo_layer_fifo_generator_v12_0 : entity is "virtex7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of fifo_layer_fifo_generator_v12_0 : entity is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of fifo_layer_fifo_generator_v12_0 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of fifo_layer_fifo_generator_v12_0 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of fifo_layer_fifo_generator_v12_0 : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of fifo_layer_fifo_generator_v12_0 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of fifo_layer_fifo_generator_v12_0 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of fifo_layer_fifo_generator_v12_0 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of fifo_layer_fifo_generator_v12_0 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of fifo_layer_fifo_generator_v12_0 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of fifo_layer_fifo_generator_v12_0 : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of fifo_layer_fifo_generator_v12_0 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of fifo_layer_fifo_generator_v12_0 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of fifo_layer_fifo_generator_v12_0 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of fifo_layer_fifo_generator_v12_0 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of fifo_layer_fifo_generator_v12_0 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of fifo_layer_fifo_generator_v12_0 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of fifo_layer_fifo_generator_v12_0 : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of fifo_layer_fifo_generator_v12_0 : entity is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of fifo_layer_fifo_generator_v12_0 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of fifo_layer_fifo_generator_v12_0 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of fifo_layer_fifo_generator_v12_0 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of fifo_layer_fifo_generator_v12_0 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of fifo_layer_fifo_generator_v12_0 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of fifo_layer_fifo_generator_v12_0 : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of fifo_layer_fifo_generator_v12_0 : entity is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of fifo_layer_fifo_generator_v12_0 : entity is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of fifo_layer_fifo_generator_v12_0 : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of fifo_layer_fifo_generator_v12_0 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of fifo_layer_fifo_generator_v12_0 : entity is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of fifo_layer_fifo_generator_v12_0 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of fifo_layer_fifo_generator_v12_0 : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of fifo_layer_fifo_generator_v12_0 : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of fifo_layer_fifo_generator_v12_0 : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of fifo_layer_fifo_generator_v12_0 : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of fifo_layer_fifo_generator_v12_0 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of fifo_layer_fifo_generator_v12_0 : entity is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of fifo_layer_fifo_generator_v12_0 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of fifo_layer_fifo_generator_v12_0 : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of fifo_layer_fifo_generator_v12_0 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of fifo_layer_fifo_generator_v12_0 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of fifo_layer_fifo_generator_v12_0 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of fifo_layer_fifo_generator_v12_0 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of fifo_layer_fifo_generator_v12_0 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_layer_fifo_generator_v12_0 : entity is "fifo_generator_v12_0";
end fifo_layer_fifo_generator_v12_0;

architecture STRUCTURE of fifo_layer_fifo_generator_v12_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.fifo_layer_fifo_generator_v12_0_synth
     port map (
      almost_empty => almost_empty,
      clk => clk,
      data_count(9 downto 0) => data_count(9 downto 0),
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      valid => valid,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_layer is
  port (
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
    data_count : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fifo_layer : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_layer : entity is "fifo_layer,fifo_generator_v12_0,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of fifo_layer : entity is "fifo_layer,fifo_generator_v12_0,{x_ipProduct=Vivado 2015.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=fifo_generator,x_ipVersion=12.0,x_ipCoreRevision=4,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_COMMON_CLOCK=1,C_COUNT_TYPE=0,C_DATA_COUNT_WIDTH=10,C_DEFAULT_VALUE=BlankString,C_DIN_WIDTH=32,C_DOUT_RST_VAL=0,C_DOUT_WIDTH=32,C_ENABLE_RLOCS=0,C_FAMILY=virtex7,C_FULL_FLAGS_RST_VAL=1,C_HAS_ALMOST_EMPTY=1,C_HAS_ALMOST_FULL=0,C_HAS_BACKUP=0,C_HAS_DATA_COUNT=1,C_HAS_INT_CLK=0,C_HAS_MEMINIT_FILE=0,C_HAS_OVERFLOW=0,C_HAS_RD_DATA_COUNT=0,C_HAS_RD_RST=0,C_HAS_RST=1,C_HAS_SRST=0,C_HAS_UNDERFLOW=0,C_HAS_VALID=1,C_HAS_WR_ACK=0,C_HAS_WR_DATA_COUNT=0,C_HAS_WR_RST=0,C_IMPLEMENTATION_TYPE=0,C_INIT_WR_PNTR_VAL=0,C_MEMORY_TYPE=2,C_MIF_FILE_NAME=BlankString,C_OPTIMIZATION_MODE=0,C_OVERFLOW_LOW=0,C_PRELOAD_LATENCY=1,C_PRELOAD_REGS=0,C_PRIM_FIFO_TYPE=1kx36,C_PROG_EMPTY_THRESH_ASSERT_VAL=2,C_PROG_EMPTY_THRESH_NEGATE_VAL=3,C_PROG_EMPTY_TYPE=0,C_PROG_FULL_THRESH_ASSERT_VAL=1022,C_PROG_FULL_THRESH_NEGATE_VAL=1021,C_PROG_FULL_TYPE=0,C_RD_DATA_COUNT_WIDTH=10,C_RD_DEPTH=1024,C_RD_FREQ=1,C_RD_PNTR_WIDTH=10,C_UNDERFLOW_LOW=0,C_USE_DOUT_RST=1,C_USE_ECC=0,C_USE_EMBEDDED_REG=0,C_USE_PIPELINE_REG=0,C_POWER_SAVING_MODE=0,C_USE_FIFO16_FLAGS=0,C_USE_FWFT_DATA_COUNT=0,C_VALID_LOW=0,C_WR_ACK_LOW=0,C_WR_DATA_COUNT_WIDTH=10,C_WR_DEPTH=1024,C_WR_FREQ=1,C_WR_PNTR_WIDTH=10,C_WR_RESPONSE_LATENCY=1,C_MSGON_VAL=1,C_ENABLE_RST_SYNC=1,C_ERROR_INJECTION_TYPE=0,C_SYNCHRONIZER_STAGE=2,C_INTERFACE_TYPE=0,C_AXI_TYPE=1,C_HAS_AXI_WR_CHANNEL=1,C_HAS_AXI_RD_CHANNEL=1,C_HAS_SLAVE_CE=0,C_HAS_MASTER_CE=0,C_ADD_NGC_CONSTRAINT=0,C_USE_COMMON_OVERFLOW=0,C_USE_COMMON_UNDERFLOW=0,C_USE_DEFAULT_SETTINGS=0,C_AXI_ID_WIDTH=1,C_AXI_ADDR_WIDTH=32,C_AXI_DATA_WIDTH=64,C_AXI_LEN_WIDTH=8,C_AXI_LOCK_WIDTH=1,C_HAS_AXI_ID=0,C_HAS_AXI_AWUSER=0,C_HAS_AXI_WUSER=0,C_HAS_AXI_BUSER=0,C_HAS_AXI_ARUSER=0,C_HAS_AXI_RUSER=0,C_AXI_ARUSER_WIDTH=1,C_AXI_AWUSER_WIDTH=1,C_AXI_WUSER_WIDTH=1,C_AXI_BUSER_WIDTH=1,C_AXI_RUSER_WIDTH=1,C_HAS_AXIS_TDATA=1,C_HAS_AXIS_TID=0,C_HAS_AXIS_TDEST=0,C_HAS_AXIS_TUSER=1,C_HAS_AXIS_TREADY=1,C_HAS_AXIS_TLAST=0,C_HAS_AXIS_TSTRB=0,C_HAS_AXIS_TKEEP=0,C_AXIS_TDATA_WIDTH=8,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_AXIS_TUSER_WIDTH=4,C_AXIS_TSTRB_WIDTH=1,C_AXIS_TKEEP_WIDTH=1,C_WACH_TYPE=0,C_WDCH_TYPE=0,C_WRCH_TYPE=0,C_RACH_TYPE=0,C_RDCH_TYPE=0,C_AXIS_TYPE=0,C_IMPLEMENTATION_TYPE_WACH=1,C_IMPLEMENTATION_TYPE_WDCH=1,C_IMPLEMENTATION_TYPE_WRCH=1,C_IMPLEMENTATION_TYPE_RACH=1,C_IMPLEMENTATION_TYPE_RDCH=1,C_IMPLEMENTATION_TYPE_AXIS=1,C_APPLICATION_TYPE_WACH=0,C_APPLICATION_TYPE_WDCH=0,C_APPLICATION_TYPE_WRCH=0,C_APPLICATION_TYPE_RACH=0,C_APPLICATION_TYPE_RDCH=0,C_APPLICATION_TYPE_AXIS=0,C_PRIM_FIFO_TYPE_WACH=512x36,C_PRIM_FIFO_TYPE_WDCH=1kx36,C_PRIM_FIFO_TYPE_WRCH=512x36,C_PRIM_FIFO_TYPE_RACH=512x36,C_PRIM_FIFO_TYPE_RDCH=1kx36,C_PRIM_FIFO_TYPE_AXIS=1kx18,C_USE_ECC_WACH=0,C_USE_ECC_WDCH=0,C_USE_ECC_WRCH=0,C_USE_ECC_RACH=0,C_USE_ECC_RDCH=0,C_USE_ECC_AXIS=0,C_ERROR_INJECTION_TYPE_WACH=0,C_ERROR_INJECTION_TYPE_WDCH=0,C_ERROR_INJECTION_TYPE_WRCH=0,C_ERROR_INJECTION_TYPE_RACH=0,C_ERROR_INJECTION_TYPE_RDCH=0,C_ERROR_INJECTION_TYPE_AXIS=0,C_DIN_WIDTH_WACH=32,C_DIN_WIDTH_WDCH=64,C_DIN_WIDTH_WRCH=2,C_DIN_WIDTH_RACH=32,C_DIN_WIDTH_RDCH=64,C_DIN_WIDTH_AXIS=1,C_WR_DEPTH_WACH=16,C_WR_DEPTH_WDCH=1024,C_WR_DEPTH_WRCH=16,C_WR_DEPTH_RACH=16,C_WR_DEPTH_RDCH=1024,C_WR_DEPTH_AXIS=1024,C_WR_PNTR_WIDTH_WACH=4,C_WR_PNTR_WIDTH_WDCH=10,C_WR_PNTR_WIDTH_WRCH=4,C_WR_PNTR_WIDTH_RACH=4,C_WR_PNTR_WIDTH_RDCH=10,C_WR_PNTR_WIDTH_AXIS=10,C_HAS_DATA_COUNTS_WACH=0,C_HAS_DATA_COUNTS_WDCH=0,C_HAS_DATA_COUNTS_WRCH=0,C_HAS_DATA_COUNTS_RACH=0,C_HAS_DATA_COUNTS_RDCH=0,C_HAS_DATA_COUNTS_AXIS=0,C_HAS_PROG_FLAGS_WACH=0,C_HAS_PROG_FLAGS_WDCH=0,C_HAS_PROG_FLAGS_WRCH=0,C_HAS_PROG_FLAGS_RACH=0,C_HAS_PROG_FLAGS_RDCH=0,C_HAS_PROG_FLAGS_AXIS=0,C_PROG_FULL_TYPE_WACH=0,C_PROG_FULL_TYPE_WDCH=0,C_PROG_FULL_TYPE_WRCH=0,C_PROG_FULL_TYPE_RACH=0,C_PROG_FULL_TYPE_RDCH=0,C_PROG_FULL_TYPE_AXIS=0,C_PROG_FULL_THRESH_ASSERT_VAL_WACH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_WDCH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_WRCH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_RACH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_RDCH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_AXIS=1023,C_PROG_EMPTY_TYPE_WACH=0,C_PROG_EMPTY_TYPE_WDCH=0,C_PROG_EMPTY_TYPE_WRCH=0,C_PROG_EMPTY_TYPE_RACH=0,C_PROG_EMPTY_TYPE_RDCH=0,C_PROG_EMPTY_TYPE_AXIS=0,C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS=1022,C_REG_SLICE_MODE_WACH=0,C_REG_SLICE_MODE_WDCH=0,C_REG_SLICE_MODE_WRCH=0,C_REG_SLICE_MODE_RACH=0,C_REG_SLICE_MODE_RDCH=0,C_REG_SLICE_MODE_AXIS=0}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_layer : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_layer : entity is "fifo_generator_v12_0,Vivado 2015.1";
end fifo_layer;

architecture STRUCTURE of fifo_layer is
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 32;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 32;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "virtex7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 1;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 1;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 1;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
begin
U0: entity work.fifo_layer_fifo_generator_v12_0
     port map (
      almost_empty => almost_empty,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3) => '0',
      axi_ar_prog_empty_thresh(2) => '0',
      axi_ar_prog_empty_thresh(1) => '0',
      axi_ar_prog_empty_thresh(0) => '0',
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3) => '0',
      axi_ar_prog_full_thresh(2) => '0',
      axi_ar_prog_full_thresh(1) => '0',
      axi_ar_prog_full_thresh(0) => '0',
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3) => '0',
      axi_aw_prog_empty_thresh(2) => '0',
      axi_aw_prog_empty_thresh(1) => '0',
      axi_aw_prog_empty_thresh(0) => '0',
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3) => '0',
      axi_aw_prog_full_thresh(2) => '0',
      axi_aw_prog_full_thresh(1) => '0',
      axi_aw_prog_full_thresh(0) => '0',
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3) => '0',
      axi_b_prog_empty_thresh(2) => '0',
      axi_b_prog_empty_thresh(1) => '0',
      axi_b_prog_empty_thresh(0) => '0',
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3) => '0',
      axi_b_prog_full_thresh(2) => '0',
      axi_b_prog_full_thresh(1) => '0',
      axi_b_prog_full_thresh(0) => '0',
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9) => '0',
      axi_r_prog_empty_thresh(8) => '0',
      axi_r_prog_empty_thresh(7) => '0',
      axi_r_prog_empty_thresh(6) => '0',
      axi_r_prog_empty_thresh(5) => '0',
      axi_r_prog_empty_thresh(4) => '0',
      axi_r_prog_empty_thresh(3) => '0',
      axi_r_prog_empty_thresh(2) => '0',
      axi_r_prog_empty_thresh(1) => '0',
      axi_r_prog_empty_thresh(0) => '0',
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9) => '0',
      axi_r_prog_full_thresh(8) => '0',
      axi_r_prog_full_thresh(7) => '0',
      axi_r_prog_full_thresh(6) => '0',
      axi_r_prog_full_thresh(5) => '0',
      axi_r_prog_full_thresh(4) => '0',
      axi_r_prog_full_thresh(3) => '0',
      axi_r_prog_full_thresh(2) => '0',
      axi_r_prog_full_thresh(1) => '0',
      axi_r_prog_full_thresh(0) => '0',
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9) => '0',
      axi_w_prog_empty_thresh(8) => '0',
      axi_w_prog_empty_thresh(7) => '0',
      axi_w_prog_empty_thresh(6) => '0',
      axi_w_prog_empty_thresh(5) => '0',
      axi_w_prog_empty_thresh(4) => '0',
      axi_w_prog_empty_thresh(3) => '0',
      axi_w_prog_empty_thresh(2) => '0',
      axi_w_prog_empty_thresh(1) => '0',
      axi_w_prog_empty_thresh(0) => '0',
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9) => '0',
      axi_w_prog_full_thresh(8) => '0',
      axi_w_prog_full_thresh(7) => '0',
      axi_w_prog_full_thresh(6) => '0',
      axi_w_prog_full_thresh(5) => '0',
      axi_w_prog_full_thresh(4) => '0',
      axi_w_prog_full_thresh(3) => '0',
      axi_w_prog_full_thresh(2) => '0',
      axi_w_prog_full_thresh(1) => '0',
      axi_w_prog_full_thresh(0) => '0',
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9) => '0',
      axis_prog_empty_thresh(8) => '0',
      axis_prog_empty_thresh(7) => '0',
      axis_prog_empty_thresh(6) => '0',
      axis_prog_empty_thresh(5) => '0',
      axis_prog_empty_thresh(4) => '0',
      axis_prog_empty_thresh(3) => '0',
      axis_prog_empty_thresh(2) => '0',
      axis_prog_empty_thresh(1) => '0',
      axis_prog_empty_thresh(0) => '0',
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9) => '0',
      axis_prog_full_thresh(8) => '0',
      axis_prog_full_thresh(7) => '0',
      axis_prog_full_thresh(6) => '0',
      axis_prog_full_thresh(5) => '0',
      axis_prog_full_thresh(4) => '0',
      axis_prog_full_thresh(3) => '0',
      axis_prog_full_thresh(2) => '0',
      axis_prog_full_thresh(1) => '0',
      axis_prog_full_thresh(0) => '0',
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => clk,
      data_count(9 downto 0) => data_count(9 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1) => '0',
      m_axi_bresp(0) => '0',
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63) => '0',
      m_axi_rdata(62) => '0',
      m_axi_rdata(61) => '0',
      m_axi_rdata(60) => '0',
      m_axi_rdata(59) => '0',
      m_axi_rdata(58) => '0',
      m_axi_rdata(57) => '0',
      m_axi_rdata(56) => '0',
      m_axi_rdata(55) => '0',
      m_axi_rdata(54) => '0',
      m_axi_rdata(53) => '0',
      m_axi_rdata(52) => '0',
      m_axi_rdata(51) => '0',
      m_axi_rdata(50) => '0',
      m_axi_rdata(49) => '0',
      m_axi_rdata(48) => '0',
      m_axi_rdata(47) => '0',
      m_axi_rdata(46) => '0',
      m_axi_rdata(45) => '0',
      m_axi_rdata(44) => '0',
      m_axi_rdata(43) => '0',
      m_axi_rdata(42) => '0',
      m_axi_rdata(41) => '0',
      m_axi_rdata(40) => '0',
      m_axi_rdata(39) => '0',
      m_axi_rdata(38) => '0',
      m_axi_rdata(37) => '0',
      m_axi_rdata(36) => '0',
      m_axi_rdata(35) => '0',
      m_axi_rdata(34) => '0',
      m_axi_rdata(33) => '0',
      m_axi_rdata(32) => '0',
      m_axi_rdata(31) => '0',
      m_axi_rdata(30) => '0',
      m_axi_rdata(29) => '0',
      m_axi_rdata(28) => '0',
      m_axi_rdata(27) => '0',
      m_axi_rdata(26) => '0',
      m_axi_rdata(25) => '0',
      m_axi_rdata(24) => '0',
      m_axi_rdata(23) => '0',
      m_axi_rdata(22) => '0',
      m_axi_rdata(21) => '0',
      m_axi_rdata(20) => '0',
      m_axi_rdata(19) => '0',
      m_axi_rdata(18) => '0',
      m_axi_rdata(17) => '0',
      m_axi_rdata(16) => '0',
      m_axi_rdata(15) => '0',
      m_axi_rdata(14) => '0',
      m_axi_rdata(13) => '0',
      m_axi_rdata(12) => '0',
      m_axi_rdata(11) => '0',
      m_axi_rdata(10) => '0',
      m_axi_rdata(9) => '0',
      m_axi_rdata(8) => '0',
      m_axi_rdata(7) => '0',
      m_axi_rdata(6) => '0',
      m_axi_rdata(5) => '0',
      m_axi_rdata(4) => '0',
      m_axi_rdata(3) => '0',
      m_axi_rdata(2) => '0',
      m_axi_rdata(1) => '0',
      m_axi_rdata(0) => '0',
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1) => '0',
      m_axi_rresp(0) => '0',
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(9) => '0',
      prog_empty_thresh(8) => '0',
      prog_empty_thresh(7) => '0',
      prog_empty_thresh(6) => '0',
      prog_empty_thresh(5) => '0',
      prog_empty_thresh(4) => '0',
      prog_empty_thresh(3) => '0',
      prog_empty_thresh(2) => '0',
      prog_empty_thresh(1) => '0',
      prog_empty_thresh(0) => '0',
      prog_empty_thresh_assert(9) => '0',
      prog_empty_thresh_assert(8) => '0',
      prog_empty_thresh_assert(7) => '0',
      prog_empty_thresh_assert(6) => '0',
      prog_empty_thresh_assert(5) => '0',
      prog_empty_thresh_assert(4) => '0',
      prog_empty_thresh_assert(3) => '0',
      prog_empty_thresh_assert(2) => '0',
      prog_empty_thresh_assert(1) => '0',
      prog_empty_thresh_assert(0) => '0',
      prog_empty_thresh_negate(9) => '0',
      prog_empty_thresh_negate(8) => '0',
      prog_empty_thresh_negate(7) => '0',
      prog_empty_thresh_negate(6) => '0',
      prog_empty_thresh_negate(5) => '0',
      prog_empty_thresh_negate(4) => '0',
      prog_empty_thresh_negate(3) => '0',
      prog_empty_thresh_negate(2) => '0',
      prog_empty_thresh_negate(1) => '0',
      prog_empty_thresh_negate(0) => '0',
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(9) => '0',
      prog_full_thresh(8) => '0',
      prog_full_thresh(7) => '0',
      prog_full_thresh(6) => '0',
      prog_full_thresh(5) => '0',
      prog_full_thresh(4) => '0',
      prog_full_thresh(3) => '0',
      prog_full_thresh(2) => '0',
      prog_full_thresh(1) => '0',
      prog_full_thresh(0) => '0',
      prog_full_thresh_assert(9) => '0',
      prog_full_thresh_assert(8) => '0',
      prog_full_thresh_assert(7) => '0',
      prog_full_thresh_assert(6) => '0',
      prog_full_thresh_assert(5) => '0',
      prog_full_thresh_assert(4) => '0',
      prog_full_thresh_assert(3) => '0',
      prog_full_thresh_assert(2) => '0',
      prog_full_thresh_assert(1) => '0',
      prog_full_thresh_assert(0) => '0',
      prog_full_thresh_negate(9) => '0',
      prog_full_thresh_negate(8) => '0',
      prog_full_thresh_negate(7) => '0',
      prog_full_thresh_negate(6) => '0',
      prog_full_thresh_negate(5) => '0',
      prog_full_thresh_negate(4) => '0',
      prog_full_thresh_negate(3) => '0',
      prog_full_thresh_negate(2) => '0',
      prog_full_thresh_negate(1) => '0',
      prog_full_thresh_negate(0) => '0',
      rd_clk => '0',
      rd_data_count(9 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(9 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => rst,
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31) => '0',
      s_axi_araddr(30) => '0',
      s_axi_araddr(29) => '0',
      s_axi_araddr(28) => '0',
      s_axi_araddr(27) => '0',
      s_axi_araddr(26) => '0',
      s_axi_araddr(25) => '0',
      s_axi_araddr(24) => '0',
      s_axi_araddr(23) => '0',
      s_axi_araddr(22) => '0',
      s_axi_araddr(21) => '0',
      s_axi_araddr(20) => '0',
      s_axi_araddr(19) => '0',
      s_axi_araddr(18) => '0',
      s_axi_araddr(17) => '0',
      s_axi_araddr(16) => '0',
      s_axi_araddr(15) => '0',
      s_axi_araddr(14) => '0',
      s_axi_araddr(13) => '0',
      s_axi_araddr(12) => '0',
      s_axi_araddr(11) => '0',
      s_axi_araddr(10) => '0',
      s_axi_araddr(9) => '0',
      s_axi_araddr(8) => '0',
      s_axi_araddr(7) => '0',
      s_axi_araddr(6) => '0',
      s_axi_araddr(5) => '0',
      s_axi_araddr(4) => '0',
      s_axi_araddr(3) => '0',
      s_axi_araddr(2) => '0',
      s_axi_araddr(1) => '0',
      s_axi_araddr(0) => '0',
      s_axi_arburst(1) => '0',
      s_axi_arburst(0) => '0',
      s_axi_arcache(3) => '0',
      s_axi_arcache(2) => '0',
      s_axi_arcache(1) => '0',
      s_axi_arcache(0) => '0',
      s_axi_arid(0) => '0',
      s_axi_arlen(7) => '0',
      s_axi_arlen(6) => '0',
      s_axi_arlen(5) => '0',
      s_axi_arlen(4) => '0',
      s_axi_arlen(3) => '0',
      s_axi_arlen(2) => '0',
      s_axi_arlen(1) => '0',
      s_axi_arlen(0) => '0',
      s_axi_arlock(0) => '0',
      s_axi_arprot(2) => '0',
      s_axi_arprot(1) => '0',
      s_axi_arprot(0) => '0',
      s_axi_arqos(3) => '0',
      s_axi_arqos(2) => '0',
      s_axi_arqos(1) => '0',
      s_axi_arqos(0) => '0',
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3) => '0',
      s_axi_arregion(2) => '0',
      s_axi_arregion(1) => '0',
      s_axi_arregion(0) => '0',
      s_axi_arsize(2) => '0',
      s_axi_arsize(1) => '0',
      s_axi_arsize(0) => '0',
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31) => '0',
      s_axi_awaddr(30) => '0',
      s_axi_awaddr(29) => '0',
      s_axi_awaddr(28) => '0',
      s_axi_awaddr(27) => '0',
      s_axi_awaddr(26) => '0',
      s_axi_awaddr(25) => '0',
      s_axi_awaddr(24) => '0',
      s_axi_awaddr(23) => '0',
      s_axi_awaddr(22) => '0',
      s_axi_awaddr(21) => '0',
      s_axi_awaddr(20) => '0',
      s_axi_awaddr(19) => '0',
      s_axi_awaddr(18) => '0',
      s_axi_awaddr(17) => '0',
      s_axi_awaddr(16) => '0',
      s_axi_awaddr(15) => '0',
      s_axi_awaddr(14) => '0',
      s_axi_awaddr(13) => '0',
      s_axi_awaddr(12) => '0',
      s_axi_awaddr(11) => '0',
      s_axi_awaddr(10) => '0',
      s_axi_awaddr(9) => '0',
      s_axi_awaddr(8) => '0',
      s_axi_awaddr(7) => '0',
      s_axi_awaddr(6) => '0',
      s_axi_awaddr(5) => '0',
      s_axi_awaddr(4) => '0',
      s_axi_awaddr(3) => '0',
      s_axi_awaddr(2) => '0',
      s_axi_awaddr(1) => '0',
      s_axi_awaddr(0) => '0',
      s_axi_awburst(1) => '0',
      s_axi_awburst(0) => '0',
      s_axi_awcache(3) => '0',
      s_axi_awcache(2) => '0',
      s_axi_awcache(1) => '0',
      s_axi_awcache(0) => '0',
      s_axi_awid(0) => '0',
      s_axi_awlen(7) => '0',
      s_axi_awlen(6) => '0',
      s_axi_awlen(5) => '0',
      s_axi_awlen(4) => '0',
      s_axi_awlen(3) => '0',
      s_axi_awlen(2) => '0',
      s_axi_awlen(1) => '0',
      s_axi_awlen(0) => '0',
      s_axi_awlock(0) => '0',
      s_axi_awprot(2) => '0',
      s_axi_awprot(1) => '0',
      s_axi_awprot(0) => '0',
      s_axi_awqos(3) => '0',
      s_axi_awqos(2) => '0',
      s_axi_awqos(1) => '0',
      s_axi_awqos(0) => '0',
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3) => '0',
      s_axi_awregion(2) => '0',
      s_axi_awregion(1) => '0',
      s_axi_awregion(0) => '0',
      s_axi_awsize(2) => '0',
      s_axi_awsize(1) => '0',
      s_axi_awsize(0) => '0',
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63) => '0',
      s_axi_wdata(62) => '0',
      s_axi_wdata(61) => '0',
      s_axi_wdata(60) => '0',
      s_axi_wdata(59) => '0',
      s_axi_wdata(58) => '0',
      s_axi_wdata(57) => '0',
      s_axi_wdata(56) => '0',
      s_axi_wdata(55) => '0',
      s_axi_wdata(54) => '0',
      s_axi_wdata(53) => '0',
      s_axi_wdata(52) => '0',
      s_axi_wdata(51) => '0',
      s_axi_wdata(50) => '0',
      s_axi_wdata(49) => '0',
      s_axi_wdata(48) => '0',
      s_axi_wdata(47) => '0',
      s_axi_wdata(46) => '0',
      s_axi_wdata(45) => '0',
      s_axi_wdata(44) => '0',
      s_axi_wdata(43) => '0',
      s_axi_wdata(42) => '0',
      s_axi_wdata(41) => '0',
      s_axi_wdata(40) => '0',
      s_axi_wdata(39) => '0',
      s_axi_wdata(38) => '0',
      s_axi_wdata(37) => '0',
      s_axi_wdata(36) => '0',
      s_axi_wdata(35) => '0',
      s_axi_wdata(34) => '0',
      s_axi_wdata(33) => '0',
      s_axi_wdata(32) => '0',
      s_axi_wdata(31) => '0',
      s_axi_wdata(30) => '0',
      s_axi_wdata(29) => '0',
      s_axi_wdata(28) => '0',
      s_axi_wdata(27) => '0',
      s_axi_wdata(26) => '0',
      s_axi_wdata(25) => '0',
      s_axi_wdata(24) => '0',
      s_axi_wdata(23) => '0',
      s_axi_wdata(22) => '0',
      s_axi_wdata(21) => '0',
      s_axi_wdata(20) => '0',
      s_axi_wdata(19) => '0',
      s_axi_wdata(18) => '0',
      s_axi_wdata(17) => '0',
      s_axi_wdata(16) => '0',
      s_axi_wdata(15) => '0',
      s_axi_wdata(14) => '0',
      s_axi_wdata(13) => '0',
      s_axi_wdata(12) => '0',
      s_axi_wdata(11) => '0',
      s_axi_wdata(10) => '0',
      s_axi_wdata(9) => '0',
      s_axi_wdata(8) => '0',
      s_axi_wdata(7) => '0',
      s_axi_wdata(6) => '0',
      s_axi_wdata(5) => '0',
      s_axi_wdata(4) => '0',
      s_axi_wdata(3) => '0',
      s_axi_wdata(2) => '0',
      s_axi_wdata(1) => '0',
      s_axi_wdata(0) => '0',
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7) => '0',
      s_axi_wstrb(6) => '0',
      s_axi_wstrb(5) => '0',
      s_axi_wstrb(4) => '0',
      s_axi_wstrb(3) => '0',
      s_axi_wstrb(2) => '0',
      s_axi_wstrb(1) => '0',
      s_axi_wstrb(0) => '0',
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7) => '0',
      s_axis_tdata(6) => '0',
      s_axis_tdata(5) => '0',
      s_axis_tdata(4) => '0',
      s_axis_tdata(3) => '0',
      s_axis_tdata(2) => '0',
      s_axis_tdata(1) => '0',
      s_axis_tdata(0) => '0',
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3) => '0',
      s_axis_tuser(2) => '0',
      s_axis_tuser(1) => '0',
      s_axis_tuser(0) => '0',
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => valid,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(9 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(9 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
