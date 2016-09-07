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



entity PISO_MPA_Lx is

  Port (
  
  clk: in std_logic;
  en: in std_logic;
  signal_in: in std_logic_vector(255 downto 0);
  layer_in: in std_logic_vector(3 downto 0);
  serial_lx_out: out std_logic_vector(27 downto 0)
   );
end PISO_MPA_Lx;

architecture Behavioral of PISO_MPA_Lx is

type state_machine is (s0,s1,s2);
signal sm: state_machine:=s0;


signal serial_lx_i: std_logic_vector(27 downto 0);

begin

    

--process(clk, en, signal_in) --MT since it's all synchronous no need to have
--additional signals in the sensitivity list
process(clk)
variable count_i: integer range 1 to 10;
variable signal_i: std_logic_vector(229 downto 0);

begin

if clk'event and clk='1' then
case sm is

when s0=>

if en='1' then 
signal_i:=signal_in(229 downto 0);
count_i:=1;
serial_lx_i<=  layer_in & '0' & signal_i(229 downto 207);
sm<=s1;
else                                    --MT avoid latches
signal_i:=(others=>'0');
count_i:=1;
serial_lx_i<=(others=>'0');
sm<=s0;

end if;

when s1=>

if count_i=10 then
count_i:=1;
sm<=s2;
else
count_i:=count_i+1;
end if;
signal_i:=signal_i(206 downto 0) & x"00000" & "000";

serial_lx_i<= layer_in & '0' & signal_i(229 downto 207);

when s2=>

serial_lx_i<=(others=>'0');
if en='0' then 
sm<=s0;
else                                    --MT avoid latches
sm<=s2;  
end if;

end case;
end if;
end process;

process(clk)
begin
if clk'event and clk='1' then
serial_lx_out<=serial_lx_i;
end if;
end process;

end Behavioral;
