proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param xicom.use_bs_reader 1
  debug::add_scope template.lib 1
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.cache/wt [current_project]
  set_property parent.project_path /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.xpr [current_project]
  set_property ip_repo_paths /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.cache/ip [current_project]
  set_property ip_output_repo /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.cache/ip [current_project]
  add_files -quiet /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/synth_1/PRBF2_TOP.dcp
  add_files -quiet /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/FIFO_sort_by_BX_synth_1/FIFO_sort_by_BX.dcp
  set_property netlist_only true [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/FIFO_sort_by_BX_synth_1/FIFO_sort_by_BX.dcp]
  add_files -quiet /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/FIFO_sort_by_layer_synth_1/FIFO_sort_by_layer.dcp
  set_property netlist_only true [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/FIFO_sort_by_layer_synth_1/FIFO_sort_by_layer.dcp]
  add_files -quiet /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/vio_0_synth_1/vio_0.dcp
  set_property netlist_only true [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/vio_0_synth_1/vio_0.dcp]
  add_files -quiet /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/clk_wiz_0_synth_1/clk_wiz_0.dcp
  set_property netlist_only true [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/clk_wiz_0_synth_1/clk_wiz_0.dcp]
  add_files -quiet /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/fifo_TX_RX_synth_1/fifo_TX_RX.dcp
  set_property netlist_only true [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/fifo_TX_RX_synth_1/fifo_TX_RX.dcp]
  add_files -quiet /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/ila_stub_synth_1/ila_stub.dcp
  set_property netlist_only true [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/ila_stub_synth_1/ila_stub.dcp]
  add_files -quiet /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/c_shift_ram_0_synth_1/c_shift_ram_0.dcp
  set_property netlist_only true [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/c_shift_ram_0_synth_1/c_shift_ram_0.dcp]
  add_files -quiet /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/c_shift_ram_1_synth_1/c_shift_ram_1.dcp
  set_property netlist_only true [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/c_shift_ram_1_synth_1/c_shift_ram_1.dcp]
  add_files -quiet /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/c_shift_ram_20d_32b_synth_1/c_shift_ram_20d_32b.dcp
  set_property netlist_only true [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/c_shift_ram_20d_32b_synth_1/c_shift_ram_20d_32b.dcp]
  add_files -quiet /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/c_shift_ram_20d_1b_synth_1/c_shift_ram_20d_1b.dcp
  set_property netlist_only true [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.runs/c_shift_ram_20d_1b_synth_1/c_shift_ram_20d_1b.dcp]
  read_xdc -mode out_of_context -ref FIFO_sort_by_BX -cells U0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/FIFO_sort_by_BX/FIFO_sort_by_BX_ooc.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/FIFO_sort_by_BX/FIFO_sort_by_BX_ooc.xdc]
  read_xdc -ref FIFO_sort_by_BX -cells U0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/FIFO_sort_by_BX/FIFO_sort_by_BX/FIFO_sort_by_BX.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/FIFO_sort_by_BX/FIFO_sort_by_BX/FIFO_sort_by_BX.xdc]
  read_xdc -mode out_of_context -ref FIFO_sort_by_layer -cells U0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/FIFO_sort_by_layer/FIFO_sort_by_layer_ooc.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/FIFO_sort_by_layer/FIFO_sort_by_layer_ooc.xdc]
  read_xdc -ref FIFO_sort_by_layer -cells U0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/FIFO_sort_by_layer/FIFO_sort_by_layer/FIFO_sort_by_layer.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/FIFO_sort_by_layer/FIFO_sort_by_layer/FIFO_sort_by_layer.xdc]
  read_xdc -mode out_of_context -ref vio_0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/vio_0_1/vio_0_ooc.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/vio_0_1/vio_0_ooc.xdc]
  read_xdc -ref vio_0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/vio_0_1/vio_0.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/vio_0_1/vio_0.xdc]
  read_xdc -mode out_of_context -ref clk_wiz_0 -cells U0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0_ooc.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0_ooc.xdc]
  read_xdc -prop_thru_buffers -ref clk_wiz_0 -cells U0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0_board.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0_board.xdc]
  read_xdc -ref clk_wiz_0 -cells U0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0.xdc]
  read_xdc -mode out_of_context -ref fifo_TX_RX -cells U0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/fifo_TX_RX/fifo_TX_RX_ooc.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/fifo_TX_RX/fifo_TX_RX_ooc.xdc]
  read_xdc -ref fifo_TX_RX -cells U0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/fifo_TX_RX/fifo_TX_RX/fifo_TX_RX.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/fifo_TX_RX/fifo_TX_RX/fifo_TX_RX.xdc]
  read_xdc -mode out_of_context -ref ila_stub /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/ila_stub/ila_stub_ooc.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/ila_stub/ila_stub_ooc.xdc]
  read_xdc -ref ila_stub /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/ila_stub/ila_v5_0/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/ila_stub/ila_v5_0/constraints/ila.xdc]
  read_xdc -mode out_of_context -ref c_shift_ram_0 -cells U0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/c_shift_ram_0/c_shift_ram_0_ooc.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/c_shift_ram_0/c_shift_ram_0_ooc.xdc]
  read_xdc -mode out_of_context -ref c_shift_ram_1 -cells U0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/c_shift_ram_1/c_shift_ram_1_ooc.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/c_shift_ram_1/c_shift_ram_1_ooc.xdc]
  read_xdc -mode out_of_context -ref c_shift_ram_20d_32b -cells U0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/c_shift_ram_20d_32b/c_shift_ram_20d_32b_ooc.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/c_shift_ram_20d_32b/c_shift_ram_20d_32b_ooc.xdc]
  read_xdc -mode out_of_context -ref c_shift_ram_20d_1b -cells U0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/c_shift_ram_20d_1b/c_shift_ram_20d_1b_ooc.xdc
  set_property processing_order EARLY [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/c_shift_ram_20d_1b/c_shift_ram_20d_1b_ooc.xdc]
  read_xdc /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/constrs_1/new/Data_gen_c.xdc
  read_xdc -ref fifo_TX_RX -cells U0 /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/fifo_TX_RX/fifo_TX_RX/fifo_TX_RX_clocks.xdc
  set_property processing_order LATE [get_files /home/xilinx/PRB/PRBF2_V6_32b_ila_V2_modtomeettiming_DelayPRBFrawto2_Zhendata_newformatting_2Sep2016/PRBF2_V6_32b/PRBF2_V6_32b.srcs/sources_1/ip/fifo_TX_RX/fifo_TX_RX/fifo_TX_RX_clocks.xdc]
  link_design -top PRBF2_TOP -part xc7vx690tffg1927-2
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force PRBF2_TOP_opt.dcp
  catch {report_drc -file PRBF2_TOP_drc_opted.rpt}
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file PRBF2_TOP.hwdef}
  place_design 
  write_checkpoint -force PRBF2_TOP_placed.dcp
  catch { report_io -file PRBF2_TOP_io_placed.rpt }
  catch { report_utilization -file PRBF2_TOP_utilization_placed.rpt -pb PRBF2_TOP_utilization_placed.pb }
  catch { report_control_sets -verbose -file PRBF2_TOP_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force PRBF2_TOP_routed.dcp
  catch { report_drc -file PRBF2_TOP_drc_routed.rpt -pb PRBF2_TOP_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file PRBF2_TOP_timing_summary_routed.rpt -rpx PRBF2_TOP_timing_summary_routed.rpx }
  catch { report_power -file PRBF2_TOP_power_routed.rpt -pb PRBF2_TOP_power_summary_routed.pb }
  catch { report_route_status -file PRBF2_TOP_route_status.rpt -pb PRBF2_TOP_route_status.pb }
  catch { report_clock_utilization -file PRBF2_TOP_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  write_bitstream -force PRBF2_TOP.bit 
  catch { write_sysdef -hwdef PRBF2_TOP.hwdef -bitfile PRBF2_TOP.bit -meminfo PRBF2_TOP.mmi -ltxfile debug_nets.ltx -file PRBF2_TOP.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

