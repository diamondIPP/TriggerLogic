set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_clk_n]
set_property PACKAGE_PIN P3 [get_ports sys_clk_n]
set_property PACKAGE_PIN R3 [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_clk_p]
set_property PACKAGE_PIN U4 [get_ports reset]
set_property IOSTANDARD LVCMOS15 [get_ports reset]
# additional constraints
#
#create_clock -name sys_clk_pin -period "5.0" [get_ports "sys_clk_p"]
#set_property LOC P18 [ get_ports spi_0_ss_io[0]]
#set_property LOC R14 [ get_ports spi_0_io0_io]
#set_property LOC R15 [ get_ports spi_0_io1_io]
#set_property LOC H13 [ get_ports spi_0_sck_io]

#set_property IOSTANDARD LVCMOS33 [ get_ports spi_0_ss_io[0]]
#set_property IOSTANDARD LVCMOS33 [ get_ports spi_0_io0_io]
#set_property IOSTANDARD LVCMOS33 [ get_ports spi_0_io1_io]
#set_property IOSTANDARD LVCMOS33 [ get_ports spi_0_sck_io]

set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]



