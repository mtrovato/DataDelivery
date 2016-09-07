----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/09/2015 07:41:00 PM
-- Design Name: 
-- Module Name: GEN_serial_layers - Behavioral
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

entity GEN_serial_layers is
  Port (
  clk: in std_logic;
  reset: in std_logic;
  en_lx: in std_logic_vector(1 to 10);
--  en_lx: in std_logic_vector(1 to 40); 
  CIC_rl_rx: in CIC_ar;
    isR: in std_logic;                  --MT official format
    modid: in modid_ar;                 --MT official format    
  module_rx: in module_ar;
  serial_layer_out: out serial_layer_ar_out ;

--debug
  z4b_i_out: out vec4_times40mod_ar;
  type1b_out: out std_logic_vector(1 to 40);
  count_i_out: out vec4_times40mod_ar;
  modid_in_out: out vec8_times40mod_ar;
  serial_layer_i_out: out serial_layer_ar;
  en_out: out std_logic_vector(1 to 40)
   );
end GEN_serial_layers;

architecture Behavioral of GEN_serial_layers is

signal serial_layer_i: serial_layer_ar:=(others=>(others=>'0'));

component PISO_MPA_Lx is

  Port (
  
  clk: in std_logic;
  en: in std_logic;
  signal_in: in std_logic_vector(255 downto 0);
  layer_in: in std_logic_vector(3 downto 0);
  isR_in: in std_logic;                 --MT official format
  modid_in: in std_logic_vector(8 downto 0);   --MT official format  
--  serial_lx_out: out std_logic_vector(27 downto 0) --MT official format
  serial_lx_out: out std_logic_vector(34 downto 0);

  --debug
  z4b_i_out: out std_logic_vector(3 downto 0);
  type1b_out: out std_logic;
  count_i_out: out std_logic_vector(3 downto 0)

  
   );
end component;

component PISO_CBC_Lx is

  Port (
  
  clk: in std_logic;
  en: in std_logic;
  signal_in: in std_logic_vector(255 downto 0);
  layer_in: in std_logic_vector(3 downto 0);
  isR_in: in std_logic;                 --MT official format
  modid_in: in std_logic_vector(8 downto 0);   --MT official format  
--  serial_lx_out: out std_logic_vector(27 downto 0) --MT official format
  serial_lx_out: out std_logic_vector(34 downto 0);

  --debug
  z4b_i_out: out std_logic_vector(3 downto 0);
  type1b_out: out std_logic;
  count_i_out: out std_logic_vector(3 downto 0);
  modid_in_out: out std_logic_vector(8 downto 0);
  en_out: out std_logic  
  
   );
end component;

type layer_ar is array (1 to 40) of std_logic_vector(3 downto 0);
signal layer_i: layer_ar;

signal en_lx_i: std_logic_vector(1 to 10);
--signal en_lx_i: std_logic_vector(1 to 40); 
signal  CIC_rl_rx_i: CIC_ar;

type state_machine_b is (s0,s1);
signal sm: state_machine_b;

signal modid_i: modid_ar;                 --MT official format
signal isR_i: std_logic;                 --MT official format

begin

  

process(clk,reset)
begin
if reset = '1' then
  en_lx_i<=(others=>'0');
elsif clk'event  and clk='1' then
  en_lx_i<=en_lx; 
  case sm is
    when s0=>
      if en_lx(1)='1' then
        CIC_rl_rx_i<=CIC_rl_rx;
        isR_i <= isR;                           --MT official format
        modid_i <= modid;
        sm<=s1;
      end if;

    when s1=>
      if en_lx(2)='1' then
        sm<=s0;
      end if;

  end case;
end if;
end process;


--(local )layer number
GEN_layer_i:for i in 1 to 40 generate
GEN_l5: if i>0 and i<4 generate
--layer_i(i)<=x"5"; --MT official format
layer_i(i)<=x"0";   
end generate GEN_l5;

GEN_l6: if i>3 and i<10 generate
--layer_i(i)<=x"6"; --MT official format
layer_i(i)<=x"1";   
end generate GEN_l6;

GEN_l7: if i>9 and i<16 generate
--layer_i(i)<=x"7"; --MT official format
layer_i(i)<=x"2";     
end generate GEN_l7;

