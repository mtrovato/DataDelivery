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
  layer_in: in std_logic_vector(3 downto 0);
  isR_in: in std_logic;                 --MT official format
  modid_in: in std_logic_vector(8 downto 0);   --MT official format  
  serial_lx_out: out std_logic_vector(34 downto 0);

  --debug
  z4b_i_out: out std_logic_vector(3 downto 0);
  type1b_out: out std_logic;
  count_i_out: out std_logic_vector(3 downto 0);
  modid_in_out: out std_logic_vector(8 downto 0);
  en_out: out std_logic
  
   );
end PISO_CBC_Lx;

architecture Behavioral of PISO_CBC_Lx is

type state_machine is (s0,s1,s2);
signal sm: state_machine:=s0;


signal serial_lx_i: std_logic_vector(34 downto 0); --MT official format

begin

    

--process(clk, en, signal_in) --MT since it's all synchronous no need to have
--additional signals in the sensitivity list
process(clk)
variable count_i: integer range 1 to 12;
variable signal_i: std_logic_vector(227 downto 0);  --was 229 (now excluding 2b
                                                    --trailer)

begin

--from emulator
--mod id and layer has to be stamped to the data here since the origin of the data will be lost here (5RTM are bundled in one). if we want to keep the BX info the output will be (referring to CIC256format_nomergedbits2S)                then
--PS: modid(=9)+phi(chip(3+address(8)=11)+CIC(=1)+z(=4)   +bend(=4)+layer(=3)+bx(=3)=35b.
--2S: modid(=9)+phi(chip(3+address(8)=11)+CIC(=1)+0000(=4)+bend(=4)+layer(=3)+bx(=3)=35b. //same as ps but z's bits are 0)  

if clk'event and clk='1' then
case sm is

when s0=>

if en='1' then 
signal_i:=signal_in(229 downto 2);      --was downto 0 (now excluding 2b trailer)
count_i:=1;

--phi=signal_i(15 downto 5)
--CIC
--z=0000
--bend=signal_i(4 downto 1) --dropping the LSB of the bend (4)
--bx=signal_i(18 downto 16)
--serial_lx_i<= modid_in(8 downto 0) & signal_i(15 downto 5) & isR_in & "0000" & signal_i(4 downto 1) & layer_in(2 downto 0) & signal_i(18 downto 16);  --ps
serial_lx_i<= modid_in(8 downto 0) & signal_i(224 downto 214) & isR_in & "0000" & signal_i(213 downto 210) & layer_in(2 downto 0) & signal_i(227 downto 225);  --
--all the signal_i indexes -2 

sm<=s1;
else                                    --MT avoid latches
signal_i:=(others=>'0');
count_i:=1;
serial_lx_i<=(others=>'0');
sm<=s0;

end if;

when s1=>

--this procedure automatically drops the 2b trailer in the 2LSb
if count_i=11 then                      
count_i:=1;
sm<=s2; --#st processed at this point: 1(s0)+10=11. While the state is
        --scheduled to change to s2 will
        --process another one. Tot #st=12
else
count_i:=count_i+1;
end if;

signal_i:=signal_i(208 downto 0) & x"0000" & "000"; --was 210
serial_lx_i<= modid_in(8 downto 0) & signal_i(224 downto 214) & isR_in & "0000" & signal_i(213 downto 210) & layer_in(2 downto 0) & signal_i(227 downto 225);  --
--all the signal_i indexes -2 



when s2=>

serial_lx_i<=(others=>'0');
if en='0' then 
sm<=s0;
else                                    --MT avoid latches
sm<=s2;  
end if;

end case;
--debug
z4b_i_out<="0000";
type1b_out<=signal_in(255);
count_i_out<=std_logic_vector(to_unsigned(count_i,count_i_out'length));
modid_in_out<=modid_in;
en_out<=en;

end if;
end process;

process(clk)
begin
if clk'event and clk='1' then
serial_lx_out<=serial_lx_i;
end if;
end process;

end Behavioral;
