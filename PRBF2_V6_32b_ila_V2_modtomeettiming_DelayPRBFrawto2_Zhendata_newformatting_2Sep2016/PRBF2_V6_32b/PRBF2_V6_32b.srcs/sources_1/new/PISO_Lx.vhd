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

--tried to merge MPA and CBC in one module. Didn't work. Not sure why

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

use IEEE.std_logic_signed.all;

use IEEE.NUMERIC_STD.ALL;

library work;
use work.my_package.all;



entity PISO_Lx is

  Port (
  
  clk: in std_logic;
  en: in std_logic;
  signal_in: in std_logic_vector(255 downto 0);
  layer_in: in std_logic_vector(3 downto 0);
  isR_in: in std_logic;                 --MT official format
  modid_in: in std_logic_vector(8 downto 0);   --MT official format
--  serial_lx_out: out std_logic_vector(27 downto 0) --MT official format  
  serial_lx_out: out std_logic_vector(34 downto 0);

  --debug
  z4b_i_out: out std_logic_vector(3 downto 0);
  type1b_out: out std_logic;
  count_i_out: out std_logic_vector(3 downto 0)
   );
end PISO_Lx;

architecture Behavioral of PISO_Lx is

type state_machine is (s0,s1,s2);
signal sm: state_machine:=s0;


--signal serial_lx_i: std_logic_vector(27 downto 0); --MT official format
signal serial_lx_i: std_logic_vector(34 downto 0); --MT official format

begin

    

--process(clk, en, signal_in) --MT since it's all synchronous no need to have
--additional signals in the sensitivity list
process(clk)
variable count_i: integer range 1 to 10;
variable count_max: integer range 1 to 12;
variable signal_i: std_logic_vector(229 downto 0);
variable z4b_i : std_logic_vector(3 downto 0);
variable type1b_i : std_logic;
begin

--from emulator
--mod id and layer has to be stamped to the data here since the origin of the data will be lost here (5RTM are bundled in one). if we want to keep the BX info the output will be (referring to CIC256format_nomergedbits2S)                then
--PS: modid(=9)+phi(chip(3+address(8)=11)+CIC(=1)+z(=4)   +bend(=4)+layer(=3)+bx(=3)=35b.
--2S: modid(=9)+phi(chip(3+address(8)=11)+CIC(=1)+0000(=4)+bend(=4)+layer(=3)+bx(=3)=35b. //same as ps but z's bits are 0)  

if clk'event and clk='1' then
  type1b_i:=signal_in(255);
  
  case sm is

    when s0=>

      if en='1' then 
        signal_i:=signal_in(229 downto 0);
        count_i:=1;
--serial_lx_i<=  layer_in & '0' & signal_i(229 downto 207);--MT official format
--
--phi=signal_i(19 downto 9)
--CIC???
--z=signal_i(3 downto 0)
--bend=signal_i(8 downto 5) --dropping the LSB of the bend (4)
--bx=signal_i(22 downto 20)
--serial_lx_i<= modid_in(8 downto 0) & signal_i(19 downto 9) & isR_in & signal_i(3 downto 0) & z & layer_in(2 downto 0) & signal_i(22 downto 20);  
        if type1b_i='1' then
          z4b_i := signal_i(210 downto 207);
          count_max := 10;
        else
          z4b_i := x"0";
          count_max := 12;
        end if;

        serial_lx_i<= modid_in(8 downto 0) & signal_i(226 downto 216) & isR_in & z4b_i & signal_i(215 downto 212) & layer_in(2 downto 0) & signal_i(229 downto 227);
        sm<=s1;
      else                                    --MT avoid latches
        signal_i:=(others=>'0');
        count_i:=1;
        serial_lx_i<=(others=>'0');
        sm<=s0;

      end if;

    when s1=>

      if count_i=count_max then
        count_i:=1;
        sm<=s2;
      else
        count_i:=count_i+1;
      end if;
      if type1b_i='1' then
        signal_i:=signal_i(206 downto 0) & x"00000" & "000";
      else
        signal_i:=signal_i(210 downto 0) & x"0000" & "000";
      end if;
--serial_lx_i<= layer_in & '0' & signal_i(229 downto 207); --MT official
--format
--
        serial_lx_i<= modid_in(8 downto 0) & signal_i(226 downto 216) & isR_in & z4b_i & signal_i(215 downto 212) & layer_in(2 downto 0) & signal_i(229 downto 227);        
--2s will have z4b_i = 0


      when s2=>

        serial_lx_i<=(others=>'0');
        if en='0' then 
          sm<=s0;
        else                                    --MT avoid latches
          sm<=s2;  
        end if;
      end case;
--debug
      z4b_i_out<=z4b_i;
      type1b_out<=type1b_i;
      count_i_out<=std_logic_vector(to_unsigned(count_i,count_i_out'length));
end if;                                 --if clk'event and clk='1' then
end process;

process(clk)
begin
if clk'event and clk='1' then
serial_lx_out<=serial_lx_i;
end if;
end process;

end Behavioral;
