--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
--Date        : Fri Jan 15 17:35:18 2016
--Host        : cadence11 running 64-bit Scientific Linux CERN SLC release 6.7 (Carbon)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    BEAM_CURRENT_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BUSY_IN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CAEN_DIG : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK_0 : out STD_LOGIC;
    CLK_1 : out STD_LOGIC;
    CLK_2 : out STD_LOGIC;
    DDR3_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    DDR3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR3_cas_n : out STD_LOGIC;
    DDR3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_dm : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR3_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    DDR3_dqs_n : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR3_dqs_p : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ras_n : out STD_LOGIC;
    DDR3_reset_n : out STD_LOGIC;
    DDR3_we_n : out STD_LOGIC;
    DIAMOND_TRIG_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DRS4_CH3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DRS4_TRIG_IN_CH2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FASTOR_TRIG_IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    LOGIC_DRS4_CH4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    LOGIC_PREAMP_TP_SEL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PSI46_ATB_DTB : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PULSER_DRS4_CH4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PULSER_PREAMP_TP_SEL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PULSER_PREAMP_TP_TTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RS232_Uart_rxd : in STD_LOGIC;
    RS232_Uart_txd : out STD_LOGIC;
    SCINTILLATOR_TRIG_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRIG_1 : out STD_LOGIC;
    TRIG_2 : out STD_LOGIC;
    TRIG_3 : out STD_LOGIC;
    lcd_7bits_tri_o : out STD_LOGIC_VECTOR ( 6 downto 0 );
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mdio_mdc : out STD_LOGIC;
    mdio_mdio_io : inout STD_LOGIC;
    phy_reset_out : out STD_LOGIC;
    reset : in STD_LOGIC;
    rgmii_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_rx_ctl : in STD_LOGIC;
    rgmii_rxc : in STD_LOGIC;
    rgmii_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_tx_ctl : out STD_LOGIC;
    rgmii_txc : out STD_LOGIC;
    spi_flash_io0_io : inout STD_LOGIC;
    spi_flash_io1_io : inout STD_LOGIC;
    spi_flash_io2_io : inout STD_LOGIC;
    spi_flash_io3_io : inout STD_LOGIC;
    spi_flash_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk_n : in STD_LOGIC;
    sys_clk_p : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    RS232_Uart_rxd : in STD_LOGIC;
    RS232_Uart_txd : out STD_LOGIC;
    DDR3_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    DDR3_dqs_p : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR3_dqs_n : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR3_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    DDR3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR3_ras_n : out STD_LOGIC;
    DDR3_cas_n : out STD_LOGIC;
    DDR3_we_n : out STD_LOGIC;
    DDR3_reset_n : out STD_LOGIC;
    DDR3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_dm : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    mdio_mdc : out STD_LOGIC;
    mdio_mdio_i : in STD_LOGIC;
    mdio_mdio_o : out STD_LOGIC;
    mdio_mdio_t : out STD_LOGIC;
    rgmii_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_rx_ctl : in STD_LOGIC;
    rgmii_rxc : in STD_LOGIC;
    rgmii_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_tx_ctl : out STD_LOGIC;
    rgmii_txc : out STD_LOGIC;
    spi_flash_io0_i : in STD_LOGIC;
    spi_flash_io0_o : out STD_LOGIC;
    spi_flash_io0_t : out STD_LOGIC;
    spi_flash_io1_i : in STD_LOGIC;
    spi_flash_io1_o : out STD_LOGIC;
    spi_flash_io1_t : out STD_LOGIC;
    spi_flash_io2_i : in STD_LOGIC;
    spi_flash_io2_o : out STD_LOGIC;
    spi_flash_io2_t : out STD_LOGIC;
    spi_flash_io3_i : in STD_LOGIC;
    spi_flash_io3_o : out STD_LOGIC;
    spi_flash_io3_t : out STD_LOGIC;
    spi_flash_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    spi_flash_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    spi_flash_ss_t : out STD_LOGIC;
    LED_4Bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    LCD_7Bits_tri_o : out STD_LOGIC_VECTOR ( 6 downto 0 );
    reset : in STD_LOGIC;
    sys_clk_p : in STD_LOGIC;
    sys_clk_n : in STD_LOGIC;
    phy_reset_out : out STD_LOGIC;
    LOGIC_PREAMP_TP_SEL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    LOGIC_DRS4_CH4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PULSER_PREAMP_TP_TTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PULSER_DRS4_CH4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PULSER_PREAMP_TP_SEL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DRS4_TRIG_IN_CH2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PSI46_ATB_DTB : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DRS4_CH3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CAEN_DIG : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FASTOR_TRIG_IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DIAMOND_TRIG_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SCINTILLATOR_TRIG_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BEAM_CURRENT_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BUSY_IN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK_0 : out STD_LOGIC;
    CLK_1 : out STD_LOGIC;
    CLK_2 : out STD_LOGIC;
    TRIG_1 : out STD_LOGIC;
    TRIG_2 : out STD_LOGIC;
    TRIG_3 : out STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal mdio_mdio_i : STD_LOGIC;
  signal mdio_mdio_o : STD_LOGIC;
  signal mdio_mdio_t : STD_LOGIC;
  signal spi_flash_io0_i : STD_LOGIC;
  signal spi_flash_io0_o : STD_LOGIC;
  signal spi_flash_io0_t : STD_LOGIC;
  signal spi_flash_io1_i : STD_LOGIC;
  signal spi_flash_io1_o : STD_LOGIC;
  signal spi_flash_io1_t : STD_LOGIC;
  signal spi_flash_io2_i : STD_LOGIC;
  signal spi_flash_io2_o : STD_LOGIC;
  signal spi_flash_io2_t : STD_LOGIC;
  signal spi_flash_io3_i : STD_LOGIC;
  signal spi_flash_io3_o : STD_LOGIC;
  signal spi_flash_io3_t : STD_LOGIC;
  signal spi_flash_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_flash_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_flash_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_flash_ss_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      BEAM_CURRENT_IN(1 downto 0) => BEAM_CURRENT_IN(1 downto 0),
      BUSY_IN(3 downto 0) => BUSY_IN(3 downto 0),
      CAEN_DIG(1 downto 0) => CAEN_DIG(1 downto 0),
      CLK_0 => CLK_0,
      CLK_1 => CLK_1,
      CLK_2 => CLK_2,
      DDR3_addr(13 downto 0) => DDR3_addr(13 downto 0),
      DDR3_ba(2 downto 0) => DDR3_ba(2 downto 0),
      DDR3_cas_n => DDR3_cas_n,
      DDR3_ck_n(0) => DDR3_ck_n(0),
      DDR3_ck_p(0) => DDR3_ck_p(0),
      DDR3_cke(0) => DDR3_cke(0),
      DDR3_cs_n(0) => DDR3_cs_n(0),
      DDR3_dm(7 downto 0) => DDR3_dm(7 downto 0),
      DDR3_dq(63 downto 0) => DDR3_dq(63 downto 0),
      DDR3_dqs_n(7 downto 0) => DDR3_dqs_n(7 downto 0),
      DDR3_dqs_p(7 downto 0) => DDR3_dqs_p(7 downto 0),
      DDR3_odt(0) => DDR3_odt(0),
      DDR3_ras_n => DDR3_ras_n,
      DDR3_reset_n => DDR3_reset_n,
      DDR3_we_n => DDR3_we_n,
      DIAMOND_TRIG_IN(1 downto 0) => DIAMOND_TRIG_IN(1 downto 0),
      DRS4_CH3(1 downto 0) => DRS4_CH3(1 downto 0),
      DRS4_TRIG_IN_CH2(1 downto 0) => DRS4_TRIG_IN_CH2(1 downto 0),
      FASTOR_TRIG_IN(15 downto 0) => FASTOR_TRIG_IN(15 downto 0),
      LCD_7Bits_tri_o(6 downto 0) => lcd_7bits_tri_o(6 downto 0),
      LED_4Bits_tri_o(3 downto 0) => led_4bits_tri_o(3 downto 0),
      LOGIC_DRS4_CH4(1 downto 0) => LOGIC_DRS4_CH4(1 downto 0),
      LOGIC_PREAMP_TP_SEL(1 downto 0) => LOGIC_PREAMP_TP_SEL(1 downto 0),
      PSI46_ATB_DTB(1 downto 0) => PSI46_ATB_DTB(1 downto 0),
      PULSER_DRS4_CH4(1 downto 0) => PULSER_DRS4_CH4(1 downto 0),
      PULSER_PREAMP_TP_SEL(1 downto 0) => PULSER_PREAMP_TP_SEL(1 downto 0),
      PULSER_PREAMP_TP_TTL(1 downto 0) => PULSER_PREAMP_TP_TTL(1 downto 0),
      RS232_Uart_rxd => RS232_Uart_rxd,
      RS232_Uart_txd => RS232_Uart_txd,
      SCINTILLATOR_TRIG_IN(1 downto 0) => SCINTILLATOR_TRIG_IN(1 downto 0),
      TRIG_1 => TRIG_1,
      TRIG_2 => TRIG_2,
      TRIG_3 => TRIG_3,
      mdio_mdc => mdio_mdc,
      mdio_mdio_i => mdio_mdio_i,
      mdio_mdio_o => mdio_mdio_o,
      mdio_mdio_t => mdio_mdio_t,
      phy_reset_out => phy_reset_out,
      reset => reset,
      rgmii_rd(3 downto 0) => rgmii_rd(3 downto 0),
      rgmii_rx_ctl => rgmii_rx_ctl,
      rgmii_rxc => rgmii_rxc,
      rgmii_td(3 downto 0) => rgmii_td(3 downto 0),
      rgmii_tx_ctl => rgmii_tx_ctl,
      rgmii_txc => rgmii_txc,
      spi_flash_io0_i => spi_flash_io0_i,
      spi_flash_io0_o => spi_flash_io0_o,
      spi_flash_io0_t => spi_flash_io0_t,
      spi_flash_io1_i => spi_flash_io1_i,
      spi_flash_io1_o => spi_flash_io1_o,
      spi_flash_io1_t => spi_flash_io1_t,
      spi_flash_io2_i => spi_flash_io2_i,
      spi_flash_io2_o => spi_flash_io2_o,
      spi_flash_io2_t => spi_flash_io2_t,
      spi_flash_io3_i => spi_flash_io3_i,
      spi_flash_io3_o => spi_flash_io3_o,
      spi_flash_io3_t => spi_flash_io3_t,
      spi_flash_ss_i(0) => spi_flash_ss_i_0(0),
      spi_flash_ss_o(0) => spi_flash_ss_o_0(0),
      spi_flash_ss_t => spi_flash_ss_t,
      sys_clk_n => sys_clk_n,
      sys_clk_p => sys_clk_p
    );
