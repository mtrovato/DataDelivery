----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/16/2015 12:30:43 PM
-- Design Name: 
-- Module Name: internal_gen - Behavioral
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

entity internal_gen is
  Port ( 
  clk: in std_logic;
  en: in std_logic;
  CIC_R_gen_out: out CIC_m;
  CIC_L_gen_out: out CIC_m
  );
end internal_gen;

architecture Behavioral of internal_gen is


signal temp_R: CIC_m;
signal CIC_R_gen_i: CIC_m;
signal CIC_L_gen_i: CIC_m;

begin

I_for1:for i in 1 to 40 generate

CIC_R_gen_i(1)(i)(255)<='1';
CIC_R_gen_i(1)(i)(254 downto 246)<=(others=>'0');
CIC_R_gen_i(1)(i)(245 downto 234)<=(others=>'0');
CIC_R_gen_i(1)(i)(233 downto 230)<="1010";

CIC_R_gen_i(2)(i)(255)<='1';
CIC_R_gen_i(2)(i)(254 downto 246)<=(others=>'0');
CIC_R_gen_i(2)(i)(245 downto 234)<=(others=>'0');
CIC_R_gen_i(2)(i)(233 downto 230)<="1010";

CIC_R_gen_i(3)(i)(255)<='1';
CIC_R_gen_i(3)(i)(254 downto 246)<=(others=>'0');
CIC_R_gen_i(3)(i)(245 downto 234)<=(others=>'0');
CIC_R_gen_i(3)(i)(233 downto 230)<="1010";

CIC_R_gen_i(4)(i)(255)<='1';
CIC_R_gen_i(4)(i)(254 downto 246)<=(others=>'0');
CIC_R_gen_i(4)(i)(245 downto 234)<=(others=>'0');
CIC_R_gen_i(4)(i)(233 downto 230)<="1010";

CIC_R_gen_i(5)(i)(255)<='1';
CIC_R_gen_i(5)(i)(254 downto 246)<=(others=>'0');
CIC_R_gen_i(5)(i)(245 downto 234)<=(others=>'0');
CIC_R_gen_i(5)(i)(233 downto 230)<="1010";

CIC_R_gen_i(6)(i)(255)<='1';
CIC_R_gen_i(6)(i)(254 downto 246)<=(others=>'0');
CIC_R_gen_i(6)(i)(245 downto 234)<=(others=>'0');
CIC_R_gen_i(6)(i)(233 downto 230)<="1010";

CIC_R_gen_i(7)(i)(255)<='1';
CIC_R_gen_i(7)(i)(254 downto 246)<=(others=>'0');
CIC_R_gen_i(7)(i)(245 downto 234)<=(others=>'0');
CIC_R_gen_i(7)(i)(233 downto 230)<="1010";

CIC_R_gen_i(8)(i)(255)<='1';
CIC_R_gen_i(8)(i)(254 downto 246)<=(others=>'0');
CIC_R_gen_i(8)(i)(245 downto 234)<=(others=>'0');
CIC_R_gen_i(8)(i)(233 downto 230)<="1010";

CIC_R_gen_i(9)(i)(255)<='1';
CIC_R_gen_i(9)(i)(254 downto 246)<=(others=>'0');
CIC_R_gen_i(9)(i)(245 downto 234)<=(others=>'0');
CIC_R_gen_i(9)(i)(233 downto 230)<="1010";

CIC_R_gen_i(10)(i)(255)<='1';
CIC_R_gen_i(10)(i)(254 downto 246)<=(others=>'0');
CIC_R_gen_i(10)(i)(245 downto 234)<=(others=>'0');
CIC_R_gen_i(10)(i)(233 downto 230)<="1010";

CIC_R_gen_i(11)(i)(255)<='1';
CIC_R_gen_i(11)(i)(254 downto 246)<=(others=>'0');
CIC_R_gen_i(11)(i)(245 downto 234)<=(others=>'0');
CIC_R_gen_i(11)(i)(233 downto 230)<="1010";

CIC_R_gen_i(12)(i)(255)<='1';
CIC_R_gen_i(12)(i)(254 downto 246)<=(others=>'0');
CIC_R_gen_i(12)(i)(245 downto 234)<=(others=>'0');
CIC_R_gen_i(12)(i)(233 downto 230)<="1010";

I_for2:for j in 1 to 10 generate
IF_first:if j<8 generate

CIC_R_gen_i(1)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-3)<=std_logic_vector(to_unsigned(j-1,3));
CIC_R_gen_i(1)(i)(230-(j-1)*23-4 downto 230-(j-1)*23-7)<=x"1";
CIC_R_gen_i(1)(i)(230-(j-1)*23-8 downto 230-(j-1)*23-15)<=std_logic_vector(to_unsigned(i,8));
CIC_R_gen_i(1)(i)(230-(j-1)*23-16 downto 230-(j-1)*23-23)<=std_logic_vector(to_unsigned(j,4)) & std_logic_vector(to_unsigned(j,4));

