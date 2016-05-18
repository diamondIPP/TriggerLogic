
################################################################
# This is a generated script based on design: bd_0
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_0_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7a200tfbg676-2
#    set_property BOARD_PART xilinx.com:ac701:part0:1.0 [current_project]

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name bd_0

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set m_axis_rxd [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_rxd ]
  set m_axis_rxs [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_rxs ]
  set mdio [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 mdio ]
  set_property -dict [ list CONFIG.BOARD.ASSOCIATED_PARAM {MDIO_BOARD_INTERFACE}  ] $mdio
  set rgmii [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii ]
  set_property -dict [ list CONFIG.BOARD.ASSOCIATED_PARAM {ETHERNET_BOARD_INTERFACE}  ] $rgmii
  set s_axi [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi ]
  set_property -dict [ list CONFIG.DATA_WIDTH {32} CONFIG.PROTOCOL {AXI4LITE}  ] $s_axi
  set s_axis_txc [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_txc ]
  set s_axis_txd [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_txd ]

  # Create ports
  set axi_rxd_arstn [ create_bd_port -dir I -type rst axi_rxd_arstn ]
  set_property -dict [ list CONFIG.POLARITY {ACTIVE_LOW}  ] $axi_rxd_arstn
  set axi_rxs_arstn [ create_bd_port -dir I -type rst axi_rxs_arstn ]
  set_property -dict [ list CONFIG.POLARITY {ACTIVE_LOW}  ] $axi_rxs_arstn
  set axi_txc_arstn [ create_bd_port -dir I -type rst axi_txc_arstn ]
  set_property -dict [ list CONFIG.POLARITY {ACTIVE_LOW}  ] $axi_txc_arstn
  set axi_txd_arstn [ create_bd_port -dir I -type rst axi_txd_arstn ]
  set_property -dict [ list CONFIG.POLARITY {ACTIVE_LOW}  ] $axi_txd_arstn
  set axis_clk [ create_bd_port -dir I -type clk axis_clk ]
  set gtx_clk [ create_bd_port -dir I -type clk gtx_clk ]
  set_property -dict [ list CONFIG.FREQ_HZ {125000000}  ] $gtx_clk
  set gtx_clk90_out [ create_bd_port -dir O -type clk gtx_clk90_out ]
  set gtx_clk_out [ create_bd_port -dir O -type clk gtx_clk_out ]
  set interrupt [ create_bd_port -dir O -type intr interrupt ]
  set_property -dict [ list CONFIG.SENSITIVITY {LEVEL_HIGH}  ] $interrupt
  set mac_irq [ create_bd_port -dir O -type intr mac_irq ]
  set_property -dict [ list CONFIG.SENSITIVITY {EDGE_RISING}  ] $mac_irq
  set phy_rst_n [ create_bd_port -dir O -type rst phy_rst_n ]
  set_property -dict [ list CONFIG.BOARD.ASSOCIATED_PARAM {PHYRST_BOARD_INTERFACE} CONFIG.POLARITY {ACTIVE_LOW}  ] $phy_rst_n
  set ref_clk [ create_bd_port -dir I -type clk ref_clk ]
  set s_axi_lite_clk [ create_bd_port -dir I -type clk s_axi_lite_clk ]
  set s_axi_lite_resetn [ create_bd_port -dir I -type rst s_axi_lite_resetn ]
  set_property -dict [ list CONFIG.POLARITY {ACTIVE_LOW}  ] $s_axi_lite_resetn

  # Create instance: eth_buf, and set properties
  set eth_buf [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet_buffer:2.0 eth_buf ]
  set_property -dict [ list CONFIG.C_AVB {0} \
CONFIG.C_PHYADDR {1} CONFIG.C_PHY_TYPE {3} \
CONFIG.C_STATS {1} CONFIG.C_TYPE {1} \
CONFIG.ENABLE_LVDS {0} CONFIG.HAS_SGMII {false} \
CONFIG.MCAST_EXTEND {false} CONFIG.PHYRST_BOARD_INTERFACE {phy_reset_out} \
CONFIG.RXCSUM {Full} CONFIG.RXMEM {32k} \
CONFIG.RXVLAN_STRP {false} CONFIG.RXVLAN_TAG {false} \
CONFIG.RXVLAN_TRAN {false} CONFIG.SIMULATION_MODE {false} \
CONFIG.TXCSUM {Full} CONFIG.TXMEM {32k} \
CONFIG.TXVLAN_STRP {false} CONFIG.TXVLAN_TAG {false} \
CONFIG.TXVLAN_TRAN {false} CONFIG.USE_BOARD_FLOW {true} \
 ] $eth_buf

  # Create instance: eth_mac, and set properties
  set eth_mac [ create_bd_cell -type ip -vlnv xilinx.com:ip:tri_mode_ethernet_mac:9.0 eth_mac ]
  set_property -dict [ list CONFIG.Data_Rate {1_Gbps} \
CONFIG.ETHERNET_BOARD_INTERFACE {rgmii} CONFIG.Enable_1588 {false} \
CONFIG.Enable_1588_1step {false} CONFIG.Enable_AVB {false} \
CONFIG.Enable_MDIO {true} CONFIG.Enable_Priority_Flow_Control {false} \
CONFIG.Frame_Filter {true} CONFIG.Half_Duplex {false} \
CONFIG.MAC_Speed {Tri_speed} CONFIG.MDIO_BOARD_INTERFACE {mdio_mdc} \
CONFIG.Make_MDIO_External {false} CONFIG.Management_Interface {true} \
CONFIG.Number_of_Table_Entries {4} CONFIG.Physical_Interface {RGMII} \
CONFIG.Statistics_Counters {true} CONFIG.Statistics_Reset {false} \
CONFIG.Statistics_Width {64bit} CONFIG.SupportLevel {1} \
CONFIG.Timer_Format {Time_of_day} CONFIG.USE_BOARD_FLOW {true} \
 ] $eth_mac

  # Create interface connections
  connect_bd_intf_net -intf_net eth_buf_AXI_STR_RXD [get_bd_intf_ports m_axis_rxd] [get_bd_intf_pins eth_buf/AXI_STR_RXD]
  connect_bd_intf_net -intf_net eth_buf_AXI_STR_RXS [get_bd_intf_ports m_axis_rxs] [get_bd_intf_pins eth_buf/AXI_STR_RXS]
  connect_bd_intf_net -intf_net eth_buf_S_AXI_2TEMAC [get_bd_intf_pins eth_buf/S_AXI_2TEMAC] [get_bd_intf_pins eth_mac/s_axi]
  connect_bd_intf_net -intf_net eth_buf_TX_AXIS_MAC [get_bd_intf_pins eth_buf/TX_AXIS_MAC] [get_bd_intf_pins eth_mac/s_axis_tx]
  connect_bd_intf_net -intf_net eth_mac_m_axis_rx [get_bd_intf_pins eth_buf/RX_AXIS_MAC] [get_bd_intf_pins eth_mac/m_axis_rx]
  connect_bd_intf_net -intf_net eth_mac_mdio_internal [get_bd_intf_ports mdio] [get_bd_intf_pins eth_mac/mdio_internal]
  connect_bd_intf_net -intf_net eth_mac_rgmii [get_bd_intf_ports rgmii] [get_bd_intf_pins eth_mac/rgmii]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_ports s_axi] [get_bd_intf_pins eth_buf/S_AXI]
  connect_bd_intf_net -intf_net s_axis_txc_1 [get_bd_intf_ports s_axis_txc] [get_bd_intf_pins eth_buf/AXI_STR_TXC]
  connect_bd_intf_net -intf_net s_axis_txd_1 [get_bd_intf_ports s_axis_txd] [get_bd_intf_pins eth_buf/AXI_STR_TXD]

  # Create port connections
  connect_bd_net -net axi_rxd_arstn_1 [get_bd_ports axi_rxd_arstn] [get_bd_pins eth_buf/AXI_STR_RXD_ARESETN]
  connect_bd_net -net axi_rxs_arstn_1 [get_bd_ports axi_rxs_arstn] [get_bd_pins eth_buf/AXI_STR_RXS_ARESETN]
  connect_bd_net -net axi_txc_arstn_1 [get_bd_ports axi_txc_arstn] [get_bd_pins eth_buf/AXI_STR_TXC_ARESETN]
  connect_bd_net -net axi_txd_arstn_1 [get_bd_ports axi_txd_arstn] [get_bd_pins eth_buf/AXI_STR_TXD_ARESETN]
  connect_bd_net -net axis_clk_1 [get_bd_ports axis_clk] [get_bd_pins eth_buf/AXI_STR_RXD_ACLK] [get_bd_pins eth_buf/AXI_STR_RXS_ACLK] [get_bd_pins eth_buf/AXI_STR_TXC_ACLK] [get_bd_pins eth_buf/AXI_STR_TXD_ACLK]
  connect_bd_net -net eth_buf_INTERRUPT [get_bd_ports interrupt] [get_bd_pins eth_buf/INTERRUPT]
  connect_bd_net -net eth_buf_PHY_RST_N [get_bd_ports phy_rst_n] [get_bd_pins eth_buf/PHY_RST_N]
  connect_bd_net -net eth_buf_RESET2TEMACn [get_bd_pins eth_buf/RESET2TEMACn] [get_bd_pins eth_mac/glbl_rstn] [get_bd_pins eth_mac/rx_axi_rstn] [get_bd_pins eth_mac/tx_axi_rstn]
  connect_bd_net -net eth_buf_pause_req [get_bd_pins eth_buf/pause_req] [get_bd_pins eth_mac/pause_req]
  connect_bd_net -net eth_buf_pause_val [get_bd_pins eth_buf/pause_val] [get_bd_pins eth_mac/pause_val]
  connect_bd_net -net eth_buf_tx_ifg_delay [get_bd_pins eth_buf/tx_ifg_delay] [get_bd_pins eth_mac/tx_ifg_delay]
  connect_bd_net -net eth_mac_gtx_clk90_out [get_bd_ports gtx_clk90_out] [get_bd_pins eth_mac/gtx_clk90_out]
  connect_bd_net -net eth_mac_gtx_clk_out [get_bd_ports gtx_clk_out] [get_bd_pins eth_mac/gtx_clk_out]
  connect_bd_net -net eth_mac_mac_irq [get_bd_ports mac_irq] [get_bd_pins eth_mac/mac_irq]
  connect_bd_net -net eth_mac_rx_enable [get_bd_pins eth_buf/RX_CLK_ENABLE_IN] [get_bd_pins eth_mac/rx_enable]
  connect_bd_net -net eth_mac_rx_mac_aclk [get_bd_pins eth_buf/rx_mac_aclk] [get_bd_pins eth_mac/rx_mac_aclk]
  connect_bd_net -net eth_mac_rx_reset [get_bd_pins eth_buf/rx_reset] [get_bd_pins eth_mac/rx_reset]
  connect_bd_net -net eth_mac_rx_statistics_valid [get_bd_pins eth_buf/rx_statistics_valid] [get_bd_pins eth_mac/rx_statistics_valid]
  connect_bd_net -net eth_mac_rx_statistics_vector [get_bd_pins eth_buf/rx_statistics_vector] [get_bd_pins eth_mac/rx_statistics_vector]
  connect_bd_net -net eth_mac_speedis10100 [get_bd_pins eth_buf/speed_is_10_100] [get_bd_pins eth_mac/speedis10100]
  connect_bd_net -net eth_mac_tx_mac_aclk [get_bd_pins eth_buf/tx_mac_aclk] [get_bd_pins eth_mac/tx_mac_aclk]
  connect_bd_net -net eth_mac_tx_reset [get_bd_pins eth_buf/tx_reset] [get_bd_pins eth_mac/tx_reset]
  connect_bd_net -net gtx_clk_1 [get_bd_ports gtx_clk] [get_bd_pins eth_buf/GTX_CLK] [get_bd_pins eth_mac/gtx_clk]
  connect_bd_net -net ref_clk_1 [get_bd_ports ref_clk] [get_bd_pins eth_mac/refclk]
  connect_bd_net -net s_axi_lite_clk_1 [get_bd_ports s_axi_lite_clk] [get_bd_pins eth_buf/S_AXI_ACLK] [get_bd_pins eth_mac/s_axi_aclk]
  connect_bd_net -net s_axi_lite_resetn_1 [get_bd_ports s_axi_lite_resetn] [get_bd_pins eth_buf/S_AXI_ARESETN] [get_bd_pins eth_mac/s_axi_resetn]

  # Create address segments
  create_bd_addr_seg -range 0x1000 -offset 0x0 [get_bd_addr_spaces eth_buf/S_AXI_2TEMAC] [get_bd_addr_segs eth_mac/s_axi/Reg] SEG_eth_mac_Reg
  create_bd_addr_seg -range 0x40000 -offset 0x0 [get_bd_addr_spaces s_axi] [get_bd_addr_segs eth_buf/S_AXI/Reg] SEG_eth_buf_REG
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


