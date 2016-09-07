
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

use IEEE.std_logic_signed.all;

use IEEE.NUMERIC_STD.ALL;




package  my_package is



type module_ar is array (1 to 40) of std_logic_vector(23 downto 0);
--type module_m is array (1 to 14) of module_ar;
type module_m is array (1 to 1) of module_ar;  --MT Aug 22: Zhen's data (1
                                               --event) 
type CIC_ar_rev is array (1 to 40) of std_logic_vector(0 to 255);

--type CIC_m_rev is array (1 to 14) of CIC_ar_rev; --MT Aug 22: Zhen's data (1
--event)
type CIC_m_rev is array (1 to 1) of CIC_ar_rev; 


type CIC_ar is array (1 to 40) of std_logic_vector(255 downto 0);

--type CIC_m is array (1 to 14) of CIC_ar; --MT Aug 22: Zhen's data (1 event)
type CIC_m is array (1 to 1) of CIC_ar;

type prova_ar is array (1 to 40) of std_logic_vector(1023 downto 0);


type data_gen_TX_s_ar is array (1 to 40) of std_logic_vector(31 downto 0);

type MPA_stub_ar is array (1 to 10) of std_logic_vector(23 downto 0);
type CBC_stub_ar is array (1 to 12) of std_logic_vector(19 downto 0);

type MPA_stub_type is record
 nstub: std_logic_vector(3 downto 0);
 bxID: std_logic_vector(11 downto 0);
 error_status: std_logic_vector(8 downto 0);
 MPA_stub: MPA_stub_ar;
end record;

type CBC_stub_type is record
 nstub: std_logic_vector(3 downto 0);
 bxID: std_logic_vector(11 downto 0);
 error_status: std_logic_vector(8 downto 0);
 CBC_stub: MPA_stub_ar;
end record;

type PRBFraw_to_PRBF1_ar is array(1 to 8) of std_logic_vector(31 downto 0);
type PRBF1_from_RTM_ar is array(1 to 7) of std_logic_vector(31 downto 0);
type to_PRBF2_ar is array(1 to 6) of std_logic_vector(31 downto 0);



type Lx_MPA_stub_ar is array (1 to 18) of MPA_stub_type;
  
type serial_layer_ar is array (1 to 40) of std_logic_vector(27 downto 0);

type serial_layer_ar_out is array (1 to 8) of std_logic_vector(27 downto 0);

type serial_layer_to_fifo_ar is array(1 to 8) of std_logic_vector(31 downto 0);

type bx_en_ar is array (1 to 8) of std_logic_vector(3 downto 0);

type fifo_dout_ar is array (1 to 8) of std_logic_vector(31 downto 0);
type fifo_dout_m is array (1 to 8) of fifo_dout_ar;

type fifo_out_count_ar is array (1 to 8) of std_logic_vector(9 downto 0);
type fifo_out_count_m is array (1 to 8) of fifo_out_count_ar;

type serial_fifo_ar is array (1 to 8) of std_logic_vector(31 downto 0);

--type data_p_ar is array (1 to 8) of std_logic_vector(479 downto 0); --MT in Data_gen_RX_Top
--type data_p_m is array (1 to 8) of data_p_ar;

type data_s_bx_ar is array (1 to 8) of std_logic_vector(31 downto 0);
type data_s_bx_m is array (1 to 8) of data_s_bx_ar;

type data_out_per_bx_ar is array (1 to 8) of std_logic_vector(31 downto 0);

type PRBF2_layer_ar is array (1 to 6) of std_logic_vector(31 downto 0);

type PRBF1_bx_ar is array (1 to 7) of std_logic_vector(31 downto 0);


type count_ar is array (1 to 6) of std_logic_vector(7 downto 0);  --MT from PRBF1_to_2
end my_package;
