----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/20/2015 01:25:00 PM
-- Design Name: 
-- Module Name: lx_en - Behavioral
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

use IEEE.std_logic_signed.all;

use IEEE.NUMERIC_STD.ALL;

library work;
use work.my_package.all;

entity lx_en_gen_v275 is
  Port ( 
 clk: in std_logic;
 en: in std_logic;
 en_lx: out std_logic_vector(1 to 10);
 wr_en: out std_logic;
 rd_en: out std_logic
  );
end lx_en_gen_v275;

architecture Behavioral of lx_en_gen_v275 is

type state_machine is (s0,s1);
signal sm: state_machine;

signal en_lx_i:std_logic_vector(1 to 10);
signal wr_en_i, rd_en_i: std_logic;

begin

process(clk)
begin
if clk'event and clk='1' then
rd_en<=rd_en_i;
wr_en<=wr_en_i;
en_lx<=en_lx_i;
end if;
end process;

 process(clk, en)
  variable count_i: integer range 1 to 55:=1;
  begin
  

  
  if clk'event and clk='1' then
  
  case sm is
  when s0=>
  if en='1' then
  count_i:=1;
  en_lx_i(1)<='1';
  en_lx_i(2 to 10)<=(others=>'0');  
--  count_i:=count_i+1; 
wr_en_i<='1';
  sm<=s1;
  else
  en_lx_i<=(others=>'0');
   wr_en_i<='0';
  end if;
  
     rd_en_i<='0';

  when s1=>
  
  if count_i=55 then
  count_i:=1;
  sm<=s0;
  en_lx_i<=(others=>'0');
   wr_en_i<='0';
   rd_en_i<='1';
  else
  count_i:=count_i+1;
   wr_en_i<='1';
  if count_i<13 then
  en_lx_i(1)<='1';
  en_lx_i(2 to 10)<=(others=>'0');   
  elsif count_i>12 and count_i<25 then
  en_lx_i(1)<='0';
  en_lx_i(2)<='1';
  en_lx_i(3 to 10)<=(others=>'0');
  elsif count_i>24 and count_i<37 then
  en_lx_i(1 to 2)<=(others=>'0');
  en_lx_i(3)<='1';
  en_lx_i(4 to 10)<=(others=>'0');
  elsif count_i>36 and count_i<49 then
  en_lx_i(1 to 3)<=(others=>'0');
  en_lx_i(4)<='1';
  en_lx_i(5 to 10)<=(others=>'0');
  elsif count_i>48 and count_i<56 then
  en_lx_i(1 to 4)<=(others=>'0');
  en_lx_i(5)<='0';
  en_lx_i(6 to 10)<=(others=>'0');
  else
  en_lx_i<="0000000000";
  end if;
  end if;
  end case;
  
  end if;
    
  end process;

end Behavioral;
