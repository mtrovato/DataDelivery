
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

use IEEE.std_logic_signed.all;

use IEEE.NUMERIC_STD.ALL;

library work;
use work.my_package.all;

entity sort_by_layer_v2 is
  Port (
  clk: in std_logic;
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
  PRBF2_valid_out: out std_logic
   );
end sort_by_layer_v2;


architecture Behavioral of sort_by_layer_v2 is

COMPONENT FIFO_sort_by_layer
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



signal wr_en_fifo, rd_en_fifo, wr_en_fifo_i, almost_empty_fifo, full_fifo, empty_fifo, valid_fifo, rd_en_fifo_i: std_logic_vector(1 to 16):=(others=>'0');
type data_count_fifo_ar is array(1 to 16) of std_logic_vector(7 downto 0);
signal data_count_fifo, wr_en_count, wr_en_count_i, count_wr_en, wr_en_count_ii: data_count_fifo_ar:=(others=>(others=>'0'));
type data_out_fifo_ar is array (1 to 16) of std_logic_vector(31 downto 0);
signal data_out_fifo, data_out_fifo_valid, data_in_fifo, data_in_fifo_i: data_out_fifo_ar:=(others=>(others=>'0'));

signal data_count_tot, data_count_tot_i, data_count_tot_ii: std_logic_vector(7 downto 0):=(others=>'0');

signal valid_s, valid_e, valid_e_d, valid_s_d: std_logic:='0';

type state_machine is(s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17);
signal sm: state_machine:=s0;

  signal count_i, wr_en_count_tot: std_logic_vector(7 downto 0):=(others=>'0');
  
  signal rd_en_i, rd_en_ii: std_logic:='0';

signal wr_en, rd_en: std_logic_vector(1 to 16):=(others=>'0');

type state_machine_wr is (s0,s1,s2);
type state_machine_wr_ar is array (1 to 16) of state_machine_wr;
signal sm_wr_en: state_machine_wr_ar:=(others=>s0);


type state_machine_watch_dog is(s0,s1);
signal sm_wd: state_machine_watch_dog:=s0;

signal internal_counting: std_logic_vector(7 downto 0):=(others=>'0');

type data_i_ar is array (1 to 16) of std_logic_vector(31 downto 0);
signal data_i: data_i_ar;

signal PRBF1_to_PRBF2_i: std_logic_vector(31 downto 0);

signal valid_i: std_logic_vector(1 to 16);

type state_machine_valid is (s0,s1);
signal sm_valid: state_machine_valid;

begin

data_i(1)<=PRBF1_from_RTM_1(1);
data_i(2)<=PRBF1_from_RTM_1(2);
data_i(3)<=PRBF1_from_RTM_1(3);
data_i(4)<=PRBF1_from_RTM_1(4);
data_i(5)<=PRBF1_from_RTM_1(5);
data_i(6)<=PRBF1_from_RTM_1(6);
data_i(7)<=PRBF1_from_RTM_1(7);

data_i(8)<=PRBF1_from_RTM_2(1);
data_i(9)<=PRBF1_from_RTM_2(2);
data_i(10)<=PRBF1_from_RTM_2(3);
data_i(11)<=PRBF1_from_RTM_2(4);
data_i(12)<=PRBF1_from_RTM_2(5);
data_i(13)<=PRBF1_from_RTM_2(6);
data_i(14)<=PRBF1_from_RTM_2(7);

data_i(15)<=PRBF1_int_1;
data_i(16)<=PRBF1_int_2;

valid_i(1)<=PRBF1_valid_from_RTM_1(1);
valid_i(2)<=PRBF1_valid_from_RTM_1(2);
valid_i(3)<=PRBF1_valid_from_RTM_1(3);
valid_i(4)<=PRBF1_valid_from_RTM_1(4);
valid_i(5)<=PRBF1_valid_from_RTM_1(5);
valid_i(6)<=PRBF1_valid_from_RTM_1(6);
valid_i(7)<=PRBF1_valid_from_RTM_1(7);

valid_i(8)<=PRBF1_valid_from_RTM_2(1);
valid_i(9)<=PRBF1_valid_from_RTM_2(2);
valid_i(10)<=PRBF1_valid_from_RTM_2(3);
valid_i(11)<=PRBF1_valid_from_RTM_2(4);
valid_i(12)<=PRBF1_valid_from_RTM_2(5);
valid_i(13)<=PRBF1_valid_from_RTM_2(6);
valid_i(14)<=PRBF1_valid_from_RTM_2(7);

valid_i(15)<=PRBF1_valid_int_1;
valid_i(16)<=PRBF1_valid_int_2;


process(clk)
begin
if clk'event and clk='1' then
case sm_wd is
when s0=>

if wr_en(1)='1' or wr_en(2)='1' or wr_en(3)='1' or wr_en(4)='1' or wr_en(5)='1' or wr_en(6)='1' or wr_en(7)='1' or wr_en(8)='1' or wr_en(9)='1' or wr_en(10)='1'
 or wr_en(11)='1' or wr_en(12)='1' or wr_en(13)='1' or wr_en(14)='1' or wr_en(15)='1' or wr_en(16)='1' then
