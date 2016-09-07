----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/24/2015 05:38:55 PM
-- Design Name: 
-- Module Name: shift_reg_PRBF2 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_reg_PRBF2 is
generic(N: integer);
  Port ( 
  clk: in std_logic;
  data_in: in std_logic_vector(31 downto 0);
  data_out_r: out std_logic_vector(31 downto 0)
  );
end shift_reg_PRBF2;

architecture Behavioral of shift_reg_PRBF2 is

type array_delay is array (1 to N) of std_logic_vector(31 downto 0);
signal data_d: array_delay;


begin

I_for_delay: for i in 1 to N generate
I_first: if i=1 generate
process(clk, data_in)
begin
if clk'event and clk='1' then
data_d(i)<=data_in;
end if;
end process;
end generate I_first;

I_others: if i>1 generate
process(clk, data_in)
begin
if clk'event and clk='1' then
data_d(i)<=data_d(i-1);
end if;
end process;
end generate I_others;
end generate I_for_delay;

data_out_r<=data_d(N);

end Behavioral;
