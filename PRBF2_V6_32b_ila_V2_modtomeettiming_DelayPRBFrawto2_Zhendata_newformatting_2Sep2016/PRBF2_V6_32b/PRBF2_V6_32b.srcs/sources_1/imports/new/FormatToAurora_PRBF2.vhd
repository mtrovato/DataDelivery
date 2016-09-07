----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/27/2015 02:12:40 PM
-- Design Name: 
-- Module Name: FormatToAurora - Behavioral
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

entity FormatToAurora_PRBF2 is
  Port (
  clk: in std_logic;
  reset: in std_logic;
  en : in std_logic;
  L: in integer;
  data_in1: in std_logic_vector(31 downto 0);
    data_in2: in std_logic_vector(31 downto 0);
  data_in3: in std_logic_vector(31 downto 0);
  data_fifo_out: out std_logic_vector(31 downto 0);
  debug_signal_out: out std_logic_vector(15 downto 0)  );
end FormatToAurora_PRBF2;

architecture Behavioral of FormatToAurora_PRBF2 is



COMPONENT FIFO_PRBF2_out
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    almost_empty: out std_logic;
    empty : OUT STD_LOGIC;
        valid : OUT STD_LOGIC
  );
END COMPONENT;
signal wr_en_fifo, rd_en_fifo, almost_empty_fifo, full_fifo, empty_fifo, valid_fifo: std_logic_vector(1 to 3);
type data_count_fifo_ar is array(1 to 3) of std_logic_vector(7 downto 0);
signal data_count_fifo, wr_en_count, wr_en_count_i, count_wr_en: data_count_fifo_ar;
type data_out_fifo_ar is array (1 to 3) of std_logic_vector(31 downto 0);
signal data_out_fifo, data_out_fifo_valid, data_in_fifo: data_out_fifo_ar;

signal data_count_tot, data_count_tot_i: std_logic_vector(7 downto 0);

signal valid_s, valid_e: std_logic;

type state_machine is(s0,s1,s2,s3,s4);
signal sm: state_machine;

  signal count_i, wr_en_count_tot: std_logic_vector(7 downto 0):=(others=>'0');
  
  signal rd_en_i, rd_en_ii: std_logic;

signal wr_en, rd_en: std_logic_vector(1 to 3);

type state_machine_wr is (s0,s1,s2);
type state_machine_wr_ar is array (1 to 3) of state_machine_wr;
signal sm_wr_en: state_machine_wr_ar;


type state_machine_watch_dog is(s0,s1);
signal sm_wd: state_machine_watch_dog;

--type internal_counting_array is array (1 to 7) of std_logic_vector(7 downto 0);
signal internal_counting: std_logic_vector(7 downto 0);

type data_in_ar is array(1 to 3) of std_logic_vector(31 downto 0);
signal data_i:data_in_ar;

signal reset_fifos: std_logic;


begin

data_i(1)<=data_in1;
data_i(2)<=data_in2;
data_i(3)<=data_in3;


debug_signal_out<=rd_en & wr_en & wr_en_fifo & rd_en_fifo & rd_en_i & rd_en_ii & valid_s & valid_e;


process(clk)
begin
if clk'event and clk='1' then
case sm_wd is
when s0=>

if reset='1' then
internal_counting<=x"00";
else
if wr_en(1)='1' or wr_en(2)='1' or wr_en(3)='1'  then
internal_counting<=x"00";
sm_wd<=s1;
end if;

end if;

when s1=>
if reset='1' then
internal_counting<=x"00";
sm_wd<=s0;
else
if internal_counting=111 or rd_en_i='1' then
internal_counting<=x"00";
sm_wd<=s0;
else
internal_counting<=internal_counting+1;
end if;
end if;
end case;
end if;
end process;



GEN_wr_rd_en: for i in 1 to 3 generate
process (clk)
begin
if clk'event and clk='1' then
case sm_wr_en(i) is
when s0=>
if reset='1' then
wr_en_count(i)<=x"00";
rd_en(i)<='0';
wr_en(i)<='0';
else
wr_en_count(i)<=x"00";
if internal_counting<110 then
if en='1' and data_i(i)(31 downto 28)=x"2" then
wr_en(i)<='1';
sm_wr_en(i)<=s1;
elsif en='0' then
wr_en(i)<='0';
end if;
rd_en(i)<='0';
wr_en_fifo(i)<='0';
else

rd_en(i)<='1';
wr_en(i)<='1';
sm_wr_en(i)<=s2;
end if;
end if;

when s1=>
if reset='1' then
wr_en_count(i)<=x"00";
rd_en(i)<='0';
wr_en(i)<='0';
sm_wr_en(i)<=s0;
else
if internal_counting<110 and data_count_tot<110 then
if data_i(i)(31 downto 28)=x"4" then
wr_en(i)<='0';
rd_en(i)<='1';
wr_en_fifo(i)<='0';
sm_wr_en(i)<=s2;
else
wr_en_fifo(i)<='1';
data_in_fifo(i)<=data_i(i);
wr_en_count(i)<=wr_en_count(i)+1;
end if;