CIC_R_gen_i(2)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-3)<=std_logic_vector(to_unsigned(j-1,3));
CIC_R_gen_i(2)(i)(230-(j-1)*23-4 downto 230-(j-1)*23-7)<=x"2";
CIC_R_gen_i(2)(i)(230-(j-1)*23-8 downto 230-(j-1)*23-15)<=std_logic_vector(to_unsigned(i,8));
CIC_R_gen_i(2)(i)(230-(j-1)*23-16 downto 230-(j-1)*23-23)<=std_logic_vector(to_unsigned(j,4)) & std_logic_vector(to_unsigned(j,4));

CIC_R_gen_i(3)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-3)<=std_logic_vector(to_unsigned(j-1,3));
CIC_R_gen_i(3)(i)(230-(j-1)*23-4 downto 230-(j-1)*23-7)<=x"3";
CIC_R_gen_i(3)(i)(230-(j-1)*23-8 downto 230-(j-1)*23-15)<=std_logic_vector(to_unsigned(i,8));
CIC_R_gen_i(3)(i)(230-(j-1)*23-16 downto 230-(j-1)*23-23)<=std_logic_vector(to_unsigned(j,4)) & std_logic_vector(to_unsigned(j,4));

CIC_R_gen_i(4)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-3)<=std_logic_vector(to_unsigned(j-1,3));
CIC_R_gen_i(4)(i)(230-(j-1)*23-4 downto 230-(j-1)*23-7)<=x"4";
CIC_R_gen_i(4)(i)(230-(j-1)*23-8 downto 230-(j-1)*23-15)<=std_logic_vector(to_unsigned(i,8));
CIC_R_gen_i(4)(i)(230-(j-1)*23-16 downto 230-(j-1)*23-23)<=std_logic_vector(to_unsigned(j,4)) & std_logic_vector(to_unsigned(j,4));

CIC_R_gen_i(5)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-3)<=std_logic_vector(to_unsigned(j-1,3));
CIC_R_gen_i(5)(i)(230-(j-1)*23-4 downto 230-(j-1)*23-7)<=x"5";
CIC_R_gen_i(5)(i)(230-(j-1)*23-8 downto 230-(j-1)*23-15)<=std_logic_vector(to_unsigned(i,8));
CIC_R_gen_i(5)(i)(230-(j-1)*23-16 downto 230-(j-1)*23-23)<=std_logic_vector(to_unsigned(j,4)) & std_logic_vector(to_unsigned(j,4));

CIC_R_gen_i(6)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-3)<=std_logic_vector(to_unsigned(j-1,3));
CIC_R_gen_i(6)(i)(230-(j-1)*23-4 downto 230-(j-1)*23-7)<=x"6";
CIC_R_gen_i(6)(i)(230-(j-1)*23-8 downto 230-(j-1)*23-15)<=std_logic_vector(to_unsigned(i,8));
CIC_R_gen_i(6)(i)(230-(j-1)*23-16 downto 230-(j-1)*23-23)<=std_logic_vector(to_unsigned(j,4)) & std_logic_vector(to_unsigned(j,4));

CIC_R_gen_i(7)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-3)<=std_logic_vector(to_unsigned(j-1,3));
CIC_R_gen_i(7)(i)(230-(j-1)*23-4 downto 230-(j-1)*23-7)<=x"7";
CIC_R_gen_i(7)(i)(230-(j-1)*23-8 downto 230-(j-1)*23-15)<=std_logic_vector(to_unsigned(i,8));
CIC_R_gen_i(7)(i)(230-(j-1)*23-16 downto 230-(j-1)*23-23)<=std_logic_vector(to_unsigned(j,4)) & std_logic_vector(to_unsigned(j,4));

CIC_R_gen_i(8)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-3)<=std_logic_vector(to_unsigned(j-1,3));
CIC_R_gen_i(8)(i)(230-(j-1)*23-4 downto 230-(j-1)*23-7)<=x"8";
CIC_R_gen_i(8)(i)(230-(j-1)*23-8 downto 230-(j-1)*23-15)<=std_logic_vector(to_unsigned(i,8));
CIC_R_gen_i(8)(i)(230-(j-1)*23-16 downto 230-(j-1)*23-23)<=std_logic_vector(to_unsigned(j,4)) & std_logic_vector(to_unsigned(j,4));

CIC_R_gen_i(9)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-3)<=std_logic_vector(to_unsigned(j-1,3));
CIC_R_gen_i(9)(i)(230-(j-1)*23-4 downto 230-(j-1)*23-7)<=x"9";
CIC_R_gen_i(9)(i)(230-(j-1)*23-8 downto 230-(j-1)*23-15)<=std_logic_vector(to_unsigned(i,8));
CIC_R_gen_i(9)(i)(230-(j-1)*23-16 downto 230-(j-1)*23-23)<=std_logic_vector(to_unsigned(j,4)) & std_logic_vector(to_unsigned(j,4));

