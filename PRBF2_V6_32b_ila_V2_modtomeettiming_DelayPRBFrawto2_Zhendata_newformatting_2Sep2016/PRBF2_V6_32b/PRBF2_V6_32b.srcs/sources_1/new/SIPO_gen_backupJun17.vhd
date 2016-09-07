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
  en: in std_logic;
  data_s_in: in std_logic_vector(31 downto 0);
  data_p_out: out std_logic_vector (535 downto 0);
  rx_valid: in std_logic
   );
end SIPO_gen;

architecture Behavioral of SIPO_gen is

type state_machine is (s0,s1);
signal sm: state_machine;
signal data_p_o, data_p_o_i: std_logic_vector(535 downto 0);
signal data_s_in_d: std_logic_vector(31 downto 0);  --MT
--signal data_p_i: std_logic_vector(543 downto 0):=(others=>'0');  --MT
signal data_p_i_tmp: std_logic_vector(543 downto 0):=(others=>'0');  --MT


begin

--MT
process(clk)
begin
if clk'event and clk='1' then
data_s_in_d <= data_s_in;
end if;
end process;




--process(clk, en, data_s_in, data_p_i) --MT since it's all synchronous no need
--to have additional signals in the sensitivity list  
process(clk)  
variable count_i: std_logic_vector(7 downto 0);
variable data_p_i: std_logic_vector(543 downto 0):=(others=>'0');
variable index : integer := 0;          --MT
--variable data_p_i_tmp: std_logic_vector(543 downto 0):=(others=>'0'); 
--outside
begin
if clk'event and clk='1' then --MT Decoupling shiftreg
case sm is
when s0=>
--if data_s_in=x"FFFFFFFF" then 
if data_s_in_d=x"FFFFFFFF" then  
sm<=s1;
count_i:=x"00";
data_p_i:=(others=>'0'); 
--data_p_i_tmp:=(others=>'0'); --MT

end if;


when s1=>

if count_i=17 then
data_p_o<=data_p_i(535 downto 0); --MT
count_i:=x"00";
sm<=s0;

else
if rx_valid='1' then
count_i:=count_i+1;
--data_p_i(543 downto 32):= data_p_i (511 downto 0);
--data_p_i(31 downto 0):= data_s_in; --MT
--data_p_i(31 downto 0):= data_s_in_d;

--data_p_i(543 downto 32)<= data_p_i(511 downto 0);
--data_p_i(31 downto 0)<= data_s_in;

--MT introduce data_p_i_tmp to avoid combinatorial loop (assuming that
--following statements are sequential)

--From http://ftp.utcluj.ro/pub/users/calceng/SSC/Ssc06/SSC06-e.pdf
--Restrictions enforced on signals reduce the possibilities to use them.
--Because signals can only hold the last value assigned to them, they cannot be
--used to store intermediary results within a process. Another drawback is that
--the new values are not assigned to signals when the assignment statement
--executes, but only after the pro- cess execution suspends. This causes
--difficulties in analyzing descriptions.
--As opposed to signals, variables can be declared inside processes and can be used to store intermediary results. However, variables can be used only in the sequential domain of the VHDL language, that is, inside proc- esses and subprograms, and cannot be declared or used directly in an architecture. Thus, they are local to that : process 
--data_p_i(31 downto 0):= data_s_in;

data_p_i(31 downto 0):= data_s_in_d;
data_p_i(543 downto 32):= data_p_i_tmp(511 downto 0);
data_p_i_tmp <= data_p_i;               --making this less sequential
--
--data_p_i:= data_p_i(511 downto 0) & data_s_in_d;

--index :=  to_integer(unsigned(count_i(7 downto 0)));
----the first data (index=1) is already at the MSB, the second data (index=2) at
----the second MSB, etc... avoid shifting. data_p_i will look like the one above
----after 17 clks. It will look different before that
-----e.g:
-----index=4 [A][B][C][0][0]
-----rather
-----than
-----[0][0][A][B][C],
-----where

-----A,B,C
-----=
-----data_s_in_d
-----at index=1,2,3
--data_p_i(32*(17-index)-1 downto 32*(16-index)):= data_s_in_d;  --MT rather than
--                                                           --shifting
--                                                           --everything I just
--                                                           --assign data_s_in_d
--                                                           --to the correct position



end if;
end if;
end case;
end if;
end process;

--MT removed one shiftreg
--process(clk)
--begin
--if clk'event and clk='1' then
--if en='1' then
--data_p_o_i<=data_p_o;
--end if;
--end if;

--end process;




process(clk)
begin
if clk'event and clk='1' then
--data_p_out<=data_p_o_i; --MT removed one shift reg
data_p_out<=data_p_o;  
end if;
end process;



end Behavioral;
