----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2015 11:25:43 AM
-- Design Name: 
-- Module Name: Data_gen_V2_TOP - Behavioral
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

entity PRBF2_TOP is
  Port ( 
  clk_n: in std_logic;
  clk_p: in std_logic;
  led: out std_logic
  );
end PRBF2_TOP;

architecture Behavioral of PRBF2_TOP is

component Data_gen_TX_TOP is
 Port ( 
 clk_tx: in std_logic;
 en_tx: in std_logic;
 data_gen_s: out data_gen_TX_s_ar;
  tx_valid: out std_logic_vector(1 to 40) ;
--   module_gen_o: out module_ar;
   CIC_R_gen_o: out CIC_ar;
   CIC_L_gen_o: out CIC_ar
 );
end component;

signal tx_valid, rx_valid,rx_valid_d: std_logic_vector(1 to 40);

-- signal module_gen_o:  module_ar;
 signal CIC_R_gen_o:  CIC_ar;
 signal CIC_L_gen_o:  CIC_ar;


component Data_gen_RX_TOP is
  Port ( 
  clk_rx: in std_logic;
  reset: in std_logic;
  data_in_s: data_gen_TX_s_ar;
   rx_valid: in std_logic_vector(1 to 40) ;
  CIC_R_rx: out CIC_ar;
  CIC_L_rx: out CIC_ar
  --count_i_out: out std_logic_vector(7 downto 0);
  --data_p_i_outLS32b: out std_logic_vector(31 downto 0)  

  );
end component;

--signal count_i_out: std_logic_vector(7 downto 0);
--signal data_p_i_outLS32b: std_logic_vector(31 downto 0); 
  
signal clk: std_logic;
signal count_rx, count_tx: std_logic_vector(7 downto 0);

signal en_tx: std_logic;
signal reset, reset_vio: std_logic;                --from user via vio

signal data_gen_TX_s, data_gen_RX_s, data_gen_RX_s_d: data_gen_TX_s_ar;

signal CIC_R_rx, CIC_L_rx: CIC_ar;

signal en_2rx0, en_2rx1: std_logic;
signal count_2rx: std_logic_vector(7 downto 0):=(others=>'0');



component lx_en_gen is
  Port ( 
 clk: in std_logic;
-- reset: in std_logic; --no need to have reset here since en which controls
-- everything depends on the reset 
 en: in std_logic;
 en_lx: out std_logic_vector(1 to 10);
 wr_en: out std_logic;
 rd_en: out std_logic
  );
end component;

signal wr_en, rd_en,wr_en0, rd_en0,wr_en1, rd_en1 : std_logic;
signal en_lx,en_lx0,en_lx1: std_logic_vector(1 to 10);

component serialize_for_PRBF1 is
  Port ( 
  clk: in std_logic;
  reset: in std_logic;
  CIC_R_rx: in CIC_ar;
  CIC_L_rx: in CIC_ar;
  en_lx: in std_logic_vector(1 to 10);
  serial_layer_to_PRBF1_1: out serial_layer_ar_out;
  serial_layer_to_PRBF1_2: out serial_layer_ar_out;
  --debug
  z4b_i_out_1: out vec4_times40mod_ar;
  type1b_out_1: out std_logic_vector(1 to 40);
  count_i_out1: out vec4_times40mod_ar;
  modid_in_out1: out vec8_times40mod_ar;
  serial_layer_i_out1: out serial_layer_ar;
  en_out1: out std_logic_vector(1 to 40);  
  z4b_i_out_2: out vec4_times40mod_ar;
  type1b_out_2: out std_logic_vector(1 to 40);
  count_i_out2: out vec4_times40mod_ar;
  modid_in_out2: out vec8_times40mod_ar;
  serial_layer_i_out2: out serial_layer_ar;
  en_out2: out std_logic_vector(1 to 40)  

  );
end component;

signal serial_layer_to_PRBF1_1_0, serial_layer_to_PRBF1_2_0: serial_layer_ar_out;

  
    signal serial_layer_to_PRBF1_1, serial_layer_to_PRBF1_2: serial_layer_ar_out;

component From_PRBFraw_to_PRBF1 is
  Port ( 
  clk: in std_logic;
-- reset: in std_logic; --no need to have reset here since wr_en0, rd_en0 which controls
-- everything depends on the reset 
  wr_en: in std_logic;
  rd_en: in std_logic;
  serial_layer_to_PRBF1_1: in serial_layer_ar_out;
  serial_layer_to_PRBF1_2: in serial_layer_ar_out;
  PRBFraw_to_PRBF1_out_1: out PRBFraw_to_PRBF1_ar;
  PRBFraw_to_PRBF1_out_2: out PRBFraw_to_PRBF1_ar;
     PRBF1_valid_out_1: out std_logic_vector(1 to 8);
      PRBF1_valid_out_2: out std_logic_vector(1 to 8));
end component;

signal PRBFraw_to_PRBF1_1, PRBFraw_to_PRBF1_2:PRBFraw_to_PRBF1_ar;
signal PRBFraw_to_PRBF1_1_0, PRBFraw_to_PRBF1_2_0:PRBFraw_to_PRBF1_ar;
signal PRBFraw_to_PRBF1_1_1, PRBFraw_to_PRBF1_2_1:PRBFraw_to_PRBF1_ar;

signal PRBF1_valid_out_1, PRBF1_valid_out_2, PRBF1_valid_i1, PRBF1_valid_i2: std_logic_vector(1 to 8);


signal PRBF1_to_PRBF2_1, PRBF1_to_PRBF2_2: to_PRBF2_ar;