GEN_l8: if i>15 and i<22 generate
--layer_i(i)<=x"8"; --MT official format
layer_i(i)<=x"3";     
end generate GEN_l8;

GEN_l9: if i>21 and i<30 generate
--layer_i(i)<=x"9"; --MT official format
layer_i(i)<=x"4";     
end generate GEN_l9;

GEN_l10: if i>29 and i<41 generate
--layer_i(i)<=x"a"; --MT official format
layer_i(i)<=x"5";  
end generate GEN_l10;
end generate GEN_layer_i;



--assuming that 1 to 15 MPA, 16 to 40 CBC (true for barrel)
--for the endcap this assumption is not true and you need to look at
--CIC_RL_rx_i(i)(255). To do so you would need to MPA2 : if CIC_RL_rx_i(i)(255)
--= '0' generate, but it's not allowed in the generate (if has to have a static
--condition). If you don't find a trick (perhaps for loop instead of for
--generate???) remove loop and do one at the time

GEN_PISO: for i in 1 to 40 generate
GEN1: if i>0 and i<6 generate           --only MPA
I_PISO_MPA: PISO_MPA_Lx    
     Port map(
     clk=> clk,
     en=>en_lx_i(i),
     signal_in=> CIC_RL_rx_i(i),
     layer_in=> layer_i(i),
     isR_in => isR_i,  --MT official format
     modid_in => modid_i(i),  --MT official format                            
     serial_lx_out=> serial_layer_i(i),
     
     z4b_i_out => z4b_i_out(i),
     type1b_out => type1b_out(i),
     count_i_out => count_i_out(i)    
      );
end generate GEN1;

GEN2: if i>5 and i<11 generate          --only MPA
I_PISO_MPA: PISO_MPA_Lx    
     Port map(
     clk=> clk,
     en=>en_lx_i(i-5), 
--     en=>en_lx_i(i),     
     signal_in=> CIC_RL_rx_i(i),
     layer_in=> layer_i(i),
     isR_in => isR_i,  --MT official format
     modid_in => modid_i(i),  --MT official format                            
     serial_lx_out=> serial_layer_i(i),
     
     z4b_i_out => z4b_i_out(i),
     type1b_out => type1b_out(i),
     count_i_out => count_i_out(i)          

     );
end generate GEN2;

GEN3: if i>10 and i<16 generate         --only MPA
I_PISO_MPA: PISO_MPA_Lx    
     Port map(
     clk=> clk,
     en=>en_lx_i(i-10),
--     en=>en_lx_i(i),     
     signal_in=> CIC_RL_rx_i(i),
     layer_in=> layer_i(i),
     isR_in => isR_i,  --MT official format          
     modid_in => modid_i(i),  --MT official format                            
     serial_lx_out=> serial_layer_i(i),
     
     z4b_i_out => z4b_i_out(i),
     type1b_out => type1b_out(i),
     count_i_out => count_i_out(i)       
     );
end generate GEN3;

GEN4: if i>15 and i<21 generate         --only CBC
I_PISO_CBC: PISO_CBC_Lx    
     Port map(
     clk=> clk,
     en=>en_lx_i(i-15), 
--     en=>en_lx_i(i),     
     signal_in=> CIC_RL_rx_i(i),
     layer_in=> layer_i(i),
     isR_in => isR_i,  --MT official format          
     modid_in => modid_i(i),  --MT official format                            
     serial_lx_out=> serial_layer_i(i),
     
     z4b_i_out => z4b_i_out(i),
     type1b_out => type1b_out(i),
     count_i_out => count_i_out(i),
     modid_in_out => modid_in_out(i),
     en_out=>en_out(i)

     );
end generate GEN4;

GEN5: if i>20 and i<26 generate         --only CBC
I_PISO_CBC: PISO_CBC_Lx    
     Port map(
     clk=> clk,
     en=>en_lx_i(i-20), 
--     en=>en_lx_i(i),     
     signal_in=> CIC_RL_rx_i(i),
     layer_in=> layer_i(i),
     isR_in => isR_i,  --MT official format          
     modid_in => modid_i(i),  --MT official format                            
     serial_lx_out=> serial_layer_i(i),
     
     z4b_i_out => z4b_i_out(i),
     type1b_out => type1b_out(i),
     count_i_out => count_i_out(i),
     modid_in_out => modid_in_out(i),
     en_out=>en_out(i)     
     );
