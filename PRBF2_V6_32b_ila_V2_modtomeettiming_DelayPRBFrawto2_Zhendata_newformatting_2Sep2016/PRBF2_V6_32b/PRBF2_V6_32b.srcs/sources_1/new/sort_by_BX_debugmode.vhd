
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

use IEEE.std_logic_signed.all;

use IEEE.NUMERIC_STD.ALL;

library work;
use work.my_package.all;

entity sort_by_BX is
  Port (
  clk: in std_logic;
  serial_layer_in: in serial_layer_ar_out;
  rd_en: in std_logic;
  wr_en: in std_logic;
  AB: in std_logic_vector(3 downto 0);
  B: in integer;
  PRBFraw_to_PRBF1_out: out std_logic_vector(31 downto 0);
  PRBF1_valid_out: out std_logic
   );
end sort_by_BX;

architecture Behavioral of sort_by_BX is

COMPONENT FIFO_sort_by_BX
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    almost_empty : OUT STD_LOGIC;
        valid : OUT STD_LOGIC;
    data_count : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

signal wr_en_fifo, wr_en_fifo_i, rd_en_fifo, almost_empty_fifo, full_fifo, empty_fifo, valid_fifo: std_logic_vector(1 to 8);
type data_count_fifo_ar is array(1 to 8) of std_logic_vector(7 downto 0);
signal data_count_fifo, wr_en_count, wr_en_count_i: data_count_fifo_ar;
type data_out_fifo_ar is array (1 to 8) of std_logic_vector(31 downto 0);
signal data_out_fifo, data_out_fifo_valid, data_in_fifo, data_in_fifo_i: data_out_fifo_ar;

signal data_count_tot, data_count_tot_i : std_logic_vector(7 downto 0);

signal valid_s, valid_e, valid_s_d, valid_e_d: std_logic;

type state_machine is(s0,s1,s2,s3,s4,s5,s6,s7,s8,s9);
signal sm: state_machine;

  signal count_i, wr_en_count_tot: std_logic_vector(7 downto 0):=(others=>'0');
  
  signal rd_en_i, rd_en_ii: std_logic;
  
  signal PRBFraw_to_PRBF1_i: std_logic_vector(31 downto 0);

type state_machine_valid is (s0,s1);
signal sm_valid: state_machine_valid;

begin


--wr_en_count_tot<=wr_en_count(1)+wr_en_count(2)+wr_en_count(3)+wr_en_count(4)+wr_en_count(5)+wr_en_count(6)+wr_en_count(7)+wr_en_count(8);


process(clk, rd_en)
begin
if clk='1' and clk'event then
rd_en_i<=rd_en;
end if;
end process;

GEN_8: for i in 1 to 8 generate
process(clk, wr_en, serial_layer_in)
begin
if clk'event and clk='1' then
    if rd_en='1' then
      data_count_tot<=data_count_fifo(1)+data_count_fifo(2)+data_count_fifo(3)+data_count_fifo(4)+data_count_fifo(5)+data_count_fifo(6)+data_count_fifo(7)+data_count_fifo(8);
        wr_en_count_i(i)<=wr_en_count(i);
        wr_en_count(i)<=(others=>'0');
        
    else
    
        
     if data_count_tot<53 then
            if serial_layer_in(i)(23 downto 0)=0 then
                wr_en_fifo(i)<='0';
            elsif serial_layer_in(i)(23 downto 20)=B and wr_en='1' then
                wr_en_fifo(i)<='1';
                wr_en_count(i)<=wr_en_count(i)+1;
                data_in_fifo(i)<=AB & serial_layer_in(i);
                else
                wr_en_fifo(i)<='0';
               
            end if;
            else
            wr_en_fifo(i)<='0';
            end if;
       
    end if;
end if;
end process;



