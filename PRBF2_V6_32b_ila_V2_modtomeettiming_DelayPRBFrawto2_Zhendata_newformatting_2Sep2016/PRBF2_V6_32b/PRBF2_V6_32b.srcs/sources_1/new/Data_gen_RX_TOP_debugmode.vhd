----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/07/2015 10:13:52 PM
-- Design Name: 
-- Module Name: Data_gen_RX_TOP - Behavioral
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

entity Data_gen_RX_TOP is
  Port ( 
  clk_rx: in std_logic;
  en_rx: in std_logic;
  data_in_s: in data_gen_TX_s_ar;
  rx_valid: in std_logic_vector(1 to 40);
  CIC_R_rx: out CIC_ar;
  CIC_L_rx: out CIC_ar;
   module_rx: out module_ar

  );

end Data_gen_RX_TOP;

architecture Behavioral of Data_gen_RX_TOP is

component SIPO_gen is
  Port (
  clk: in std_logic;
  en: in std_logic;
  data_s_in: in std_logic_vector(31 downto 0);
  data_p_out: out std_logic_vector(535 downto 0);
  rx_valid: in std_logic

   );
end component;

type data_p_ar is array (1 to 40) of std_logic_vector(535 downto 0);
signal data_p_sipo: data_p_ar;

--signal data_in_s_d : data_gen_TX_s_ar;  --MT


begin

--MT
--process(clk_rx)
--begin
--if clk_rx'event and clk_rx='1' then
--data_in_s_d <= data_in_s;
--end if;
--end process;



GEN_SIPO: for i in 1 to 40 generate
I_SIPO: SIPO_gen port map(
clk=> clk_rx,
en=> en_rx,
data_s_in=> data_in_s(i), 
--data_s_in=> data_in_s_d(i),
data_p_out=> data_p_sipo(i),
rx_valid=>rx_valid(i)
);


process(clk_rx)
begin
if clk_rx'event and clk_rx='1' then
module_rx(i)<=data_p_sipo(i)(535 downto 512);
CIC_R_rx(i)<=data_p_sipo(i)(511 downto 256);
CIC_L_rx(i)<=data_p_sipo(i)(255 downto 0);
end if;
end process;

end generate GEN_SIPO;






          

end Behavioral;
