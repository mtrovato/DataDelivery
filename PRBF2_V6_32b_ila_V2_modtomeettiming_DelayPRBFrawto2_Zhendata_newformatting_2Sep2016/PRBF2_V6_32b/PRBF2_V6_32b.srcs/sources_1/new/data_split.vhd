
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

use IEEE.std_logic_signed.all;

use IEEE.NUMERIC_STD.ALL;

library work;
use work.my_package.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_split is
 Port (
 clk: in std_logic;
 data_in: in std_logic_vector(31 downto 0);
 data_s1: out std_logic_vector(31 downto 0);
  data_s2: out std_logic_vector(31 downto 0)
  );
end data_split;

architecture Behavioral of data_split is

type state_machine is (s0,s1,s2,s3);
signal sm: state_machine;

begin

process(clk)
begin
if clk'event and clk='1' then
case sm is
when s0=>
data_s2<=(others=>'0');

if data_in(31 downto 28)=x"2" then
data_s1<=data_in;
sm<=s1;
else
data_s1<=(others=>'0');
end if;

when s1=>
data_s2<=(others=>'0');

if data_in(31 downto 28)=x"4" then
data_s1<=data_in;
sm<=s2;
else
data_s1<=data_in;
end if;

when s2=>
data_s1<=(others=>'0');

if data_in(31 downto 28)=x"2" then
data_s2<=data_in;
sm<=s3;
else
data_s2<=(others=>'0');
end if;

when s3=>
data_s1<=(others=>'0');

if data_in(31 downto 28)=x"4" then
data_s2<=data_in;
sm<=s0;

else
data_s2<=data_in;
end if;

end case;
end if;
end process;


end Behavioral;
