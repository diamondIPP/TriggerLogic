# PART is artix7 xc7a200tfbg676

#
####
#######
##########
#############
#################
## System level constraints

########## GENERAL PIN CONSTRAINTS FOR THE AC701 BOARD REV B for Trigger Logic ##########
#set_property PACKAGE_PIN R3 [get_ports {SYSCLK_IN[1]}]
### Was lvds_15
#set_property IOSTANDARD DIFF_SSTL15 [get_ports {SYSCLK_IN[1]}]

#set_property PACKAGE_PIN U4 [get_ports glbl_rst]
#set_property IOSTANDARD SSTL15 [get_ports glbl_rst]



#### HA Interface - Differential except for BUSY_IN
## Input Triggers
set_property PACKAGE_PIN AE25 [get_ports {FASTOR_TRIG_IN[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[0]}]
set_property PACKAGE_PIN AC22 [get_ports {FASTOR_TRIG_IN[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[2]}]
set_property PACKAGE_PIN AF24 [get_ports {FASTOR_TRIG_IN[5]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[5]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[4]}]
set_property PACKAGE_PIN AD25 [get_ports {FASTOR_TRIG_IN[7]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[7]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[6]}]
set_property PACKAGE_PIN AE23 [get_ports {FASTOR_TRIG_IN[9]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[9]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[8]}]
set_property PACKAGE_PIN AD23 [get_ports {FASTOR_TRIG_IN[11]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[11]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[10]}]
set_property PACKAGE_PIN AD21 [get_ports {FASTOR_TRIG_IN[13]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[13]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[12]}]
set_property PACKAGE_PIN AF19 [get_ports {FASTOR_TRIG_IN[15]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[15]}]
set_property IOSTANDARD LVDS_25 [get_ports {FASTOR_TRIG_IN[14]}]
set_property PACKAGE_PIN AE22 [get_ports {DIAMOND_TRIG_IN[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {DIAMOND_TRIG_IN[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {DIAMOND_TRIG_IN[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {SCINTILLATOR_TRIG_IN[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {SCINTILLATOR_TRIG_IN[0]}]

## Other differential Inputs
set_property PACKAGE_PIN AD20 [get_ports {BEAM_CURRENT_IN[1]}]
set_property PACKAGE_PIN AE20 [get_ports {BEAM_CURRENT_IN[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {BEAM_CURRENT_IN[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {BEAM_CURRENT_IN[0]}]

## Busy In
set_property PACKAGE_PIN AC18 [get_ports {BUSY_IN[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {BUSY_IN[0]}]
set_property PACKAGE_PIN AE18 [get_ports {BUSY_IN[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {BUSY_IN[1]}]
set_property PACKAGE_PIN AD18 [get_ports {BUSY_IN[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {BUSY_IN[2]}]
set_property PACKAGE_PIN AF18 [get_ports {BUSY_IN[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {BUSY_IN[3]}]

## Output Triggers
set_property PACKAGE_PIN Y18 [get_ports {LOGIC_PREAMP_TP_SEL[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {LOGIC_PREAMP_TP_SEL[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {LOGIC_PREAMP_TP_SEL[0]}]
set_property PACKAGE_PIN AE17 [get_ports {LOGIC_DRS4_CH4[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {LOGIC_DRS4_CH4[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {LOGIC_DRS4_CH4[0]}]
set_property PACKAGE_PIN AA20 [get_ports {PULSER_PREAMP_TP_TTL[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {PULSER_PREAMP_TP_TTL[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {PULSER_PREAMP_TP_TTL[0]}]
set_property PACKAGE_PIN AC17 [get_ports {PULSER_PREAMP_TP_SEL[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {PULSER_PREAMP_TP_SEL[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {PULSER_PREAMP_TP_SEL[0]}]
set_property PACKAGE_PIN AA17 [get_ports {PULSER_DRS4_CH4[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {PULSER_DRS4_CH4[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {PULSER_DRS4_CH4[0]}]
set_property PACKAGE_PIN Y15 [get_ports {DRS4_CH3[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {DRS4_CH3[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {DRS4_CH3[0]}]
set_property PACKAGE_PIN AB16 [get_ports {PSI46_ATB_DTB[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {PSI46_ATB_DTB[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {PSI46_ATB_DTB[0]}]
set_property PACKAGE_PIN Y16 [get_ports {DRS4_TRIG_IN_CH2[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {DRS4_TRIG_IN_CH2[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {DRS4_TRIG_IN_CH2[0]}]
set_property PACKAGE_PIN W14 [get_ports {CAEN_DIG[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {CAEN_DIG[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {CAEN_DIG[0]}]

### Other differential outputs
#set_property PACKAGE_PIN T8 [get_ports {TEST_SMA[1]}]
#set_property IOSTANDARD DIFF_SSTL15 [get_ports {TEST_SMA[1]}]
#set_property IOSTANDARD DIFF_SSTL15 [get_ports {TEST_SMA[0]}]
#set_property PACKAGE_PIN AA19 [get_ports {TEST_OUT[1]}]
#set_property IOSTANDARD LVDS_25 [get_ports {TEST_OUT[1]}]
#set_property IOSTANDARD LVDS_25 [get_ports {TEST_OUT[0]}]

#
####
#######
##########
#############
#################
# DESIGN CONSTRAINTS



set_property PACKAGE_PIN AC19 [get_ports {SCINTILLATOR_TRIG_IN[1]}]

#set_property PACKAGE_PIN U19 [get_ports USB_UART_RX]
#set_property PACKAGE_PIN T19 [get_ports USB_UART_TX]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_UART_RX]
#set_property IOSTANDARD LVCMOS18 [get_ports USB_UART_TX]

#set_property PACKAGE_PIN M26 [get_ports GPIO_LED_0]
#set_property IOSTANDARD LVCMOS33 [get_ports GPIO_LED_0]

#set_property PACKAGE_PIN T24 [get_ports GPIO_LED_1]
#set_property IOSTANDARD LVCMOS33 [get_ports GPIO_LED_1]
#set_property PACKAGE_PIN T25 [get_ports GPIO_LED_2]
#set_property IOSTANDARD LVCMOS33 [get_ports GPIO_LED_2]
#set_property PACKAGE_PIN R26 [get_ports GPIO_LED_3]
#set_property IOSTANDARD LVCMOS33 [get_ports GPIO_LED_3]

#create_pblock uart
#resize_pblock [get_pblocks uart] -add {SLICE_X0Y50:SLICE_X7Y74}
#resize_pblock [get_pblocks uart] -add {RAMB18_X0Y20:RAMB18_X0Y29}
#resize_pblock [get_pblocks uart] -add {RAMB36_X0Y10:RAMB36_X0Y14}


set_property PACKAGE_PIN A17 [get_ports {TRIG_1}]
set_property DRIVE 16 [get_ports {TRIG_1}]
set_property IOSTANDARD LVCMOS25 [get_ports {TRIG_1}]
set_property PACKAGE_PIN A18 [get_ports {TRIG_2}]
set_property DRIVE 16 [get_ports {TRIG_2}]
set_property IOSTANDARD LVCMOS25 [get_ports {TRIG_2}]
set_property PACKAGE_PIN B19 [get_ports {TRIG_3}]
set_property DRIVE 16 [get_ports {TRIG_3}]
set_property IOSTANDARD LVCMOS25 [get_ports {TRIG_3}]