I_fifo: FIFO_sort_by_BX
  PORT map(
    clk=> clk,
    rst =>'0',
    din =>data_in_fifo(i),
    wr_en => wr_en_fifo(i),
    rd_en => rd_en_fifo(i),
    dout =>data_out_fifo(i),
    full =>full_fifo(i),
    empty =>empty_fifo(i),
    almost_empty =>almost_empty_fifo(i),
    valid=> valid_fifo(i),
    data_count => data_count_fifo(i)
  );
  
  process(clk)
  begin
  if clk'event and clk='1' then
  if valid_fifo(i)='1' then
  data_out_fifo_valid(i)<=data_out_fifo(i);
  else
  data_out_fifo_valid(i)<=(others=>'0');
  end if;
  end if;
  end process;
  
end generate GEN_8;

  process(clk)
  begin
  if clk'event and clk='1' then
  valid_s_d<=valid_s;
  valid_e_d<=valid_e;
  end if;
  end process;
  


process(clk)
begin
if clk'event and clk='1' then
rd_en_ii<=rd_en_i;
data_count_tot_i<=data_count_tot;
end if;
end process;

process(clk, rd_en)

begin

if clk'event and clk='1' then
case sm is

when s0=>
valid_e<='0';
if rd_en_ii='1' then
valid_s<='1';
if empty_fifo(1)='0' then
rd_en_fifo<="10000000";
sm<=s1;
elsif empty_fifo(2)='0' then
rd_en_fifo<="01000000";
sm<=s2;
elsif empty_fifo(3)='0' then
rd_en_fifo<="00100000";
sm<=s3;
elsif empty_fifo(4)='0' then
rd_en_fifo<="00010000";
sm<=s4;
elsif empty_fifo(5)='0' then
rd_en_fifo<="00001000";
sm<=s5;
elsif empty_fifo(6)='0' then
rd_en_fifo<="00000100";
sm<=s6;
elsif empty_fifo(7)='0' then
rd_en_fifo<="00000010";
sm<=s7;
elsif empty_fifo(8)='0' then
rd_en_fifo<="00000001";
sm<=s8;
else
rd_en_fifo<="00000000";
sm<=s9;
end if;
else 
valid_s<='0';
rd_en_fifo<="00000000";
end if;

when s1=>
valid_s<='0';
if almost_empty_fifo(1)='1' then
if empty_fifo(2)='0' then
rd_en_fifo<="01000000";
sm<=s2;
elsif empty_fifo(3)='0' then
rd_en_fifo<="00100000";
sm<=s3;
elsif empty_fifo(4)='0' then
rd_en_fifo<="00010000";
sm<=s4;
elsif empty_fifo(5)='0' then
rd_en_fifo<="00001000";
sm<=s5;
elsif empty_fifo(6)='0' then
rd_en_fifo<="00000100";
sm<=s6;
elsif empty_fifo(7)='0' then
rd_en_fifo<="00000010";
sm<=s7;
elsif empty_fifo(8)='0' then
rd_en_fifo<="00000001";
sm<=s8;

else
rd_en_fifo<="00000000";
sm<=s9;
end if;
end if;

when s2=>
valid_s<='0';
if almost_empty_fifo(2)='1' then
if empty_fifo(3)='0' then
rd_en_fifo<="00100000";
sm<=s3;
elsif empty_fifo(4)='0' then
rd_en_fifo<="00010000";
sm<=s4;
elsif empty_fifo(5)='0' then
rd_en_fifo<="00001000";
sm<=s5;
elsif empty_fifo(6)='0' then
rd_en_fifo<="00000100";
sm<=s6;
elsif empty_fifo(7)='0' then
rd_en_fifo<="00000010";
sm<=s7;
elsif empty_fifo(8)='0' then
rd_en_fifo<="00000001";
sm<=s8;

else
rd_en_fifo<="00000000";
sm<=s9;
end if;
end if;

when s3=>
valid_s<='0';
if almost_empty_fifo(3)='1' then
if empty_fifo(4)='0' then
rd_en_fifo<="00010000";
sm<=s4;
elsif empty_fifo(5)='0' then
rd_en_fifo<="00001000";
sm<=s5;
elsif empty_fifo(6)='0' then
rd_en_fifo<="00000100";
sm<=s6;
elsif empty_fifo(7)='0' then
rd_en_fifo<="00000010";
sm<=s7;
elsif empty_fifo(8)='0' then
rd_en_fifo<="00000001";
sm<=s8;
else
rd_en_fifo<="00000000";
sm<=s9;
end if;
end if;

