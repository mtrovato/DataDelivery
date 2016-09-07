#set_property LOC AU15 [get_ports clk_p]
#set_property LOC AV15 [get_ports clk_n]

#set_property PACKAGE_PIN AJ30 [get_ports led]
#set_property IOSTANDARD LVCMOS18 [get_ports led]

#set_property BITSTREAM.General.unconstrainedPins {Allow} [current_design]





create_clock -name clk -period 5.0 [get_ports clk_p]

#MT
set_property LOC AU15 [get_ports  clk_p]
set_property LOC AV15 [get_ports  clk_n]
set_property IOSTANDARD LVDS [get_ports clk_p]
set_property IOSTANDARD LVDS [get_ports clk_n]
set_property DIFF_TERM TRUE [get_ports clk_p]

set_property PACKAGE_PIN AJ30 [get_ports led]
set_property IOSTANDARD LVCMOS18 [get_ports led]

set_property BITSTREAM.General.unconstrainedPins {Allow} [current_design]
