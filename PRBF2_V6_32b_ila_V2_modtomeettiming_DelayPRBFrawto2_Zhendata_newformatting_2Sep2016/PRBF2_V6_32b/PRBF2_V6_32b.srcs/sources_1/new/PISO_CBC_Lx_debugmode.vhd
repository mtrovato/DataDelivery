----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/15/2015 12:44:23 PM
-- Design Name: 
-- Module Name: PISO_Layer - Behavioral
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



entity PISO_CBC_Lx is

  Port (
  
  clk: in std_logic;
  en: in std_logic;
  signal_in: in std_logic_vector(255 downto 0);
  serial_lx_out: out std_logic_vector(23 downto 0)
   );
end PISO_CBC_Lx;

architecture Behavioral of PISO_CBC_Lx is

type state_machine is (s0,s1);
signal sm: state_machine:=s0;





begin

process(clk, en, signal_in)
variable count_i: integer range 1 to 12;
variable signal_i: std_logic_vector(229 downto 0);

begin

if clk'event and clk='1' then
case sm is

when s0=>

if en='1' then

signal_i:=signal_in(229 downto 0);
count_i:=1;
serial_lx_out<=x"0" & '0' & signal_i(229 downto 211);
sm<=s1;

end if;

when s1=>

if count_i=12 then
count_i:=1;
sm<=s0;
else
count_i:=count_i+1;
end if;
signal_i:=signal_i(210 downto 0) & x"00000" & "000";

serial_lx_out<=x"0" & '0' & signal_i(229 downto 211);



end case;
end if;
end process;

end Behavioral;
