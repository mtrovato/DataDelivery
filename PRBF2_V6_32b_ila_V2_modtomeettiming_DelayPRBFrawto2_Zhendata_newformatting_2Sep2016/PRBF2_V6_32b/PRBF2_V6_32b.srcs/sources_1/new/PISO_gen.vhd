----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/07/2015 10:17:38 PM
-- Design Name: 
-- Module Name: PISO_gen - Behavioral
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


entity PISO_gen is
  Port (
  clk: in std_logic;
  en: in std_logic;
--  module: in std_logic_vector(23 downto 0);
  CIC_R: in std_logic_vector(255 downto 0);
  CIC_L: in std_logic_vector(255 downto 0);
  serial_out: out std_logic_vector(31 downto 0);
  tx_valid: out std_logic
   );
end PISO_gen;

architecture Behavioral of PISO_gen is

--signal data_gen: std_logic_vector (543 downto 0);
signal data_gen: std_logic_vector (511 downto 0);  

type state_machine is (s0,s1);
signal sm: state_machine:=s0;

signal en_d: std_logic;

begin


--data_gen(543 downto 512)<=x"00" & module;
--MT L<->R as per Zhen's scheme
--data_gen(511 downto 256)<= CIC_R;
--data_gen(255 downto 0)<= CIC_L;
data_gen(511 downto 256)<= CIC_L;
data_gen(255 downto 0)<= CIC_R;

--MT fix timing
process(clk)
begin
if clk'event and clk='1' then
en_d <= en;
end if;
end process;

--process(clk, en, data_gen)
process(clk)

--variable data_gen_i: std_logic_vector(543 downto 0);
variable data_gen_i: std_logic_vector(511 downto 0);  
variable count_i: std_logic_vector(7 downto 0);

begin

if clk'event and clk='1' then

case sm is

when s0=>
--if en='1' then                          --MT
if en_d='1' then  
serial_out<=x"FFFFFFFF";
data_gen_i:=data_gen;
count_i:=x"00";
tx_valid<='1';
sm<=s1;
else
tx_valid<='0';
end if;


when s1=>
--if count_i=18 then --shouldn't be 17 (17*32=544)
if count_i=17 then                      --shouldn't be 16???
count_i:=x"00";
serial_out<=x"00000000";
tx_valid<='0';
sm<=s0;
else
tx_valid<='1';
--serial_out<=data_gen_i(543 downto 512);
--data_gen_i:=data_gen_i(511 downto 0) & x"00000000";
serial_out<=data_gen_i(511 downto 480);
data_gen_i:=data_gen_i(479 downto 0) & x"00000000";
count_i:=count_i+1;
end if;


end case;
end if;
end process;



end Behavioral;
