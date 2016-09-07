----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2015 10:12:49 AM
-- Design Name: 
-- Module Name: SIPO_gen - Behavioral
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

entity SIPO_gen is
  Port (
  clk: in std_logic;
  reset: in std_logic;
  data_s_in: in std_logic_vector(31 downto 0);
--  data_p_out: out std_logic_vector (535 downto 0);
  data_p_out: out std_logic_vector (511 downto 0);  
  rx_valid: in std_logic
   );
end SIPO_gen;

architecture Behavioral of SIPO_gen is

type state_machine is (s0,s1);
signal sm: state_machine;
--signal data_p_o, data_p_o_i: std_logic_vector(535 downto 0);
signal data_p_o, data_p_o_i: std_logic_vector(511 downto 0);
signal data_s_in_d: std_logic_vector(31 downto 0);  --MT
--signal data_p_i: std_logic_vector(543 downto 0):=(others=>'0');  --MT
--signal data_p_i_tmp: std_logic_vector(543 downto 0):=(others=>'0');  --MT
signal data_p_i_tmp: std_logic_vector(511 downto 0):=(others=>'0');  --MT

signal count_i: std_logic_vector(7 downto 0):=(others=>'0');  --default value 

signal rx_valid_d: std_logic;        --MT
                                     
begin

--MT
process(clk)
begin
if clk'event and clk='1' then
data_s_in_d <= data_s_in;
rx_valid_d <= rx_valid;                 --MT delaying rx_valid to keep in synch
                                        --with the data
end if;
end process;




process(clk,reset)  
--variable data_p_i : std_logic_vector(543 downto 0):=(others=>'0');
variable data_p_i : std_logic_vector(511 downto 0):=(others=>'0');
begin
if reset = '1' then
  count_i<=x"00";
  data_p_i:=(others=>'0');
  data_p_out<=(others=>'0');
elsif clk'event and clk='1' then
  if data_s_in_d=x"FFFFFFFF" then  
    count_i<=x"01";
  end if;
  
--  if count_i=18 then
  if count_i=17 then                    --in synch with tx
--    data_p_out<=data_p_i(535 downto 0);
    data_p_out<=data_p_i(511 downto 0); 
    count_i<=x"00";
--  elsif count_i>0 and count_i<18 then
  elsif count_i>0 and count_i<17 then      
    if rx_valid_d='1' then
      count_i<=count_i+1;
--      data_p_i:= data_p_i(511 downto 0) & data_s_in_d;
      data_p_i:= data_p_i(479 downto 0) & data_s_in_d;      
    end if;
  end if;
end if;
end process;








end Behavioral;