--MT mocking latency over the BP (7*2 (FIFOS)+Aurora=44)
COMPONENT c_shift_ram_0
  PORT (
    D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    CLK : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;
COMPONENT c_shift_ram_1
  PORT (
    D : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    CLK : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END COMPONENT;
COMPONENT c_shift_ram_20d_32b
  PORT (
    D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    CLK : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;
COMPONENT c_shift_ram_20d_1b
  PORT (
    D : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    CLK : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END COMPONENT;

--need to keep ila otherwise not timing report generated
--COMPONENT ila_stub

--PORT (
--	clk : IN STD_LOGIC;
      

--	probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
--);
--END COMPONENT  ;

COMPONENT ila_stub

PORT (
	clk : IN STD_LOGIC;

	probe0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0); 
    probe1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe7 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe8 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe9 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe10 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe11 : IN STD_LOGIC_VECTOR(39 DOWNTO 0); 
    probe12 : IN STD_LOGIC_VECTOR(39 DOWNTO 0); 
    probe13 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe14 : IN STD_LOGIC_VECTOR(1 DOWNTO 0); 
    probe15 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
    probe16 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
    probe17 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
    probe18 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
    probe19 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe20 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe21 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe22 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
    probe23 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
    probe24 : IN STD_LOGIC_VECTOR(23 DOWNTO 0); 
    probe25 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
    probe26 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    probe27 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    probe28 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);

    probe29 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe30 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe31 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe32 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe33 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe34 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe35 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe36 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe37 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe38 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe39 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe40 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe41 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe42 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe43 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe44 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe45 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe46 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe47 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe48 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe49 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe50 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)    
    

    
    


);
END COMPONENT  ;


COMPONENT vio_0
  PORT (
    clk : IN STD_LOGIC;
    probe_in0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END COMPONENT;



signal PRBF1_to_PRBF2_v2, PRBF1_to_PRBF2_v2_m1, PRBF1_to_PRBF2_v2_m2: to_PRBF2_ar;


signal bx_i: std_logic_vector(7 downto 0);
signal PRBF2_to_Aurora_ila: std_logic_vector(31 downto 0);


component From_PRBF1_to_PRBF2_v2 is
  Port (
  clk: in std_logic;
-- reset: in std_logic; --no need to have reset here since en_rx0,1 which controls
-- everything depends on the reset   
    en_rx0: in std_logic;
  en_rx1: in std_logic;
  PRBF1_from_BP_1: in PRBF1_from_BP_ar;
    PRBF1_from_BP_2: in PRBF1_from_BP_ar;
    PRBF1_int_1: in std_logic_vector(31 downto 0);
    PRBF1_int_2: in std_logic_vector(31 downto 0);
    PRBF1_valid_from_BP_1: in std_logic_vector(1 to 7);
        PRBF1_valid_from_BP_2: in std_logic_vector(1 to 7);
        PRBF1_valid_int_1: in std_logic;
        PRBF1_valid_int_2: in std_logic;
  PRBF1_to_PRBF2_out: out to_PRBF2_ar;
  PRBF2_valid_out: out std_logic_vector(1 to 6);
  debug_out: out std_logic_vector(68 downto 0);
  internal_counting_out1: out count_ar;
  internal_counting_out2: out count_ar;

--debug signals for writing SM  
  sm_wr_out1 : out vec2_times16_timeslayer_ar;
  data_i_out1 : out data_itimeslayer_ar;
  valid_i_out1 : out vec16_timeslayer_ar;
  rd_en_ii_out1 : out std_logic_vector(1 to 6);
  data_count_tot_out1 : out vec7_timeslayer_ar;
  en_fifo_out1 : out std_logic_vector(1 to 6);  
  wr_en_fifo_out1 : out vec16_timeslayer_ar;
  wr_en_count_out1 : out data_count_fifo_timeslayer_ar;
  data_count_fifo_out1: out data_count_fifo_timeslayer_ar;    
  wr_en_out1 : out vec16_timeslayer_ar;
  rd_en_out1 : out vec16_timeslayer_ar;

  sm_wr_out2 : out vec2_times16_timeslayer_ar;  
  data_i_out2 : out data_itimeslayer_ar; 
  valid_i_out2 : out vec16_timeslayer_ar;
  rd_en_ii_out2 : out std_logic_vector(1 to 6);
  data_count_tot_out2 : out vec7_timeslayer_ar;
  en_fifo_out2 : out std_logic_vector(1 to 6);    
  wr_en_fifo_out2 : out vec16_timeslayer_ar;
  wr_en_count_out2 : out data_count_fifo_timeslayer_ar;
  data_count_fifo_out2: out data_count_fifo_timeslayer_ar;      
  wr_en_out2 : out vec16_timeslayer_ar;
  rd_en_out2 : out vec16_timeslayer_ar;


  PRBF1_to_PRBF2_i_1_out : out to_PRBF2_ar;
  PRBF1_to_PRBF2_i_2_out : out to_PRBF2_ar;
  --SM controlling datacount
  sm_rd2_out1 : out vec2_timeslayer_ar;
  sm_rd2_out2 : out vec2_timeslayer_ar;  
  --

--debug signals for reading SM
  
  sm_rd_out1 : out vec4_timeslayer_ar;
  rd_en_iii_out1 : out std_logic_vector(1 to 6);
  valid_e_out1 : out std_logic_vector(1 to 6);
  valid_s_out1 : out std_logic_vector(1 to 6);
  rd_en_fifo_out1 : out vec16_timeslayer_ar;
  almost_empty_fifo_out1 : out vec16_timeslayer_ar;
  empty_fifo_out1 : out vec16_timeslayer_ar; 
  valid_fifo_out1 : out vec16_timeslayer_ar;
  sm_rd_out2 : out vec4_timeslayer_ar;
  rd_en_iii_out2 : out std_logic_vector(1 to 6);
  valid_e_out2 : out std_logic_vector(1 to 6);
  valid_s_out2 : out std_logic_vector(1 to 6);
  rd_en_fifo_out2 : out vec16_timeslayer_ar;
  almost_empty_fifo_out2 : out vec16_timeslayer_ar;
  empty_fifo_out2 : out vec16_timeslayer_ar; 
  valid_fifo_out2 : out vec16_timeslayer_ar
  
  
  
   );
end component;

  signal  internal_counting_out:  std_logic_vector(7 downto 0);
signal internal_counting_out1, internal_counting_out2 : count_ar;
signal  data_count_tot_out:  std_logic_vector(7 downto 0);
 signal debug_out:  std_logic_vector(68 downto 0);
signal data_i_out1 : data_itimeslayer_ar;
signal valid_i_out1, wr_en_fifo_out1, wr_en_out1, rd_en_out1 : vec16_timeslayer_ar;
signal rd_en_ii_out1, en_fifo_out1 : std_logic_vector(1 to 6);
signal data_count_tot_out1 : vec7_timeslayer_ar;
signal wr_en_count_out1, data_count_fifo_out1 : data_count_fifo_timeslayer_ar;
signal sm_wr_out1 : vec2_times16_timeslayer_ar;
signal sm_rd2_out1 : vec2_timeslayer_ar;
signal sm_rd_out1 : vec4_timeslayer_ar;
signal rd_en_iii_out1, valid_e_out1, valid_s_out1 : std_logic_vector(1 to 6);
signal rd_en_fifo_out1, almost_empty_fifo_out1, empty_fifo_out1, valid_fifo_out1 : vec16_timeslayer_ar;


signal data_i_out2 : data_itimeslayer_ar;
signal valid_i_out2, wr_en_fifo_out2, wr_en_out2, rd_en_out2 : vec16_timeslayer_ar;
signal rd_en_ii_out2, en_fifo_out2 : std_logic_vector(1 to 6);
signal data_count_tot_out2 : vec7_timeslayer_ar;
signal wr_en_count_out2, data_count_fifo_out2 : data_count_fifo_timeslayer_ar;
signal sm_wr_out2 : vec2_times16_timeslayer_ar;
signal sm_rd2_out2 : vec2_timeslayer_ar;
signal sm_rd_out2 : vec4_timeslayer_ar;
signal rd_en_iii_out2, valid_e_out2, valid_s_out2 : std_logic_vector(1 to 6);
signal rd_en_fifo_out2, almost_empty_fifo_out2, empty_fifo_out2, valid_fifo_out2 : vec16_timeslayer_ar;

signal z4b_i_out_1, count_i_out1: vec4_times40mod_ar;
signal type1b_out_1, en_out1: std_logic_vector(1 to 40);
signal modid_in_out1: vec8_times40mod_ar;
signal serial_layer_i_out1: serial_layer_ar;  --each
signal z4b_i_out_2, count_i_out2: vec4_times40mod_ar;
signal type1b_out_2, en_out2: std_logic_vector(1 to 40);
signal modid_in_out2: vec8_times40mod_ar;
signal serial_layer_i_out2: serial_layer_ar;  --each
                                                                   --module
                                                                   --serialized 


signal PRBF1_to_PRBF2_i_1_out, PRBF1_to_PRBF2_i_2_out : to_PRBF2_ar;
 
 signal PRBF2_valid_out: std_logic_vector(1 to 6);
 
 
 signal clk_i, clk_tx, clk_rx, pll_lock: std_logic;
 
 component clk_wiz_0
 port
  (-- Clock in ports
   clk_in1           : in     std_logic;
   -- Clock out ports
   clk_out1          : out    std_logic;
   locked: out std_logic
  );
 end component;
 
 COMPONENT fifo_TX_RX
   PORT (
         wr_clk : IN STD_LOGIC;
   rd_clk : IN STD_LOGIC;
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
 
 signal fifo_full_tx, fifo_empty_tx: std_logic_vector(1 to 40);
 

 
signal PRBF1_int_1, PRBF1_int_2, PRBF1_int_out_1, PRBF1_int_out_2: std_logic_vector(31 downto 0);

signal PRBF1_int_1_d, PRBF1_int_2_d : std_logic_vector(31 downto 0);
signal PRBF1_valid_int_1_d, PRBF1_valid_int_2_d: std_logic;
 
 signal PRBF1_valid_int_1, PRBF1_valid_int_2, fifo_full_PRBF1_int_1, fifo_full_PRBF1_int_2, fifo_empty_PRBF1_int_1, fifo_empty_PRBF1_int_2, PRBF1_valid_int_out_1, PRBF1_valid_int_out_2: std_logic;

signal PRBF1_int_out_1_d, PRBF1_int_out_2_d : std_logic_vector(31 downto 0); 
signal PRBF1_valid_int_out_1_d, PRBF1_valid_int_out_2_d: std_logic;


 
signal PRBF1_to_BP_i1, PRBF1_to_BP_i2, PRBF1_to_BP_out1, PRBF1_to_BP_out2:PRBF1_from_BP_ar;
 signal PRBF1_valid_to_BP_i1, PRBF1_valid_to_BP_i2: std_logic_vector(1 to 7);
 signal fifo_full_PRBF1_out1, fifo_full_PRBF1_out2, fifo_empty_PRBF1_out1, fifo_empty_PRBF1_out2, PRBF1_valid_to_BP_out1, PRBF1_valid_to_BP_out2: std_logic_vector(1 to 7);
 
 signal PRBF1_from_BP_in1, PRBF1_from_BP_in2, PRBF1_from_BP_i1, PRBF1_from_BP_i2:PRBF1_from_BP_ar;

 signal PRBF1_valid_from_BP_in1, PRBF1_valid_from_BP_in2, PRBF1_valid_from_BP_i1, PRBF1_valid_from_BP_i2 : std_logic_vector(1 to 7);
 
signal fifo_full_PRBF1_in1, fifo_full_PRBF1_in2, fifo_empty_PRBF1_in1, fifo_empty_PRBF1_in2: std_logic_vector(1 to 7);

--signal rd_en_int_1, rd_en_int_2: std_logic; --MT



attribute dont_touch : string;
attribute dont_touch of serial_layer_to_PRBF1_1_0 : signal is "true"; --to make sure none of the signal gets removed when gt_txdata = 0
attribute dont_touch of serial_layer_to_PRBF1_2_0 : signal is "true";

--attribute to keep the net names preserved (for ila).. Remove once done debugging
attribute keep: string;
attribute keep of serial_layer_to_PRBF1_1_0 : signal is "true";
attribute keep of serial_layer_to_PRBF1_2_0 : signal is "true";



 
begin


led<='1';
      I0: IBUFGDS 
  
      port map(
      O=> clk_i,
      I=> clk_p,
     IB=> clk_n);
     
I_pll: clk_wiz_0
     port map
      (-- Clock in ports
       clk_in1  =>clk_i,
       -- Clock out ports
       clk_out1  =>clk,
       locked=>pll_lock
      );
      
    
      
      I_clk_rx: BUFGCE_1
            port map(O =>clk_rx,
            CE =>pll_lock,
            I=>clk);
            
            

--process(clk_tx) --MT
process(clk_rx)
begin
--    if clk_tx'event and clk_tx='1' then --MT
    if clk_rx'event and clk_rx='1' then  
        if count_tx=59 then
            en_tx<='1';
            count_tx<=x"00";
        else
            en_tx<='0';
            count_tx<=count_tx+1;
        end if;
    end if;
end process;


process(clk_rx,reset)
begin
  if reset = '1' then
    count_2rx<=(others=>'0');
    en_2rx0<='0';
    en_2rx1<='0';
  elsif clk_rx'event and clk_rx='1' then
        if count_2rx=59 then
--            en_rx<='1';
            en_2rx0<='0';
            en_2rx1<='1';
            count_2rx<=count_2rx+1;
        elsif count_2rx=119 then
--            en_rx<='1';
            en_2rx0<='1';
            en_2rx1<='0';
            count_2rx<=count_2rx+1;
        elsif count_2rx=179 then
--            en_rx<='1';
            en_2rx0<='0';
            en_2rx1<='1';
            count_2rx<=count_2rx+1;
        elsif count_2rx=239 then
--            en_rx<='1';
            en_2rx0<='1';
            en_2rx1<='0';
            count_2rx<=x"00";
        else
--            en_rx<='0';
            en_2rx0<='0';
            en_2rx1<='0';
            count_2rx<=count_2rx+1;
        end if;
     end if;
end process;

I_TX: Data_gen_TX_TOP Port map( 
    clk_tx=> clk_rx,
    en_tx=> en_tx,
    data_gen_s=>data_gen_TX_s,
    tx_valid=>tx_valid,
--    module_gen_o=>module_gen_o,
    CIC_R_gen_o=> CIC_R_gen_o,
    CIC_L_gen_o=>CIC_L_gen_o);
    
    
     process(clk_rx)
     begin
     if clk_rx'event and clk_rx='1' then
     data_gen_RX_s_d<=data_gen_TX_s;
    
     rx_valid_d<=tx_valid;
     end if;
     end process;
 
I_RX: Data_gen_RX_TOP Port map( 
       clk_rx=> clk_rx,
       reset=> reset,
       data_in_s=> data_gen_RX_s_d,
       rx_valid=>rx_valid_d,
       CIC_R_rx=> CIC_R_rx,
       CIC_L_rx=> CIC_L_rx
--       count_i_out=>count_i_out,
--  data_p_i_outLS32b=>data_p_i_outLS32b       
       );

     
       
          
    I_lx_init_0: lx_en_gen
            Port map( 
           clk=> clk_rx,
           en=> en_2rx0,
           en_lx=> en_lx0,
           wr_en=> wr_en0,
           rd_en=> rd_en0
            );
            
--           I_lx_init_1: lx_en_gen
--                     Port map( 
--                    clk=> clk,
--                    en=> en_2rx1,
--                    en_lx=> en_lx1,
--                    wr_en=> wr_en1,
--                    rd_en=> rd_en1
--                     );

            
    I_serialize_for_PRBF1_0: serialize_for_PRBF1 
              Port map( 
              clk=> clk_rx,
              reset=>reset,
              CIC_R_rx=> CIC_R_rx,
              CIC_L_rx=>CIC_L_rx,
              en_lx=> en_lx0,
              serial_layer_to_PRBF1_1=> serial_layer_to_PRBF1_1_0,
              serial_layer_to_PRBF1_2=> serial_layer_to_PRBF1_2_0,
              --debug
              z4b_i_out_1=>z4b_i_out_1,
              type1b_out_1=>type1b_out_1,
              count_i_out1=>count_i_out1,
              modid_in_out1=>modid_in_out1,
              serial_layer_i_out1=>serial_layer_i_out1,
              en_out1=>en_out1,
              z4b_i_out_2=>z4b_i_out_2,
              type1b_out_2=>type1b_out_2,
              count_i_out2=>count_i_out2,
              modid_in_out2=>modid_in_out2,
              serial_layer_i_out2=>serial_layer_i_out2,
              en_out2=>en_out2
              
              );
              
       
     
              I_from_PRBFraw_to_PRBF1_0: From_PRBFraw_to_PRBF1 
                Port map( 
                clk=>clk_rx,
                wr_en=>wr_en0,
                rd_en=>rd_en0,
                serial_layer_to_PRBF1_1=>serial_layer_to_PRBF1_1_0,
                serial_layer_to_PRBF1_2=>serial_layer_to_PRBF1_2_0,
                PRBFraw_to_PRBF1_out_1=>PRBFraw_to_PRBF1_1_0,
                PRBFraw_to_PRBF1_out_2=>PRBFraw_to_PRBF1_2_0,
                
                     PRBF1_valid_out_1=>PRBF1_valid_out_1,
                      PRBF1_valid_out_2=>PRBF1_valid_out_2);
--adding a reset here: extra caution
process(clk_rx,reset)
begin
if reset = '1' then
PRBFraw_to_PRBF1_1<=(others=>(others=>'0'));
PRBFraw_to_PRBF1_2<=(others=>(others=>'0'));
PRBF1_valid_i1<=(others=>'0');
PRBF1_valid_i2<=(others=>'0');
elsif clk_rx'event and clk_rx='1' then
PRBFraw_to_PRBF1_1<=PRBFraw_to_PRBF1_1_0;
PRBFraw_to_PRBF1_2<=PRBFraw_to_PRBF1_2_0;
PRBF1_valid_i1<=PRBF1_valid_out_1;
PRBF1_valid_i2<=PRBF1_valid_out_2;
end if;
end process;

--adding a reset here: extra caution
process(clk_rx)
begin
if reset = '1' then
PRBF1_int_1<=(others=>'0');
PRBF1_int_2<=(others=>'0');
PRBF1_valid_int_1<='0';
PRBF1_valid_int_2<='0';

PRBF1_to_BP_i1<=(others=>(others=>'0'));
PRBF1_to_BP_i2<=(others=>(others=>'0'));

PRBF1_valid_to_BP_i1<=(others=>'0');                          
PRBF1_valid_to_BP_i2<=(others=>'0');
elsif clk_rx'event and clk_rx='1' then
PRBF1_int_1<=PRBFraw_to_PRBF1_1(1);
PRBF1_int_2<=PRBFraw_to_PRBF1_2(1);
PRBF1_valid_int_1<=PRBF1_valid_i1(1);
PRBF1_valid_int_2<=PRBF1_valid_i2(1);

PRBF1_to_BP_i1(1)<=PRBFraw_to_PRBF1_1(2);
PRBF1_to_BP_i1(2)<=PRBFraw_to_PRBF1_1(3);
PRBF1_to_BP_i1(3)<=PRBFraw_to_PRBF1_1(4);
PRBF1_to_BP_i1(4)<=PRBFraw_to_PRBF1_1(5);
PRBF1_to_BP_i1(5)<=PRBFraw_to_PRBF1_1(6);
PRBF1_to_BP_i1(6)<=PRBFraw_to_PRBF1_1(7);
PRBF1_to_BP_i1(7)<=PRBFraw_to_PRBF1_1(8);

PRBF1_to_BP_i2(1)<=PRBFraw_to_PRBF1_2(2);
PRBF1_to_BP_i2(2)<=PRBFraw_to_PRBF1_2(3);
PRBF1_to_BP_i2(3)<=PRBFraw_to_PRBF1_2(4);
PRBF1_to_BP_i2(4)<=PRBFraw_to_PRBF1_2(5);
PRBF1_to_BP_i2(5)<=PRBFraw_to_PRBF1_2(6);
PRBF1_to_BP_i2(6)<=PRBFraw_to_PRBF1_2(7);
PRBF1_to_BP_i2(7)<=PRBFraw_to_PRBF1_2(8);

PRBF1_valid_to_BP_i1(1)<=PRBF1_valid_i1(2);
PRBF1_valid_to_BP_i1(2)<=PRBF1_valid_i1(3);
PRBF1_valid_to_BP_i1(3)<=PRBF1_valid_i1(4);
PRBF1_valid_to_BP_i1(4)<=PRBF1_valid_i1(5);
PRBF1_valid_to_BP_i1(5)<=PRBF1_valid_i1(6);
PRBF1_valid_to_BP_i1(6)<=PRBF1_valid_i1(7);
PRBF1_valid_to_BP_i1(7)<=PRBF1_valid_i1(8);

PRBF1_valid_to_BP_i2(1)<=PRBF1_valid_i2(2);
PRBF1_valid_to_BP_i2(2)<=PRBF1_valid_i2(3);
PRBF1_valid_to_BP_i2(3)<=PRBF1_valid_i2(4);
PRBF1_valid_to_BP_i2(4)<=PRBF1_valid_i2(5);
PRBF1_valid_to_BP_i2(5)<=PRBF1_valid_i2(6);
PRBF1_valid_to_BP_i2(6)<=PRBF1_valid_i2(7);
PRBF1_valid_to_BP_i2(7)<=PRBF1_valid_i2(8);
end if;
end process;

                      

--MT mocking latency over the BP (7*2 (FIFOS)+Aurora=44)
shiftram1: c_shift_ram_0
  PORT MAP (
    CLK => clk_rx,
    D => PRBF1_int_1,
    Q => PRBF1_int_1_d
    );
shiftram2: c_shift_ram_0
  PORT MAP (
    CLK => clk_rx,
    D => PRBF1_int_2,
    Q => PRBF1_int_2_d
    );
shiftram1_1b: c_shift_ram_1
  PORT MAP (
    CLK => clk_rx,
    D(0) => PRBF1_valid_int_1,
    Q(0) => PRBF1_valid_int_1_d
    );
shiftram2_1b: c_shift_ram_1
  PORT MAP (
    CLK => clk_rx,
    D(0) => PRBF1_valid_int_2,
    Q(0) => PRBF1_valid_int_2_d
    );

--adding a reset here: extra caution
process(clk_rx,reset)
begin
if reset = '1' then
PRBF1_from_BP_in1(1)<=(others=>'0');
PRBF1_from_BP_in1(2)<=(others=>'0');
PRBF1_from_BP_in1(3)<=(others=>'0');
PRBF1_from_BP_in1(4)<=(others=>'0');
PRBF1_from_BP_in1(5)<=(others=>'0');
PRBF1_from_BP_in1(6)<=(others=>'0');
PRBF1_from_BP_in1(7)<=(others=>'0');
                       
PRBF1_from_BP_in2(1)<=(others=>'0');
PRBF1_from_BP_in2(2)<=(others=>'0');
PRBF1_from_BP_in2(3)<=(others=>'0');
PRBF1_from_BP_in2(4)<=(others=>'0');
PRBF1_from_BP_in2(5)<=(others=>'0');
PRBF1_from_BP_in2(6)<=(others=>'0');
PRBF1_from_BP_in2(7)<=(others=>'0');

PRBF1_valid_from_BP_in1<=(others=>'0');
PRBF1_valid_from_BP_in2<=(others=>'0');
  
elsif clk_rx'event and clk_rx='1' then
PRBF1_from_BP_in1(1)<=PRBF1_int_1_d; --MT mocking latency over the BP PRBF1_int_1;
PRBF1_from_BP_in1(2)<=PRBF1_int_1_d; --MT mocking latency over the BP PRBF1_int_1;
PRBF1_from_BP_in1(3)<=PRBF1_int_1_d; --MT mocking latency over the BP PRBF1_int_1;
PRBF1_from_BP_in1(4)<=PRBF1_int_1_d; --MT mocking latency over the BP PRBF1_int_1;
PRBF1_from_BP_in1(5)<=PRBF1_int_1_d; --MT mocking latency over the BP PRBF1_int_1;
PRBF1_from_BP_in1(6)<=PRBF1_int_1_d; --MT mocking latency over the BP PRBF1_int_1;
PRBF1_from_BP_in1(7)<=PRBF1_int_1_d; --MT mocking latency over the BP PRBF1_int_1;

PRBF1_from_BP_in2(1)<=PRBF1_int_2_d; --MT mocking latency over the BP PRBF1_int_2;
PRBF1_from_BP_in2(2)<=PRBF1_int_2_d; --MT mocking latency over the BP PRBF1_int_2;
PRBF1_from_BP_in2(3)<=PRBF1_int_2_d; --MT mocking latency over the BP PRBF1_int_2;
PRBF1_from_BP_in2(4)<=PRBF1_int_2_d; --MT mocking latency over the BP PRBF1_int_2;
PRBF1_from_BP_in2(5)<=PRBF1_int_2_d; --MT mocking latency over the BP PRBF1_int_2;
PRBF1_from_BP_in2(6)<=PRBF1_int_2_d; --MT mocking latency over the BP PRBF1_int_2;
PRBF1_from_BP_in2(7)<=PRBF1_int_2_d; --MT mocking latency over the BP PRBF1_int_2;

--MT mocking latency over the BP
--PRBF1_valid_from_BP_in1<=PRBF1_valid_int_1 & PRBF1_valid_int_1 & PRBF1_valid_int_1 & PRBF1_valid_int_1 & PRBF1_valid_int_1 & PRBF1_valid_int_1 & PRBF1_valid_int_1;
--PRBF1_valid_from_BP_in2<=PRBF1_valid_int_2 & PRBF1_valid_int_2 & PRBF1_valid_int_2 & PRBF1_valid_int_2 & PRBF1_valid_int_2 & PRBF1_valid_int_2 & PRBF1_valid_int_2;

PRBF1_valid_from_BP_in1<=PRBF1_valid_int_1_d & PRBF1_valid_int_1_d & PRBF1_valid_int_1_d & PRBF1_valid_int_1_d & PRBF1_valid_int_1_d & PRBF1_valid_int_1_d & PRBF1_valid_int_1_d;
PRBF1_valid_from_BP_in2<=PRBF1_valid_int_2_d & PRBF1_valid_int_2_d & PRBF1_valid_int_2_d & PRBF1_valid_int_2_d & PRBF1_valid_int_2_d & PRBF1_valid_int_2_d & PRBF1_valid_int_2_d;

end if;
end process;


                                                                       
                             
                             I_fifo1: fifo_TX_RX
                                PORT map(
                                  rd_clk =>clk_rx,
                                  wr_clk =>clk_rx,
                                  rst =>reset,
                                  din =>PRBF1_int_1,
                                  wr_en =>PRBF1_valid_int_1,
                                  rd_en =>'1',
                                  dout =>PRBF1_int_out_1,
                                  full =>fifo_full_PRBF1_int_1,
                                  empty =>fifo_empty_PRBF1_int_1,
                                  valid =>PRBF1_valid_int_out_1);
                                                         
                             I_fifo2: fifo_TX_RX
                                PORT map(
                                  rd_clk =>clk_rx,
                                 wr_clk =>clk_rx,
                                  rst =>reset,
                                  din =>PRBF1_int_2,
                                  wr_en =>PRBF1_valid_int_2,
                                  rd_en =>'1',
                                  dout =>PRBF1_int_out_2,
                                  full =>fifo_full_PRBF1_int_2,
                                  empty =>fifo_empty_PRBF1_int_2,
                                  valid =>PRBF1_valid_int_out_2);  

shiftram1RTM: c_shift_ram_20d_32b
  PORT MAP (
    CLK => clk_rx,
    D => PRBF1_int_out_1,
    Q => PRBF1_int_out_1_d
    );
shiftram2RTM: c_shift_ram_20d_32b
  PORT MAP (
    CLK => clk_rx,
    D => PRBF1_int_out_2,
    Q => PRBF1_int_out_2_d
    );
shiftram1RTM_1b: c_shift_ram_20d_1b
  PORT MAP (
    CLK => clk_rx,
    D(0) => PRBF1_valid_int_out_1,
    Q(0) => PRBF1_valid_int_out_1_d
    );
shiftram2RTM_1b: c_shift_ram_20d_1b
  PORT MAP (
    CLK => clk_rx,
    D(0) => PRBF1_valid_int_out_2,
    Q(0) => PRBF1_valid_int_out_2_d
    );

                             
                
                       I_from_PRBF1_to_PRBF2_m1: From_PRBF1_to_PRBF2_v2
                         Port map(
                         clk=>clk_rx,

                           en_rx0=>en_2rx0,
                         en_rx1=>en_2rx1,
                         PRBF1_from_BP_1=>PRBF1_from_BP_in1,
                         PRBF1_from_BP_2=>PRBF1_from_BP_in2,
                           --PRBF1_int_1=>PRBF1_int_out_1, --MT delaying PRBraw->1>2 data as for PRBF1_from_BP_in1
                           --PRBF1_int_2=>PRBF1_int_out_2,
                           PRBF1_int_1=>PRBF1_int_out_1_d,
                           PRBF1_int_2=>PRBF1_int_out_2_d,
                           PRBF1_valid_from_BP_1=>PRBF1_valid_from_BP_in1,
                           PRBF1_valid_from_BP_2=>PRBF1_valid_from_BP_in2,
                           --PRBF1_valid_int_1=>PRBF1_valid_int_out_1, --MT delaying PRBraw->1>2 data as for PRBF1_from_BP_in1
                           ----delaying 
                           --PRBF1_valid_int_2=>PRBF1_valid_int_out_2,
                           PRBF1_valid_int_1=>PRBF1_valid_int_out_1_d,
                           PRBF1_valid_int_2=>PRBF1_valid_int_out_2_d,
                         PRBF1_to_PRBF2_out=>PRBF1_to_PRBF2_v2,
                         PRBF2_valid_out=>PRBF2_valid_out,
                         debug_out=>debug_out,
                         internal_counting_out1=>internal_counting_out1,
                         internal_counting_out2=>internal_counting_out2,
  --debug signals for wrting SM
  sm_wr_out1=>sm_wr_out1, 
  data_i_out1=>data_i_out1,
  valid_i_out1=>valid_i_out1,
  rd_en_ii_out1=>rd_en_ii_out1,
  data_count_tot_out1=>data_count_tot_out1,
  wr_en_count_out1=>wr_en_count_out1,
  data_count_fifo_out1=>data_count_fifo_out1,                         
  en_fifo_out1=>en_fifo_out1,  
  wr_en_fifo_out1=>wr_en_fifo_out1,
  wr_en_out1=>wr_en_out1,
  rd_en_out1=>rd_en_out1,
  sm_wr_out2=>sm_wr_out2,                          
  data_i_out2=>data_i_out2,
  valid_i_out2=>valid_i_out2,
  rd_en_ii_out2=>rd_en_ii_out2,
  data_count_tot_out2=>data_count_tot_out2,
  en_fifo_out2=>en_fifo_out2,    
  wr_en_fifo_out2=>wr_en_fifo_out2,
  wr_en_count_out2=>wr_en_count_out2,
  data_count_fifo_out2=>data_count_fifo_out2,
  wr_en_out2=>wr_en_out2,
  rd_en_out2=>rd_en_out2,

  PRBF1_to_PRBF2_i_1_out=>PRBF1_to_PRBF2_i_1_out,
  PRBF1_to_PRBF2_i_2_out=>PRBF1_to_PRBF2_i_2_out,

  --SM controlling datacount
  sm_rd2_out1=>sm_rd2_out1,
  sm_rd2_out2=>sm_rd2_out2,
  --
                         

  sm_rd_out1=>sm_rd_out1,
  rd_en_iii_out1=>rd_en_iii_out1,
  valid_e_out1=>valid_e_out1,
  valid_s_out1=>valid_s_out1,
  rd_en_fifo_out1=>rd_en_fifo_out1,
  almost_empty_fifo_out1=>almost_empty_fifo_out1,
  empty_fifo_out1=>empty_fifo_out1,
  valid_fifo_out1=>valid_fifo_out1,
  sm_rd_out2=>sm_rd_out2,
  rd_en_iii_out2=>rd_en_iii_out2,
  valid_e_out2=>valid_e_out2,
  valid_s_out2=>valid_s_out2,
  rd_en_fifo_out2=>rd_en_fifo_out2,
  almost_empty_fifo_out2=>almost_empty_fifo_out2,
  empty_fifo_out2=>empty_fifo_out2,
  valid_fifo_out2=>valid_fifo_out2
                         
                         
                          );
                       
         

     

     
--used to estimate timing WNS=+0.496
    --I_ila: ila_stub
    --PORT map(
    --    clk =>clk_rx,
    --    probe0(0) =>en_lx0(1)
    --    );

    I_ila: ila_stub
    PORT map(
        clk =>clk_rx,
        probe0(0)=>en_2rx0,
        probe0(1)=>en_2rx1,        

    probe1 =>PRBF1_to_PRBF2_v2(1),
    probe2 =>PRBF1_to_PRBF2_v2(2),
    probe3 =>PRBF1_to_PRBF2_v2(3),
    probe4 =>PRBF1_to_PRBF2_v2(4),
    probe5 =>PRBF1_to_PRBF2_v2(5),
    probe6 =>PRBF1_to_PRBF2_v2(6),


    --probe10=>serial_layer_to_PRBF1_1_0(1),
    --probe11=>serial_layer_to_PRBF1_1_0(2),
    --probe12=>serial_layer_to_PRBF1_2_0(1),
    --probe13=>serial_layer_to_PRBF1_2_0(2),

    probe7=>PRBF1_int_out_1_d,
    probe8=>PRBF1_int_out_2_d,        
    probe9=>PRBF1_from_BP_in1(1),
    probe10=>PRBF1_from_BP_in2(1),                

    probe11=>en_out1,
    probe12=>en_out2,        



    --probe20=>serial_layer_i_out1(1),
    --probe21=>serial_layer_i_out1(2),
    --probe22=>serial_layer_i_out1(3),
    --probe23=>serial_layer_i_out2(1),
    --probe24=>serial_layer_i_out2(2),
    --probe25=>serial_layer_i_out2(3),

    probe13(1 downto 0)=>sm_wr_out2(1)(1),  --(1)(1) => layer 5 1st data (PRBF1_from_BP_1(1))
    probe13(3 downto 2)=>sm_wr_out2(1)(2),  --(1)(2) => layer 5 2nd data (PRBF1_from_BP_1(2))        
    probe13(5 downto 4)=>sm_wr_out2(1)(3),
    probe13(7 downto 6)=>sm_wr_out2(1)(4),
    probe13(9 downto 8)=>sm_wr_out2(1)(5),
    probe13(11 downto 10)=>sm_wr_out2(1)(6),
    probe13(13 downto 12)=>sm_wr_out2(1)(7),
    probe13(15 downto 14)=>sm_wr_out2(1)(8),
    probe13(17 downto 16)=>sm_wr_out2(1)(9),
    probe13(19 downto 18)=>sm_wr_out2(1)(10),
    probe13(21 downto 20)=>sm_wr_out2(1)(11),
    probe13(23 downto 22)=>sm_wr_out2(1)(12),
    probe13(25 downto 24)=>sm_wr_out2(1)(13),
    probe13(27 downto 26)=>sm_wr_out2(1)(14),
    probe13(29 downto 28)=>sm_wr_out2(1)(15),
    probe13(31 downto 30)=>sm_wr_out2(1)(16),        

    probe14(1 downto 0)=>sm_wr_out2(2)(1),                        

    probe15=>data_count_tot_out2(1),
    probe16=>data_count_tot_out2(2),

probe17=>internal_counting_out2(1),
probe18=>internal_counting_out2(2),

probe19(7 downto 0)=>wr_en_count_out2(1)(1),
probe19(15 downto 8)=>wr_en_count_out2(1)(2),
probe19(23 downto 16)=>wr_en_count_out2(1)(3),
probe19(31 downto 24)=>wr_en_count_out2(1)(4),                
probe20(7 downto 0)=>wr_en_count_out2(1)(5),
probe20(15 downto 8)=>wr_en_count_out2(1)(6),
probe20(23 downto 16)=>wr_en_count_out2(1)(7),
probe20(31 downto 24)=>wr_en_count_out2(1)(8),                
probe21(7 downto 0)=>wr_en_count_out2(1)(9),
probe21(15 downto 8)=>wr_en_count_out2(1)(10),
probe21(23 downto 16)=>wr_en_count_out2(1)(11),
probe21(31 downto 24)=>wr_en_count_out2(1)(12),                
probe22(7 downto 0)=>wr_en_count_out2(1)(13),
probe22(15 downto 8)=>wr_en_count_out2(1)(14),
probe22(23 downto 16)=>wr_en_count_out2(1)(15),
probe22(31 downto 24)=>wr_en_count_out2(1)(16),

probe23(7 downto 0)=>wr_en_count_out2(2)(1),                        

probe24(7 downto 0)=>data_count_fifo_out2(1)(1),
probe24(15 downto 8)=>data_count_fifo_out2(1)(2),
probe24(23 downto 16)=>data_count_fifo_out2(2)(1),

probe25(1 downto 0)=>sm_rd2_out2(1),
probe25(3 downto 2)=>sm_rd2_out2(2),                
      
      
probe26(4 downto 0)=>sm_rd_out2(1),
probe26(9 downto 5)=>sm_rd_out2(2),                

probe27(0)=>rd_en_iii_out2(1),
probe27(1)=>rd_en_ii_out2(1),
probe27(2)=>rd_en_iii_out2(1),                
probe27(3)=>rd_en_iii_out2(2),
probe27(4)=>rd_en_ii_out2(2),
probe27(5)=>rd_en_iii_out2(2),

probe28(0)=>reset_vio,

    probe29 => data_gen_RX_s_d(1),
    probe30 => data_gen_RX_s_d(2),
    probe31 => data_gen_RX_s_d(3),
    probe32 => data_gen_RX_s_d(4),
    probe33 => data_gen_RX_s_d(5),
    probe34 => data_gen_RX_s_d(6),
    probe35 => data_gen_RX_s_d(7),
    probe36 => data_gen_RX_s_d(8),
    probe37 => data_gen_RX_s_d(9),
    probe38 => data_gen_RX_s_d(10),
    probe39 => PRBFraw_to_PRBF1_1_0(1),
    probe40 => PRBFraw_to_PRBF1_2_0(1),
        
    probe41 => data_gen_TX_s(1),
    probe42 => data_gen_TX_s(2),
    probe43 => data_gen_TX_s(3),
    probe44 => data_gen_TX_s(4),
    probe45 => data_gen_TX_s(5),
    probe46 => data_gen_TX_s(6),
    probe47 => data_gen_TX_s(7),
    probe48 => data_gen_TX_s(8),
    probe49 => data_gen_TX_s(9),
    probe50 => data_gen_TX_s(10)
        
        

        );

vio : vio_0
  PORT MAP (
    clk => clk_rx,
    probe_in0(0) => reset,
    probe_out0(0) => reset_vio
  );    
   
reset<=reset_vio;                       --keep it asynch?
     
    end Behavioral;
    
