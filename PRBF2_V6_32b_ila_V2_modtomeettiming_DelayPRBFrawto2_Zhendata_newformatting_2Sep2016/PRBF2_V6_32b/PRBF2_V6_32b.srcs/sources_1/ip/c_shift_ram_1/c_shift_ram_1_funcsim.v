// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
// Date        : Wed Aug 31 15:57:24 2016
// Host        : nuhep-75.phys.northwestern.edu running 64-bit CentOS release 6.5 (Final)
// Command     : write_verilog -force -mode funcsim
//               /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/c_shift_ram_1/c_shift_ram_1_funcsim.v
// Design      : c_shift_ram_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_1,c_shift_ram_v12_0,{}" *) (* core_generation_info = "c_shift_ram_1,c_shift_ram_v12_0,{x_ipProduct=Vivado 2015.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=c_shift_ram,x_ipVersion=12.0,x_ipCoreRevision=6,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=virtex7,C_VERBOSITY=0,C_WIDTH=1,C_DEPTH=44,C_ADDR_WIDTH=4,C_SHIFT_TYPE=0,C_OPT_GOAL=0,C_AINIT_VAL=0,C_SINIT_VAL=0,C_DEFAULT_DATA=0,C_HAS_A=0,C_HAS_CE=0,C_REG_LAST_BIT=1,C_SYNC_PRIORITY=1,C_SYNC_ENABLE=0,C_HAS_SCLR=0,C_HAS_SSET=0,C_HAS_SINIT=0,C_MEM_INIT_FILE=no_coe_file_loaded,C_ELABORATION_DIR=./,C_READ_MIF=0,C_PARSER_TYPE=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "c_shift_ram_v12_0,Vivado 2015.1" *) 
(* NotValidForBitStream *)
module c_shift_ram_1
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
  (* c_depth = "44" *) 
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
  c_shift_ram_1_c_shift_ram_v12_0 U0
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
(* C_DEPTH = "44" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_shift_ram_1_c_shift_ram_v12_0
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
  (* c_depth = "44" *) 
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
  c_shift_ram_1_c_shift_ram_v12_0_viv i_synth
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
CL8kpwiAStImFiqeHbvEy258B78oAh8wQ4GD5s3y3LJRlBz6OnIPe5HWlVRDXXaHCz5vviuDUvtf
z/hdGxfTpv+aCbTECGMU0wmcfICqxS1wrZObU8aEqYQ3IoMNmpkkDtcRQeYlq5VoyGoC22nqjpUG
gLwUk/ymYoJE+Fv431ZV1a1psu2ysY76T+DAqK3O6uBeJiqoWdFEqkNM/7paqXTMP/+pdevuZKMc
yWNQLazhrJtKV2vzde6UUE5TNShedC9Mo8ZwzLxW80mQWGi79btZ/ZuZXEigWmUl24vVl0YiZukW
XFIheZ/+c/bFo0uBc1TVs0SVXTM45emNGhGyGg==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
e0dbMzQ1QJsUwsNxMIMewtpNqwSApov7fa93LdW/YHNEWVmMCpx0OvjqriFFLGLo0rOcnlre8Rt5
0g8HD2qy1N3Sp/6uiGdlrm7U5I4t7qazoYO+nXoSwM/tuhVkJ+WmapDFLb8AvGQaEd/1KrMdcAnW
1poA8QP3cHJX8EZZ2jTHfhN4DxdnRKJWMKVwpv2xmhK+thLs/5rk0R5Oz4i9t7joo1xoOwUncxJ/
QIXrXwzZZI2/1h+m0fXfvfdrJOyCTuBwK3/1I7Qa21j45TYItfASprjkxuZ1E25jkEdKJnINn8dc
IZOlbesTmek4EhpbDGDEvsSEWPn7dys/pTtUog==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5360)
`pragma protect data_block
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
/C0=
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
