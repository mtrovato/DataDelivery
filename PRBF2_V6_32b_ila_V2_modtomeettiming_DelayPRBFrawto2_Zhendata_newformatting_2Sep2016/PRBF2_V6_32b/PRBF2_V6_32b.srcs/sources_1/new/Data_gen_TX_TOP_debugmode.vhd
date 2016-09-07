----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2015 04:06:16 PM
-- Design Name: 
-- Module Name: Data_gen_TX_TOP - Behavioral
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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Data_gen_TX_TOP is
 Port ( 
 clk_tx: in std_logic;
 en_tx: in std_logic;
 tx_valid: out std_logic_vector(1 to 40) ;
 data_gen_s: out data_gen_TX_s_ar;
 
  module_gen_o: out module_ar;
  CIC_R_gen_o: out CIC_ar;
  CIC_L_gen_o: out CIC_ar
    
 );
end Data_gen_TX_TOP;

architecture Behavioral of Data_gen_TX_TOP is

component internal_gen is
  Port ( 
  clk: in std_logic;
  en: in std_logic;
  CIC_R_gen_out: out CIC_m;
  CIC_L_gen_out: out CIC_m
  );
end component;

signal module_gen: module_m;
--signal CIC_R_gen: CIC_R_m_rev;
--signal CIC_L_gen: CIC_L_m_rev;

signal CIC_R_gen: CIC_m;
signal CIC_L_gen: CIC_m;

signal count_event, count_event_d:  integer:=1;

signal data_gen: std_logic_vector (535 downto 0);


component PISO_gen is
  Port (
  clk: in std_logic;
  en: in std_logic;
  module: in std_logic_vector(23 downto 0);
  CIC_R: in std_logic_vector(255 downto 0);
  CIC_L: in std_logic_vector(255 downto 0);
  serial_out: out std_logic_vector(31 downto 0);
  tx_valid: out std_logic
   );
end component;



signal module_piso: module_ar;
signal CIC_R_piso: CIC_ar;
signal CIC_L_piso: CIC_ar;


begin
process(clk_tx)
begin
if clk_tx'event and clk_tx='1' then
module_gen_o <=module_piso;
  CIC_R_gen_o<=CIC_R_piso;
  CIC_L_gen_o<= CIC_L_piso;
  end if;
  end process;

  
module_gen(1)(1)<=x"050332";
module_gen(1)(2)<=x"050333";
module_gen(1)(3)<=x"050334";

module_gen(1)(4)<=x"060429";
module_gen(1)(5)<=x"060430";
module_gen(1)(6)<=x"060431";
module_gen(1)(7)<=x"060529";
module_gen(1)(8)<=x"060530";
module_gen(1)(9)<=x"060531";

module_gen(1)(10)<=x"070531";
module_gen(1)(11)<=x"070531";
module_gen(1)(12)<=x"070531";
module_gen(1)(13)<=x"070531";
module_gen(1)(14)<=x"070531";
module_gen(1)(15)<=x"070531";

module_gen(1)(16)<=x"080531";
module_gen(1)(17)<=x"080531";
module_gen(1)(18)<=x"080531";
module_gen(1)(19)<=x"080531";
module_gen(1)(20)<=x"080531";
module_gen(1)(21)<=x"080531";

module_gen(1)(22)<=x"090531";
module_gen(1)(23)<=x"090531";
module_gen(1)(24)<=x"090531";
module_gen(1)(25)<=x"090531";
module_gen(1)(26)<=x"090531";
module_gen(1)(27)<=x"090531";
module_gen(1)(28)<=x"090531";
module_gen(1)(29)<=x"090531";

module_gen(1)(30)<=x"100531";
module_gen(1)(31)<=x"100531";
module_gen(1)(32)<=x"100531";
module_gen(1)(33)<=x"100531";
module_gen(1)(34)<=x"100531";
module_gen(1)(35)<=x"100531";
module_gen(1)(36)<=x"100531";
module_gen(1)(37)<=x"100531";
module_gen(1)(38)<=x"100531";
module_gen(1)(39)<=x"100531";
module_gen(1)(40)<=x"100531";


GEN_mod: for i in 1 to 14 generate
module_gen(i)<=module_gen(1);
end generate GEN_mod;


I_internal_gen: internal_gen
  Port map( 
  clk=> clk_tx,
  en=> en_tx,
  CIC_R_gen_out=> CIC_R_gen,
  CIC_L_gen_out=> CIC_L_gen
  );
  
--MT Aug 22: Zhen's data (1 event)
--process(clk_tx,en_tx)
--begin
--if en_tx='1' then
--if clk_tx'event and clk_tx='1' then
--if count_event=12 then
--count_event<=1;
--else
--count_event<=count_event+1;
--end if;
--end if;
--end if;
--end process;


--MT
process(clk_tx)
begin
if clk_tx'event and clk_tx='1' then
count_event_d<=count_event;
end if;
end process;



GEN_PISO: for i in 1 to 40 generate

process(clk_tx)
begin
if clk_tx'event and clk_tx='1' then
module_piso(i)<=module_gen(count_event_d)(i);
CIC_R_piso(i)<= CIC_R_gen(count_event_d)(i);
CIC_L_piso(i)<= CIC_L_gen(count_event_d)(i);
end if;
end process;

I_PISO: PISO_gen
  Port map(
  clk=> clk_tx,
  en=> en_tx,
  module=> module_piso(i),
  CIC_R=> CIC_R_piso(i),
  CIC_L=> CIC_L_piso(i),
  serial_out=> data_gen_s(i),
  tx_valid=>tx_valid(i)
   );

end generate GEN_PISO;





end Behavioral;
