
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

use IEEE.std_logic_signed.all;

use IEEE.NUMERIC_STD.ALL;

library work;
use work.my_package.all;

entity From_PRBF1_to_PRBF2_v2 is
  Port (
  clk: in std_logic;
  en_rx0: in std_logic;
  en_rx1: in std_logic;
  PRBF1_from_RTM_1: in PRBF1_from_RTM_ar;
    PRBF1_from_RTM_2: in PRBF1_from_RTM_ar;
    PRBF1_int_1: in std_logic_vector(31 downto 0);
    PRBF1_int_2: in std_logic_vector(31 downto 0);
   PRBF1_valid_from_RTM_1: in std_logic_vector(1 to 7);
         PRBF1_valid_from_RTM_2: in std_logic_vector(1 to 7);
         PRBF1_valid_int_1: in std_logic;
         PRBF1_valid_int_2: in std_logic;
  PRBF1_to_PRBF2_out: out to_PRBF2_ar;
  PRBF2_valid_out: out std_logic_vector(1 to 6);
  debug_out: out std_logic_vector(68 downto 0);
  internal_counting_out1: out count_ar;
  internal_counting_out2: out count_ar  
   );
end From_PRBF1_to_PRBF2_v2;

architecture Behavioral of From_PRBF1_to_PRBF2_v2 is

component sort_by_layer_v2 is
  Port (
  clk: in std_logic;
  en_fifo: in std_logic;
  PRBF1_from_RTM_1: in PRBF1_from_RTM_ar;
  PRBF1_from_RTM_2: in PRBF1_from_RTM_ar;
  PRBF1_int_1: in std_logic_vector(31 downto 0);
  PRBF1_int_2: in std_logic_vector(31 downto 0);
    PRBF1_valid_from_RTM_1: in std_logic_vector(1 to 7);
      PRBF1_valid_from_RTM_2: in std_logic_vector(1 to 7);
      PRBF1_valid_int_1: in std_logic;
      PRBF1_valid_int_2: in std_logic;
  AB: in std_logic_vector(3 downto 0);
  L: in integer;
  PRBF1_to_PRBF2_out: out std_logic_vector(31 downto 0);
  PRBF2_valid_out: out std_logic;
  debug_out: out std_logic_vector(68 downto 0);
  internal_counting_out: out std_logic_vector(7 downto 0)  
   );
end component;



signal PRBF1_from_RTM_i1,PRBF1_from_RTM_i2 : PRBF1_from_RTM_ar;
signal PRBF1_int_i1,PRBF1_int_i2: std_logic_vector(31 downto 0);

--type count_ar is array (1 to 6) of std_logic_vector(7 downto 0); --MT moved
--to my_package
type debug_ar is array (1 to 6) of std_logic_vector(68 downto 0);

signal data_count_tot_i, internal_counting_i: count_ar;
signal debug_i_1, debug_i_2:debug_ar;

signal PRBF1_valid_from_RTM_i1, PRBF1_valid_from_RTM_i2: std_logic_vector(1 to 7);

signal PRBF1_valid_int_i1, PRBF1_valid_int_i2: std_logic;



 signal PRBF1_to_PRBF2_i_1, PRBF1_to_PRBF2_i_2:  to_PRBF2_ar;
 signal PRBF2_valid_i_1, PRBF2_valid_i_2:  std_logic_vector(1 to 6);
 
 type state_machine_enable is (s0,s1);
 signal sm: state_machine_enable;
  
 signal en_PRBF2_1, en_PRBF2_2: std_logic;

begin

process(clk)
begin
if clk'event and clk='1' then
case sm is
when s0=>
if en_rx0='1' then
en_PRBF2_1<='1';
en_PRBF2_2<='0';
sm<=s1;
end if;
when s1=>
if en_rx1='1' then
en_PRBF2_1<='0';
en_PRBF2_2<='1';
sm<=s0;
end if;
end case;
end if;
end process;

process(clk)
begin
if clk'event and clk='1' then
PRBF1_from_RTM_i1<=PRBF1_from_RTM_1;
PRBF1_from_RTM_i2<=PRBF1_from_RTM_2;
PRBF1_int_i1<=PRBF1_int_1;
PRBF1_int_i2<=PRBF1_int_2;
PRBF1_valid_from_RTM_i1<=PRBF1_valid_from_RTM_1;
PRBF1_valid_from_RTM_i2<=PRBF1_valid_from_RTM_2;
PRBF1_valid_int_i1<=PRBF1_valid_int_1;
PRBF1_valid_int_i2<=PRBF1_valid_int_2;
end if;
end process;

GEN_layer: for i in 1 to 6 generate
I_sort_by_layer_1:  sort_by_layer_v2
  Port map(
  clk=>clk,
  en_fifo=>en_PRBF2_1,
  PRBF1_from_RTM_1=>PRBF1_from_RTM_i1,
  PRBF1_from_RTM_2=>PRBF1_from_RTM_i2,
  PRBF1_int_1=>PRBF1_int_i1,
  PRBF1_int_2=>PRBF1_int_i2,
 PRBF1_valid_from_RTM_1=>PRBF1_valid_from_RTM_i1,
       PRBF1_valid_from_RTM_2=>PRBF1_valid_from_RTM_i2,
       PRBF1_valid_int_1=>PRBF1_valid_int_i1,
       PRBF1_valid_int_2=>PRBF1_valid_int_i2,
  AB=>x"b",
  L=>i+4,
  PRBF1_to_PRBF2_out=>PRBF1_to_PRBF2_i_1(i),
  PRBF2_valid_out=>PRBF2_valid_i_1(i),
  debug_out=>debug_i_1(i),
  internal_counting_out=>internal_counting_out1(i)
   );
   
   I_sort_by_layer_2:  sort_by_layer_v2
     Port map(
     clk=>clk,
     en_fifo=>en_PRBF2_2,
     PRBF1_from_RTM_1=>PRBF1_from_RTM_i1,
     PRBF1_from_RTM_2=>PRBF1_from_RTM_i2,
     PRBF1_int_1=>PRBF1_int_i1,
     PRBF1_int_2=>PRBF1_int_i2,
    PRBF1_valid_from_RTM_1=>PRBF1_valid_from_RTM_i1,
          PRBF1_valid_from_RTM_2=>PRBF1_valid_from_RTM_i2,
          PRBF1_valid_int_1=>PRBF1_valid_int_i1,
          PRBF1_valid_int_2=>PRBF1_valid_int_i2,
     AB=>x"b",
     L=>i+4,
     PRBF1_to_PRBF2_out=>PRBF1_to_PRBF2_i_2(i),
     PRBF2_valid_out=>PRBF2_valid_i_2(i),
     debug_out=>debug_i_2(i),
     internal_counting_out=>internal_counting_out2(i)
      );
      
      process(clk)
      begin
      if clk'event and clk='1' then
      PRBF1_to_PRBF2_out(i)<=PRBF1_to_PRBF2_i_1(i) or PRBF1_to_PRBF2_i_2(i);
      PRBF2_valid_out(i)<=PRBF2_valid_i_1(i) or PRBF2_valid_i_2(i);
      
      end if;
      end process;
end generate GEN_layer;




debug_out<=debug_i_1(1) or debug_i_2(1);

end Behavioral;