mdio_mdio_iobuf: component IOBUF
     port map (
      I => mdio_mdio_o,
      IO => mdio_mdio_io,
      O => mdio_mdio_i,
      T => mdio_mdio_t
    );
spi_flash_io0_iobuf: component IOBUF
     port map (
      I => spi_flash_io0_o,
      IO => spi_flash_io0_io,
      O => spi_flash_io0_i,
      T => spi_flash_io0_t
    );
spi_flash_io1_iobuf: component IOBUF
     port map (
      I => spi_flash_io1_o,
      IO => spi_flash_io1_io,
      O => spi_flash_io1_i,
      T => spi_flash_io1_t
    );
spi_flash_io2_iobuf: component IOBUF
     port map (
      I => spi_flash_io2_o,
      IO => spi_flash_io2_io,
      O => spi_flash_io2_i,
      T => spi_flash_io2_t
    );
spi_flash_io3_iobuf: component IOBUF
     port map (
      I => spi_flash_io3_o,
      IO => spi_flash_io3_io,
      O => spi_flash_io3_i,
      T => spi_flash_io3_t
    );
spi_flash_ss_iobuf_0: component IOBUF
     port map (
      I => spi_flash_ss_o_0(0),
      IO => spi_flash_ss_io(0),
      O => spi_flash_ss_i_0(0),
      T => spi_flash_ss_t
    );
end STRUCTURE;