else
wr_en_fifo(i)<='0';
wr_en(i)<='0';
rd_en(i)<='1';
sm_wr_en(i)<=s2;
end if;
end if;
when s2=>
if reset='1' then
wr_en_count(i)<=x"00";
rd_en(i)<='0';
wr_en(i)<='0';
sm_wr_en(i)<=s0;
else
wr_en_fifo(i)<='0';
if rd_en_i='1' then
rd_en(i)<='0';
wr_en(i)<='0';
wr_en_count_i(i)<=wr_en_count(i);
sm_wr_en(i) <=s0;
end if;
end if;
end case;
end if;
end process;
end generate GEN_wr_rd_en;

process(clk)
begin
if clk'event and clk='1' then
if reset='1' then
data_count_tot<=(others=>'0');
data_count_tot_i<=(others=>'0');
rd_en_i<='0';
else
if rd_en_i='1' then
data_count_tot_i<=data_count_tot;
data_count_tot<=(others=>'0');
rd_en_i<='0';
else
rd_en_i<=rd_en(1) and rd_en(2) and rd_en(3);
data_count_tot<=wr_en_count(1)+wr_en_count(2)+wr_en_count(3);
end if;
end if;
end if;
end process;




GEN_7: for i in 1 to 3 generate

I_fifo: FIFO_PRBF2_out
  PORT map(
    clk=> clk,
    rst =>reset_fifos,
    din =>data_in_fifo(i),
    wr_en => wr_en_fifo(i),
    rd_en => rd_en_fifo(i),
    dout =>data_out_fifo(i),
    full =>full_fifo(i),
    almost_empty=> almost_empty_fifo(i),
    empty =>empty_fifo(i),
    valid=> valid_fifo(i)
  );
  
  process(clk)
begin
  if valid_fifo(i)='1' then
  data_out_fifo_valid(i)<=data_out_fifo(i);
  else
  data_out_fifo_valid(i)<=(others=>'0');
  end if;
  end process;
  
end generate GEN_7;


process(clk, rd_en)

begin

if clk'event and clk='1' then
case sm is

when s0=>
valid_e<='0';
reset_fifos<='0';
if reset='1' then
rd_en_fifo<="111";
sm<=s0;
else
if rd_en_i='1' then
valid_s<='1';
if empty_fifo(1)='0' then
rd_en_fifo<="100";
count_i<=wr_en_count_i(1);
sm<=s1;
elsif empty_fifo(2)='0' then
rd_en_fifo<="010";
count_i<=wr_en_count_i(2);
sm<=s2;
elsif empty_fifo(3)='0' then
rd_en_fifo<="001";
count_i<=wr_en_count_i(3);
sm<=s3;
else
rd_en_fifo<="000";
sm<=s4;
end if;
else 
valid_s<='0';
rd_en_fifo<="000";
end if;
end if;
when s1=>
valid_s<='0';
reset_fifos<='0';
if reset='1' then
rd_en_fifo<="111";
sm<=s0;
else
if almost_empty_fifo(1)='1' then
if empty_fifo(2)='0' then
rd_en_fifo<="010";
count_i<=wr_en_count_i(2);
sm<=s2;
elsif empty_fifo(3)='0' then
rd_en_fifo<="001";
count_i<=wr_en_count_i(3);
sm<=s3;
else
rd_en_fifo<="000";
sm<=s4;
end if;
else
count_i<=count_i-1;
end if;
end if;
when s2=>
valid_s<='0';
reset_fifos<='0';
if reset='1' then
rd_en_fifo<="000";
sm<=s0;
else
if almost_empty_fifo(2)='1' then
if empty_fifo(3)='0' then
rd_en_fifo<="001";
count_i<=wr_en_count_i(3);
sm<=s3;
else
rd_en_fifo<="000";
sm<=s4;
end if;
else
count_i<=count_i-1;
end if;
end if;
when s3=>
valid_s<='0';
reset_fifos<='0';
if reset='1' then
rd_en_fifo<="000";
sm<=s0;
else
if almost_empty_fifo(3)='1' then
rd_en_fifo<="000";
sm<=s4;
else
count_i<=count_i-1;
end if;
end if;

when s4=>
reset_fifos<='1';
if reset='1' then
rd_en_fifo<="000";
sm<=s0;
else
valid_s<='0';
valid_e<='1';
sm<=s0;
end if;
end case;
end if;

end process;

process(clk)
begin
--if reset='1' then
--PRBF1_to_PRBF2_out<=(others=>'0');
--PRBF1_to_PRBF2_out<=(others=>'0');
--else
if valid_s='1' then
data_fifo_out(31 downto 28)<=x"2";
data_fifo_out(27 downto 0)<=(others=>'0');
elsif valid_e='1' then
data_fifo_out(31 downto 28)<=x"4";
data_fifo_out(27 downto 8)<=(others=>'0');
data_fifo_out(7 downto 0)<=data_count_tot_i(7 downto 0);

else
data_fifo_out<=data_out_fifo_valid(1) or data_out_fifo_valid(2) or data_out_fifo_valid(3);
end if;
--end if;

end process;


end Behavioral;


