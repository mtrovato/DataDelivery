// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
// Date        : Wed Aug 31 15:57:33 2016
// Host        : nuhep-75.phys.northwestern.edu running 64-bit CentOS release 6.5 (Final)
// Command     : write_verilog -force -mode funcsim
//               /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/c_shift_ram_20d_1b/c_shift_ram_20d_1b_funcsim.v
// Design      : c_shift_ram_20d_1b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_20d_1b,c_shift_ram_v12_0,{}" *) (* core_generation_info = "c_shift_ram_20d_1b,c_shift_ram_v12_0,{x_ipProduct=Vivado 2015.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=c_shift_ram,x_ipVersion=12.0,x_ipCoreRevision=6,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=virtex7,C_VERBOSITY=0,C_WIDTH=1,C_DEPTH=35,C_ADDR_WIDTH=4,C_SHIFT_TYPE=0,C_OPT_GOAL=0,C_AINIT_VAL=0,C_SINIT_VAL=0,C_DEFAULT_DATA=0,C_HAS_A=0,C_HAS_CE=0,C_REG_LAST_BIT=1,C_SYNC_PRIORITY=1,C_SYNC_ENABLE=0,C_HAS_SCLR=0,C_HAS_SSET=0,C_HAS_SINIT=0,C_MEM_INIT_FILE=no_coe_file_loaded,C_ELABORATION_DIR=./,C_READ_MIF=0,C_PARSER_TYPE=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "c_shift_ram_v12_0,Vivado 2015.1" *) 
(* NotValidForBitStream *)
module c_shift_ram_20d_1b
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* DONT_TOUCH *) 
  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "35" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_shift_ram_20d_1b_c_shift_ram_v12_0 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "35" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_shift_ram_20d_1b_c_shift_ram_v12_0
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire [3:0]A;
  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;
  wire SINIT;
  wire SSET;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "35" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_shift_ram_20d_1b_c_shift_ram_v12_0_viv i_synth
       (.A(A),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(SINIT),
        .SSET(SSET));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
Rbb7jVAOBJ2KXYd2/JOPnsQwsfsQMifHXoOl+12xe7DIw33Z/GclKHK60mV471mPzs0qXLlPohwD
VVeAd/nyVg==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
mUDO6rm4JSHkIISXozA+UIAQQ6J+ReohQib1ApqbVZMTqB1b4SoLYlxQlUaMivKjK5633Q2V8SXx
g00l0h2NU1ytTqtLQDpZrUvyWIsUf5SWf6XwgikXzMxjo934uCRzyVkNXGsBnZfemFv2Lf5S67jp
lIV/+cSiVzofJTXVz0Y=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
dkdLhW27uyOre1ahl2084nC3GfrYORtBOqrAO2egKpJGFYR0ROnPxjH/5ilRK0IYpEm1kj3NLm1r
f9emx9yLr+Nmnq4jzP3DI34i0B2j90KzFrWqN9k8P0L8NqZBKjtocncGd+PHHCuRoluhZGu4ElD5
BRoK0rg+dAZ5YWFEvfAhhR69HimK9xSjBhpY2Qh5hNmSgB2uhEn2fpuP8MDLJSZM1lKnhUoQhbIs
jfrpi05TCGWmmNQpKxA4Dx++XALjNPHAASTA9SfvHarfHUY53bfkCu23y+QUUis4G7s2CPwNbfgP
dFc4wYJHn/4teSP7r/c6Wb1QsiDF/adyS6uwmg==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
yaOuYVGx7TsIeXyK8zN0rthqD/yDXXc8vWP2b8uAGyAMdaicPr1l1NECIoGBChZTSaV83gMouEUc
XbJ0Gt2Eij5bbZQFhMGVB4uc8g6S9R/0h4PeA7uZiG62JlmowAKX9rmpUraZHvQf+NxWKSKPwsy6
V75XaVEgIcyakwM92dE=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
eV49ggIU35LHKoijhHV3JZM3KCGyAfoRCgIJkxUxlnV52FLFUyq0AfsxffQt0kp3d+SUKx5jUE5R
xGHtKnI2WRRUDnGAHtSFW37SkQ1N325AIouaEtIqKcnfVRGiBtmYvB3oPsoarbm0smoy9Y8Bu8DB
hzjat5/7PVTLaPygG5K7E2NhaIM+8I00n9fotP3DZ7nFZ3NUomeN9PNa2bv3JXIhx7gWYRfDswrB
AiWhXQk24F71yKgnl9RmyfGWKSPdrpU9SXjgxI4IeNKbU3LkGjW0Luaeb7tjf8bgSseJN4ysGQdX
G55Fxr8wBPlvhahttGsBC6vNjoGYtB5ehHh7XQ==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
V7i8s1j06o5x7g9xDpQlIetOwoF0y06vmMCMRMQ5x0/mvrmS0LJY3m51A9B8JlEG2/pRmTNDWauf
g75Bo+fJKrrFOehTfokCl6fKzj3jOQsS+qSGUdNpiiBrrZSboEfMsPFZmcm4HkUdaw4JreAABeuD
q+QApqxW8G7GN7PAzuGL0ie0LiLmv9J9KPGfteQHRf+4jUyugtUtfETqQ7TRJuBL7wkNcLM2kusO
+NXv8Ct7cLnHszTBrBRhjP8XAIcm17aNfNKfvK40U6LY+0oTF0g94O4deDjaK5kb0bmkrLPJqso6
nKcKFk/8Ak2mRBgOLLFAMJwO0QB6ovw+l0oyZg==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
ikVyig+RciD57uSbpwMoV8t3JCyzmh+2/3ei0csyJEut3bWsfIyV5Lex2mIXq4gp4LtxqXMqK0UA
YkHyXBVprJ3d04RLLsPpInAVwFZcya0Qpa55STB3G3KY7ooV+N0R//ePQwLQ5m1bo+s9jZgrAyfH
X3uFUVlDYrG/1uanmGoaTRCXr0ITu2NeLLcByiUq05//AHLnbE7E81TypIjfBifhHvHB/x1EEcCR
h8cX9XxayFDqQ/bnNS21faZ+jUnCBwoA41j0RrwuOrds2htFFvsmIO+I5KzHrqDSwAvkgd35qK50
eaBJ2MuHqhMZH2ux3Jg6vZfPapX9N+uJS69CzQ==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5376)
`pragma protect data_block
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
mjBD/pByNornY6gUBDaaSunR
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