when s4=>
valid_s<='0';
if almost_empty_fifo(4)='1' then
if empty_fifo(5)='0' then
rd_en_fifo<="00001000";
sm<=s5;
elsif empty_fifo(6)='0' then
rd_en_fifo<="00000100";
sm<=s6;
elsif empty_fifo(7)='0' then
rd_en_fifo<="00000010";
sm<=s7;
elsif empty_fifo(8)='0' then
rd_en_fifo<="00000001";
sm<=s8;

else
rd_en_fifo<="00000000";
sm<=s9;
end if;
end if;

when s5=>
valid_s<='0';
if almost_empty_fifo(5)='1' then
if empty_fifo(6)='0' then
rd_en_fifo<="00000100";
sm<=s6;
elsif empty_fifo(7)='0' then
rd_en_fifo<="00000010";
sm<=s7;
elsif empty_fifo(8)='0' then
rd_en_fifo<="00000001";
sm<=s8;

else
rd_en_fifo<="00000000";
sm<=s9;
end if;
end if;


when s6=>
valid_s<='0';
if almost_empty_fifo(6)='1' then
if empty_fifo(7)='0' then
rd_en_fifo<="00000010";
sm<=s7;
elsif empty_fifo(8)='0' then
rd_en_fifo<="00000001";
sm<=s8;

else
rd_en_fifo<="00000000";
sm<=s9;
end if;
end if;

when s7=>
valid_s<='0';
if almost_empty_fifo(7)='1' then
if empty_fifo(8)='0' then
rd_en_fifo<="00000001";
sm<=s8;
else
rd_en_fifo<="00000000";
sm<=s9;
end if;
end if;


when s8=>
valid_s<='0';
if almost_empty_fifo(8)='1' then
rd_en_fifo<="00000000";
sm<=s9;
end if;


when s9=>
valid_s<='0';
valid_e<='1';
sm<=s0;
end case;
end if;
end process;


process(clk)
begin

if valid_s_d='1' then
PRBFraw_to_PRBF1_i(31 downto 28)<=x"2";
PRBFraw_to_PRBF1_i(27 downto 0)<=(others=>'0');
elsif valid_e_d='1' then
PRBFraw_to_PRBF1_i(31 downto 28)<=x"4";
PRBFraw_to_PRBF1_i(27 downto 7)<=(others=>'0');
PRBFraw_to_PRBF1_i(7 downto 0)<=data_count_tot_i;

else
PRBFraw_to_PRBF1_i<=data_out_fifo_valid(1) or data_out_fifo_valid(2) or data_out_fifo_valid(3) or data_out_fifo_valid(4) or
data_out_fifo_valid(5) or data_out_fifo_valid(6) or data_out_fifo_valid(7) or data_out_fifo_valid(8);
end if;
end process;

process(clk)
begin
if clk'event and clk='1' then
case sm_valid is
when s0=> 
if PRBFraw_to_PRBF1_i(31 downto 28)=x"2" then
PRBFraw_to_PRBF1_out<=PRBFraw_to_PRBF1_i;
PRBF1_valid_out<='1';
sm_valid<=s1;
else
PRBFraw_to_PRBF1_out<=(others=>'0');
PRBF1_valid_out<='0';
end if;

when s1=>
if PRBFraw_to_PRBF1_i(31 downto 28)=x"4" then
PRBFraw_to_PRBF1_out<=PRBFraw_to_PRBF1_i;
PRBF1_valid_out<='1';
sm_valid<=s0;
else
PRBFraw_to_PRBF1_out<=PRBFraw_to_PRBF1_i;
PRBF1_valid_out<='1';
end if;
end case;
end if;
end process;


end Behavioral;
