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
  CIC_R_rx: in CIC_ar;
  CIC_L_rx: in CIC_ar;
  module_rx: in module_ar;
  en_lx: in std_logic_vector(1 to 10);
  serial_layer_to_PRBF1_1: out serial_layer_ar_out;
  serial_layer_to_PRBF1_2: out serial_layer_ar_out
  );
end serialize_for_PRBF1;

architecture Behavioral of serialize_for_PRBF1 is




component GEN_serial_layers is
  Port (
  clk: in std_logic;
  en_lx: in std_logic_vector(1 to 10); 
--  en_lx: in std_logic_vector(1 to 40); 
    CIC_rl_rx: in CIC_ar;
  module_rx: in module_ar;
  serial_layer_out: out serial_layer_ar_out  
   );
end component;


--signal en_lx_i: std_logic_vector(1 to 40); 


begin

   


   

   I_gen_serial_layer_r: GEN_serial_layers 
     Port map (
     clk=> clk,
     en_lx=> en_lx,
     CIC_rl_rx=> CIC_R_rx,
     module_rx=> module_rx,
     serial_layer_out=> serial_layer_to_PRBF1_1
      );
      
         I_gen_serial_layers_l: GEN_serial_layers
        Port map (
        clk=> clk,
        en_lx=> en_lx,
        CIC_rl_rx=> CIC_L_rx,
        module_rx=> module_rx,
        serial_layer_out=> serial_layer_to_PRBF1_2
         );
      


end Behavioral;
