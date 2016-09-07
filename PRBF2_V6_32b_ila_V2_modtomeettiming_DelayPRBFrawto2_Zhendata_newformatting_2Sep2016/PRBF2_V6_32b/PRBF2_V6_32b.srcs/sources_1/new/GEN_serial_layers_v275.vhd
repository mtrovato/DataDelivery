----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/09/2015 07:41:00 PM
-- Design Name: 
-- Module Name: GEN_serial_layers - Behavioral
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

entity GEN_serial_layers_v275 is
  Port (
  clk: in std_logic;
  en_lx: in std_logic_vector(1 to 10);
  
  CIC_rl_rx: in CIC_ar;
  module_rx: in module_ar;
  serial_layer_out: out serial_layer_ar_out  
   );
end GEN_serial_layers_v275;

architecture Behavioral of GEN_serial_layers_v275 is

signal serial_layer_i: serial_layer_ar:=(others=>(others=>'0'));

component PISO_MPA_Lx is

  Port (
  
  clk: in std_logic;
  en: in std_logic;
  signal_in: in std_logic_vector(255 downto 0);
  layer_in: in std_logic_vector(3 downto 0);
  serial_lx_out: out std_logic_vector(27 downto 0)
   );
end component;

type layer_ar is array (1 to 40) of std_logic_vector(3 downto 0);
signal layer_i: layer_ar;


begin

GEN_layer_i:for i in 1 to 40 generate
GEN_l5: if i>0 and i<4 generate
layer_i(i)<=x"5";
end generate GEN_l5;

GEN_l6: if i>3 and i<10 generate
layer_i(i)<=x"6";
end generate GEN_l6;

GEN_l7: if i>9 and i<16 generate
layer_i(i)<=x"7";
end generate GEN_l7;

GEN_l8: if i>15 and i<22 generate
layer_i(i)<=x"8";
end generate GEN_l8;

GEN_l9: if i>21 and i<30 generate
layer_i(i)<=x"9";
end generate GEN_l9;

GEN_l10: if i>29 and i<41 generate
layer_i(i)<=x"a";
end generate GEN_l10;
end generate GEN_layer_i;

GEN_PISO_MPA: for i in 1 to 40 generate
GEN1: if i>0 and i<5 generate
I_PISO_MPA: PISO_MPA_Lx    
     Port map(
     clk=> clk,
     en=>en_lx(i),
     signal_in=> CIC_RL_rx(i),
     layer_in=> layer_i(i),
     serial_lx_out=> serial_layer_i(i)
      );
end generate GEN1;

GEN2: if i>4 and i<9 generate
I_PISO_MPA: PISO_MPA_Lx    
     Port map(
     clk=> clk,
     en=>en_lx(i-4),
     signal_in=> CIC_RL_rx(i),
     layer_in=> layer_i(i),
     serial_lx_out=> serial_layer_i(i)
      );
end generate GEN2;

GEN3: if i>8 and i<13 generate
I_PISO_MPA: PISO_MPA_Lx    
     Port map(
     clk=> clk,
     en=>en_lx(i-8),
     signal_in=> CIC_RL_rx(i),
     layer_in=> layer_i(i),
     serial_lx_out=> serial_layer_i(i)
      );
end generate GEN3;

GEN4: if i>12 and i<17 generate
I_PISO_MPA: PISO_MPA_Lx    
     Port map(
     clk=> clk,
     en=>en_lx(i-12),
     signal_in=> CIC_RL_rx(i),
     layer_in=> layer_i(i),
     serial_lx_out=> serial_layer_i(i)
      );
end generate GEN4;

GEN5: if i>16 and i<21 generate
I_PISO_MPA: PISO_MPA_Lx    
     Port map(
     clk=> clk,
     en=>en_lx(i-16),
     signal_in=> CIC_RL_rx(i),
     layer_in=> layer_i(i),
     serial_lx_out=> serial_layer_i(i)
      );
end generate GEN5;

GEN6: if i>20 and i<25 generate
I_PISO_MPA: PISO_MPA_Lx    
     Port map(
     clk=> clk,
     en=>en_lx(i-20),
     signal_in=> CIC_RL_rx(i),
     layer_in=> layer_i(i),
     serial_lx_out=> serial_layer_i(i)
      );
end generate GEN6;

GEN7: if i>24 and i<29 generate
I_PISO_MPA: PISO_MPA_Lx    
     Port map(
     clk=> clk,
     en=>en_lx(i-24),
     signal_in=> CIC_RL_rx(i),
     layer_in=> layer_i(i),
     serial_lx_out=> serial_layer_i(i)
      );
end generate GEN7;

GEN8: if i>28 and i<33 generate
I_PISO_MPA: PISO_MPA_Lx    
     Port map(
     clk=> clk,
     en=>en_lx(i-28),
     signal_in=> CIC_RL_rx(i),
     layer_in=> layer_i(i),
     serial_lx_out=> serial_layer_i(i)
      );
end generate GEN8;

GEN9: if i>32 and i<37 generate
I_PISO_MPA: PISO_MPA_Lx    
     Port map(
     clk=> clk,
     en=>en_lx(i-32),
     signal_in=> CIC_RL_rx(i),
     layer_in=> layer_i(i),
     serial_lx_out=> serial_layer_i(i)
      );
end generate GEN9;

GEN10: if i>36 and i<41 generate
I_PISO_MPA: PISO_MPA_Lx    
     Port map(
     clk=> clk,
     en=>en_lx(i-36),
     signal_in=> CIC_RL_rx(i),
     layer_in=> layer_i(i),
     serial_lx_out=> serial_layer_i(i)
      );
end generate GEN10;

end generate GEN_PISO_MPA;

process(clk)
begin
if clk'event and clk='1' then
serial_layer_out(1)<=serial_layer_i(1) or serial_layer_i(2) or serial_layer_i(3) or serial_layer_i(4) ; 
serial_layer_out(2)<=serial_layer_i(5) or serial_layer_i(6) or serial_layer_i(7) or serial_layer_i(8) ;
serial_layer_out(3)<=serial_layer_i(9) or serial_layer_i(10) or serial_layer_i(11) or serial_layer_i(12) ;
serial_layer_out(4)<=serial_layer_i(13) or serial_layer_i(14) or serial_layer_i(15) or serial_layer_i(16) ;
serial_layer_out(5)<=serial_layer_i(17) or serial_layer_i(18) or serial_layer_i(19) or serial_layer_i(20) ;
serial_layer_out(6)<=serial_layer_i(21) or serial_layer_i(22) or serial_layer_i(23) or serial_layer_i(24) ;
serial_layer_out(7)<=serial_layer_i(25) or serial_layer_i(26) or serial_layer_i(27) or serial_layer_i(28);
serial_layer_out(8)<=serial_layer_i(29) or serial_layer_i(30) or serial_layer_i(31) or serial_layer_i(32) ;
serial_layer_out(9)<=serial_layer_i(33) or serial_layer_i(34) or serial_layer_i(35) or serial_layer_i(36) ;
serial_layer_out(10)<=serial_layer_i(37) or serial_layer_i(38) or serial_layer_i(39) or serial_layer_i(40) ;
end if;
end process;

end Behavioral;