end generate GEN5;

GEN6: if i>25 and i<31 generate         --only CBC
I_PISO_CBC: PISO_CBC_Lx    
     Port map(
     clk=> clk,
     en=>en_lx_i(i-25),   
--     en=>en_lx_i(i),     
     signal_in=> CIC_RL_rx_i(i),
     layer_in=> layer_i(i),
     isR_in => isR_i,  --MT official format          
     modid_in => modid_i(i),  --MT official format                            
     serial_lx_out=> serial_layer_i(i),
     
     z4b_i_out => z4b_i_out(i),
     type1b_out => type1b_out(i),
     count_i_out => count_i_out(i),
     modid_in_out => modid_in_out(i),
     en_out=>en_out(i)     
     );
end generate GEN6;

GEN7: if i>30 and i<36 generate         --only CBC
I_PISO_CBC: PISO_CBC_Lx    
     Port map(
     clk=> clk,
     en=>en_lx_i(i-30),
--     en=>en_lx_i(i),     
     signal_in=> CIC_RL_rx_i(i),
     layer_in=> layer_i(i),
     isR_in => isR_i,  --MT official format          
     modid_in => modid_i(i),  --MT official format                            
     serial_lx_out=> serial_layer_i(i),

     z4b_i_out => z4b_i_out(i),
     type1b_out => type1b_out(i),
     count_i_out => count_i_out(i),
     modid_in_out => modid_in_out(i),
     en_out=>en_out(i)     
      );
end generate GEN7;

GEN8: if i>35 and i<41 generate         --only CBC
I_PISO_CBC: PISO_CBC_Lx    
     Port map(
     clk=> clk,
     en=>en_lx_i(i-35),
--     en=>en_lx_i(i),     
     signal_in=> CIC_RL_rx_i(i),
     layer_in=> layer_i(i),
     isR_in => isR_i,  --MT official format          
     modid_in => modid_i(i),  --MT official format                            
     serial_lx_out=> serial_layer_i(i),

     z4b_i_out => z4b_i_out(i),
     type1b_out => type1b_out(i),
     count_i_out => count_i_out(i),
     modid_in_out => modid_in_out(i),
     en_out=>en_out(i)     
     
      );
end generate GEN8;

end generate GEN_PISO;

process(clk,reset)
begin
if reset = '1' then  
elsif clk'event and clk='1' then
serial_layer_out(1)<=serial_layer_i(1) or serial_layer_i(2) or serial_layer_i(3) or serial_layer_i(4) or serial_layer_i(5); 
serial_layer_out(2)<=serial_layer_i(6) or serial_layer_i(7) or serial_layer_i(8) or serial_layer_i(9) or serial_layer_i(10);
serial_layer_out(3)<=serial_layer_i(11) or serial_layer_i(12) or serial_layer_i(13) or serial_layer_i(14) or serial_layer_i(15);
serial_layer_out(4)<=serial_layer_i(16) or serial_layer_i(17) or serial_layer_i(18) or serial_layer_i(19) or serial_layer_i(20);
serial_layer_out(5)<=serial_layer_i(21) or serial_layer_i(22) or serial_layer_i(23) or serial_layer_i(24) or serial_layer_i(25);
serial_layer_out(6)<=serial_layer_i(26) or serial_layer_i(27) or serial_layer_i(28) or serial_layer_i(29) or serial_layer_i(30);
serial_layer_out(7)<=serial_layer_i(31) or serial_layer_i(32) or serial_layer_i(33) or serial_layer_i(34) or serial_layer_i(35);
serial_layer_out(8)<=serial_layer_i(36) or serial_layer_i(37) or serial_layer_i(38) or serial_layer_i(39) or serial_layer_i(40);
end if;
end process;

process(clk,reset)
begin
if reset = '1' then  
elsif clk'event and clk='1' then
serial_layer_i_out<=serial_layer_i;
end if;
end process;

end Behavioral;
