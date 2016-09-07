----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2016 11:22:11 AM
-- Design Name: 
-- Module Name: serialize_for_PRBF1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:

--serial_layer_to_PRBF1_1, serial_layer_to_PRBF1_2 outputs are 8x35b
--each i=1,...8 bundles 5 modules
--serial_layer_to_PRBF1_2 refers to CIC_L, serial_layer_to_PRBF1_1 CIC_R
--serial_layer_to_PRBF1_2(i) (i=1,..8) = modid(9) & PHI(11) & isR(1) & z(4) & bend(4) & LAYER(3) & BX(3)
--if no more stub presents PHI,z,bend,bx=0; modid, LAYER !=0 as they depend on
--the geometry
--continuare

-- 
----------------------------------------------------------------------------------




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

use IEEE.std_logic_signed.all;

use IEEE.NUMERIC_STD.ALL;

library work;
use work.my_package.all;

entity serialize_for_PRBF1 is
  Port ( 
  clk: in std_logic;
  reset: in std_logic;  
  CIC_R_rx: in CIC_ar;
  CIC_L_rx: in CIC_ar;
  module_rx: in module_ar;
  en_lx: in std_logic_vector(1 to 10);
  serial_layer_to_PRBF1_1: out serial_layer_ar_out;
  serial_layer_to_PRBF1_2: out serial_layer_ar_out;

--debug
  z4b_i_out_1: out vec4_times40mod_ar;
  type1b_out_1: out std_logic_vector(1 to 40);
  count_i_out1: out vec4_times40mod_ar;
  modid_in_out1: out vec8_times40mod_ar;
  serial_layer_i_out1: out serial_layer_ar;
  en_out1: out std_logic_vector(1 to 40);  
  z4b_i_out_2: out vec4_times40mod_ar;
  type1b_out_2: out std_logic_vector(1 to 40);
  count_i_out2: out vec4_times40mod_ar;
  modid_in_out2: out vec8_times40mod_ar;
  serial_layer_i_out2: out serial_layer_ar;
  en_out2: out std_logic_vector(1 to 40)  
  
  );
end serialize_for_PRBF1;

architecture Behavioral of serialize_for_PRBF1 is




component GEN_serial_layers is
  Port (
  clk: in std_logic;
  reset: in std_logic;
  en_lx: in std_logic_vector(1 to 10); 
--  en_lx: in std_logic_vector(1 to 40); 
    CIC_rl_rx: in CIC_ar;
    isR: in std_logic;                  --MT official format
    modid: in modid_ar;                 --MT official format
  module_rx: in module_ar;
  serial_layer_out: out serial_layer_ar_out  ;

--debug
  z4b_i_out: out vec4_times40mod_ar;
  type1b_out: out std_logic_vector(1 to 40);
  count_i_out: out vec4_times40mod_ar;
  modid_in_out: out vec8_times40mod_ar;
  serial_layer_i_out: out serial_layer_ar;
  en_out: out std_logic_vector(1 to 40)  
   
   );
end component;


--signal en_lx_i: std_logic_vector(1 to 40); 

signal modidL_i, modidR_i: modid_ar;                 --MT official format

begin



  
   
