----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/27/2015 01:48:52 PM
-- Design Name: 
-- Module Name: From_PRBFraw_to_PRBF2 - Behavioral
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

entity From_PRBFraw_to_PRBF1 is
  Port ( 
  clk: in std_logic;
  wr_en: in std_logic;
  rd_en: in std_logic;
  serial_layer_to_PRBF1_1: in serial_layer_ar_out;
  serial_layer_to_PRBF1_2: in serial_layer_ar_out;
  PRBFraw_to_PRBF1_out_1: out PRBFraw_to_PRBF1_ar;
  PRBFraw_to_PRBF1_out_2: out PRBFraw_to_PRBF1_ar;
   PRBF1_valid_out_1: out std_logic_vector(1 to 8);
    PRBF1_valid_out_2: out std_logic_vector(1 to 8));
end From_PRBFraw_to_PRBF1;

architecture Behavioral of From_PRBFraw_to_PRBF1 is

component sort_by_BX is
  Port (
  clk: in std_logic;
  serial_layer_in: in serial_layer_ar_out;
  rd_en: in std_logic;
  wr_en: in std_logic;
  AB: in std_logic_vector(3 downto 0);
  B: in integer;
  PRBFraw_to_PRBF1_out: out std_logic_vector(31 downto 0);
   PRBF1_valid_out: out std_logic
   );
end component;

signal serial_layer_to_PRBF1_1_i, serial_layer_to_PRBF1_2_i:serial_layer_ar_out;

signal PRBFraw_to_PRBF1_out_1_i, PRBFraw_to_PRBF1_out_2_i: PRBFraw_to_PRBF1_ar;
signal PRBF1_valid_out_1_i, PRBF1_valid_out_2_i: std_logic_vector(1 to 8);


begin

process(clk)
begin
if clk'event and clk='1' then
serial_layer_to_PRBF1_1_i<=serial_layer_to_PRBF1_1;
serial_layer_to_PRBF1_2_i<=serial_layer_to_PRBF1_2;
end if;
end process;

GEN_sort_bx: for i in 1 to 8 generate
I_gen_sort_BX_1: sort_by_BX 
port map(
 clk=> clk,
serial_layer_in=> serial_layer_to_PRBF1_1_i,
wr_en=> wr_en,
rd_en=> rd_en,
AB=> x"A",
B=> i-1,
PRBFraw_to_PRBF1_out=>PRBFraw_to_PRBF1_out_1_i(i),
PRBF1_valid_out=>PRBF1_valid_out_1_i(i)
);

I_gen_sort_BX_2: sort_by_BX 
port map(
 clk=> clk,
serial_layer_in=> serial_layer_to_PRBF1_2_i,
wr_en=> wr_en,
rd_en=> rd_en,
AB=> x"A",
B=> i-1,
PRBFraw_to_PRBF1_out=>PRBFraw_to_PRBF1_out_2_i(i),
PRBF1_valid_out=>PRBF1_valid_out_2_i(i)
);
end generate GEN_sort_bx;

process(clk)
begin
if clk'event and clk='1' then
PRBFraw_to_PRBF1_out_1<=PRBFraw_to_PRBF1_out_1_i;
PRBFraw_to_PRBF1_out_2<=PRBFraw_to_PRBF1_out_2_i;
PRBF1_valid_out_1<=PRBF1_valid_out_1_i;
PRBF1_valid_out_2<=PRBF1_valid_out_2_i;
end if;
end process;

end Behavioral;
