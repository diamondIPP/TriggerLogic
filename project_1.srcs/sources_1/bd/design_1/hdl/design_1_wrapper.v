//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Tue Sep 29 09:17:16 2015
//Host        : cadence11 running 64-bit Scientific Linux CERN SLC release 6.7 (Carbon)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (BEAM_CURRENT_IN,
    BUSY_IN,
    CAEN_DIG,
    DDR3_addr,
    DDR3_ba,
    DDR3_cas_n,
    DDR3_ck_n,
    DDR3_ck_p,
    DDR3_cke,
    DDR3_cs_n,
    DDR3_dm,
    DDR3_dq,
    DDR3_dqs_n,
    DDR3_dqs_p,
    DDR3_odt,
    DDR3_ras_n,
    DDR3_reset_n,
    DDR3_we_n,
    DIAMOND_TRIG_IN,
    DRS4_CH3,
    DRS4_TRIG_IN_CH2,
    FASTOR_TRIG_IN,
    LOGIC_DRS4_CH4,
    LOGIC_PREAMP_TP_SEL,
    PSI46_ATB_DTB,
    PULSER_DRS4_CH4,
    PULSER_PREAMP_TP_SEL,
    PULSER_PREAMP_TP_TTL,
    RS232_Uart_rxd,
    RS232_Uart_txd,
    SCINTILLATOR_TRIG_IN,
    mdio_mdc,
    mdio_mdio_io,
    phy_reset_out,
    reset,
    rgmii_rd,
    rgmii_rx_ctl,
    rgmii_rxc,
    rgmii_td,
    rgmii_tx_ctl,
    rgmii_txc,
    sys_clk_n,
    sys_clk_p);
  input [1:0]BEAM_CURRENT_IN;
  input [3:0]BUSY_IN;
  output [1:0]CAEN_DIG;
  output [13:0]DDR3_addr;
  output [2:0]DDR3_ba;
  output DDR3_cas_n;
  output [0:0]DDR3_ck_n;
  output [0:0]DDR3_ck_p;
  output [0:0]DDR3_cke;
  output [0:0]DDR3_cs_n;
  output [7:0]DDR3_dm;
  inout [63:0]DDR3_dq;
  inout [7:0]DDR3_dqs_n;
  inout [7:0]DDR3_dqs_p;
  output [0:0]DDR3_odt;
  output DDR3_ras_n;
  output DDR3_reset_n;
  output DDR3_we_n;
  input [1:0]DIAMOND_TRIG_IN;
  output [1:0]DRS4_CH3;
  output [1:0]DRS4_TRIG_IN_CH2;
  input [15:0]FASTOR_TRIG_IN;
  output [1:0]LOGIC_DRS4_CH4;
  output [1:0]LOGIC_PREAMP_TP_SEL;
  output [1:0]PSI46_ATB_DTB;
  output [1:0]PULSER_DRS4_CH4;
  output [1:0]PULSER_PREAMP_TP_SEL;
  output [1:0]PULSER_PREAMP_TP_TTL;
  input RS232_Uart_rxd;
  output RS232_Uart_txd;
  input [1:0]SCINTILLATOR_TRIG_IN;
  output mdio_mdc;
  inout mdio_mdio_io;
  output phy_reset_out;
  input reset;
  input [3:0]rgmii_rd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output [3:0]rgmii_td;
  output rgmii_tx_ctl;
  output rgmii_txc;
  input sys_clk_n;
  input sys_clk_p;

  wire [1:0]BEAM_CURRENT_IN;
  wire [3:0]BUSY_IN;
  wire [1:0]CAEN_DIG;
  wire [13:0]DDR3_addr;
  wire [2:0]DDR3_ba;
  wire DDR3_cas_n;
  wire [0:0]DDR3_ck_n;
  wire [0:0]DDR3_ck_p;
  wire [0:0]DDR3_cke;
  wire [0:0]DDR3_cs_n;
  wire [7:0]DDR3_dm;
  wire [63:0]DDR3_dq;
  wire [7:0]DDR3_dqs_n;
  wire [7:0]DDR3_dqs_p;
  wire [0:0]DDR3_odt;
  wire DDR3_ras_n;
  wire DDR3_reset_n;
  wire DDR3_we_n;
  wire [1:0]DIAMOND_TRIG_IN;
  wire [1:0]DRS4_CH3;
  wire [1:0]DRS4_TRIG_IN_CH2;
  wire [15:0]FASTOR_TRIG_IN;
  wire [1:0]LOGIC_DRS4_CH4;
  wire [1:0]LOGIC_PREAMP_TP_SEL;
  wire [1:0]PSI46_ATB_DTB;
  wire [1:0]PULSER_DRS4_CH4;
  wire [1:0]PULSER_PREAMP_TP_SEL;
  wire [1:0]PULSER_PREAMP_TP_TTL;
  wire RS232_Uart_rxd;
  wire RS232_Uart_txd;
  wire [1:0]SCINTILLATOR_TRIG_IN;
  wire mdio_mdc;
  wire mdio_mdio_i;
  wire mdio_mdio_io;
  wire mdio_mdio_o;
  wire mdio_mdio_t;
  wire phy_reset_out;
  wire reset;
  wire [3:0]rgmii_rd;
  wire rgmii_rx_ctl;
  wire rgmii_rxc;
  wire [3:0]rgmii_td;
  wire rgmii_tx_ctl;
  wire rgmii_txc;
  wire sys_clk_n;
  wire sys_clk_p;

  design_1 design_1_i
       (.BEAM_CURRENT_IN(BEAM_CURRENT_IN),
        .BUSY_IN(BUSY_IN),
        .CAEN_DIG(CAEN_DIG),
        .DDR3_addr(DDR3_addr),
        .DDR3_ba(DDR3_ba),
        .DDR3_cas_n(DDR3_cas_n),
        .DDR3_ck_n(DDR3_ck_n),
        .DDR3_ck_p(DDR3_ck_p),
        .DDR3_cke(DDR3_cke),
        .DDR3_cs_n(DDR3_cs_n),
        .DDR3_dm(DDR3_dm),
        .DDR3_dq(DDR3_dq),
        .DDR3_dqs_n(DDR3_dqs_n),
        .DDR3_dqs_p(DDR3_dqs_p),
        .DDR3_odt(DDR3_odt),
        .DDR3_ras_n(DDR3_ras_n),
        .DDR3_reset_n(DDR3_reset_n),
        .DDR3_we_n(DDR3_we_n),
        .DIAMOND_TRIG_IN(DIAMOND_TRIG_IN),
        .DRS4_CH3(DRS4_CH3),
        .DRS4_TRIG_IN_CH2(DRS4_TRIG_IN_CH2),
        .FASTOR_TRIG_IN(FASTOR_TRIG_IN),
        .LOGIC_DRS4_CH4(LOGIC_DRS4_CH4),
        .LOGIC_PREAMP_TP_SEL(LOGIC_PREAMP_TP_SEL),
        .PSI46_ATB_DTB(PSI46_ATB_DTB),
        .PULSER_DRS4_CH4(PULSER_DRS4_CH4),
        .PULSER_PREAMP_TP_SEL(PULSER_PREAMP_TP_SEL),
        .PULSER_PREAMP_TP_TTL(PULSER_PREAMP_TP_TTL),
        .RS232_Uart_rxd(RS232_Uart_rxd),
        .RS232_Uart_txd(RS232_Uart_txd),
        .SCINTILLATOR_TRIG_IN(SCINTILLATOR_TRIG_IN),
        .mdio_mdc(mdio_mdc),
        .mdio_mdio_i(mdio_mdio_i),
        .mdio_mdio_o(mdio_mdio_o),
        .mdio_mdio_t(mdio_mdio_t),
        .phy_reset_out(phy_reset_out),
        .reset(reset),
        .rgmii_rd(rgmii_rd),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_td(rgmii_td),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc),
        .sys_clk_n(sys_clk_n),
        .sys_clk_p(sys_clk_p));
  IOBUF mdio_mdio_iobuf
       (.I(mdio_mdio_o),
        .IO(mdio_mdio_io),
        .O(mdio_mdio_i),
        .T(mdio_mdio_t));
endmodule