CIC_R_gen_i(10)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-3)<=std_logic_vector(to_unsigned(j-1,3));
CIC_R_gen_i(10)(i)(230-(j-1)*23-4 downto 230-(j-1)*23-7)<=x"a";
CIC_R_gen_i(10)(i)(230-(j-1)*23-8 downto 230-(j-1)*23-15)<=std_logic_vector(to_unsigned(i,8));
CIC_R_gen_i(10)(i)(230-(j-1)*23-16 downto 230-(j-1)*23-23)<=std_logic_vector(to_unsigned(j,4)) & std_logic_vector(to_unsigned(j,4));

CIC_R_gen_i(11)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-3)<=std_logic_vector(to_unsigned(j-1,3));
CIC_R_gen_i(11)(i)(230-(j-1)*23-4 downto 230-(j-1)*23-7)<=x"b";
CIC_R_gen_i(11)(i)(230-(j-1)*23-8 downto 230-(j-1)*23-15)<=std_logic_vector(to_unsigned(i,8));
CIC_R_gen_i(11)(i)(230-(j-1)*23-16 downto 230-(j-1)*23-23)<=std_logic_vector(to_unsigned(j,4)) & std_logic_vector(to_unsigned(j,4));

CIC_R_gen_i(12)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-3)<=std_logic_vector(to_unsigned(j-1,3));
CIC_R_gen_i(12)(i)(230-(j-1)*23-4 downto 230-(j-1)*23-7)<=x"c";
CIC_R_gen_i(12)(i)(230-(j-1)*23-8 downto 230-(j-1)*23-15)<=std_logic_vector(to_unsigned(i,8));
CIC_R_gen_i(12)(i)(230-(j-1)*23-16 downto 230-(j-1)*23-23)<=std_logic_vector(to_unsigned(j,4)) & std_logic_vector(to_unsigned(j,4));

CIC_R_gen_i(13)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-3)<=std_logic_vector(to_unsigned(j-1,3));
CIC_R_gen_i(13)(i)(230-(j-1)*23-4 downto 230-(j-1)*23-7)<=x"d";
CIC_R_gen_i(13)(i)(230-(j-1)*23-8 downto 230-(j-1)*23-15)<=std_logic_vector(to_unsigned(i,8));
CIC_R_gen_i(13)(i)(230-(j-1)*23-16 downto 230-(j-1)*23-23)<=std_logic_vector(to_unsigned(j,4)) & std_logic_vector(to_unsigned(j,4));

CIC_R_gen_i(14)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-3)<=std_logic_vector(to_unsigned(j-1,3));
CIC_R_gen_i(14)(i)(230-(j-1)*23-4 downto 230-(j-1)*23-7)<=x"e";
CIC_R_gen_i(14)(i)(230-(j-1)*23-8 downto 230-(j-1)*23-15)<=std_logic_vector(to_unsigned(i,8));
CIC_R_gen_i(14)(i)(230-(j-1)*23-16 downto 230-(j-1)*23-23)<=std_logic_vector(to_unsigned(j,4)) & std_logic_vector(to_unsigned(j,4));




end generate IF_first;
IF_second: if j>7 and j<11 generate
CIC_R_gen_i(1)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-23)<=(others=>'0');
CIC_R_gen_i(2)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-23)<=(others=>'0');
CIC_R_gen_i(3)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-23)<=(others=>'0');
CIC_R_gen_i(4)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-23)<=(others=>'0');
CIC_R_gen_i(5)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-23)<=(others=>'0');
CIC_R_gen_i(6)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-23)<=(others=>'0');
CIC_R_gen_i(7)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-23)<=(others=>'0');
CIC_R_gen_i(8)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-23)<=(others=>'0');
CIC_R_gen_i(9)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-23)<=(others=>'0');
CIC_R_gen_i(10)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-23)<=(others=>'0');
CIC_R_gen_i(11)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-23)<=(others=>'0');
CIC_R_gen_i(12)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-23)<=(others=>'0');
CIC_R_gen_i(13)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-23)<=(others=>'0');
CIC_R_gen_i(14)(i)(230-(j-1)*23-1 downto 230-(j-1)*23-23)<=(others=>'0');
end generate IF_second;
end generate I_for2;
end generate I_for1;



process(clk, en)
begin
if en='1' then
if clk'event and clk='1' then
CIC_R_gen_out<=CIC_R_gen_i;
CIC_L_gen_out<=(others=>(others=>(others=>'0')));
end if;
end if;

end process;

end Behavioral;
