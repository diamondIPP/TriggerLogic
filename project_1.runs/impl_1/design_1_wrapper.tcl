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

set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  debug::add_scope template.lib 1
  create_project -in_memory -part xc7a200tfbg676-2
  set_property board_part xilinx.com:ac701:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.cache/wt [current_project]
  set_property parent.project_path /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.xpr [current_project]
  set_property ip_repo_paths {
  /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.cache/ip
  /n/15/moore.1424/xillinx/trigger_logic_axi_io
  /n/15/moore.1424/xillinx/pulse_gen_axi
  /n/15/moore.1424/xillinx/phase_shift_40MHz_clk_gen_axi
  /n/15/moore.1424/xillinx/axi_real_time_clock
} [current_project]
  set_property ip_output_repo /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.cache/ip [current_project]
  add_files -quiet /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.runs/synth_1/design_1_wrapper.dcp
  add_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/design_1.bmm
  set_property SCOPED_TO_REF design_1 [get_files -all /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/design_1.bmm]
  set_property SCOPED_TO_CELLS {} [get_files -all /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/design_1.bmm]
  add_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/imports/Debug/spi_bootloader.elf
  set_property SCOPED_TO_REF design_1 [get_files -all /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/imports/Debug/spi_bootloader.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/imports/Debug/spi_bootloader.elf]
  read_xdc -ref design_1_microblaze_0_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc]
  read_xdc -ref design_1_mig_7series_0_0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/constraints/design_1_mig_7series_0_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/constraints/design_1_mig_7series_0_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_mig_7series_0_0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0_board.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0_board.xdc]
  read_xdc -ref design_1_dlmb_v10_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0.xdc]
  read_xdc -ref design_1_ilmb_v10_1 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_1/design_1_ilmb_v10_1.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_1/design_1_ilmb_v10_1.xdc]
  read_xdc -ref design_1_microblaze_0_axi_intc_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_axi_intc_0/design_1_microblaze_0_axi_intc_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_axi_intc_0/design_1_microblaze_0_axi_intc_0.xdc]
  read_xdc -ref design_1_mdm_1_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_proc_sys_reset_1_0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_1_0/design_1_proc_sys_reset_1_0_board.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_1_0/design_1_proc_sys_reset_1_0_board.xdc]
  read_xdc -ref design_1_proc_sys_reset_1_0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_1_0/design_1_proc_sys_reset_1_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_1_0/design_1_proc_sys_reset_1_0.xdc]
  read_xdc -ref design_1_axi_timer_0_0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_timer_0_0/design_1_axi_timer_0_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_timer_0_0/design_1_axi_timer_0_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_axi_uartlite_0_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_board.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_board.xdc]
  read_xdc -ref design_1_axi_uartlite_0_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_0_eth_buf_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_0/bd_0_eth_buf_0_board.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_0/bd_0_eth_buf_0_board.xdc]
  read_xdc -prop_thru_buffers -ref bd_0_eth_mac_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_0_eth_mac_0_board.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_0_eth_mac_0_board.xdc]
  read_xdc -ref bd_0_eth_mac_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_0_eth_mac_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_0_eth_mac_0.xdc]
  read_xdc -ref design_1_axi_ethernet_0_dma_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_dma_0/design_1_axi_ethernet_0_dma_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_dma_0/design_1_axi_ethernet_0_dma_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_clk_wiz_0_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc]
  read_xdc -ref design_1_clk_wiz_0_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc]
  read_xdc -ref design_1_trigger_logic_AXI_0_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/ipshared/user.org/trigger_logic_axi_v1_1/d31798e6/constrs_1/imports/new/ac701_trigger_logic_design.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/ipshared/user.org/trigger_logic_axi_v1_1/d31798e6/constrs_1/imports/new/ac701_trigger_logic_design.xdc]
  read_xdc -prop_thru_buffers -ref design_1_rst_clk_wiz_0_401M_0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_0_401M_0/design_1_rst_clk_wiz_0_401M_0_board.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_0_401M_0/design_1_rst_clk_wiz_0_401M_0_board.xdc]
  read_xdc -ref design_1_rst_clk_wiz_0_401M_0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_0_401M_0/design_1_rst_clk_wiz_0_401M_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_0_401M_0/design_1_rst_clk_wiz_0_401M_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_rst_clk_wiz_0_125M_0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_0_125M_0/design_1_rst_clk_wiz_0_125M_0_board.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_0_125M_0/design_1_rst_clk_wiz_0_125M_0_board.xdc]
  read_xdc -ref design_1_rst_clk_wiz_0_125M_0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_0_125M_0/design_1_rst_clk_wiz_0_125M_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_0_125M_0/design_1_rst_clk_wiz_0_125M_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_axi_quad_spi_0_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0_board.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0_board.xdc]
  read_xdc -ref design_1_axi_quad_spi_0_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_axi_gpio_0_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc]
  read_xdc -ref design_1_axi_gpio_0_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc]
  read_xdc -ref design_1_phase_shift_40MHz_clk_gen_axi_0_1 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/ipshared/user.org/phase_shift_40mhz_clk_gen_axi_v1_0/db1dbbe0/phase_shift_40MHz_clk_gen_axi.srcs/constrs_1/new/phase_shift_40MHz_clk_constraints.xdc
  set_property processing_order EARLY [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/ipshared/user.org/phase_shift_40mhz_clk_gen_axi_v1_0/db1dbbe0/phase_shift_40MHz_clk_gen_axi.srcs/constrs_1/new/phase_shift_40MHz_clk_constraints.xdc]
  read_xdc /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/constrs_1/new/system.xdc
  read_xdc -ref design_1_microblaze_0_axi_intc_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_axi_intc_0/design_1_microblaze_0_axi_intc_0_clocks.xdc
  set_property processing_order LATE [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_axi_intc_0/design_1_microblaze_0_axi_intc_0_clocks.xdc]
  read_xdc -ref bd_0_eth_buf_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_0/synth/bd_0_eth_buf_0.xdc
  set_property processing_order LATE [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_0/synth/bd_0_eth_buf_0.xdc]
  read_xdc -ref bd_0_eth_mac_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_0_eth_mac_0_clocks.xdc
  set_property processing_order LATE [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_1/synth/bd_0_eth_mac_0_clocks.xdc]
  read_xdc -ref design_1_axi_ethernet_0_dma_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_dma_0/design_1_axi_ethernet_0_dma_0_clocks.xdc
  set_property processing_order LATE [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_dma_0/design_1_axi_ethernet_0_dma_0_clocks.xdc]
  read_xdc -ref design_1_axi_quad_spi_0_0 -cells U0 /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0_clocks.xdc
  set_property processing_order LATE [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0_clocks.xdc]
  read_xdc -ref design_1_auto_cc_0 -cells inst /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_auto_cc_0/design_1_auto_cc_0_clocks.xdc
  set_property processing_order LATE [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_auto_cc_0/design_1_auto_cc_0_clocks.xdc]
  read_xdc -ref design_1_auto_cc_1 -cells inst /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_auto_cc_1/design_1_auto_cc_1_clocks.xdc
  set_property processing_order LATE [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_auto_cc_1/design_1_auto_cc_1_clocks.xdc]
  read_xdc -ref design_1_auto_cc_2 -cells inst /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_auto_cc_2/design_1_auto_cc_2_clocks.xdc
  set_property processing_order LATE [get_files /data1/jmoore/XAPP1026/AC701_AxiEth_100Mhz_64kb/HW/project_1.srcs/sources_1/bd/design_1/ip/design_1_auto_cc_2/design_1_auto_cc_2_clocks.xdc]
  link_design -top design_1_wrapper -part xc7a200tfbg676-2
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
  write_checkpoint -force design_1_wrapper_opt.dcp
  catch {report_drc -file design_1_wrapper_drc_opted.rpt}
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
  catch {write_hwdef -file design_1_wrapper.hwdef}
  place_design 
  write_checkpoint -force design_1_wrapper_placed.dcp
  catch { report_io -file design_1_wrapper_io_placed.rpt }
  catch { report_utilization -file design_1_wrapper_utilization_placed.rpt -pb design_1_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file design_1_wrapper_control_sets_placed.rpt }
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
  write_checkpoint -force design_1_wrapper_routed.dcp
  catch { report_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file design_1_wrapper_timing_summary_routed.rpt -rpx design_1_wrapper_timing_summary_routed.rpx }
  catch { report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb }
  catch { report_route_status -file design_1_wrapper_route_status.rpt -pb design_1_wrapper_route_status.pb }
  catch { report_clock_utilization -file design_1_wrapper_clock_utilization_routed.rpt }
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
  catch { write_mem_info -force design_1_wrapper.mmi }
  catch { write_bmm -force design_1_wrapper_bd.bmm }
  write_bitstream -force design_1_wrapper.bit 
  catch { write_sysdef -hwdef design_1_wrapper.hwdef -bitfile design_1_wrapper.bit -meminfo design_1_wrapper.mmi -ltxfile debug_nets.ltx -file design_1_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

