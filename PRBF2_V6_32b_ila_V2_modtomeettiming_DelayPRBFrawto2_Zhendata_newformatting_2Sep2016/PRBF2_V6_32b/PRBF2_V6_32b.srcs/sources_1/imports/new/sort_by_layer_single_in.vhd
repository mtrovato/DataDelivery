
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

use IEEE.std_logic_signed.all;

use IEEE.NUMERIC_STD.ALL;

library work;
use work.my_package.all;

entity sort_by_layer_single_in is
  Port (
  clk: in std_logic;
  PRBF1_from_board: in std_logic_vector(31 downto 0);
  AB: in std_logic_vector(3 downto 0);
  L: in integer;
  PRBF1_to_PRBF2_out: out std_logic_vector(31 downto 0)
   );
end sort_by_layer_single_in;

architecture Behavioral of sort_by_layer_single_in is

COMPONENT FIFO_sort_by_layer
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
        valid : OUT STD_LOGIC
  );
END COMPONENT;

signal wr_en_fifo, rd_en_fifo, almost_empty_fifo, full_fifo, empty_fifo, valid_fifo: std_logic;

-------------type data_count_fifo_ar is array(1 to 7) of std_logic_vector(7 downto 0);
signal data_count_fifo, wr_en_count, wr_en_count_i, count_wr_en: std_logic_vector(7 downto 0);
--type data_out_fifo_ar is array (1 to 7) of std_logic_vector(31 downto 0);
signal data_out_fifo, data_out_fifo_valid, data_in_fifo: std_logic_vector(31 downto 0);

signal data_count_tot: std_logic_vector(7 downto 0);

signal valid_s, valid_e: std_logic;

type state_machine is(s0,s1,s2);
signal sm: state_machine;

  signal count_i, wr_en_count_tot: std_logic_vector(7 downto 0):=(others=>'0');
  
  signal rd_en_i, rd_en_ii: std_logic;

signal wr_en, rd_en: std_logic;

type state_machine_wr is (s0,s1);
--type state_machine_wr_ar is array (1 to 7) of state_machine_wr;
signal sm_wr_en: state_machine_wr;

type state_machine_rd is (s0,s1);
signal sm_rd_en: state_machine_rd;

begin

process(clk)
begin

if clk'event and clk='1' then
case sm_rd_en is
when s0=> 
rd_en_i<=rd_en ;
if rd_en_i='1' then
rd_en_ii<='1';
sm_rd_en<=s1;
end if;

when s1=>
rd_en_ii<='0';
rd_en_i<='0';
sm_rd_en<=s0;
end case;
end if;
end process;



process(clk)
begin
if clk'event and clk='1' then
case sm_wr_en is
when s0=>
if rd_en_i='1' then
rd_en<='0';
end if;

if PRBF1_from_board(31 downto 28)=x"2" then
wr_en<='1';
count_wr_en<=(others=>'0');
sm_wr_en<=s1;
else
wr_en<='0';
end if;

when s1=>
if count_wr_en<60 then
if PRBF1_from_board(31 downto 28)=x"4" then
count_wr_en<=(others=>'0');
rd_en<='1';
wr_en<='0';
sm_wr_en<=s0;
else
rd_en<='0';
count_wr_en<=count_wr_en+1;
end if;
else
rd_en<='1';
wr_en<='0';
count_wr_en<=x"00";
sm_wr_en<=s0;

end if;
end case;
end if;
end process;
wr_en_count_tot<=wr_en_count;


process(clk)
begin
if clk'event and clk='1' then
    if rd_en_i='1' then
        wr_en_count_i<=wr_en_count;
        wr_en_count<=(others=>'0');
    else
    if wr_en_fifo='1' then
    wr_en_count<=wr_en_count+1;
    end if;
    
     if wr_en_count_tot<110 then
            if PRBF1_from_board(23 downto 0)=0 then
                wr_en_fifo<='0';
            elsif PRBF1_from_board(27 downto 24)=L and wr_en='1' then
                wr_en_fifo<='1';
                
                data_in_fifo<=AB & PRBF1_from_board(27 downto 0);
                else
                wr_en_fifo<='0';
               
            end if;
            else
            wr_en_fifo<='0';
            end if;
       
    end if;
end if;
end process;

I_fifo: FIFO_sort_by_layer
  PORT map(
    clk=> clk,
    rst =>'0',
    din =>data_in_fifo,
    wr_en => wr_en_fifo,
    rd_en => rd_en_fifo,
    dout =>data_out_fifo,
    full =>full_fifo,
    empty =>empty_fifo,
    valid=> valid_fifo
  );
  
  process(clk)
  begin
  if valid_fifo='1' then
  data_out_fifo_valid<=data_out_fifo;
  else
  data_out_fifo_valid<=(others=>'0');
  end if;
  end process;
  


process(clk, rd_en)

begin

if clk'event and clk='1' then
case sm is

when s0=>
valid_e<='0';
if rd_en_ii='1' then
        data_count_tot<=wr_en_count_i;

valid_s<='1';
if wr_en_count_i>0 then
rd_en_fifo<='1';
count_i<=wr_en_count_i;
sm<=s1;
else
rd_en_fifo<='0';
sm<=s2;
end if;
else 
valid_s<='0';
rd_en_fifo<='0';
end if;

when s1=>
valid_s<='0';
if count_i=1 then
rd_en_fifo<='0';
sm<=s2;
else
count_i<=count_i-1;
end if;

when s2=>
valid_s<='0';
valid_e<='1';
sm<=s0;
end case;
end if;
end process;

process(clk)
begin

if valid_s='1' then
PRBF1_to_PRBF2_out(31 downto 28)<=x"2";
PRBF1_to_PRBF2_out(27 downto 0)<=(others=>'0');
elsif valid_e='1' then
PRBF1_to_PRBF2_out(31 downto 28)<=x"4";
PRBF1_to_PRBF2_out(27 downto 7)<=(others=>'0');
PRBF1_to_PRBF2_out(7 downto 0)<=data_count_tot;

else
PRBF1_to_PRBF2_out<=data_out_fifo_valid;
end if;
end process;


end Behavioral;