internal_counting<=x"00";
sm_wd<=s1;
end if;


when s1=>
if internal_counting=56 or rd_en_i='1' then
internal_counting<=x"00";
sm_wd<=s0;
else
internal_counting<=internal_counting+1;
end if;
end case;
end if;
end process;



GEN_wr_rd_en: for i in 1 to 16 generate
process (clk)
begin
if clk'event and clk='1' then
case sm_wr_en(i) is
when s0=>
wr_en_count(i)<=x"00";
if internal_counting<56 then
if data_i(i)(31 downto 28)=x"2" and valid_i(i)='1' then
wr_en(i)<='1';
sm_wr_en(i)<=s1;
end if;
rd_en(i)<='0';
wr_en_fifo(i)<='0';
else

rd_en(i)<='1';
wr_en(i)<='1';
sm_wr_en(i)<=s2;
end if;


when s1=>

if internal_counting<56 and data_count_tot<110 then
if data_i(i)(31 downto 28)=x"4" and valid_i(i)='1' then
wr_en(i)<='0';
rd_en(i)<='1';
wr_en_fifo(i)<='0';
sm_wr_en(i)<=s2;
elsif data_i(i)(27 downto 24)=L and valid_i(i)='1'then
wr_en_fifo(i)<='1';
data_in_fifo(i)<=AB & data_i(i)(27 downto 0);
wr_en_count(i)<=wr_en_count(i)+1;
else
wr_en_fifo(i)<='0';
data_in_fifo(i)<=(others=>'0');
end if;

else
wr_en_fifo(i)<='0';
wr_en(i)<='0';
rd_en(i)<='1';
sm_wr_en(i)<=s2;
end if;

when s2=>
wr_en_fifo(i)<='0';
if rd_en_i='1' then
rd_en(i)<='0';
wr_en(i)<='0';
wr_en_count_i(i)<=wr_en_count(i);
sm_wr_en(i) <=s0;
end if;
end case;
end if;
end process;
end generate GEN_wr_rd_en;

process(clk)
begin
if clk'event and clk='1' then

if rd_en_i='1' then
data_count_tot_i<=data_count_tot;
data_count_tot<=(others=>'0');
rd_en_i<='0';
else
rd_en_i<=rd_en(1) and rd_en(2) and rd_en(3) and rd_en(4) and rd_en(5) and rd_en(6) and rd_en(7) and rd_en(8) and rd_en(9) and rd_en(10)
 and rd_en(11) and rd_en(12) and rd_en(13) and rd_en(14) and rd_en(15) and rd_en(16);
data_count_tot<=wr_en_count(1)+wr_en_count(2)+wr_en_count(3)+wr_en_count(4)+wr_en_count(5)+wr_en_count(6)+wr_en_count(7)+wr_en_count(8)
+wr_en_count(9)+wr_en_count(10)+wr_en_count(11)+wr_en_count(12)+wr_en_count(13)+wr_en_count(14)+wr_en_count(15)+wr_en_count(16);

end if;
end if;
end process;




GEN_7: for i in 1 to 16 generate