--MT official format (values derived from emulator retrievemoduleladder)
modidL_i(1) <="111010001"; --lay5  
modidL_i(2) <="111100001";         
modidL_i(3) <="111110001";         
modidL_i(4) <="000110001"; --lay6  
modidL_i(5) <="001000001";         
modidL_i(6) <="001010001";         
modidL_i(7) <="000110010";         
modidL_i(8) <="001000010";         
modidL_i(9) <="001010010";         
modidL_i(10)<="110000010"; --lay7  
modidL_i(11)<="110010010";         
modidL_i(12)<="110100010";         
modidL_i(13)<="110000011";         
modidL_i(14)<="110010011";         
modidL_i(15)<="110100011";         
modidL_i(16)<="000110010"; --lay8  
modidL_i(17)<="001000010";         
modidL_i(18)<="000110011";         
modidL_i(19)<="001000011";         
modidL_i(20)<="000110100";         
modidL_i(21)<="001000100";
modidL_i(22)<="000110011"; --lay9  
modidL_i(23)<="001000011";         
modidL_i(24)<="000110100";         
modidL_i(25)<="001000100";         
modidL_i(26)<="000110101";         
modidL_i(27)<="001000101";         
modidL_i(28)<="000110110";         
modidL_i(29)<="001000110";         
modidL_i(30)<="001000100";  --lay10
modidL_i(31)<="001010100";
modidL_i(32)<="001000101";
modidL_i(33)<="001010101";
modidL_i(34)<="001000110";
modidL_i(35)<="001010110";
modidL_i(36)<="001000111";
modidL_i(37)<="001010111";
modidL_i(38)<="001001000";
modidL_i(39)<="001011000";
modidL_i(40)<="001001001";
modidR_i(1) <="111010001";              --lay5
modidR_i(2) <="111100001";
modidR_i(3) <="111110001";
modidR_i(4) <="000110001";              --lay6
modidR_i(5) <="001000001";
modidR_i(6) <="001010001";
modidR_i(7) <="000110010";
modidR_i(8) <="001000010";
modidR_i(9) <="001010010";
modidR_i(10)<="110000010";              --lay7
modidR_i(11)<="110010010";
modidR_i(12)<="110100010";
modidR_i(13)<="110000011";
modidR_i(14)<="110010011";
modidR_i(15)<="110100011";
modidR_i(16)<="000110010";              --lay8
modidR_i(17)<="001000010";
modidR_i(18)<="000110011";
modidR_i(19)<="001000011";
modidR_i(20)<="000110100";
modidR_i(21)<="001000100";
modidR_i(22)<="000110011";              --lay9
modidR_i(23)<="001000011";
modidR_i(24)<="000110100";
modidR_i(25)<="001000100";
modidR_i(26)<="000110101";
modidR_i(27)<="001000101";
modidR_i(28)<="000110110";
modidR_i(29)<="001000110";
modidR_i(30)<="001000100";               --lay10
modidR_i(31)<="001010100";
modidR_i(32)<="001000101";
modidR_i(33)<="001010101";
modidR_i(34)<="001000110";
modidR_i(35)<="001010110";
modidR_i(36)<="001000111";
modidR_i(37)<="001010111";
modidR_i(38)<="001001000";
modidR_i(39)<="001011000";
modidR_i(40)<="001001001";

  
  
      
I_gen_serial_layers_l: GEN_serial_layers
  Port map (
    clk=> clk,
    reset => reset,
    en_lx=> en_lx,
    CIC_rl_rx=> CIC_L_rx,
    isR => '0',                     --MT official format
    modid => modidL_i,                        --MT official format             
    module_rx=> module_rx,
    serial_layer_out=> serial_layer_to_PRBF1_2,

--debug
z4b_i_out => z4b_i_out_2,
type1b_out => type1b_out_2,
count_i_out => count_i_out2,
modid_in_out => modid_in_out1,
serial_layer_i_out => serial_layer_i_out1,
en_out=>en_out1
    
    
  );
      

I_gen_serial_layer_r: GEN_serial_layers 
Port map (
  clk=> clk,
  reset => reset,  
  en_lx=> en_lx,  
  CIC_rl_rx=> CIC_R_rx,
  isR => '1',                        --MT official format
  modid => modidR_i,                        --MT official format     
  module_rx=> module_rx,
  serial_layer_out=> serial_layer_to_PRBF1_1,

--debug
z4b_i_out => z4b_i_out_1,
type1b_out => type1b_out_1,
count_i_out => count_i_out1,
modid_in_out => modid_in_out2,
serial_layer_i_out => serial_layer_i_out2,
en_out=>en_out2  
  
  );


end Behavioral;