I_fifo: FIFO_sort_by_layer
  PORT map(
    clk=> clk,
    rst =>'0',
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


--process(clk, rd_en)

--begin

--if clk'event and clk='1' then
--case sm is

--when s0=>
--valid_e<='0';
--if rd_en_i='1' then
--valid_s<='1';
--if wr_en_count_i(1)>0 then
--rd_en_fifo<="1000000000000000";
--count_i<=wr_en_count_i(1);
--sm<=s1;
--elsif wr_en_count_i(2)>0 then
--rd_en_fifo<="0100000000000000";
--count_i<=wr_en_count_i(2);
--sm<=s2;
--elsif wr_en_count_i(3)>0 then
--rd_en_fifo<="0010000000000000";
--count_i<=wr_en_count_i(3);
--sm<=s3;
--elsif wr_en_count_i(4)>0 then
--rd_en_fifo<="0001000000000000";
--count_i<=wr_en_count_i(4);
--sm<=s4;
--elsif wr_en_count_i(5)>0 then
--rd_en_fifo<="0000100000000000";
--count_i<=wr_en_count_i(5);
--sm<=s5;
--elsif wr_en_count_i(6)>0 then
--rd_en_fifo<="0000010000000000";
--count_i<=wr_en_count_i(6);
--sm<=s6;
--elsif wr_en_count_i(7)>0 then
--rd_en_fifo<="0000001000000000";
--count_i<=wr_en_count_i(7);
--sm<=s7;
--elsif wr_en_count_i(8)>0 then
--rd_en_fifo<="0000000100000000";
--count_i<=wr_en_count_i(8);
--sm<=s8;
--elsif wr_en_count_i(9)>0 then
--rd_en_fifo<="0000000010000000";
--count_i<=wr_en_count_i(9);
--sm<=s9;
--elsif wr_en_count_i(10)>0 then
--rd_en_fifo<="0000000001000000";
--count_i<=wr_en_count_i(10);
--sm<=s10;
--elsif wr_en_count_i(11)>0 then
--rd_en_fifo<="0000000000100000";
--count_i<=wr_en_count_i(11);
--sm<=s11;
--elsif wr_en_count_i(12)>0 then
--rd_en_fifo<="0000000000010000";
--count_i<=wr_en_count_i(12);
--sm<=s12;
--elsif wr_en_count_i(13)>0 then
--rd_en_fifo<="0000000000001000";
--count_i<=wr_en_count_i(13);
--sm<=s13;
--elsif wr_en_count_i(14)>0 then
--rd_en_fifo<="0000000000000100";
--count_i<=wr_en_count_i(14);
--sm<=s14;
--elsif wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;


--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;
--else 
--valid_s<='0';
--rd_en_fifo<="0000000000000000";
--end if;

--when s1=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(2)>0 then
--rd_en_fifo<="0100000000000000";
--count_i<=wr_en_count_i(2);
--sm<=s2;
--elsif wr_en_count_i(3)>0 then
--rd_en_fifo<="0010000000000000";
--count_i<=wr_en_count_i(3);
--sm<=s3;
--elsif wr_en_count_i(4)>0 then
--rd_en_fifo<="0001000000000000";
--count_i<=wr_en_count_i(4);
--sm<=s4;
--elsif wr_en_count_i(5)>0 then
--rd_en_fifo<="0000100000000000";
--count_i<=wr_en_count_i(5);
--sm<=s5;
--elsif wr_en_count_i(6)>0 then
--rd_en_fifo<="0000010000000000";
--count_i<=wr_en_count_i(6);
--sm<=s6;
--elsif wr_en_count_i(7)>0 then
--rd_en_fifo<="0000001000000000";
--count_i<=wr_en_count_i(7);
--sm<=s7;
--elsif wr_en_count_i(8)>0 then
--rd_en_fifo<="0000000100000000";
--count_i<=wr_en_count_i(8);
--sm<=s8;
--elsif wr_en_count_i(9)>0 then
--rd_en_fifo<="0000000010000000";
--count_i<=wr_en_count_i(9);
--sm<=s9;
--elsif wr_en_count_i(10)>0 then
--rd_en_fifo<="0000000001000000";
--count_i<=wr_en_count_i(10);
--sm<=s10;
--elsif wr_en_count_i(11)>0 then
--rd_en_fifo<="0000000000100000";
--count_i<=wr_en_count_i(11);
--sm<=s11;
--elsif wr_en_count_i(12)>0 then
--rd_en_fifo<="0000000000010000";
--count_i<=wr_en_count_i(12);
--sm<=s12;
--elsif wr_en_count_i(13)>0 then
--rd_en_fifo<="0000000000001000";
--count_i<=wr_en_count_i(13);
--sm<=s13;
--elsif wr_en_count_i(14)>0 then
--rd_en_fifo<="0000000000000100";
--count_i<=wr_en_count_i(14);
--sm<=s14;
--elsif wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;


--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;


--when s2=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(3)>0 then
--rd_en_fifo<="0010000000000000";
--count_i<=wr_en_count_i(3);
--sm<=s3;
--elsif wr_en_count_i(4)>0 then
--rd_en_fifo<="0001000000000000";
--count_i<=wr_en_count_i(4);
--sm<=s4;
--elsif wr_en_count_i(5)>0 then
--rd_en_fifo<="0000100000000000";
--count_i<=wr_en_count_i(5);
--sm<=s5;
--elsif wr_en_count_i(6)>0 then
--rd_en_fifo<="0000010000000000";
--count_i<=wr_en_count_i(6);
--sm<=s6;
--elsif wr_en_count_i(7)>0 then
--rd_en_fifo<="0000001000000000";
--count_i<=wr_en_count_i(7);
--sm<=s7;
--elsif wr_en_count_i(8)>0 then
--rd_en_fifo<="0000000100000000";
--count_i<=wr_en_count_i(8);
--sm<=s8;
--elsif wr_en_count_i(9)>0 then
--rd_en_fifo<="0000000010000000";
--count_i<=wr_en_count_i(9);
--sm<=s9;
--elsif wr_en_count_i(10)>0 then
--rd_en_fifo<="0000000001000000";
--count_i<=wr_en_count_i(10);
--sm<=s10;
--elsif wr_en_count_i(11)>0 then
--rd_en_fifo<="0000000000100000";
--count_i<=wr_en_count_i(11);
--sm<=s11;
--elsif wr_en_count_i(12)>0 then
--rd_en_fifo<="0000000000010000";
--count_i<=wr_en_count_i(12);
--sm<=s12;
--elsif wr_en_count_i(13)>0 then
--rd_en_fifo<="0000000000001000";
--count_i<=wr_en_count_i(13);
--sm<=s13;
--elsif wr_en_count_i(14)>0 then
--rd_en_fifo<="0000000000000100";
--count_i<=wr_en_count_i(14);
--sm<=s14;
--elsif wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;


--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;

--when s3=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(4)>0 then
--rd_en_fifo<="0001000000000000";
--count_i<=wr_en_count_i(4);
--sm<=s4;
--elsif wr_en_count_i(5)>0 then
--rd_en_fifo<="0000100000000000";
--count_i<=wr_en_count_i(5);
--sm<=s5;
--elsif wr_en_count_i(6)>0 then
--rd_en_fifo<="0000010000000000";
--count_i<=wr_en_count_i(6);
--sm<=s6;
--elsif wr_en_count_i(7)>0 then
--rd_en_fifo<="0000001000000000";
--count_i<=wr_en_count_i(7);
--sm<=s7;
--elsif wr_en_count_i(8)>0 then
--rd_en_fifo<="0000000100000000";
--count_i<=wr_en_count_i(8);
--sm<=s8;
--elsif wr_en_count_i(9)>0 then
--rd_en_fifo<="0000000010000000";
--count_i<=wr_en_count_i(9);
--sm<=s9;
--elsif wr_en_count_i(10)>0 then
--rd_en_fifo<="0000000001000000";
--count_i<=wr_en_count_i(10);
--sm<=s10;
--elsif wr_en_count_i(11)>0 then
--rd_en_fifo<="0000000000100000";
--count_i<=wr_en_count_i(11);
--sm<=s11;
--elsif wr_en_count_i(12)>0 then
--rd_en_fifo<="0000000000010000";
--count_i<=wr_en_count_i(12);
--sm<=s12;
--elsif wr_en_count_i(13)>0 then
--rd_en_fifo<="0000000000001000";
--count_i<=wr_en_count_i(13);
--sm<=s13;
--elsif wr_en_count_i(14)>0 then
--rd_en_fifo<="0000000000000100";
--count_i<=wr_en_count_i(14);
--sm<=s14;
--elsif wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;
--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;


--when s4=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(5)>0 then
--rd_en_fifo<="0000100000000000";
--count_i<=wr_en_count_i(5);
--sm<=s5;
--elsif wr_en_count_i(6)>0 then
--rd_en_fifo<="0000010000000000";
--count_i<=wr_en_count_i(6);
--sm<=s6;
--elsif wr_en_count_i(7)>0 then
--rd_en_fifo<="0000001000000000";
--count_i<=wr_en_count_i(7);
--sm<=s7;
--elsif wr_en_count_i(8)>0 then
--rd_en_fifo<="0000000100000000";
--count_i<=wr_en_count_i(8);
--sm<=s8;
--elsif wr_en_count_i(9)>0 then
--rd_en_fifo<="0000000010000000";
--count_i<=wr_en_count_i(9);
--sm<=s9;
--elsif wr_en_count_i(10)>0 then
--rd_en_fifo<="0000000001000000";
--count_i<=wr_en_count_i(10);
--sm<=s10;
--elsif wr_en_count_i(11)>0 then
--rd_en_fifo<="0000000000100000";
--count_i<=wr_en_count_i(11);
--sm<=s11;
--elsif wr_en_count_i(12)>0 then
--rd_en_fifo<="0000000000010000";
--count_i<=wr_en_count_i(12);
--sm<=s12;
--elsif wr_en_count_i(13)>0 then
--rd_en_fifo<="0000000000001000";
--count_i<=wr_en_count_i(13);
--sm<=s13;
--elsif wr_en_count_i(14)>0 then
--rd_en_fifo<="0000000000000100";
--count_i<=wr_en_count_i(14);
--sm<=s14;
--elsif wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;

--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;


--when s5=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(6)>0 then
--rd_en_fifo<="0000010000000000";
--count_i<=wr_en_count_i(6);
--sm<=s6;
--elsif wr_en_count_i(7)>0 then
--rd_en_fifo<="0000001000000000";
--count_i<=wr_en_count_i(7);
--sm<=s7;
--elsif wr_en_count_i(8)>0 then
--rd_en_fifo<="0000000100000000";
--count_i<=wr_en_count_i(8);
--sm<=s8;
--elsif wr_en_count_i(9)>0 then
--rd_en_fifo<="0000000010000000";
--count_i<=wr_en_count_i(9);
--sm<=s9;
--elsif wr_en_count_i(10)>0 then
--rd_en_fifo<="0000000001000000";
--count_i<=wr_en_count_i(10);
--sm<=s10;
--elsif wr_en_count_i(11)>0 then
--rd_en_fifo<="0000000000100000";
--count_i<=wr_en_count_i(11);
--sm<=s11;
--elsif wr_en_count_i(12)>0 then
--rd_en_fifo<="0000000000010000";
--count_i<=wr_en_count_i(12);
--sm<=s12;
--elsif wr_en_count_i(13)>0 then
--rd_en_fifo<="0000000000001000";
--count_i<=wr_en_count_i(13);
--sm<=s13;
--elsif wr_en_count_i(14)>0 then
--rd_en_fifo<="0000000000000100";
--count_i<=wr_en_count_i(14);
--sm<=s14;
--elsif wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;
--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;

--when s6=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(7)>0 then
--rd_en_fifo<="0000001000000000";
--count_i<=wr_en_count_i(7);
--sm<=s7;
--elsif wr_en_count_i(8)>0 then
--rd_en_fifo<="0000000100000000";
--count_i<=wr_en_count_i(8);
--sm<=s8;
--elsif wr_en_count_i(9)>0 then
--rd_en_fifo<="0000000010000000";
--count_i<=wr_en_count_i(9);
--sm<=s9;
--elsif wr_en_count_i(10)>0 then
--rd_en_fifo<="0000000001000000";
--count_i<=wr_en_count_i(10);
--sm<=s10;
--elsif wr_en_count_i(11)>0 then
--rd_en_fifo<="0000000000100000";
--count_i<=wr_en_count_i(11);
--sm<=s11;
--elsif wr_en_count_i(12)>0 then
--rd_en_fifo<="0000000000010000";
--count_i<=wr_en_count_i(12);
--sm<=s12;
--elsif wr_en_count_i(13)>0 then
--rd_en_fifo<="0000000000001000";
--count_i<=wr_en_count_i(13);
--sm<=s13;
--elsif wr_en_count_i(14)>0 then
--rd_en_fifo<="0000000000000100";
--count_i<=wr_en_count_i(14);
--sm<=s14;
--elsif wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;

--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;

--when s7=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(8)>0 then
--rd_en_fifo<="0000000100000000";
--count_i<=wr_en_count_i(8);
--sm<=s8;
--elsif wr_en_count_i(9)>0 then
--rd_en_fifo<="0000000010000000";
--count_i<=wr_en_count_i(9);
--sm<=s9;
--elsif wr_en_count_i(10)>0 then
--rd_en_fifo<="0000000001000000";
--count_i<=wr_en_count_i(10);
--sm<=s10;
--elsif wr_en_count_i(11)>0 then
--rd_en_fifo<="0000000000100000";
--count_i<=wr_en_count_i(11);
--sm<=s11;
--elsif wr_en_count_i(12)>0 then
--rd_en_fifo<="0000000000010000";
--count_i<=wr_en_count_i(12);
--sm<=s12;
--elsif wr_en_count_i(13)>0 then
--rd_en_fifo<="0000000000001000";
--count_i<=wr_en_count_i(13);
--sm<=s13;
--elsif wr_en_count_i(14)>0 then
--rd_en_fifo<="0000000000000100";
--count_i<=wr_en_count_i(14);
--sm<=s14;
--elsif wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;
--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;

--when s8=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(9)>0 then
--rd_en_fifo<="0000000010000000";
--count_i<=wr_en_count_i(9);
--sm<=s9;
--elsif wr_en_count_i(10)>0 then
--rd_en_fifo<="0000000001000000";
--count_i<=wr_en_count_i(10);
--sm<=s10;
--elsif wr_en_count_i(11)>0 then
--rd_en_fifo<="0000000000100000";
--count_i<=wr_en_count_i(11);
--sm<=s11;
--elsif wr_en_count_i(12)>0 then
--rd_en_fifo<="0000000000010000";
--count_i<=wr_en_count_i(12);
--sm<=s12;
--elsif wr_en_count_i(13)>0 then
--rd_en_fifo<="0000000000001000";
--count_i<=wr_en_count_i(13);
--sm<=s13;
--elsif wr_en_count_i(14)>0 then
--rd_en_fifo<="0000000000000100";
--count_i<=wr_en_count_i(14);
--sm<=s14;
--elsif wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;

--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;

--when s9=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(10)>0 then
--rd_en_fifo<="0000000001000000";
--count_i<=wr_en_count_i(10);
--sm<=s10;
--elsif wr_en_count_i(11)>0 then
--rd_en_fifo<="0000000000100000";
--count_i<=wr_en_count_i(11);
--sm<=s11;
--elsif wr_en_count_i(12)>0 then
--rd_en_fifo<="0000000000010000";
--count_i<=wr_en_count_i(12);
--sm<=s12;
--elsif wr_en_count_i(13)>0 then
--rd_en_fifo<="0000000000001000";
--count_i<=wr_en_count_i(13);
--sm<=s13;
--elsif wr_en_count_i(14)>0 then
--rd_en_fifo<="0000000000000100";
--count_i<=wr_en_count_i(14);
--sm<=s14;
--elsif wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;
--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;

--when s10=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(11)>0 then
--rd_en_fifo<="0000000000100000";
--count_i<=wr_en_count_i(11);
--sm<=s11;
--elsif wr_en_count_i(12)>0 then
--rd_en_fifo<="0000000000010000";
--count_i<=wr_en_count_i(12);
--sm<=s12;
--elsif wr_en_count_i(13)>0 then
--rd_en_fifo<="0000000000001000";
--count_i<=wr_en_count_i(13);
--sm<=s13;
--elsif wr_en_count_i(14)>0 then
--rd_en_fifo<="0000000000000100";
--count_i<=wr_en_count_i(14);
--sm<=s14;
--elsif wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;
--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;

--when s11=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(12)>0 then
--rd_en_fifo<="0000000000010000";
--count_i<=wr_en_count_i(12);
--sm<=s12;
--elsif wr_en_count_i(13)>0 then
--rd_en_fifo<="0000000000001000";
--count_i<=wr_en_count_i(13);
--sm<=s13;
--elsif wr_en_count_i(14)>0 then
--rd_en_fifo<="0000000000000100";
--count_i<=wr_en_count_i(14);
--sm<=s14;
--elsif wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;

--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;

--when s12=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(13)>0 then
--rd_en_fifo<="0000000000001000";
--count_i<=wr_en_count_i(13);
--sm<=s13;
--elsif wr_en_count_i(14)>0 then
--rd_en_fifo<="0000000000000100";
--count_i<=wr_en_count_i(14);
--sm<=s14;
--elsif wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;


--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;

--when s13=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(14)>0 then
--rd_en_fifo<="0000000000000100";
--count_i<=wr_en_count_i(14);
--sm<=s14;
--elsif wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;
--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;

--when s14=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(15)>0 then
--rd_en_fifo<="0000000000000010";
--count_i<=wr_en_count_i(15);
--sm<=s15;
--elsif wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;

--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;

--when s15=>
--valid_s<='0';
--if count_i=1 then
--if wr_en_count_i(16)>0 then
--rd_en_fifo<="0000000000000001";
--count_i<=wr_en_count_i(16);
--sm<=s16;
--else
--rd_en_fifo<="0000000000000000";
--sm<=s17;
--end if;


--else
--count_i<=count_i-1;
--end if;

--when s16=>
--valid_s<='0';

--if count_i=1 then
--rd_en_fifo<="0000000000000000";
--sm<=s17;

--else
--count_i<=count_i-1;
--end if;

--when s17=>
--valid_s<='0';
--valid_e<='1';
--sm<=s0;

--end case;
--end if;

--end process;


process(clk, rd_en)

begin

if clk'event and clk='1' then
case sm is

when s0=>
valid_e<='0';
if rd_en_i='1' then
valid_s<='1';
if empty_fifo(1)='0' then
rd_en_fifo<="1000000000000000";
sm<=s1;
elsif empty_fifo(2)='0' then
rd_en_fifo<="0100000000000000";
sm<=s2;
elsif empty_fifo(3)='0' then
rd_en_fifo<="0010000000000000";
sm<=s3;
elsif empty_fifo(4)='0' then
rd_en_fifo<="0001000000000000";
sm<=s4;
elsif empty_fifo(5)='0' then
rd_en_fifo<="0000100000000000";
sm<=s5;
elsif empty_fifo(6)='0' then
rd_en_fifo<="0000010000000000";
sm<=s6;
elsif empty_fifo(7)='0' then
rd_en_fifo<="0000001000000000";
sm<=s7;
elsif empty_fifo(8)='0' then
rd_en_fifo<="0000000100000000";
sm<=s8;
elsif empty_fifo(9)='0' then
rd_en_fifo<="0000000010000000";
sm<=s9;
elsif empty_fifo(10)='0' then
rd_en_fifo<="0000000001000000";
sm<=s10;
elsif empty_fifo(11)='0' then
rd_en_fifo<="0000000000100000";
sm<=s11;
elsif empty_fifo(12)='0' then
rd_en_fifo<="0000000000010000";
sm<=s12;
elsif empty_fifo(13)='0' then
rd_en_fifo<="0000000000001000";
sm<=s13;
elsif empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;
else 
valid_s<='0';
rd_en_fifo<="0000000000000000";
end if;

when s1=>
valid_s<='0';
if almost_empty_fifo(1)='1' then
if empty_fifo(2)='0' then
rd_en_fifo<="0100000000000000";
sm<=s2;
elsif empty_fifo(3)='0' then
rd_en_fifo<="0010000000000000";
sm<=s3;
elsif empty_fifo(4)='0' then
rd_en_fifo<="0001000000000000";
sm<=s4;
elsif empty_fifo(5)='0' then
rd_en_fifo<="0000100000000000";
sm<=s5;
elsif empty_fifo(6)='0' then
rd_en_fifo<="0000010000000000";
sm<=s6;
elsif empty_fifo(7)='0' then
rd_en_fifo<="0000001000000000";
sm<=s7;
elsif empty_fifo(8)='0' then
rd_en_fifo<="0000000100000000";
sm<=s8;
elsif empty_fifo(9)='0' then
rd_en_fifo<="0000000010000000";
sm<=s9;
elsif empty_fifo(10)='0' then
rd_en_fifo<="0000000001000000";
sm<=s10;
elsif empty_fifo(11)='0' then
rd_en_fifo<="0000000000100000";
sm<=s11;
elsif empty_fifo(12)='0' then
rd_en_fifo<="0000000000010000";
sm<=s12;
elsif empty_fifo(13)='0' then
rd_en_fifo<="0000000000001000";
sm<=s13;
elsif empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;


when s2=>
valid_s<='0';

if almost_empty_fifo(2)='1' then
if empty_fifo(3)='0' then
rd_en_fifo<="0010000000000000";
sm<=s3;
elsif empty_fifo(4)='0' then
rd_en_fifo<="0001000000000000";
sm<=s4;
elsif empty_fifo(5)='0' then
rd_en_fifo<="0000100000000000";
sm<=s5;
elsif empty_fifo(6)='0' then
rd_en_fifo<="0000010000000000";
sm<=s6;
elsif empty_fifo(7)='0' then
rd_en_fifo<="0000001000000000";
sm<=s7;
elsif empty_fifo(8)='0' then
rd_en_fifo<="0000000100000000";
sm<=s8;
elsif empty_fifo(9)='0' then
rd_en_fifo<="0000000010000000";
sm<=s9;
elsif empty_fifo(10)='0' then
rd_en_fifo<="0000000001000000";
sm<=s10;
elsif empty_fifo(11)='0' then
rd_en_fifo<="0000000000100000";
sm<=s11;
elsif empty_fifo(12)='0' then
rd_en_fifo<="0000000000010000";
sm<=s12;
elsif empty_fifo(13)='0' then
rd_en_fifo<="0000000000001000";
sm<=s13;
elsif empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;

when s3=>
valid_s<='0';

if almost_empty_fifo(3)='1' then
if empty_fifo(4)='0' then
rd_en_fifo<="0001000000000000";
sm<=s4;
elsif empty_fifo(5)='0' then
rd_en_fifo<="0000100000000000";
sm<=s5;
elsif empty_fifo(6)='0' then
rd_en_fifo<="0000010000000000";
sm<=s6;
elsif empty_fifo(7)='0' then
rd_en_fifo<="0000001000000000";
sm<=s7;
elsif empty_fifo(8)='0' then
rd_en_fifo<="0000000100000000";
sm<=s8;
elsif empty_fifo(9)='0' then
rd_en_fifo<="0000000010000000";
sm<=s9;
elsif empty_fifo(10)='0' then
rd_en_fifo<="0000000001000000";
sm<=s10;
elsif empty_fifo(11)='0' then
rd_en_fifo<="0000000000100000";
sm<=s11;
elsif empty_fifo(12)='0' then
rd_en_fifo<="0000000000010000";
sm<=s12;
elsif empty_fifo(13)='0' then
rd_en_fifo<="0000000000001000";
sm<=s13;
elsif empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;

when s4=>
valid_s<='0';

if almost_empty_fifo(4)='1' then
if empty_fifo(5)='0' then
rd_en_fifo<="0000100000000000";
sm<=s5;
elsif empty_fifo(6)='0' then
rd_en_fifo<="0000010000000000";
sm<=s6;
elsif empty_fifo(7)='0' then
rd_en_fifo<="0000001000000000";
sm<=s7;
elsif empty_fifo(8)='0' then
rd_en_fifo<="0000000100000000";
sm<=s8;
elsif empty_fifo(9)='0' then
rd_en_fifo<="0000000010000000";
sm<=s9;
elsif empty_fifo(10)='0' then
rd_en_fifo<="0000000001000000";
sm<=s10;
elsif empty_fifo(11)='0' then
rd_en_fifo<="0000000000100000";
sm<=s11;
elsif empty_fifo(12)='0' then
rd_en_fifo<="0000000000010000";
sm<=s12;
elsif empty_fifo(13)='0' then
rd_en_fifo<="0000000000001000";
sm<=s13;
elsif empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;

when s5=>
valid_s<='0';
if almost_empty_fifo(5)='1' then
if empty_fifo(6)='0' then
rd_en_fifo<="0000010000000000";
sm<=s6;
elsif empty_fifo(7)='0' then
rd_en_fifo<="0000001000000000";
sm<=s7;
elsif empty_fifo(8)='0' then
rd_en_fifo<="0000000100000000";
sm<=s8;
elsif empty_fifo(9)='0' then
rd_en_fifo<="0000000010000000";
sm<=s9;
elsif empty_fifo(10)='0' then
rd_en_fifo<="0000000001000000";
sm<=s10;
elsif empty_fifo(11)='0' then
rd_en_fifo<="0000000000100000";
sm<=s11;
elsif empty_fifo(12)='0' then
rd_en_fifo<="0000000000010000";
sm<=s12;
elsif empty_fifo(13)='0' then
rd_en_fifo<="0000000000001000";
sm<=s13;
elsif empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;


when s6=>
valid_s<='0';
if almost_empty_fifo(6)='1' then
if empty_fifo(7)='0' then
rd_en_fifo<="0000001000000000";
sm<=s7;
elsif empty_fifo(8)='0' then
rd_en_fifo<="0000000100000000";
sm<=s8;
elsif empty_fifo(9)='0' then
rd_en_fifo<="0000000010000000";
sm<=s9;
elsif empty_fifo(10)='0' then
rd_en_fifo<="0000000001000000";
sm<=s10;
elsif empty_fifo(11)='0' then
rd_en_fifo<="0000000000100000";
sm<=s11;
elsif empty_fifo(12)='0' then
rd_en_fifo<="0000000000010000";
sm<=s12;
elsif empty_fifo(13)='0' then
rd_en_fifo<="0000000000001000";
sm<=s13;
elsif empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;

when s7=>
valid_s<='0';

if almost_empty_fifo(7)='1' then
if empty_fifo(8)='0' then
rd_en_fifo<="0000000100000000";
sm<=s8;
elsif empty_fifo(9)='0' then
rd_en_fifo<="0000000010000000";
sm<=s9;
elsif empty_fifo(10)='0' then
rd_en_fifo<="0000000001000000";
sm<=s10;
elsif empty_fifo(11)='0' then
rd_en_fifo<="0000000000100000";
sm<=s11;
elsif empty_fifo(12)='0' then
rd_en_fifo<="0000000000010000";
sm<=s12;
elsif empty_fifo(13)='0' then
rd_en_fifo<="0000000000001000";
sm<=s13;
elsif empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;

when s8=>
valid_s<='0';

if almost_empty_fifo(8)='1' then
if empty_fifo(9)='0' then
rd_en_fifo<="0000000010000000";
sm<=s9;
elsif empty_fifo(10)='0' then
rd_en_fifo<="0000000001000000";
sm<=s10;
elsif empty_fifo(11)='0' then
rd_en_fifo<="0000000000100000";
sm<=s11;
elsif empty_fifo(12)='0' then
rd_en_fifo<="0000000000010000";
sm<=s12;
elsif empty_fifo(13)='0' then
rd_en_fifo<="0000000000001000";
sm<=s13;
elsif empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;

when s9=>
valid_s<='0';
if almost_empty_fifo(9)='1' then
if empty_fifo(10)='0' then
rd_en_fifo<="0000000001000000";
sm<=s10;
elsif empty_fifo(11)='0' then
rd_en_fifo<="0000000000100000";
sm<=s11;
elsif empty_fifo(12)='0' then
rd_en_fifo<="0000000000010000";
sm<=s12;
elsif empty_fifo(13)='0' then
rd_en_fifo<="0000000000001000";
sm<=s13;
elsif empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;

when s10=>
valid_s<='0';
if almost_empty_fifo(10)='1' then
if empty_fifo(11)='0' then
rd_en_fifo<="0000000000100000";
sm<=s11;
elsif empty_fifo(12)='0' then
rd_en_fifo<="0000000000010000";
sm<=s12;
elsif empty_fifo(13)='0' then
rd_en_fifo<="0000000000001000";
sm<=s13;
elsif empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;

when s11=>
valid_s<='0';

if almost_empty_fifo(11)='1' then
if empty_fifo(12)='0' then
rd_en_fifo<="0000000000010000";
sm<=s12;
elsif empty_fifo(13)='0' then
rd_en_fifo<="0000000000001000";
sm<=s13;
elsif empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;

when s12=>
valid_s<='0';
if almost_empty_fifo(12)='1' then
if empty_fifo(13)='0' then
rd_en_fifo<="0000000000001000";
sm<=s13;
elsif empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;

when s13=>
valid_s<='0';
if almost_empty_fifo(13)='1' then
if empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;

when s14=>
valid_s<='0';
if almost_empty_fifo(14)='1' then
if empty_fifo(14)='0' then
rd_en_fifo<="0000000000000100";
sm<=s14;
elsif empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;

when s15=>
valid_s<='0';

if almost_empty_fifo(15)='1' then
if empty_fifo(15)='0' then
rd_en_fifo<="0000000000000010";
sm<=s15;
elsif empty_fifo(16)='0' then
rd_en_fifo<="0000000000000001";
sm<=s16;


else
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;

end if;


when s16=>
valid_s<='0';

if almost_empty_fifo(16)='1' then
rd_en_fifo<="0000000000000000";
sm<=s17;
end if;


when s17=>
valid_s<='0';
valid_e<='1';
sm<=s0;

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
PRBF1_to_PRBF2_i(31 downto 28)<=x"2";
PRBF1_to_PRBF2_i(27 downto 0)<=(others=>'0');
elsif valid_e='1' then
PRBF1_to_PRBF2_i(31 downto 28)<=x"4";
PRBF1_to_PRBF2_i(27 downto 8)<=(others=>'0');
PRBF1_to_PRBF2_i(7 downto 0)<=data_count_tot_i(7 downto 0);

else
PRBF1_to_PRBF2_i<=data_out_fifo_valid(1) or data_out_fifo_valid(2) or data_out_fifo_valid(3) or data_out_fifo_valid(4) or
data_out_fifo_valid(5) or data_out_fifo_valid(6) or data_out_fifo_valid(7) or data_out_fifo_valid(8) or data_out_fifo_valid(9) 
or data_out_fifo_valid(10) or data_out_fifo_valid(11) or data_out_fifo_valid(12) or data_out_fifo_valid(13)or data_out_fifo_valid(14)
or data_out_fifo_valid(15)or data_out_fifo_valid(16);
end if;
--end if;

end process;



process(clk)
begin
if clk'event and clk='1' then
case sm_valid is
when s0=> 
if PRBF1_to_PRBF2_i(31 downto 28)=x"2" then
PRBF1_to_PRBF2_out<=PRBF1_to_PRBF2_i;
PRBF2_valid_out<='1';
sm_valid<=s1;
else
PRBF1_to_PRBF2_out<=(others=>'0');
PRBF2_valid_out<='0';
end if;

when s1=>
if PRBF1_to_PRBF2_i(31 downto 28)=x"4" then
PRBF1_to_PRBF2_out<=PRBF1_to_PRBF2_i;
PRBF2_valid_out<='1';
sm_valid<=s0;
else
PRBF1_to_PRBF2_out<=PRBF1_to_PRBF2_i;
PRBF2_valid_out<='1';
end if;
end case;
end if;
end process;


end Behavioral;
