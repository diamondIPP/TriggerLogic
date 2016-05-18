--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
--Date        : Fri Jan 15 17:35:17 2016
--Host        : cadence11 running 64-bit Scientific Linux CERN SLC release 6.7 (Carbon)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1R706YB is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_1R706YB;

architecture STRUCTURE of m00_couplers_imp_1R706YB is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(11 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(11 downto 0);
  M_AXI_arburst(1 downto 0) <= m00_couplers_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m00_couplers_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(2 downto 0) <= m00_couplers_to_m00_couplers_ARID(2 downto 0);
  M_AXI_arlen(7 downto 0) <= m00_couplers_to_m00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= m00_couplers_to_m00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m00_couplers_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(11 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(11 downto 0);
  M_AXI_awburst(1 downto 0) <= m00_couplers_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m00_couplers_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(2 downto 0) <= m00_couplers_to_m00_couplers_AWID(2 downto 0);
  M_AXI_awlen(7 downto 0) <= m00_couplers_to_m00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= m00_couplers_to_m00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m00_couplers_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= m00_couplers_to_m00_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bid(2 downto 0) <= m00_couplers_to_m00_couplers_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= m00_couplers_to_m00_couplers_RID(2 downto 0);
  S_AXI_rlast(0) <= m00_couplers_to_m00_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(11 downto 0) <= S_AXI_araddr(11 downto 0);
  m00_couplers_to_m00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_m00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_m00_couplers_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
  m00_couplers_to_m00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_m00_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(11 downto 0) <= S_AXI_awaddr(11 downto 0);
  m00_couplers_to_m00_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_m00_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_m00_couplers_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
  m00_couplers_to_m00_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_m00_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BID(2 downto 0) <= M_AXI_bid(2 downto 0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RID(2 downto 0) <= M_AXI_rid(2 downto 0);
  m00_couplers_to_m00_couplers_RLAST(0) <= M_AXI_rlast(0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WLAST(0) <= S_AXI_wlast(0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_8RVYHO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_8RVYHO;

architecture STRUCTURE of m00_couplers_imp_8RVYHO is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(8 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(8 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(8 downto 0) <= S_AXI_araddr(8 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(8 downto 0) <= S_AXI_awaddr(8 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1UTB3Y5 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_1UTB3Y5;

architecture STRUCTURE of m01_couplers_imp_1UTB3Y5 is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(4 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(4 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(4 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(4 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(4 downto 0) <= S_AXI_araddr(4 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(4 downto 0) <= S_AXI_awaddr(4 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_3HM21E is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_3HM21E;

architecture STRUCTURE of m01_couplers_imp_3HM21E is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal m01_couplers_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_m01_couplers_ARLOCK : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal m01_couplers_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_m01_couplers_AWLOCK : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_RLAST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WLAST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(29 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(29 downto 0);
  M_AXI_arburst(1 downto 0) <= m01_couplers_to_m01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m01_couplers_to_m01_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(2 downto 0) <= m01_couplers_to_m01_couplers_ARID(2 downto 0);
  M_AXI_arlen(7 downto 0) <= m01_couplers_to_m01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= m01_couplers_to_m01_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= m01_couplers_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= m01_couplers_to_m01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= m01_couplers_to_m01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(29 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(29 downto 0);
  M_AXI_awburst(1 downto 0) <= m01_couplers_to_m01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m01_couplers_to_m01_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(2 downto 0) <= m01_couplers_to_m01_couplers_AWID(2 downto 0);
  M_AXI_awlen(7 downto 0) <= m01_couplers_to_m01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= m01_couplers_to_m01_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= m01_couplers_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= m01_couplers_to_m01_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= m01_couplers_to_m01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= m01_couplers_to_m01_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bid(2 downto 0) <= m01_couplers_to_m01_couplers_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= m01_couplers_to_m01_couplers_RID(2 downto 0);
  S_AXI_rlast <= m01_couplers_to_m01_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(29 downto 0) <= S_AXI_araddr(29 downto 0);
  m01_couplers_to_m01_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m01_couplers_to_m01_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m01_couplers_to_m01_couplers_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
  m01_couplers_to_m01_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m01_couplers_to_m01_couplers_ARLOCK <= S_AXI_arlock;
  m01_couplers_to_m01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(29 downto 0) <= S_AXI_awaddr(29 downto 0);
  m01_couplers_to_m01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m01_couplers_to_m01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m01_couplers_to_m01_couplers_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
  m01_couplers_to_m01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m01_couplers_to_m01_couplers_AWLOCK <= S_AXI_awlock;
  m01_couplers_to_m01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BID(2 downto 0) <= M_AXI_bid(2 downto 0);
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RID(2 downto 0) <= M_AXI_rid(2 downto 0);
  m01_couplers_to_m01_couplers_RLAST <= M_AXI_rlast;
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WLAST <= S_AXI_wlast;
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_7ANRHB is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_7ANRHB;

architecture STRUCTURE of m02_couplers_imp_7ANRHB is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(3 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(3 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(3 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(3 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(3 downto 0) <= S_AXI_araddr(3 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(3 downto 0) <= S_AXI_awaddr(3 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_1W07O72 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m03_couplers_imp_1W07O72;

architecture STRUCTURE of m03_couplers_imp_1W07O72 is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(9 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(9 downto 0);
  M_AXI_arvalid(0) <= m03_couplers_to_m03_couplers_ARVALID(0);
  M_AXI_awaddr(9 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(9 downto 0);
  M_AXI_awvalid(0) <= m03_couplers_to_m03_couplers_AWVALID(0);
  M_AXI_bready(0) <= m03_couplers_to_m03_couplers_BREADY(0);
  M_AXI_rready(0) <= m03_couplers_to_m03_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wvalid(0) <= m03_couplers_to_m03_couplers_WVALID(0);
  S_AXI_arready(0) <= m03_couplers_to_m03_couplers_ARREADY(0);
  S_AXI_awready(0) <= m03_couplers_to_m03_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m03_couplers_to_m03_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m03_couplers_to_m03_couplers_RVALID(0);
  S_AXI_wready(0) <= m03_couplers_to_m03_couplers_WREADY(0);
  m03_couplers_to_m03_couplers_ARADDR(9 downto 0) <= S_AXI_araddr(9 downto 0);
  m03_couplers_to_m03_couplers_ARREADY(0) <= M_AXI_arready(0);
  m03_couplers_to_m03_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m03_couplers_to_m03_couplers_AWADDR(9 downto 0) <= S_AXI_awaddr(9 downto 0);
  m03_couplers_to_m03_couplers_AWREADY(0) <= M_AXI_awready(0);
  m03_couplers_to_m03_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m03_couplers_to_m03_couplers_BREADY(0) <= S_AXI_bready(0);
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY(0) <= S_AXI_rready(0);
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY(0) <= M_AXI_wready(0);
  m03_couplers_to_m03_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_5LX7BU is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m04_couplers_imp_5LX7BU;

architecture STRUCTURE of m04_couplers_imp_5LX7BU is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(17 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(17 downto 0);
  M_AXI_arvalid(0) <= m04_couplers_to_m04_couplers_ARVALID(0);
  M_AXI_awaddr(17 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(17 downto 0);
  M_AXI_awvalid(0) <= m04_couplers_to_m04_couplers_AWVALID(0);
  M_AXI_bready(0) <= m04_couplers_to_m04_couplers_BREADY(0);
  M_AXI_rready(0) <= m04_couplers_to_m04_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m04_couplers_to_m04_couplers_WVALID(0);
  S_AXI_arready(0) <= m04_couplers_to_m04_couplers_ARREADY(0);
  S_AXI_awready(0) <= m04_couplers_to_m04_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m04_couplers_to_m04_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m04_couplers_to_m04_couplers_RVALID(0);
  S_AXI_wready(0) <= m04_couplers_to_m04_couplers_WREADY(0);
  m04_couplers_to_m04_couplers_ARADDR(17 downto 0) <= S_AXI_araddr(17 downto 0);
  m04_couplers_to_m04_couplers_ARREADY(0) <= M_AXI_arready(0);
  m04_couplers_to_m04_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m04_couplers_to_m04_couplers_AWADDR(17 downto 0) <= S_AXI_awaddr(17 downto 0);
  m04_couplers_to_m04_couplers_AWREADY(0) <= M_AXI_awready(0);
  m04_couplers_to_m04_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m04_couplers_to_m04_couplers_BREADY(0) <= S_AXI_bready(0);
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY(0) <= S_AXI_rready(0);
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY(0) <= M_AXI_wready(0);
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_1XR4ZAZ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_1XR4ZAZ;

architecture STRUCTURE of m05_couplers_imp_1XR4ZAZ is
  component design_1_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_cc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m05_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_m05_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m05_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_m05_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_m05_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m05_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m05_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m05_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m05_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m05_couplers_WVALID : STD_LOGIC;
  signal m05_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m05_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m05_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m05_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m05_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m05_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m05_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m05_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m05_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m05_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_cc_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1(0) <= M_ARESETN(0);
  M_AXI_araddr(6 downto 0) <= auto_cc_to_m05_couplers_ARADDR(6 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_cc_to_m05_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_cc_to_m05_couplers_ARVALID;
  M_AXI_awaddr(6 downto 0) <= auto_cc_to_m05_couplers_AWADDR(6 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_cc_to_m05_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_cc_to_m05_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_m05_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_cc_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_cc_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_cc_to_m05_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m05_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m05_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m05_couplers_to_auto_cc_WREADY;
  auto_cc_to_m05_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_m05_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_m05_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_m05_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m05_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m05_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m05_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m05_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component design_1_auto_cc_0
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(31 downto 0) => auto_cc_to_m05_couplers_ARADDR(31 downto 0),
      m_axi_aresetn => M_ARESETN_1(0),
      m_axi_arprot(2 downto 0) => auto_cc_to_m05_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m05_couplers_ARREADY,
      m_axi_arvalid => auto_cc_to_m05_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_cc_to_m05_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m05_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m05_couplers_AWREADY,
      m_axi_awvalid => auto_cc_to_m05_couplers_AWVALID,
      m_axi_bready => auto_cc_to_m05_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m05_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m05_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m05_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m05_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m05_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m05_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m05_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => m05_couplers_to_auto_cc_ARADDR(31 downto 0),
      s_axi_aresetn => S_ARESETN_1(0),
      s_axi_arprot(2 downto 0) => m05_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m05_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m05_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(31 downto 0) => m05_couplers_to_auto_cc_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => m05_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m05_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m05_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m05_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m05_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m05_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m05_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m05_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m05_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m05_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m05_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m05_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m05_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m05_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_4YOIXL is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_4YOIXL;

architecture STRUCTURE of m06_couplers_imp_4YOIXL is
  component design_1_auto_cc_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_cc_1;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m06_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_m06_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m06_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_m06_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_m06_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m06_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m06_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m06_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m06_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m06_couplers_WVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_cc_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1(0) <= M_ARESETN(0);
  M_AXI_araddr(3 downto 0) <= auto_cc_to_m06_couplers_ARADDR(3 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_cc_to_m06_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_cc_to_m06_couplers_ARVALID;
  M_AXI_awaddr(3 downto 0) <= auto_cc_to_m06_couplers_AWADDR(3 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_cc_to_m06_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_cc_to_m06_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_m06_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_cc_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_cc_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_cc_to_m06_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m06_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m06_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m06_couplers_to_auto_cc_WREADY;
  auto_cc_to_m06_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_m06_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_m06_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_m06_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m06_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m06_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m06_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m06_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component design_1_auto_cc_1
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(31 downto 0) => auto_cc_to_m06_couplers_ARADDR(31 downto 0),
      m_axi_aresetn => M_ARESETN_1(0),
      m_axi_arprot(2 downto 0) => auto_cc_to_m06_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m06_couplers_ARREADY,
      m_axi_arvalid => auto_cc_to_m06_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_cc_to_m06_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m06_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m06_couplers_AWREADY,
      m_axi_awvalid => auto_cc_to_m06_couplers_AWVALID,
      m_axi_bready => auto_cc_to_m06_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m06_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m06_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m06_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m06_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m06_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m06_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m06_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => m06_couplers_to_auto_cc_ARADDR(31 downto 0),
      s_axi_aresetn => S_ARESETN_1(0),
      s_axi_arprot(2 downto 0) => m06_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m06_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m06_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(31 downto 0) => m06_couplers_to_auto_cc_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => m06_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m06_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m06_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m06_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m06_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m06_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m06_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m06_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m06_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m06_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m06_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m06_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m06_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m06_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_1YO2N20 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m07_couplers_imp_1YO2N20;

architecture STRUCTURE of m07_couplers_imp_1YO2N20 is
  signal m07_couplers_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m07_couplers_to_m07_couplers_ARREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m07_couplers_to_m07_couplers_AWREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_BREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_BVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_RREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_RVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_WREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_m07_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(6 downto 0) <= m07_couplers_to_m07_couplers_ARADDR(6 downto 0);
  M_AXI_arvalid <= m07_couplers_to_m07_couplers_ARVALID;
  M_AXI_awaddr(6 downto 0) <= m07_couplers_to_m07_couplers_AWADDR(6 downto 0);
  M_AXI_awvalid <= m07_couplers_to_m07_couplers_AWVALID;
  M_AXI_bready <= m07_couplers_to_m07_couplers_BREADY;
  M_AXI_rready <= m07_couplers_to_m07_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m07_couplers_to_m07_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m07_couplers_to_m07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m07_couplers_to_m07_couplers_WVALID;
  S_AXI_arready <= m07_couplers_to_m07_couplers_ARREADY;
  S_AXI_awready <= m07_couplers_to_m07_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m07_couplers_to_m07_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m07_couplers_to_m07_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m07_couplers_to_m07_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m07_couplers_to_m07_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m07_couplers_to_m07_couplers_RVALID;
  S_AXI_wready <= m07_couplers_to_m07_couplers_WREADY;
  m07_couplers_to_m07_couplers_ARADDR(6 downto 0) <= S_AXI_araddr(6 downto 0);
  m07_couplers_to_m07_couplers_ARREADY <= M_AXI_arready;
  m07_couplers_to_m07_couplers_ARVALID <= S_AXI_arvalid;
  m07_couplers_to_m07_couplers_AWADDR(6 downto 0) <= S_AXI_awaddr(6 downto 0);
  m07_couplers_to_m07_couplers_AWREADY <= M_AXI_awready;
  m07_couplers_to_m07_couplers_AWVALID <= S_AXI_awvalid;
  m07_couplers_to_m07_couplers_BREADY <= S_AXI_bready;
  m07_couplers_to_m07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m07_couplers_to_m07_couplers_BVALID <= M_AXI_bvalid;
  m07_couplers_to_m07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m07_couplers_to_m07_couplers_RREADY <= S_AXI_rready;
  m07_couplers_to_m07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m07_couplers_to_m07_couplers_RVALID <= M_AXI_rvalid;
  m07_couplers_to_m07_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m07_couplers_to_m07_couplers_WREADY <= M_AXI_wready;
  m07_couplers_to_m07_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m07_couplers_to_m07_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_2FYR80 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m08_couplers_imp_2FYR80;

architecture STRUCTURE of m08_couplers_imp_2FYR80 is
  signal m08_couplers_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m08_couplers_to_m08_couplers_ARREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m08_couplers_to_m08_couplers_AWREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_BVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_RREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_RVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_WREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(8 downto 0) <= m08_couplers_to_m08_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= m08_couplers_to_m08_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= m08_couplers_to_m08_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= m08_couplers_to_m08_couplers_AWVALID;
  M_AXI_bready <= m08_couplers_to_m08_couplers_BREADY;
  M_AXI_rready <= m08_couplers_to_m08_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m08_couplers_to_m08_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m08_couplers_to_m08_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m08_couplers_to_m08_couplers_WVALID;
  S_AXI_arready <= m08_couplers_to_m08_couplers_ARREADY;
  S_AXI_awready <= m08_couplers_to_m08_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m08_couplers_to_m08_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m08_couplers_to_m08_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m08_couplers_to_m08_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m08_couplers_to_m08_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m08_couplers_to_m08_couplers_RVALID;
  S_AXI_wready <= m08_couplers_to_m08_couplers_WREADY;
  m08_couplers_to_m08_couplers_ARADDR(8 downto 0) <= S_AXI_araddr(8 downto 0);
  m08_couplers_to_m08_couplers_ARREADY <= M_AXI_arready;
  m08_couplers_to_m08_couplers_ARVALID <= S_AXI_arvalid;
  m08_couplers_to_m08_couplers_AWADDR(8 downto 0) <= S_AXI_awaddr(8 downto 0);
  m08_couplers_to_m08_couplers_AWREADY <= M_AXI_awready;
  m08_couplers_to_m08_couplers_AWVALID <= S_AXI_awvalid;
  m08_couplers_to_m08_couplers_BREADY <= S_AXI_bready;
  m08_couplers_to_m08_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m08_couplers_to_m08_couplers_BVALID <= M_AXI_bvalid;
  m08_couplers_to_m08_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m08_couplers_to_m08_couplers_RREADY <= S_AXI_rready;
  m08_couplers_to_m08_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m08_couplers_to_m08_couplers_RVALID <= M_AXI_rvalid;
  m08_couplers_to_m08_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m08_couplers_to_m08_couplers_WREADY <= M_AXI_wready;
  m08_couplers_to_m08_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m08_couplers_to_m08_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m09_couplers_imp_1S9IENL is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m09_couplers_imp_1S9IENL;

architecture STRUCTURE of m09_couplers_imp_1S9IENL is
  component design_1_auto_cc_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_cc_2;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m09_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m09_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_m09_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m09_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m09_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_m09_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_m09_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m09_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m09_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m09_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m09_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m09_couplers_WVALID : STD_LOGIC;
  signal m09_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m09_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m09_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m09_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m09_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m09_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m09_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m09_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m09_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m09_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_auto_cc_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1(0) <= M_ARESETN(0);
  M_AXI_araddr(3 downto 0) <= auto_cc_to_m09_couplers_ARADDR(3 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_cc_to_m09_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_cc_to_m09_couplers_ARVALID;
  M_AXI_awaddr(3 downto 0) <= auto_cc_to_m09_couplers_AWADDR(3 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_cc_to_m09_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_cc_to_m09_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_m09_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_m09_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_cc_to_m09_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_cc_to_m09_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_cc_to_m09_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m09_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m09_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m09_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m09_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m09_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m09_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m09_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m09_couplers_to_auto_cc_WREADY;
  auto_cc_to_m09_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_m09_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_m09_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_m09_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_m09_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_m09_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_m09_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_m09_couplers_WREADY <= M_AXI_wready;
  m09_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m09_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m09_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m09_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m09_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m09_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m09_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m09_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m09_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m09_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m09_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component design_1_auto_cc_2
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(31 downto 0) => auto_cc_to_m09_couplers_ARADDR(31 downto 0),
      m_axi_aresetn => M_ARESETN_1(0),
      m_axi_arprot(2 downto 0) => auto_cc_to_m09_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m09_couplers_ARREADY,
      m_axi_arvalid => auto_cc_to_m09_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_cc_to_m09_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m09_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m09_couplers_AWREADY,
      m_axi_awvalid => auto_cc_to_m09_couplers_AWVALID,
      m_axi_bready => auto_cc_to_m09_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m09_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m09_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m09_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m09_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m09_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m09_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m09_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m09_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m09_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m09_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => m09_couplers_to_auto_cc_ARADDR(31 downto 0),
      s_axi_aresetn => S_ARESETN_1(0),
      s_axi_arprot(2 downto 0) => m09_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m09_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m09_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(31 downto 0) => m09_couplers_to_auto_cc_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => m09_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m09_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m09_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m09_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m09_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m09_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m09_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m09_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m09_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m09_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m09_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m09_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m09_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m09_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_0_local_memory_imp_1K0VQXK is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end microblaze_0_local_memory_imp_1K0VQXK;

architecture STRUCTURE of microblaze_0_local_memory_imp_1K0VQXK is
  component design_1_dlmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component design_1_dlmb_bram_if_cntlr_0;
  component design_1_dlmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component design_1_dlmb_v10_0;
  component design_1_ilmb_bram_if_cntlr_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component design_1_ilmb_bram_if_cntlr_1;
  component design_1_ilmb_v10_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component design_1_ilmb_v10_1;
  component design_1_lmb_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_lmb_bram_0;
  signal GND_1 : STD_LOGIC;
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_CE : STD_LOGIC;
  signal microblaze_0_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_READY : STD_LOGIC;
  signal microblaze_0_dlmb_UE : STD_LOGIC;
  signal microblaze_0_dlmb_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_bus_CE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READY : STD_LOGIC;
  signal microblaze_0_dlmb_bus_UE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_dlmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_CE : STD_LOGIC;
  signal microblaze_0_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_READY : STD_LOGIC;
  signal microblaze_0_ilmb_UE : STD_LOGIC;
  signal microblaze_0_ilmb_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_bus_CE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READY : STD_LOGIC;
  signal microblaze_0_ilmb_bus_UE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_ilmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal proc_sys_reset_1_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x0 32 >  design_1 microblaze_0_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  DLMB_ce <= microblaze_0_dlmb_CE;
  DLMB_readdbus(0 to 31) <= microblaze_0_dlmb_READDBUS(0 to 31);
  DLMB_ready <= microblaze_0_dlmb_READY;
  DLMB_ue <= microblaze_0_dlmb_UE;
  DLMB_wait <= microblaze_0_dlmb_WAIT;
  ILMB_ce <= microblaze_0_ilmb_CE;
  ILMB_readdbus(0 to 31) <= microblaze_0_ilmb_READDBUS(0 to 31);
  ILMB_ready <= microblaze_0_ilmb_READY;
  ILMB_ue <= microblaze_0_ilmb_UE;
  ILMB_wait <= microblaze_0_ilmb_WAIT;
  microblaze_0_Clk <= LMB_Clk;
  microblaze_0_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  microblaze_0_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  microblaze_0_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  microblaze_0_dlmb_READSTROBE <= DLMB_readstrobe;
  microblaze_0_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  microblaze_0_dlmb_WRITESTROBE <= DLMB_writestrobe;
  microblaze_0_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  microblaze_0_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  microblaze_0_ilmb_READSTROBE <= ILMB_readstrobe;
  proc_sys_reset_1_bus_struct_reset(0) <= LMB_Rst(0);
GND: unisim.vcomponents.GND
     port map (
      G => GND_1
    );
dlmb_bram_if_cntlr: component design_1_dlmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_dlmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Rst => proc_sys_reset_1_bus_struct_reset(0),
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_dlmb_bus_READY,
      Sl_UE => microblaze_0_dlmb_bus_UE,
      Sl_Wait => microblaze_0_dlmb_bus_WAIT
    );
dlmb_v10: component design_1_dlmb_v10_0
     port map (
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_dlmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_dlmb_UE,
      LMB_Wait => microblaze_0_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_dlmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => microblaze_0_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => microblaze_0_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => microblaze_0_dlmb_READSTROBE,
      M_WriteStrobe => microblaze_0_dlmb_WRITESTROBE,
      SYS_Rst => proc_sys_reset_1_bus_struct_reset(0),
      Sl_CE(0) => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_dlmb_bus_READY,
      Sl_UE(0) => microblaze_0_dlmb_bus_UE,
      Sl_Wait(0) => microblaze_0_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component design_1_ilmb_bram_if_cntlr_1
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_ilmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Rst => proc_sys_reset_1_bus_struct_reset(0),
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_ilmb_bus_READY,
      Sl_UE => microblaze_0_ilmb_bus_UE,
      Sl_Wait => microblaze_0_ilmb_bus_WAIT
    );
ilmb_v10: component design_1_ilmb_v10_1
     port map (
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_ilmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_ilmb_UE,
      LMB_Wait => microblaze_0_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_ilmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_ilmb_ADDRSTROBE,
      M_BE(0) => GND_1,
      M_BE(1) => GND_1,
      M_BE(2) => GND_1,
      M_BE(3) => GND_1,
      M_DBus(0) => GND_1,
      M_DBus(1) => GND_1,
      M_DBus(2) => GND_1,
      M_DBus(3) => GND_1,
      M_DBus(4) => GND_1,
      M_DBus(5) => GND_1,
      M_DBus(6) => GND_1,
      M_DBus(7) => GND_1,
      M_DBus(8) => GND_1,
      M_DBus(9) => GND_1,
      M_DBus(10) => GND_1,
      M_DBus(11) => GND_1,
      M_DBus(12) => GND_1,
      M_DBus(13) => GND_1,
      M_DBus(14) => GND_1,
      M_DBus(15) => GND_1,
      M_DBus(16) => GND_1,
      M_DBus(17) => GND_1,
      M_DBus(18) => GND_1,
      M_DBus(19) => GND_1,
      M_DBus(20) => GND_1,
      M_DBus(21) => GND_1,
      M_DBus(22) => GND_1,
      M_DBus(23) => GND_1,
      M_DBus(24) => GND_1,
      M_DBus(25) => GND_1,
      M_DBus(26) => GND_1,
      M_DBus(27) => GND_1,
      M_DBus(28) => GND_1,
      M_DBus(29) => GND_1,
      M_DBus(30) => GND_1,
      M_DBus(31) => GND_1,
      M_ReadStrobe => microblaze_0_ilmb_READSTROBE,
      M_WriteStrobe => GND_1,
      SYS_Rst => proc_sys_reset_1_bus_struct_reset(0),
      Sl_CE(0) => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_ilmb_bus_READY,
      Sl_UE(0) => microblaze_0_ilmb_bus_UE,
      Sl_Wait(0) => microblaze_0_ilmb_bus_WAIT
    );
lmb_bram: component design_1_lmb_bram_0
     port map (
      addra(31) => microblaze_0_dlmb_cntlr_ADDR(0),
      addra(30) => microblaze_0_dlmb_cntlr_ADDR(1),
      addra(29) => microblaze_0_dlmb_cntlr_ADDR(2),
      addra(28) => microblaze_0_dlmb_cntlr_ADDR(3),
      addra(27) => microblaze_0_dlmb_cntlr_ADDR(4),
      addra(26) => microblaze_0_dlmb_cntlr_ADDR(5),
      addra(25) => microblaze_0_dlmb_cntlr_ADDR(6),
      addra(24) => microblaze_0_dlmb_cntlr_ADDR(7),
      addra(23) => microblaze_0_dlmb_cntlr_ADDR(8),
      addra(22) => microblaze_0_dlmb_cntlr_ADDR(9),
      addra(21) => microblaze_0_dlmb_cntlr_ADDR(10),
      addra(20) => microblaze_0_dlmb_cntlr_ADDR(11),
      addra(19) => microblaze_0_dlmb_cntlr_ADDR(12),
      addra(18) => microblaze_0_dlmb_cntlr_ADDR(13),
      addra(17) => microblaze_0_dlmb_cntlr_ADDR(14),
      addra(16) => microblaze_0_dlmb_cntlr_ADDR(15),
      addra(15) => microblaze_0_dlmb_cntlr_ADDR(16),
      addra(14) => microblaze_0_dlmb_cntlr_ADDR(17),
      addra(13) => microblaze_0_dlmb_cntlr_ADDR(18),
      addra(12) => microblaze_0_dlmb_cntlr_ADDR(19),
      addra(11) => microblaze_0_dlmb_cntlr_ADDR(20),
      addra(10) => microblaze_0_dlmb_cntlr_ADDR(21),
      addra(9) => microblaze_0_dlmb_cntlr_ADDR(22),
      addra(8) => microblaze_0_dlmb_cntlr_ADDR(23),
      addra(7) => microblaze_0_dlmb_cntlr_ADDR(24),
      addra(6) => microblaze_0_dlmb_cntlr_ADDR(25),
      addra(5) => microblaze_0_dlmb_cntlr_ADDR(26),
      addra(4) => microblaze_0_dlmb_cntlr_ADDR(27),
      addra(3) => microblaze_0_dlmb_cntlr_ADDR(28),
      addra(2) => microblaze_0_dlmb_cntlr_ADDR(29),
      addra(1) => microblaze_0_dlmb_cntlr_ADDR(30),
      addra(0) => microblaze_0_dlmb_cntlr_ADDR(31),
      addrb(31) => microblaze_0_ilmb_cntlr_ADDR(0),
      addrb(30) => microblaze_0_ilmb_cntlr_ADDR(1),
      addrb(29) => microblaze_0_ilmb_cntlr_ADDR(2),
      addrb(28) => microblaze_0_ilmb_cntlr_ADDR(3),
      addrb(27) => microblaze_0_ilmb_cntlr_ADDR(4),
      addrb(26) => microblaze_0_ilmb_cntlr_ADDR(5),
      addrb(25) => microblaze_0_ilmb_cntlr_ADDR(6),
      addrb(24) => microblaze_0_ilmb_cntlr_ADDR(7),
      addrb(23) => microblaze_0_ilmb_cntlr_ADDR(8),
      addrb(22) => microblaze_0_ilmb_cntlr_ADDR(9),
      addrb(21) => microblaze_0_ilmb_cntlr_ADDR(10),
      addrb(20) => microblaze_0_ilmb_cntlr_ADDR(11),
      addrb(19) => microblaze_0_ilmb_cntlr_ADDR(12),
      addrb(18) => microblaze_0_ilmb_cntlr_ADDR(13),
      addrb(17) => microblaze_0_ilmb_cntlr_ADDR(14),
      addrb(16) => microblaze_0_ilmb_cntlr_ADDR(15),
      addrb(15) => microblaze_0_ilmb_cntlr_ADDR(16),
      addrb(14) => microblaze_0_ilmb_cntlr_ADDR(17),
      addrb(13) => microblaze_0_ilmb_cntlr_ADDR(18),
      addrb(12) => microblaze_0_ilmb_cntlr_ADDR(19),
      addrb(11) => microblaze_0_ilmb_cntlr_ADDR(20),
      addrb(10) => microblaze_0_ilmb_cntlr_ADDR(21),
      addrb(9) => microblaze_0_ilmb_cntlr_ADDR(22),
      addrb(8) => microblaze_0_ilmb_cntlr_ADDR(23),
      addrb(7) => microblaze_0_ilmb_cntlr_ADDR(24),
      addrb(6) => microblaze_0_ilmb_cntlr_ADDR(25),
      addrb(5) => microblaze_0_ilmb_cntlr_ADDR(26),
      addrb(4) => microblaze_0_ilmb_cntlr_ADDR(27),
      addrb(3) => microblaze_0_ilmb_cntlr_ADDR(28),
      addrb(2) => microblaze_0_ilmb_cntlr_ADDR(29),
      addrb(1) => microblaze_0_ilmb_cntlr_ADDR(30),
      addrb(0) => microblaze_0_ilmb_cntlr_ADDR(31),
      clka => microblaze_0_dlmb_cntlr_CLK,
      clkb => microblaze_0_ilmb_cntlr_CLK,
      dina(31) => microblaze_0_dlmb_cntlr_DIN(0),
      dina(30) => microblaze_0_dlmb_cntlr_DIN(1),
      dina(29) => microblaze_0_dlmb_cntlr_DIN(2),
      dina(28) => microblaze_0_dlmb_cntlr_DIN(3),
      dina(27) => microblaze_0_dlmb_cntlr_DIN(4),
      dina(26) => microblaze_0_dlmb_cntlr_DIN(5),
      dina(25) => microblaze_0_dlmb_cntlr_DIN(6),
      dina(24) => microblaze_0_dlmb_cntlr_DIN(7),
      dina(23) => microblaze_0_dlmb_cntlr_DIN(8),
      dina(22) => microblaze_0_dlmb_cntlr_DIN(9),
      dina(21) => microblaze_0_dlmb_cntlr_DIN(10),
      dina(20) => microblaze_0_dlmb_cntlr_DIN(11),
      dina(19) => microblaze_0_dlmb_cntlr_DIN(12),
      dina(18) => microblaze_0_dlmb_cntlr_DIN(13),
      dina(17) => microblaze_0_dlmb_cntlr_DIN(14),
      dina(16) => microblaze_0_dlmb_cntlr_DIN(15),
      dina(15) => microblaze_0_dlmb_cntlr_DIN(16),
      dina(14) => microblaze_0_dlmb_cntlr_DIN(17),
      dina(13) => microblaze_0_dlmb_cntlr_DIN(18),
      dina(12) => microblaze_0_dlmb_cntlr_DIN(19),
      dina(11) => microblaze_0_dlmb_cntlr_DIN(20),
      dina(10) => microblaze_0_dlmb_cntlr_DIN(21),
      dina(9) => microblaze_0_dlmb_cntlr_DIN(22),
      dina(8) => microblaze_0_dlmb_cntlr_DIN(23),
      dina(7) => microblaze_0_dlmb_cntlr_DIN(24),
      dina(6) => microblaze_0_dlmb_cntlr_DIN(25),
      dina(5) => microblaze_0_dlmb_cntlr_DIN(26),
      dina(4) => microblaze_0_dlmb_cntlr_DIN(27),
      dina(3) => microblaze_0_dlmb_cntlr_DIN(28),
      dina(2) => microblaze_0_dlmb_cntlr_DIN(29),
      dina(1) => microblaze_0_dlmb_cntlr_DIN(30),
      dina(0) => microblaze_0_dlmb_cntlr_DIN(31),
      dinb(31) => microblaze_0_ilmb_cntlr_DIN(0),
      dinb(30) => microblaze_0_ilmb_cntlr_DIN(1),
      dinb(29) => microblaze_0_ilmb_cntlr_DIN(2),
      dinb(28) => microblaze_0_ilmb_cntlr_DIN(3),
      dinb(27) => microblaze_0_ilmb_cntlr_DIN(4),
      dinb(26) => microblaze_0_ilmb_cntlr_DIN(5),
      dinb(25) => microblaze_0_ilmb_cntlr_DIN(6),
      dinb(24) => microblaze_0_ilmb_cntlr_DIN(7),
      dinb(23) => microblaze_0_ilmb_cntlr_DIN(8),
      dinb(22) => microblaze_0_ilmb_cntlr_DIN(9),
      dinb(21) => microblaze_0_ilmb_cntlr_DIN(10),
      dinb(20) => microblaze_0_ilmb_cntlr_DIN(11),
      dinb(19) => microblaze_0_ilmb_cntlr_DIN(12),
      dinb(18) => microblaze_0_ilmb_cntlr_DIN(13),
      dinb(17) => microblaze_0_ilmb_cntlr_DIN(14),
      dinb(16) => microblaze_0_ilmb_cntlr_DIN(15),
      dinb(15) => microblaze_0_ilmb_cntlr_DIN(16),
      dinb(14) => microblaze_0_ilmb_cntlr_DIN(17),
      dinb(13) => microblaze_0_ilmb_cntlr_DIN(18),
      dinb(12) => microblaze_0_ilmb_cntlr_DIN(19),
      dinb(11) => microblaze_0_ilmb_cntlr_DIN(20),
      dinb(10) => microblaze_0_ilmb_cntlr_DIN(21),
      dinb(9) => microblaze_0_ilmb_cntlr_DIN(22),
      dinb(8) => microblaze_0_ilmb_cntlr_DIN(23),
      dinb(7) => microblaze_0_ilmb_cntlr_DIN(24),
      dinb(6) => microblaze_0_ilmb_cntlr_DIN(25),
      dinb(5) => microblaze_0_ilmb_cntlr_DIN(26),
      dinb(4) => microblaze_0_ilmb_cntlr_DIN(27),
      dinb(3) => microblaze_0_ilmb_cntlr_DIN(28),
      dinb(2) => microblaze_0_ilmb_cntlr_DIN(29),
      dinb(1) => microblaze_0_ilmb_cntlr_DIN(30),
      dinb(0) => microblaze_0_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => microblaze_0_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => microblaze_0_ilmb_cntlr_DOUT(31 downto 0),
      ena => microblaze_0_dlmb_cntlr_EN,
      enb => microblaze_0_ilmb_cntlr_EN,
      rsta => microblaze_0_dlmb_cntlr_RST,
      rstb => microblaze_0_ilmb_cntlr_RST,
      wea(3) => microblaze_0_dlmb_cntlr_WE(0),
      wea(2) => microblaze_0_dlmb_cntlr_WE(1),
      wea(1) => microblaze_0_dlmb_cntlr_WE(2),
      wea(0) => microblaze_0_dlmb_cntlr_WE(3),
      web(3) => microblaze_0_ilmb_cntlr_WE(0),
      web(2) => microblaze_0_ilmb_cntlr_WE(1),
      web(1) => microblaze_0_ilmb_cntlr_WE(2),
      web(0) => microblaze_0_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1RZP34U is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_1RZP34U;

architecture STRUCTURE of s00_couplers_imp_1RZP34U is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_7HNO1D is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_7HNO1D;

architecture STRUCTURE of s00_couplers_imp_7HNO1D is
  component design_1_s00_data_fifo_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_s00_data_fifo_0;
  signal GND_1 : STD_LOGIC;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_data_fifo_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_data_fifo_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_data_fifo_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_data_fifo_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_data_fifo_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_data_fifo_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_data_fifo_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_data_fifo_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_data_fifo_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_data_fifo_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_data_fifo_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_data_fifo_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_data_fifo_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_data_fifo_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_data_fifo_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_data_fifo_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_data_fifo_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_data_fifo_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_data_fifo_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_data_fifo_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_data_fifo_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_data_fifo_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_data_fifo_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_data_fifo_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_data_fifo_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_data_fifo_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_data_fifo_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_data_fifo_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_data_fifo_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_data_fifo_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_data_fifo_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_data_fifo_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_data_fifo_WVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_data_fifo_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_data_fifo_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_data_fifo_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_data_fifo_to_s00_couplers_RLAST : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_data_fifo_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_data_fifo_to_s00_couplers_WLAST : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_data_fifo_to_s00_couplers_WVALID : STD_LOGIC;
  signal NLW_s00_data_fifo_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s00_data_fifo_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1(0) <= M_ARESETN(0);
  M_AXI_araddr(31 downto 0) <= s00_data_fifo_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s00_data_fifo_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s00_data_fifo_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s00_data_fifo_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s00_data_fifo_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s00_data_fifo_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s00_data_fifo_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s00_data_fifo_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s00_data_fifo_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s00_data_fifo_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s00_data_fifo_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s00_data_fifo_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s00_data_fifo_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s00_data_fifo_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s00_data_fifo_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s00_data_fifo_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s00_data_fifo_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s00_data_fifo_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_data_fifo_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_data_fifo_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s00_data_fifo_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s00_data_fifo_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s00_data_fifo_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s00_data_fifo_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_data_fifo_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_data_fifo_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_data_fifo_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_data_fifo_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_data_fifo_RDATA(31 downto 0);
  S_AXI_rlast <= s00_couplers_to_s00_data_fifo_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_data_fifo_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_data_fifo_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_data_fifo_WREADY;
  s00_couplers_to_s00_data_fifo_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_data_fifo_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_data_fifo_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_data_fifo_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_data_fifo_ARLOCK <= S_AXI_arlock;
  s00_couplers_to_s00_data_fifo_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_data_fifo_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_s00_data_fifo_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_data_fifo_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_data_fifo_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_data_fifo_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_data_fifo_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_data_fifo_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_s00_data_fifo_AWLOCK <= S_AXI_awlock;
  s00_couplers_to_s00_data_fifo_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_data_fifo_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_s00_data_fifo_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_data_fifo_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_data_fifo_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_data_fifo_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_data_fifo_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_data_fifo_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_data_fifo_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_data_fifo_WVALID <= S_AXI_wvalid;
  s00_data_fifo_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_data_fifo_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_data_fifo_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_data_fifo_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_data_fifo_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_data_fifo_to_s00_couplers_RLAST <= M_AXI_rlast;
  s00_data_fifo_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_data_fifo_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_data_fifo_to_s00_couplers_WREADY <= M_AXI_wready;
GND: unisim.vcomponents.GND
     port map (
      G => GND_1
    );
s00_data_fifo: component design_1_s00_data_fifo_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => s00_data_fifo_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s00_data_fifo_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_data_fifo_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s00_data_fifo_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_data_fifo_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s00_data_fifo_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_data_fifo_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => s00_data_fifo_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_s00_data_fifo_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => s00_data_fifo_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_data_fifo_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => s00_data_fifo_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s00_data_fifo_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_data_fifo_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s00_data_fifo_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_data_fifo_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s00_data_fifo_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_data_fifo_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => s00_data_fifo_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_s00_data_fifo_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => s00_data_fifo_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => s00_data_fifo_to_s00_couplers_AWVALID,
      m_axi_bready => s00_data_fifo_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => s00_data_fifo_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => s00_data_fifo_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => s00_data_fifo_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rlast => s00_data_fifo_to_s00_couplers_RLAST,
      m_axi_rready => s00_data_fifo_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => s00_data_fifo_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => s00_data_fifo_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => s00_data_fifo_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => s00_data_fifo_to_s00_couplers_WLAST,
      m_axi_wready => s00_data_fifo_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => s00_data_fifo_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => s00_data_fifo_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_s00_data_fifo_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_s00_data_fifo_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_s00_data_fifo_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_s00_data_fifo_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_s00_data_fifo_ARLOCK,
      s_axi_arprot(2 downto 0) => s00_couplers_to_s00_data_fifo_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_s00_data_fifo_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_s00_data_fifo_ARREADY,
      s_axi_arregion(3) => GND_1,
      s_axi_arregion(2) => GND_1,
      s_axi_arregion(1) => GND_1,
      s_axi_arregion(0) => GND_1,
      s_axi_arsize(2 downto 0) => s00_couplers_to_s00_data_fifo_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_s00_data_fifo_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_s00_data_fifo_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_s00_data_fifo_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_s00_data_fifo_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_s00_data_fifo_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_s00_data_fifo_AWLOCK,
      s_axi_awprot(2 downto 0) => s00_couplers_to_s00_data_fifo_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_s00_data_fifo_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_s00_data_fifo_AWREADY,
      s_axi_awregion(3) => GND_1,
      s_axi_awregion(2) => GND_1,
      s_axi_awregion(1) => GND_1,
      s_axi_awregion(0) => GND_1,
      s_axi_awsize(2 downto 0) => s00_couplers_to_s00_data_fifo_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_s00_data_fifo_AWVALID,
      s_axi_bready => s00_couplers_to_s00_data_fifo_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_s00_data_fifo_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_s00_data_fifo_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_s00_data_fifo_RDATA(31 downto 0),
      s_axi_rlast => s00_couplers_to_s00_data_fifo_RLAST,
      s_axi_rready => s00_couplers_to_s00_data_fifo_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_s00_data_fifo_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_s00_data_fifo_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_s00_data_fifo_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_s00_data_fifo_WLAST,
      s_axi_wready => s00_couplers_to_s00_data_fifo_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_s00_data_fifo_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_s00_data_fifo_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1W60HW0 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s01_couplers_imp_1W60HW0;

architecture STRUCTURE of s01_couplers_imp_1W60HW0 is
  component design_1_s01_data_fifo_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_s01_data_fifo_0;
  signal GND_1 : STD_LOGIC;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_data_fifo_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_data_fifo_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_data_fifo_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_data_fifo_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_data_fifo_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_s01_data_fifo_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_data_fifo_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_data_fifo_ARREADY : STD_LOGIC;
  signal s01_couplers_to_s01_data_fifo_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_data_fifo_ARVALID : STD_LOGIC;
  signal s01_couplers_to_s01_data_fifo_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_data_fifo_RLAST : STD_LOGIC;
  signal s01_couplers_to_s01_data_fifo_RREADY : STD_LOGIC;
  signal s01_couplers_to_s01_data_fifo_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_data_fifo_RVALID : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_data_fifo_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_data_fifo_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_data_fifo_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_data_fifo_to_s01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_data_fifo_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_data_fifo_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_data_fifo_to_s01_couplers_ARREADY : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_data_fifo_to_s01_couplers_ARVALID : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_data_fifo_to_s01_couplers_RLAST : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_RREADY : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_data_fifo_to_s01_couplers_RVALID : STD_LOGIC;
  signal NLW_s01_data_fifo_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1(0) <= M_ARESETN(0);
  M_AXI_araddr(31 downto 0) <= s01_data_fifo_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s01_data_fifo_to_s01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s01_data_fifo_to_s01_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s01_data_fifo_to_s01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s01_data_fifo_to_s01_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s01_data_fifo_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s01_data_fifo_to_s01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s01_data_fifo_to_s01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s01_data_fifo_to_s01_couplers_ARVALID;
  M_AXI_rready <= s01_data_fifo_to_s01_couplers_RREADY;
  S_AXI_arready <= s01_couplers_to_s01_data_fifo_ARREADY;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_s01_data_fifo_RDATA(31 downto 0);
  S_AXI_rlast <= s01_couplers_to_s01_data_fifo_RLAST;
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_s01_data_fifo_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_s01_data_fifo_RVALID;
  s01_couplers_to_s01_data_fifo_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_s01_data_fifo_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_s01_data_fifo_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_s01_data_fifo_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s01_couplers_to_s01_data_fifo_ARLOCK <= S_AXI_arlock;
  s01_couplers_to_s01_data_fifo_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_s01_data_fifo_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s01_couplers_to_s01_data_fifo_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_s01_data_fifo_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_s01_data_fifo_RREADY <= S_AXI_rready;
  s01_data_fifo_to_s01_couplers_ARREADY <= M_AXI_arready;
  s01_data_fifo_to_s01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s01_data_fifo_to_s01_couplers_RLAST <= M_AXI_rlast;
  s01_data_fifo_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s01_data_fifo_to_s01_couplers_RVALID <= M_AXI_rvalid;
GND: unisim.vcomponents.GND
     port map (
      G => GND_1
    );
s01_data_fifo: component design_1_s01_data_fifo_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => s01_data_fifo_to_s01_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s01_data_fifo_to_s01_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s01_data_fifo_to_s01_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s01_data_fifo_to_s01_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => s01_data_fifo_to_s01_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s01_data_fifo_to_s01_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s01_data_fifo_to_s01_couplers_ARQOS(3 downto 0),
      m_axi_arready => s01_data_fifo_to_s01_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_s01_data_fifo_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => s01_data_fifo_to_s01_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => s01_data_fifo_to_s01_couplers_ARVALID,
      m_axi_rdata(31 downto 0) => s01_data_fifo_to_s01_couplers_RDATA(31 downto 0),
      m_axi_rlast => s01_data_fifo_to_s01_couplers_RLAST,
      m_axi_rready => s01_data_fifo_to_s01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => s01_data_fifo_to_s01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => s01_data_fifo_to_s01_couplers_RVALID,
      s_axi_araddr(31 downto 0) => s01_couplers_to_s01_data_fifo_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s01_couplers_to_s01_data_fifo_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s01_couplers_to_s01_data_fifo_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s01_couplers_to_s01_data_fifo_ARLEN(7 downto 0),
      s_axi_arlock(0) => s01_couplers_to_s01_data_fifo_ARLOCK,
      s_axi_arprot(2 downto 0) => s01_couplers_to_s01_data_fifo_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s01_couplers_to_s01_data_fifo_ARQOS(3 downto 0),
      s_axi_arready => s01_couplers_to_s01_data_fifo_ARREADY,
      s_axi_arregion(3) => GND_1,
      s_axi_arregion(2) => GND_1,
      s_axi_arregion(1) => GND_1,
      s_axi_arregion(0) => GND_1,
      s_axi_arsize(2 downto 0) => s01_couplers_to_s01_data_fifo_ARSIZE(2 downto 0),
      s_axi_arvalid => s01_couplers_to_s01_data_fifo_ARVALID,
      s_axi_rdata(31 downto 0) => s01_couplers_to_s01_data_fifo_RDATA(31 downto 0),
      s_axi_rlast => s01_couplers_to_s01_data_fifo_RLAST,
      s_axi_rready => s01_couplers_to_s01_data_fifo_RREADY,
      s_axi_rresp(1 downto 0) => s01_couplers_to_s01_data_fifo_RRESP(1 downto 0),
      s_axi_rvalid => s01_couplers_to_s01_data_fifo_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_8NCF02 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s02_couplers_imp_8NCF02;

architecture STRUCTURE of s02_couplers_imp_8NCF02 is
  component design_1_s02_data_fifo_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component design_1_s02_data_fifo_0;
  signal GND_1 : STD_LOGIC;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_s02_data_fifo_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_data_fifo_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_data_fifo_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_data_fifo_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_s02_data_fifo_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_data_fifo_AWREADY : STD_LOGIC;
  signal s02_couplers_to_s02_data_fifo_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_data_fifo_AWVALID : STD_LOGIC;
  signal s02_couplers_to_s02_data_fifo_BREADY : STD_LOGIC;
  signal s02_couplers_to_s02_data_fifo_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_data_fifo_BVALID : STD_LOGIC;
  signal s02_couplers_to_s02_data_fifo_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_data_fifo_WLAST : STD_LOGIC;
  signal s02_couplers_to_s02_data_fifo_WREADY : STD_LOGIC;
  signal s02_couplers_to_s02_data_fifo_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_data_fifo_WVALID : STD_LOGIC;
  signal s02_data_fifo_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_data_fifo_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_data_fifo_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_data_fifo_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_data_fifo_to_s02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_data_fifo_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_data_fifo_to_s02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_data_fifo_to_s02_couplers_AWREADY : STD_LOGIC;
  signal s02_data_fifo_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_data_fifo_to_s02_couplers_AWVALID : STD_LOGIC;
  signal s02_data_fifo_to_s02_couplers_BREADY : STD_LOGIC;
  signal s02_data_fifo_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_data_fifo_to_s02_couplers_BVALID : STD_LOGIC;
  signal s02_data_fifo_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_data_fifo_to_s02_couplers_WLAST : STD_LOGIC;
  signal s02_data_fifo_to_s02_couplers_WREADY : STD_LOGIC;
  signal s02_data_fifo_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_data_fifo_to_s02_couplers_WVALID : STD_LOGIC;
  signal NLW_s02_data_fifo_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1(0) <= M_ARESETN(0);
  M_AXI_awaddr(31 downto 0) <= s02_data_fifo_to_s02_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s02_data_fifo_to_s02_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s02_data_fifo_to_s02_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s02_data_fifo_to_s02_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s02_data_fifo_to_s02_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s02_data_fifo_to_s02_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s02_data_fifo_to_s02_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s02_data_fifo_to_s02_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s02_data_fifo_to_s02_couplers_AWVALID;
  M_AXI_bready <= s02_data_fifo_to_s02_couplers_BREADY;
  M_AXI_wdata(31 downto 0) <= s02_data_fifo_to_s02_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s02_data_fifo_to_s02_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s02_data_fifo_to_s02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s02_data_fifo_to_s02_couplers_WVALID;
  S_AXI_awready <= s02_couplers_to_s02_data_fifo_AWREADY;
  S_AXI_bresp(1 downto 0) <= s02_couplers_to_s02_data_fifo_BRESP(1 downto 0);
  S_AXI_bvalid <= s02_couplers_to_s02_data_fifo_BVALID;
  S_AXI_wready <= s02_couplers_to_s02_data_fifo_WREADY;
  s02_couplers_to_s02_data_fifo_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s02_couplers_to_s02_data_fifo_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s02_couplers_to_s02_data_fifo_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s02_couplers_to_s02_data_fifo_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s02_couplers_to_s02_data_fifo_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s02_couplers_to_s02_data_fifo_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s02_couplers_to_s02_data_fifo_AWVALID <= S_AXI_awvalid;
  s02_couplers_to_s02_data_fifo_BREADY <= S_AXI_bready;
  s02_couplers_to_s02_data_fifo_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s02_couplers_to_s02_data_fifo_WLAST <= S_AXI_wlast;
  s02_couplers_to_s02_data_fifo_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s02_couplers_to_s02_data_fifo_WVALID <= S_AXI_wvalid;
  s02_data_fifo_to_s02_couplers_AWREADY <= M_AXI_awready;
  s02_data_fifo_to_s02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s02_data_fifo_to_s02_couplers_BVALID <= M_AXI_bvalid;
  s02_data_fifo_to_s02_couplers_WREADY <= M_AXI_wready;
GND: unisim.vcomponents.GND
     port map (
      G => GND_1
    );
s02_data_fifo: component design_1_s02_data_fifo_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1(0),
      m_axi_awaddr(31 downto 0) => s02_data_fifo_to_s02_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s02_data_fifo_to_s02_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s02_data_fifo_to_s02_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s02_data_fifo_to_s02_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => s02_data_fifo_to_s02_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s02_data_fifo_to_s02_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s02_data_fifo_to_s02_couplers_AWQOS(3 downto 0),
      m_axi_awready => s02_data_fifo_to_s02_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_s02_data_fifo_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => s02_data_fifo_to_s02_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => s02_data_fifo_to_s02_couplers_AWVALID,
      m_axi_bready => s02_data_fifo_to_s02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => s02_data_fifo_to_s02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => s02_data_fifo_to_s02_couplers_BVALID,
      m_axi_wdata(31 downto 0) => s02_data_fifo_to_s02_couplers_WDATA(31 downto 0),
      m_axi_wlast => s02_data_fifo_to_s02_couplers_WLAST,
      m_axi_wready => s02_data_fifo_to_s02_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => s02_data_fifo_to_s02_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => s02_data_fifo_to_s02_couplers_WVALID,
      s_axi_awaddr(31 downto 0) => s02_couplers_to_s02_data_fifo_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s02_couplers_to_s02_data_fifo_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s02_couplers_to_s02_data_fifo_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s02_couplers_to_s02_data_fifo_AWLEN(7 downto 0),
      s_axi_awlock(0) => GND_1,
      s_axi_awprot(2 downto 0) => s02_couplers_to_s02_data_fifo_AWPROT(2 downto 0),
      s_axi_awqos(3) => GND_1,
      s_axi_awqos(2) => GND_1,
      s_axi_awqos(1) => GND_1,
      s_axi_awqos(0) => GND_1,
      s_axi_awready => s02_couplers_to_s02_data_fifo_AWREADY,
      s_axi_awregion(3) => GND_1,
      s_axi_awregion(2) => GND_1,
      s_axi_awregion(1) => GND_1,
      s_axi_awregion(0) => GND_1,
      s_axi_awsize(2 downto 0) => s02_couplers_to_s02_data_fifo_AWSIZE(2 downto 0),
      s_axi_awvalid => s02_couplers_to_s02_data_fifo_AWVALID,
      s_axi_bready => s02_couplers_to_s02_data_fifo_BREADY,
      s_axi_bresp(1 downto 0) => s02_couplers_to_s02_data_fifo_BRESP(1 downto 0),
      s_axi_bvalid => s02_couplers_to_s02_data_fifo_BVALID,
      s_axi_wdata(31 downto 0) => s02_couplers_to_s02_data_fifo_WDATA(31 downto 0),
      s_axi_wlast => s02_couplers_to_s02_data_fifo_WLAST,
      s_axi_wready => s02_couplers_to_s02_data_fifo_WREADY,
      s_axi_wstrb(3 downto 0) => s02_couplers_to_s02_data_fifo_WSTRB(3 downto 0),
      s_axi_wvalid => s02_couplers_to_s02_data_fifo_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s03_couplers_imp_1UQ1PUB is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s03_couplers_imp_1UQ1PUB;

architecture STRUCTURE of s03_couplers_imp_1UQ1PUB is
  component design_1_s03_data_fifo_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_s03_data_fifo_0;
  signal GND_1 : STD_LOGIC;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_s03_data_fifo_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_s03_data_fifo_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_s03_data_fifo_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_s03_data_fifo_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_s03_data_fifo_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_s03_data_fifo_ARREADY : STD_LOGIC;
  signal s03_couplers_to_s03_data_fifo_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_s03_data_fifo_ARVALID : STD_LOGIC;
  signal s03_couplers_to_s03_data_fifo_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_s03_data_fifo_RLAST : STD_LOGIC;
  signal s03_couplers_to_s03_data_fifo_RREADY : STD_LOGIC;
  signal s03_couplers_to_s03_data_fifo_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_s03_data_fifo_RVALID : STD_LOGIC;
  signal s03_data_fifo_to_s03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_data_fifo_to_s03_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_data_fifo_to_s03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_data_fifo_to_s03_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_data_fifo_to_s03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_data_fifo_to_s03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_data_fifo_to_s03_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_data_fifo_to_s03_couplers_ARREADY : STD_LOGIC;
  signal s03_data_fifo_to_s03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_data_fifo_to_s03_couplers_ARVALID : STD_LOGIC;
  signal s03_data_fifo_to_s03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_data_fifo_to_s03_couplers_RLAST : STD_LOGIC;
  signal s03_data_fifo_to_s03_couplers_RREADY : STD_LOGIC;
  signal s03_data_fifo_to_s03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_data_fifo_to_s03_couplers_RVALID : STD_LOGIC;
  signal NLW_s03_data_fifo_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1(0) <= M_ARESETN(0);
  M_AXI_araddr(31 downto 0) <= s03_data_fifo_to_s03_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s03_data_fifo_to_s03_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s03_data_fifo_to_s03_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s03_data_fifo_to_s03_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s03_data_fifo_to_s03_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s03_data_fifo_to_s03_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s03_data_fifo_to_s03_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s03_data_fifo_to_s03_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s03_data_fifo_to_s03_couplers_ARVALID;
  M_AXI_rready <= s03_data_fifo_to_s03_couplers_RREADY;
  S_AXI_arready <= s03_couplers_to_s03_data_fifo_ARREADY;
  S_AXI_rdata(31 downto 0) <= s03_couplers_to_s03_data_fifo_RDATA(31 downto 0);
  S_AXI_rlast <= s03_couplers_to_s03_data_fifo_RLAST;
  S_AXI_rresp(1 downto 0) <= s03_couplers_to_s03_data_fifo_RRESP(1 downto 0);
  S_AXI_rvalid <= s03_couplers_to_s03_data_fifo_RVALID;
  s03_couplers_to_s03_data_fifo_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s03_couplers_to_s03_data_fifo_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s03_couplers_to_s03_data_fifo_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s03_couplers_to_s03_data_fifo_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s03_couplers_to_s03_data_fifo_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s03_couplers_to_s03_data_fifo_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s03_couplers_to_s03_data_fifo_ARVALID <= S_AXI_arvalid;
  s03_couplers_to_s03_data_fifo_RREADY <= S_AXI_rready;
  s03_data_fifo_to_s03_couplers_ARREADY <= M_AXI_arready;
  s03_data_fifo_to_s03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s03_data_fifo_to_s03_couplers_RLAST <= M_AXI_rlast;
  s03_data_fifo_to_s03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s03_data_fifo_to_s03_couplers_RVALID <= M_AXI_rvalid;
GND: unisim.vcomponents.GND
     port map (
      G => GND_1
    );
s03_data_fifo: component design_1_s03_data_fifo_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => s03_data_fifo_to_s03_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s03_data_fifo_to_s03_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s03_data_fifo_to_s03_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s03_data_fifo_to_s03_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => s03_data_fifo_to_s03_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s03_data_fifo_to_s03_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s03_data_fifo_to_s03_couplers_ARQOS(3 downto 0),
      m_axi_arready => s03_data_fifo_to_s03_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_s03_data_fifo_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => s03_data_fifo_to_s03_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => s03_data_fifo_to_s03_couplers_ARVALID,
      m_axi_rdata(31 downto 0) => s03_data_fifo_to_s03_couplers_RDATA(31 downto 0),
      m_axi_rlast => s03_data_fifo_to_s03_couplers_RLAST,
      m_axi_rready => s03_data_fifo_to_s03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => s03_data_fifo_to_s03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => s03_data_fifo_to_s03_couplers_RVALID,
      s_axi_araddr(31 downto 0) => s03_couplers_to_s03_data_fifo_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s03_couplers_to_s03_data_fifo_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s03_couplers_to_s03_data_fifo_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s03_couplers_to_s03_data_fifo_ARLEN(7 downto 0),
      s_axi_arlock(0) => GND_1,
      s_axi_arprot(2 downto 0) => s03_couplers_to_s03_data_fifo_ARPROT(2 downto 0),
      s_axi_arqos(3) => GND_1,
      s_axi_arqos(2) => GND_1,
      s_axi_arqos(1) => GND_1,
      s_axi_arqos(0) => GND_1,
      s_axi_arready => s03_couplers_to_s03_data_fifo_ARREADY,
      s_axi_arregion(3) => GND_1,
      s_axi_arregion(2) => GND_1,
      s_axi_arregion(1) => GND_1,
      s_axi_arregion(0) => GND_1,
      s_axi_arsize(2 downto 0) => s03_couplers_to_s03_data_fifo_ARSIZE(2 downto 0),
      s_axi_arvalid => s03_couplers_to_s03_data_fifo_ARVALID,
      s_axi_rdata(31 downto 0) => s03_couplers_to_s03_data_fifo_RDATA(31 downto 0),
      s_axi_rlast => s03_couplers_to_s03_data_fifo_RLAST,
      s_axi_rready => s03_couplers_to_s03_data_fifo_RREADY,
      s_axi_rresp(1 downto 0) => s03_couplers_to_s03_data_fifo_RRESP(1 downto 0),
      s_axi_rvalid => s03_couplers_to_s03_data_fifo_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s04_couplers_imp_4T8GAF is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s04_couplers_imp_4T8GAF;

architecture STRUCTURE of s04_couplers_imp_4T8GAF is
  component design_1_s04_data_fifo_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_s04_data_fifo_0;
  signal GND_1 : STD_LOGIC;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_data_fifo_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_data_fifo_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_data_fifo_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_data_fifo_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_s04_data_fifo_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_data_fifo_ARREADY : STD_LOGIC;
  signal s04_couplers_to_s04_data_fifo_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_data_fifo_ARVALID : STD_LOGIC;
  signal s04_couplers_to_s04_data_fifo_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_data_fifo_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_data_fifo_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_data_fifo_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_s04_data_fifo_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_data_fifo_AWREADY : STD_LOGIC;
  signal s04_couplers_to_s04_data_fifo_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_data_fifo_AWVALID : STD_LOGIC;
  signal s04_couplers_to_s04_data_fifo_BREADY : STD_LOGIC;
  signal s04_couplers_to_s04_data_fifo_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_data_fifo_BVALID : STD_LOGIC;
  signal s04_couplers_to_s04_data_fifo_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_data_fifo_RLAST : STD_LOGIC;
  signal s04_couplers_to_s04_data_fifo_RREADY : STD_LOGIC;
  signal s04_couplers_to_s04_data_fifo_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_data_fifo_RVALID : STD_LOGIC;
  signal s04_couplers_to_s04_data_fifo_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_data_fifo_WLAST : STD_LOGIC;
  signal s04_couplers_to_s04_data_fifo_WREADY : STD_LOGIC;
  signal s04_couplers_to_s04_data_fifo_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_data_fifo_WVALID : STD_LOGIC;
  signal s04_data_fifo_to_s04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_data_fifo_to_s04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_data_fifo_to_s04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_data_fifo_to_s04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_data_fifo_to_s04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_data_fifo_to_s04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_data_fifo_to_s04_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_data_fifo_to_s04_couplers_ARREADY : STD_LOGIC;
  signal s04_data_fifo_to_s04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_data_fifo_to_s04_couplers_ARVALID : STD_LOGIC;
  signal s04_data_fifo_to_s04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_data_fifo_to_s04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_data_fifo_to_s04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_data_fifo_to_s04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_data_fifo_to_s04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_data_fifo_to_s04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_data_fifo_to_s04_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_data_fifo_to_s04_couplers_AWREADY : STD_LOGIC;
  signal s04_data_fifo_to_s04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_data_fifo_to_s04_couplers_AWVALID : STD_LOGIC;
  signal s04_data_fifo_to_s04_couplers_BREADY : STD_LOGIC;
  signal s04_data_fifo_to_s04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_data_fifo_to_s04_couplers_BVALID : STD_LOGIC;
  signal s04_data_fifo_to_s04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_data_fifo_to_s04_couplers_RLAST : STD_LOGIC;
  signal s04_data_fifo_to_s04_couplers_RREADY : STD_LOGIC;
  signal s04_data_fifo_to_s04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_data_fifo_to_s04_couplers_RVALID : STD_LOGIC;
  signal s04_data_fifo_to_s04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_data_fifo_to_s04_couplers_WLAST : STD_LOGIC;
  signal s04_data_fifo_to_s04_couplers_WREADY : STD_LOGIC;
  signal s04_data_fifo_to_s04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_data_fifo_to_s04_couplers_WVALID : STD_LOGIC;
  signal NLW_s04_data_fifo_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s04_data_fifo_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1(0) <= M_ARESETN(0);
  M_AXI_araddr(31 downto 0) <= s04_data_fifo_to_s04_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s04_data_fifo_to_s04_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s04_data_fifo_to_s04_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s04_data_fifo_to_s04_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s04_data_fifo_to_s04_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s04_data_fifo_to_s04_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s04_data_fifo_to_s04_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s04_data_fifo_to_s04_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s04_data_fifo_to_s04_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s04_data_fifo_to_s04_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s04_data_fifo_to_s04_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s04_data_fifo_to_s04_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s04_data_fifo_to_s04_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s04_data_fifo_to_s04_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s04_data_fifo_to_s04_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s04_data_fifo_to_s04_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s04_data_fifo_to_s04_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s04_data_fifo_to_s04_couplers_AWVALID;
  M_AXI_bready <= s04_data_fifo_to_s04_couplers_BREADY;
  M_AXI_rready <= s04_data_fifo_to_s04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s04_data_fifo_to_s04_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s04_data_fifo_to_s04_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s04_data_fifo_to_s04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s04_data_fifo_to_s04_couplers_WVALID;
  S_AXI_arready <= s04_couplers_to_s04_data_fifo_ARREADY;
  S_AXI_awready <= s04_couplers_to_s04_data_fifo_AWREADY;
  S_AXI_bresp(1 downto 0) <= s04_couplers_to_s04_data_fifo_BRESP(1 downto 0);
  S_AXI_bvalid <= s04_couplers_to_s04_data_fifo_BVALID;
  S_AXI_rdata(31 downto 0) <= s04_couplers_to_s04_data_fifo_RDATA(31 downto 0);
  S_AXI_rlast <= s04_couplers_to_s04_data_fifo_RLAST;
  S_AXI_rresp(1 downto 0) <= s04_couplers_to_s04_data_fifo_RRESP(1 downto 0);
  S_AXI_rvalid <= s04_couplers_to_s04_data_fifo_RVALID;
  S_AXI_wready <= s04_couplers_to_s04_data_fifo_WREADY;
  s04_couplers_to_s04_data_fifo_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s04_couplers_to_s04_data_fifo_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s04_couplers_to_s04_data_fifo_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s04_couplers_to_s04_data_fifo_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s04_couplers_to_s04_data_fifo_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s04_couplers_to_s04_data_fifo_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s04_couplers_to_s04_data_fifo_ARVALID <= S_AXI_arvalid;
  s04_couplers_to_s04_data_fifo_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s04_couplers_to_s04_data_fifo_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s04_couplers_to_s04_data_fifo_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s04_couplers_to_s04_data_fifo_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s04_couplers_to_s04_data_fifo_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s04_couplers_to_s04_data_fifo_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s04_couplers_to_s04_data_fifo_AWVALID <= S_AXI_awvalid;
  s04_couplers_to_s04_data_fifo_BREADY <= S_AXI_bready;
  s04_couplers_to_s04_data_fifo_RREADY <= S_AXI_rready;
  s04_couplers_to_s04_data_fifo_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s04_couplers_to_s04_data_fifo_WLAST <= S_AXI_wlast;
  s04_couplers_to_s04_data_fifo_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s04_couplers_to_s04_data_fifo_WVALID <= S_AXI_wvalid;
  s04_data_fifo_to_s04_couplers_ARREADY <= M_AXI_arready;
  s04_data_fifo_to_s04_couplers_AWREADY <= M_AXI_awready;
  s04_data_fifo_to_s04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s04_data_fifo_to_s04_couplers_BVALID <= M_AXI_bvalid;
  s04_data_fifo_to_s04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s04_data_fifo_to_s04_couplers_RLAST <= M_AXI_rlast;
  s04_data_fifo_to_s04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s04_data_fifo_to_s04_couplers_RVALID <= M_AXI_rvalid;
  s04_data_fifo_to_s04_couplers_WREADY <= M_AXI_wready;
GND: unisim.vcomponents.GND
     port map (
      G => GND_1
    );
s04_data_fifo: component design_1_s04_data_fifo_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => s04_data_fifo_to_s04_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s04_data_fifo_to_s04_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s04_data_fifo_to_s04_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s04_data_fifo_to_s04_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => s04_data_fifo_to_s04_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s04_data_fifo_to_s04_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s04_data_fifo_to_s04_couplers_ARQOS(3 downto 0),
      m_axi_arready => s04_data_fifo_to_s04_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_s04_data_fifo_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => s04_data_fifo_to_s04_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => s04_data_fifo_to_s04_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => s04_data_fifo_to_s04_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s04_data_fifo_to_s04_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s04_data_fifo_to_s04_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s04_data_fifo_to_s04_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => s04_data_fifo_to_s04_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s04_data_fifo_to_s04_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s04_data_fifo_to_s04_couplers_AWQOS(3 downto 0),
      m_axi_awready => s04_data_fifo_to_s04_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_s04_data_fifo_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => s04_data_fifo_to_s04_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => s04_data_fifo_to_s04_couplers_AWVALID,
      m_axi_bready => s04_data_fifo_to_s04_couplers_BREADY,
      m_axi_bresp(1 downto 0) => s04_data_fifo_to_s04_couplers_BRESP(1 downto 0),
      m_axi_bvalid => s04_data_fifo_to_s04_couplers_BVALID,
      m_axi_rdata(31 downto 0) => s04_data_fifo_to_s04_couplers_RDATA(31 downto 0),
      m_axi_rlast => s04_data_fifo_to_s04_couplers_RLAST,
      m_axi_rready => s04_data_fifo_to_s04_couplers_RREADY,
      m_axi_rresp(1 downto 0) => s04_data_fifo_to_s04_couplers_RRESP(1 downto 0),
      m_axi_rvalid => s04_data_fifo_to_s04_couplers_RVALID,
      m_axi_wdata(31 downto 0) => s04_data_fifo_to_s04_couplers_WDATA(31 downto 0),
      m_axi_wlast => s04_data_fifo_to_s04_couplers_WLAST,
      m_axi_wready => s04_data_fifo_to_s04_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => s04_data_fifo_to_s04_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => s04_data_fifo_to_s04_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s04_couplers_to_s04_data_fifo_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s04_couplers_to_s04_data_fifo_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s04_couplers_to_s04_data_fifo_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s04_couplers_to_s04_data_fifo_ARLEN(7 downto 0),
      s_axi_arlock(0) => GND_1,
      s_axi_arprot(2 downto 0) => s04_couplers_to_s04_data_fifo_ARPROT(2 downto 0),
      s_axi_arqos(3) => GND_1,
      s_axi_arqos(2) => GND_1,
      s_axi_arqos(1) => GND_1,
      s_axi_arqos(0) => GND_1,
      s_axi_arready => s04_couplers_to_s04_data_fifo_ARREADY,
      s_axi_arregion(3) => GND_1,
      s_axi_arregion(2) => GND_1,
      s_axi_arregion(1) => GND_1,
      s_axi_arregion(0) => GND_1,
      s_axi_arsize(2 downto 0) => s04_couplers_to_s04_data_fifo_ARSIZE(2 downto 0),
      s_axi_arvalid => s04_couplers_to_s04_data_fifo_ARVALID,
      s_axi_awaddr(31 downto 0) => s04_couplers_to_s04_data_fifo_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s04_couplers_to_s04_data_fifo_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s04_couplers_to_s04_data_fifo_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s04_couplers_to_s04_data_fifo_AWLEN(7 downto 0),
      s_axi_awlock(0) => GND_1,
      s_axi_awprot(2 downto 0) => s04_couplers_to_s04_data_fifo_AWPROT(2 downto 0),
      s_axi_awqos(3) => GND_1,
      s_axi_awqos(2) => GND_1,
      s_axi_awqos(1) => GND_1,
      s_axi_awqos(0) => GND_1,
      s_axi_awready => s04_couplers_to_s04_data_fifo_AWREADY,
      s_axi_awregion(3) => GND_1,
      s_axi_awregion(2) => GND_1,
      s_axi_awregion(1) => GND_1,
      s_axi_awregion(0) => GND_1,
      s_axi_awsize(2 downto 0) => s04_couplers_to_s04_data_fifo_AWSIZE(2 downto 0),
      s_axi_awvalid => s04_couplers_to_s04_data_fifo_AWVALID,
      s_axi_bready => s04_couplers_to_s04_data_fifo_BREADY,
      s_axi_bresp(1 downto 0) => s04_couplers_to_s04_data_fifo_BRESP(1 downto 0),
      s_axi_bvalid => s04_couplers_to_s04_data_fifo_BVALID,
      s_axi_rdata(31 downto 0) => s04_couplers_to_s04_data_fifo_RDATA(31 downto 0),
      s_axi_rlast => s04_couplers_to_s04_data_fifo_RLAST,
      s_axi_rready => s04_couplers_to_s04_data_fifo_RREADY,
      s_axi_rresp(1 downto 0) => s04_couplers_to_s04_data_fifo_RRESP(1 downto 0),
      s_axi_rvalid => s04_couplers_to_s04_data_fifo_RVALID,
      s_axi_wdata(31 downto 0) => s04_couplers_to_s04_data_fifo_WDATA(31 downto 0),
      s_axi_wlast => s04_couplers_to_s04_data_fifo_WLAST,
      s_axi_wready => s04_couplers_to_s04_data_fifo_WREADY,
      s_axi_wstrb(3 downto 0) => s04_couplers_to_s04_data_fifo_WSTRB(3 downto 0),
      s_axi_wvalid => s04_couplers_to_s04_data_fifo_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mem_intercon_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    M01_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_arlock : out STD_LOGIC;
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    M01_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_awlock : out STD_LOGIC;
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_rlast : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wlast : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arlock : in STD_LOGIC;
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC;
    S03_ACLK : in STD_LOGIC;
    S03_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arready : out STD_LOGIC;
    S03_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arvalid : in STD_LOGIC;
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_rlast : out STD_LOGIC;
    S03_AXI_rready : in STD_LOGIC;
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rvalid : out STD_LOGIC;
    S04_ACLK : in STD_LOGIC;
    S04_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arready : out STD_LOGIC;
    S04_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arvalid : in STD_LOGIC;
    S04_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awready : out STD_LOGIC;
    S04_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awvalid : in STD_LOGIC;
    S04_AXI_bready : in STD_LOGIC;
    S04_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_bvalid : out STD_LOGIC;
    S04_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_rlast : out STD_LOGIC;
    S04_AXI_rready : in STD_LOGIC;
    S04_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_rvalid : out STD_LOGIC;
    S04_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_wlast : in STD_LOGIC;
    S04_AXI_wready : out STD_LOGIC;
    S04_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_wvalid : in STD_LOGIC
  );
end design_1_axi_mem_intercon_1;

architecture STRUCTURE of design_1_axi_mem_intercon_1 is
  component design_1_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xbar_1;
  signal GND_1 : STD_LOGIC;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S02_ACLK_1 : STD_LOGIC;
  signal S02_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S03_ACLK_1 : STD_LOGIC;
  signal S03_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S04_ACLK_1 : STD_LOGIC;
  signal S04_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VCC_1 : STD_LOGIC;
  signal axi_mem_intercon_ACLK_net : STD_LOGIC;
  signal axi_mem_intercon_ARESETN_net : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARLOCK : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s01_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s02_couplers_WVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s03_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s04_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_mem_intercon_ARADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_ARLOCK : STD_LOGIC;
  signal m01_couplers_to_axi_mem_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_ARREADY : STD_LOGIC;
  signal m01_couplers_to_axi_mem_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_ARVALID : STD_LOGIC;
  signal m01_couplers_to_axi_mem_intercon_AWADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_AWLOCK : STD_LOGIC;
  signal m01_couplers_to_axi_mem_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_AWREADY : STD_LOGIC;
  signal m01_couplers_to_axi_mem_intercon_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_AWVALID : STD_LOGIC;
  signal m01_couplers_to_axi_mem_intercon_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_BREADY : STD_LOGIC;
  signal m01_couplers_to_axi_mem_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_BVALID : STD_LOGIC;
  signal m01_couplers_to_axi_mem_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_RLAST : STD_LOGIC;
  signal m01_couplers_to_axi_mem_intercon_RREADY : STD_LOGIC;
  signal m01_couplers_to_axi_mem_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_RVALID : STD_LOGIC;
  signal m01_couplers_to_axi_mem_intercon_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_WLAST : STD_LOGIC;
  signal m01_couplers_to_axi_mem_intercon_WREADY : STD_LOGIC;
  signal m01_couplers_to_axi_mem_intercon_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_mem_intercon_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s02_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal s03_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s04_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s04_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal s04_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal s04_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s04_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal s04_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s04_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARID : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWID : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xbar_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_xbar_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xbar_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1(0) <= M00_ARESETN(0);
  M00_AXI_araddr(11 downto 0) <= m00_couplers_to_axi_mem_intercon_ARADDR(11 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0);
  M00_AXI_arid(2 downto 0) <= m00_couplers_to_axi_mem_intercon_ARID(2 downto 0);
  M00_AXI_arlen(7 downto 0) <= m00_couplers_to_axi_mem_intercon_ARLEN(7 downto 0);
  M00_AXI_arlock(0) <= m00_couplers_to_axi_mem_intercon_ARLOCK(0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_axi_mem_intercon_ARVALID(0);
  M00_AXI_awaddr(11 downto 0) <= m00_couplers_to_axi_mem_intercon_AWADDR(11 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0);
  M00_AXI_awid(2 downto 0) <= m00_couplers_to_axi_mem_intercon_AWID(2 downto 0);
  M00_AXI_awlen(7 downto 0) <= m00_couplers_to_axi_mem_intercon_AWLEN(7 downto 0);
  M00_AXI_awlock(0) <= m00_couplers_to_axi_mem_intercon_AWLOCK(0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_axi_mem_intercon_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_axi_mem_intercon_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_axi_mem_intercon_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_mem_intercon_WDATA(31 downto 0);
  M00_AXI_wlast(0) <= m00_couplers_to_axi_mem_intercon_WLAST(0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_axi_mem_intercon_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_axi_mem_intercon_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1(0) <= M01_ARESETN(0);
  M01_AXI_araddr(29 downto 0) <= m01_couplers_to_axi_mem_intercon_ARADDR(29 downto 0);
  M01_AXI_arburst(1 downto 0) <= m01_couplers_to_axi_mem_intercon_ARBURST(1 downto 0);
  M01_AXI_arcache(3 downto 0) <= m01_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0);
  M01_AXI_arid(2 downto 0) <= m01_couplers_to_axi_mem_intercon_ARID(2 downto 0);
  M01_AXI_arlen(7 downto 0) <= m01_couplers_to_axi_mem_intercon_ARLEN(7 downto 0);
  M01_AXI_arlock <= m01_couplers_to_axi_mem_intercon_ARLOCK;
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_axi_mem_intercon_ARPROT(2 downto 0);
  M01_AXI_arqos(3 downto 0) <= m01_couplers_to_axi_mem_intercon_ARQOS(3 downto 0);
  M01_AXI_arsize(2 downto 0) <= m01_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_axi_mem_intercon_ARVALID;
  M01_AXI_awaddr(29 downto 0) <= m01_couplers_to_axi_mem_intercon_AWADDR(29 downto 0);
  M01_AXI_awburst(1 downto 0) <= m01_couplers_to_axi_mem_intercon_AWBURST(1 downto 0);
  M01_AXI_awcache(3 downto 0) <= m01_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0);
  M01_AXI_awid(2 downto 0) <= m01_couplers_to_axi_mem_intercon_AWID(2 downto 0);
  M01_AXI_awlen(7 downto 0) <= m01_couplers_to_axi_mem_intercon_AWLEN(7 downto 0);
  M01_AXI_awlock <= m01_couplers_to_axi_mem_intercon_AWLOCK;
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_axi_mem_intercon_AWPROT(2 downto 0);
  M01_AXI_awqos(3 downto 0) <= m01_couplers_to_axi_mem_intercon_AWQOS(3 downto 0);
  M01_AXI_awsize(2 downto 0) <= m01_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_axi_mem_intercon_AWVALID;
  M01_AXI_bready <= m01_couplers_to_axi_mem_intercon_BREADY;
  M01_AXI_rready <= m01_couplers_to_axi_mem_intercon_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_axi_mem_intercon_WDATA(31 downto 0);
  M01_AXI_wlast <= m01_couplers_to_axi_mem_intercon_WLAST;
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_axi_mem_intercon_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_axi_mem_intercon_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1(0) <= S00_ARESETN(0);
  S00_AXI_arready <= axi_mem_intercon_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_mem_intercon_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_mem_intercon_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rlast <= axi_mem_intercon_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_mem_intercon_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_mem_intercon_to_s00_couplers_WREADY;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1(0) <= S01_ARESETN(0);
  S01_AXI_arready <= axi_mem_intercon_to_s01_couplers_ARREADY;
  S01_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rlast <= axi_mem_intercon_to_s01_couplers_RLAST;
  S01_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid <= axi_mem_intercon_to_s01_couplers_RVALID;
  S02_ACLK_1 <= S02_ACLK;
  S02_ARESETN_1(0) <= S02_ARESETN(0);
  S02_AXI_awready <= axi_mem_intercon_to_s02_couplers_AWREADY;
  S02_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s02_couplers_BRESP(1 downto 0);
  S02_AXI_bvalid <= axi_mem_intercon_to_s02_couplers_BVALID;
  S02_AXI_wready <= axi_mem_intercon_to_s02_couplers_WREADY;
  S03_ACLK_1 <= S03_ACLK;
  S03_ARESETN_1(0) <= S03_ARESETN(0);
  S03_AXI_arready <= axi_mem_intercon_to_s03_couplers_ARREADY;
  S03_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s03_couplers_RDATA(31 downto 0);
  S03_AXI_rlast <= axi_mem_intercon_to_s03_couplers_RLAST;
  S03_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s03_couplers_RRESP(1 downto 0);
  S03_AXI_rvalid <= axi_mem_intercon_to_s03_couplers_RVALID;
  S04_ACLK_1 <= S04_ACLK;
  S04_ARESETN_1(0) <= S04_ARESETN(0);
  S04_AXI_arready <= axi_mem_intercon_to_s04_couplers_ARREADY;
  S04_AXI_awready <= axi_mem_intercon_to_s04_couplers_AWREADY;
  S04_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s04_couplers_BRESP(1 downto 0);
  S04_AXI_bvalid <= axi_mem_intercon_to_s04_couplers_BVALID;
  S04_AXI_rdata(31 downto 0) <= axi_mem_intercon_to_s04_couplers_RDATA(31 downto 0);
  S04_AXI_rlast <= axi_mem_intercon_to_s04_couplers_RLAST;
  S04_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s04_couplers_RRESP(1 downto 0);
  S04_AXI_rvalid <= axi_mem_intercon_to_s04_couplers_RVALID;
  S04_AXI_wready <= axi_mem_intercon_to_s04_couplers_WREADY;
  axi_mem_intercon_ACLK_net <= ACLK;
  axi_mem_intercon_ARESETN_net(0) <= ARESETN(0);
  axi_mem_intercon_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s00_couplers_ARLOCK <= S00_AXI_arlock;
  axi_mem_intercon_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_mem_intercon_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_mem_intercon_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s00_couplers_AWLOCK <= S00_AXI_awlock;
  axi_mem_intercon_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_mem_intercon_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_mem_intercon_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_mem_intercon_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_mem_intercon_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_mem_intercon_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  axi_mem_intercon_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s01_couplers_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s01_couplers_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s01_couplers_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s01_couplers_ARLOCK <= S01_AXI_arlock;
  axi_mem_intercon_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s01_couplers_ARQOS(3 downto 0) <= S01_AXI_arqos(3 downto 0);
  axi_mem_intercon_to_s01_couplers_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  axi_mem_intercon_to_s01_couplers_RREADY <= S01_AXI_rready;
  axi_mem_intercon_to_s02_couplers_AWADDR(31 downto 0) <= S02_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s02_couplers_AWBURST(1 downto 0) <= S02_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s02_couplers_AWCACHE(3 downto 0) <= S02_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s02_couplers_AWLEN(7 downto 0) <= S02_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s02_couplers_AWPROT(2 downto 0) <= S02_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s02_couplers_AWSIZE(2 downto 0) <= S02_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s02_couplers_AWVALID <= S02_AXI_awvalid;
  axi_mem_intercon_to_s02_couplers_BREADY <= S02_AXI_bready;
  axi_mem_intercon_to_s02_couplers_WDATA(31 downto 0) <= S02_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s02_couplers_WLAST <= S02_AXI_wlast;
  axi_mem_intercon_to_s02_couplers_WSTRB(3 downto 0) <= S02_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s02_couplers_WVALID <= S02_AXI_wvalid;
  axi_mem_intercon_to_s03_couplers_ARADDR(31 downto 0) <= S03_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s03_couplers_ARBURST(1 downto 0) <= S03_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s03_couplers_ARCACHE(3 downto 0) <= S03_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s03_couplers_ARLEN(7 downto 0) <= S03_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s03_couplers_ARPROT(2 downto 0) <= S03_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s03_couplers_ARSIZE(2 downto 0) <= S03_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s03_couplers_ARVALID <= S03_AXI_arvalid;
  axi_mem_intercon_to_s03_couplers_RREADY <= S03_AXI_rready;
  axi_mem_intercon_to_s04_couplers_ARADDR(31 downto 0) <= S04_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s04_couplers_ARBURST(1 downto 0) <= S04_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s04_couplers_ARCACHE(3 downto 0) <= S04_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s04_couplers_ARLEN(7 downto 0) <= S04_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s04_couplers_ARPROT(2 downto 0) <= S04_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s04_couplers_ARSIZE(2 downto 0) <= S04_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s04_couplers_ARVALID <= S04_AXI_arvalid;
  axi_mem_intercon_to_s04_couplers_AWADDR(31 downto 0) <= S04_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s04_couplers_AWBURST(1 downto 0) <= S04_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s04_couplers_AWCACHE(3 downto 0) <= S04_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s04_couplers_AWLEN(7 downto 0) <= S04_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s04_couplers_AWPROT(2 downto 0) <= S04_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s04_couplers_AWSIZE(2 downto 0) <= S04_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s04_couplers_AWVALID <= S04_AXI_awvalid;
  axi_mem_intercon_to_s04_couplers_BREADY <= S04_AXI_bready;
  axi_mem_intercon_to_s04_couplers_RREADY <= S04_AXI_rready;
  axi_mem_intercon_to_s04_couplers_WDATA(31 downto 0) <= S04_AXI_wdata(31 downto 0);
  axi_mem_intercon_to_s04_couplers_WLAST <= S04_AXI_wlast;
  axi_mem_intercon_to_s04_couplers_WSTRB(3 downto 0) <= S04_AXI_wstrb(3 downto 0);
  axi_mem_intercon_to_s04_couplers_WVALID <= S04_AXI_wvalid;
  m00_couplers_to_axi_mem_intercon_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_axi_mem_intercon_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_axi_mem_intercon_BID(2 downto 0) <= M00_AXI_bid(2 downto 0);
  m00_couplers_to_axi_mem_intercon_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_mem_intercon_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_axi_mem_intercon_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_mem_intercon_RID(2 downto 0) <= M00_AXI_rid(2 downto 0);
  m00_couplers_to_axi_mem_intercon_RLAST(0) <= M00_AXI_rlast(0);
  m00_couplers_to_axi_mem_intercon_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_mem_intercon_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_axi_mem_intercon_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_axi_mem_intercon_ARREADY <= M01_AXI_arready;
  m01_couplers_to_axi_mem_intercon_AWREADY <= M01_AXI_awready;
  m01_couplers_to_axi_mem_intercon_BID(2 downto 0) <= M01_AXI_bid(2 downto 0);
  m01_couplers_to_axi_mem_intercon_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_axi_mem_intercon_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_axi_mem_intercon_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_axi_mem_intercon_RID(2 downto 0) <= M01_AXI_rid(2 downto 0);
  m01_couplers_to_axi_mem_intercon_RLAST <= M01_AXI_rlast;
  m01_couplers_to_axi_mem_intercon_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_axi_mem_intercon_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_axi_mem_intercon_WREADY <= M01_AXI_wready;
GND: unisim.vcomponents.GND
     port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => VCC_1
    );
m00_couplers: entity work.m00_couplers_imp_1R706YB
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN(0) => M00_ARESETN_1(0),
      M_AXI_araddr(11 downto 0) => m00_couplers_to_axi_mem_intercon_ARADDR(11 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0),
      M_AXI_arid(2 downto 0) => m00_couplers_to_axi_mem_intercon_ARID(2 downto 0),
      M_AXI_arlen(7 downto 0) => m00_couplers_to_axi_mem_intercon_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m00_couplers_to_axi_mem_intercon_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0),
      M_AXI_arready(0) => m00_couplers_to_axi_mem_intercon_ARREADY(0),
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => m00_couplers_to_axi_mem_intercon_ARVALID(0),
      M_AXI_awaddr(11 downto 0) => m00_couplers_to_axi_mem_intercon_AWADDR(11 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0),
      M_AXI_awid(2 downto 0) => m00_couplers_to_axi_mem_intercon_AWID(2 downto 0),
      M_AXI_awlen(7 downto 0) => m00_couplers_to_axi_mem_intercon_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m00_couplers_to_axi_mem_intercon_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0),
      M_AXI_awready(0) => m00_couplers_to_axi_mem_intercon_AWREADY(0),
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => m00_couplers_to_axi_mem_intercon_AWVALID(0),
      M_AXI_bid(2 downto 0) => m00_couplers_to_axi_mem_intercon_BID(2 downto 0),
      M_AXI_bready(0) => m00_couplers_to_axi_mem_intercon_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_mem_intercon_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_axi_mem_intercon_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_mem_intercon_RDATA(31 downto 0),
      M_AXI_rid(2 downto 0) => m00_couplers_to_axi_mem_intercon_RID(2 downto 0),
      M_AXI_rlast(0) => m00_couplers_to_axi_mem_intercon_RLAST(0),
      M_AXI_rready(0) => m00_couplers_to_axi_mem_intercon_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_mem_intercon_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_axi_mem_intercon_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_mem_intercon_WDATA(31 downto 0),
      M_AXI_wlast(0) => m00_couplers_to_axi_mem_intercon_WLAST(0),
      M_AXI_wready(0) => m00_couplers_to_axi_mem_intercon_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_axi_mem_intercon_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_axi_mem_intercon_WVALID(0),
      S_ACLK => axi_mem_intercon_ACLK_net,
      S_ARESETN(0) => axi_mem_intercon_ARESETN_net(0),
      S_AXI_araddr(11 downto 0) => xbar_to_m00_couplers_ARADDR(11 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(2 downto 0) => xbar_to_m00_couplers_ARID(2 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(11 downto 0) => xbar_to_m00_couplers_AWADDR(11 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(2 downto 0) => xbar_to_m00_couplers_AWID(2 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(2 downto 0) => xbar_to_m00_couplers_BID(2 downto 0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => xbar_to_m00_couplers_RID(2 downto 0),
      S_AXI_rlast(0) => xbar_to_m00_couplers_RLAST(0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_3HM21E
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN(0) => M01_ARESETN_1(0),
      M_AXI_araddr(29 downto 0) => m01_couplers_to_axi_mem_intercon_ARADDR(29 downto 0),
      M_AXI_arburst(1 downto 0) => m01_couplers_to_axi_mem_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m01_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0),
      M_AXI_arid(2 downto 0) => m01_couplers_to_axi_mem_intercon_ARID(2 downto 0),
      M_AXI_arlen(7 downto 0) => m01_couplers_to_axi_mem_intercon_ARLEN(7 downto 0),
      M_AXI_arlock => m01_couplers_to_axi_mem_intercon_ARLOCK,
      M_AXI_arprot(2 downto 0) => m01_couplers_to_axi_mem_intercon_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m01_couplers_to_axi_mem_intercon_ARQOS(3 downto 0),
      M_AXI_arready => m01_couplers_to_axi_mem_intercon_ARREADY,
      M_AXI_arsize(2 downto 0) => m01_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid => m01_couplers_to_axi_mem_intercon_ARVALID,
      M_AXI_awaddr(29 downto 0) => m01_couplers_to_axi_mem_intercon_AWADDR(29 downto 0),
      M_AXI_awburst(1 downto 0) => m01_couplers_to_axi_mem_intercon_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m01_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0),
      M_AXI_awid(2 downto 0) => m01_couplers_to_axi_mem_intercon_AWID(2 downto 0),
      M_AXI_awlen(7 downto 0) => m01_couplers_to_axi_mem_intercon_AWLEN(7 downto 0),
      M_AXI_awlock => m01_couplers_to_axi_mem_intercon_AWLOCK,
      M_AXI_awprot(2 downto 0) => m01_couplers_to_axi_mem_intercon_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m01_couplers_to_axi_mem_intercon_AWQOS(3 downto 0),
      M_AXI_awready => m01_couplers_to_axi_mem_intercon_AWREADY,
      M_AXI_awsize(2 downto 0) => m01_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0),
      M_AXI_awvalid => m01_couplers_to_axi_mem_intercon_AWVALID,
      M_AXI_bid(2 downto 0) => m01_couplers_to_axi_mem_intercon_BID(2 downto 0),
      M_AXI_bready => m01_couplers_to_axi_mem_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_axi_mem_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_axi_mem_intercon_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_axi_mem_intercon_RDATA(31 downto 0),
      M_AXI_rid(2 downto 0) => m01_couplers_to_axi_mem_intercon_RID(2 downto 0),
      M_AXI_rlast => m01_couplers_to_axi_mem_intercon_RLAST,
      M_AXI_rready => m01_couplers_to_axi_mem_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_axi_mem_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_axi_mem_intercon_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_axi_mem_intercon_WDATA(31 downto 0),
      M_AXI_wlast => m01_couplers_to_axi_mem_intercon_WLAST,
      M_AXI_wready => m01_couplers_to_axi_mem_intercon_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_axi_mem_intercon_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_axi_mem_intercon_WVALID,
      S_ACLK => axi_mem_intercon_ACLK_net,
      S_ARESETN(0) => axi_mem_intercon_ARESETN_net(0),
      S_AXI_araddr(29 downto 0) => xbar_to_m01_couplers_ARADDR(61 downto 32),
      S_AXI_arburst(1 downto 0) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      S_AXI_arcache(3 downto 0) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      S_AXI_arid(2 downto 0) => xbar_to_m01_couplers_ARID(5 downto 3),
      S_AXI_arlen(7 downto 0) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      S_AXI_arlock => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arqos(3 downto 0) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(29 downto 0) => xbar_to_m01_couplers_AWADDR(61 downto 32),
      S_AXI_awburst(1 downto 0) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      S_AXI_awcache(3 downto 0) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      S_AXI_awid(2 downto 0) => xbar_to_m01_couplers_AWID(5 downto 3),
      S_AXI_awlen(7 downto 0) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      S_AXI_awlock => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awqos(3 downto 0) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bid(2 downto 0) => xbar_to_m01_couplers_BID(2 downto 0),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => xbar_to_m01_couplers_RID(2 downto 0),
      S_AXI_rlast => xbar_to_m01_couplers_RLAST,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wlast => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
s00_couplers: entity work.s00_couplers_imp_7HNO1D
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN(0) => axi_mem_intercon_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN(0) => S00_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => axi_mem_intercon_to_s00_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_mem_intercon_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_mem_intercon_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_mem_intercon_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => axi_mem_intercon_to_s00_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_mem_intercon_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_mem_intercon_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_mem_intercon_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_mem_intercon_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rlast => axi_mem_intercon_to_s00_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_mem_intercon_to_s00_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_mem_intercon_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_1W60HW0
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN(0) => axi_mem_intercon_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s01_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_rdata(31 downto 0) => s01_couplers_to_xbar_RDATA(63 downto 32),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      S_ACLK => S01_ACLK_1,
      S_ARESETN(0) => S01_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s01_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s01_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s01_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => axi_mem_intercon_to_s01_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_mem_intercon_to_s01_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_mem_intercon_to_s01_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s01_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_mem_intercon_to_s01_couplers_ARVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rlast => axi_mem_intercon_to_s01_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s01_couplers_RVALID
    );
s02_couplers: entity work.s02_couplers_imp_8NCF02
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN(0) => axi_mem_intercon_ARESETN_net(0),
      M_AXI_awaddr(31 downto 0) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s02_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s02_couplers_to_xbar_AWREADY(2),
      M_AXI_awsize(2 downto 0) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s02_couplers_to_xbar_AWVALID,
      M_AXI_bready => s02_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s02_couplers_to_xbar_BRESP(5 downto 4),
      M_AXI_bvalid => s02_couplers_to_xbar_BVALID(2),
      M_AXI_wdata(31 downto 0) => s02_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s02_couplers_to_xbar_WLAST,
      M_AXI_wready => s02_couplers_to_xbar_WREADY(2),
      M_AXI_wstrb(3 downto 0) => s02_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s02_couplers_to_xbar_WVALID,
      S_ACLK => S02_ACLK_1,
      S_ARESETN(0) => S02_ARESETN_1(0),
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s02_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s02_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s02_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s02_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s02_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_mem_intercon_to_s02_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s02_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_mem_intercon_to_s02_couplers_AWVALID,
      S_AXI_bready => axi_mem_intercon_to_s02_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s02_couplers_BVALID,
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s02_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_mem_intercon_to_s02_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s02_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_mem_intercon_to_s02_couplers_WVALID
    );
s03_couplers: entity work.s03_couplers_imp_1UQ1PUB
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN(0) => axi_mem_intercon_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s03_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s03_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s03_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s03_couplers_to_xbar_ARREADY(3),
      M_AXI_arsize(2 downto 0) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s03_couplers_to_xbar_ARVALID,
      M_AXI_rdata(31 downto 0) => s03_couplers_to_xbar_RDATA(127 downto 96),
      M_AXI_rlast => s03_couplers_to_xbar_RLAST(3),
      M_AXI_rready => s03_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s03_couplers_to_xbar_RRESP(7 downto 6),
      M_AXI_rvalid => s03_couplers_to_xbar_RVALID(3),
      S_ACLK => S03_ACLK_1,
      S_ARESETN(0) => S03_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s03_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s03_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s03_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s03_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s03_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_mem_intercon_to_s03_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s03_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_mem_intercon_to_s03_couplers_ARVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s03_couplers_RDATA(31 downto 0),
      S_AXI_rlast => axi_mem_intercon_to_s03_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s03_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s03_couplers_RVALID
    );
s04_couplers: entity work.s04_couplers_imp_4T8GAF
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN(0) => axi_mem_intercon_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s04_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s04_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s04_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s04_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s04_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s04_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s04_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s04_couplers_to_xbar_ARREADY(4),
      M_AXI_arsize(2 downto 0) => s04_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s04_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s04_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s04_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s04_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s04_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s04_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s04_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s04_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s04_couplers_to_xbar_AWREADY(4),
      M_AXI_awsize(2 downto 0) => s04_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s04_couplers_to_xbar_AWVALID,
      M_AXI_bready => s04_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s04_couplers_to_xbar_BRESP(9 downto 8),
      M_AXI_bvalid => s04_couplers_to_xbar_BVALID(4),
      M_AXI_rdata(31 downto 0) => s04_couplers_to_xbar_RDATA(159 downto 128),
      M_AXI_rlast => s04_couplers_to_xbar_RLAST(4),
      M_AXI_rready => s04_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s04_couplers_to_xbar_RRESP(9 downto 8),
      M_AXI_rvalid => s04_couplers_to_xbar_RVALID(4),
      M_AXI_wdata(31 downto 0) => s04_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s04_couplers_to_xbar_WLAST,
      M_AXI_wready => s04_couplers_to_xbar_WREADY(4),
      M_AXI_wstrb(3 downto 0) => s04_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s04_couplers_to_xbar_WVALID,
      S_ACLK => S04_ACLK_1,
      S_ARESETN(0) => S04_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s04_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s04_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s04_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s04_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s04_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_mem_intercon_to_s04_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s04_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_mem_intercon_to_s04_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s04_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s04_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s04_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s04_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s04_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_mem_intercon_to_s04_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s04_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_mem_intercon_to_s04_couplers_AWVALID,
      S_AXI_bready => axi_mem_intercon_to_s04_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_mem_intercon_to_s04_couplers_RDATA(31 downto 0),
      S_AXI_rlast => axi_mem_intercon_to_s04_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s04_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_mem_intercon_to_s04_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_mem_intercon_to_s04_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_mem_intercon_to_s04_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_mem_intercon_to_s04_couplers_WVALID
    );
xbar: component design_1_xbar_1
     port map (
      aclk => axi_mem_intercon_ACLK_net,
      aresetn => axi_mem_intercon_ARESETN_net(0),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(5 downto 3) => xbar_to_m01_couplers_ARID(5 downto 3),
      m_axi_arid(2 downto 0) => xbar_to_m00_couplers_ARID(2 downto 0),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(7 downto 4) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      m_axi_arqos(3 downto 0) => NLW_xbar_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arregion(7 downto 0) => NLW_xbar_m_axi_arregion_UNCONNECTED(7 downto 0),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(5 downto 3) => xbar_to_m01_couplers_AWID(5 downto 3),
      m_axi_awid(2 downto 0) => xbar_to_m00_couplers_AWID(2 downto 0),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(7 downto 4) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      m_axi_awqos(3 downto 0) => NLW_xbar_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awregion(7 downto 0) => NLW_xbar_m_axi_awregion_UNCONNECTED(7 downto 0),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(5 downto 3) => xbar_to_m01_couplers_BID(2 downto 0),
      m_axi_bid(2 downto 0) => xbar_to_m00_couplers_BID(2 downto 0),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(5 downto 3) => xbar_to_m01_couplers_RID(2 downto 0),
      m_axi_rid(2 downto 0) => xbar_to_m00_couplers_RID(2 downto 0),
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST(0),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(159 downto 128) => s04_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(127 downto 96) => s03_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(95) => GND_1,
      s_axi_araddr(94) => GND_1,
      s_axi_araddr(93) => GND_1,
      s_axi_araddr(92) => GND_1,
      s_axi_araddr(91) => GND_1,
      s_axi_araddr(90) => GND_1,
      s_axi_araddr(89) => GND_1,
      s_axi_araddr(88) => GND_1,
      s_axi_araddr(87) => GND_1,
      s_axi_araddr(86) => GND_1,
      s_axi_araddr(85) => GND_1,
      s_axi_araddr(84) => GND_1,
      s_axi_araddr(83) => GND_1,
      s_axi_araddr(82) => GND_1,
      s_axi_araddr(81) => GND_1,
      s_axi_araddr(80) => GND_1,
      s_axi_araddr(79) => GND_1,
      s_axi_araddr(78) => GND_1,
      s_axi_araddr(77) => GND_1,
      s_axi_araddr(76) => GND_1,
      s_axi_araddr(75) => GND_1,
      s_axi_araddr(74) => GND_1,
      s_axi_araddr(73) => GND_1,
      s_axi_araddr(72) => GND_1,
      s_axi_araddr(71) => GND_1,
      s_axi_araddr(70) => GND_1,
      s_axi_araddr(69) => GND_1,
      s_axi_araddr(68) => GND_1,
      s_axi_araddr(67) => GND_1,
      s_axi_araddr(66) => GND_1,
      s_axi_araddr(65) => GND_1,
      s_axi_araddr(64) => GND_1,
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(9 downto 8) => s04_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(7 downto 6) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(5) => GND_1,
      s_axi_arburst(4) => GND_1,
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(19 downto 16) => s04_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(15 downto 12) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(11) => GND_1,
      s_axi_arcache(10) => GND_1,
      s_axi_arcache(9) => GND_1,
      s_axi_arcache(8) => GND_1,
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(14) => GND_1,
      s_axi_arid(13) => GND_1,
      s_axi_arid(12) => GND_1,
      s_axi_arid(11) => GND_1,
      s_axi_arid(10) => GND_1,
      s_axi_arid(9) => GND_1,
      s_axi_arid(8) => GND_1,
      s_axi_arid(7) => GND_1,
      s_axi_arid(6) => GND_1,
      s_axi_arid(5) => GND_1,
      s_axi_arid(4) => GND_1,
      s_axi_arid(3) => GND_1,
      s_axi_arid(2) => GND_1,
      s_axi_arid(1) => GND_1,
      s_axi_arid(0) => GND_1,
      s_axi_arlen(39 downto 32) => s04_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(31 downto 24) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(23) => GND_1,
      s_axi_arlen(22) => GND_1,
      s_axi_arlen(21) => GND_1,
      s_axi_arlen(20) => GND_1,
      s_axi_arlen(19) => GND_1,
      s_axi_arlen(18) => GND_1,
      s_axi_arlen(17) => GND_1,
      s_axi_arlen(16) => VCC_1,
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(4) => s04_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(3) => s03_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(2) => GND_1,
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(14 downto 12) => s04_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(11 downto 9) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(8) => GND_1,
      s_axi_arprot(7) => GND_1,
      s_axi_arprot(6) => GND_1,
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(19 downto 16) => s04_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(15 downto 12) => s03_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(11) => GND_1,
      s_axi_arqos(10) => GND_1,
      s_axi_arqos(9) => GND_1,
      s_axi_arqos(8) => GND_1,
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(4) => s04_couplers_to_xbar_ARREADY(4),
      s_axi_arready(3) => s03_couplers_to_xbar_ARREADY(3),
      s_axi_arready(2) => NLW_xbar_s_axi_arready_UNCONNECTED(2),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(14 downto 12) => s04_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(11 downto 9) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(8) => GND_1,
      s_axi_arsize(7) => GND_1,
      s_axi_arsize(6) => GND_1,
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(4) => s04_couplers_to_xbar_ARVALID,
      s_axi_arvalid(3) => s03_couplers_to_xbar_ARVALID,
      s_axi_arvalid(2) => GND_1,
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(159 downto 128) => s04_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(127) => GND_1,
      s_axi_awaddr(126) => GND_1,
      s_axi_awaddr(125) => GND_1,
      s_axi_awaddr(124) => GND_1,
      s_axi_awaddr(123) => GND_1,
      s_axi_awaddr(122) => GND_1,
      s_axi_awaddr(121) => GND_1,
      s_axi_awaddr(120) => GND_1,
      s_axi_awaddr(119) => GND_1,
      s_axi_awaddr(118) => GND_1,
      s_axi_awaddr(117) => GND_1,
      s_axi_awaddr(116) => GND_1,
      s_axi_awaddr(115) => GND_1,
      s_axi_awaddr(114) => GND_1,
      s_axi_awaddr(113) => GND_1,
      s_axi_awaddr(112) => GND_1,
      s_axi_awaddr(111) => GND_1,
      s_axi_awaddr(110) => GND_1,
      s_axi_awaddr(109) => GND_1,
      s_axi_awaddr(108) => GND_1,
      s_axi_awaddr(107) => GND_1,
      s_axi_awaddr(106) => GND_1,
      s_axi_awaddr(105) => GND_1,
      s_axi_awaddr(104) => GND_1,
      s_axi_awaddr(103) => GND_1,
      s_axi_awaddr(102) => GND_1,
      s_axi_awaddr(101) => GND_1,
      s_axi_awaddr(100) => GND_1,
      s_axi_awaddr(99) => GND_1,
      s_axi_awaddr(98) => GND_1,
      s_axi_awaddr(97) => GND_1,
      s_axi_awaddr(96) => GND_1,
      s_axi_awaddr(95 downto 64) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(63) => GND_1,
      s_axi_awaddr(62) => GND_1,
      s_axi_awaddr(61) => GND_1,
      s_axi_awaddr(60) => GND_1,
      s_axi_awaddr(59) => GND_1,
      s_axi_awaddr(58) => GND_1,
      s_axi_awaddr(57) => GND_1,
      s_axi_awaddr(56) => GND_1,
      s_axi_awaddr(55) => GND_1,
      s_axi_awaddr(54) => GND_1,
      s_axi_awaddr(53) => GND_1,
      s_axi_awaddr(52) => GND_1,
      s_axi_awaddr(51) => GND_1,
      s_axi_awaddr(50) => GND_1,
      s_axi_awaddr(49) => GND_1,
      s_axi_awaddr(48) => GND_1,
      s_axi_awaddr(47) => GND_1,
      s_axi_awaddr(46) => GND_1,
      s_axi_awaddr(45) => GND_1,
      s_axi_awaddr(44) => GND_1,
      s_axi_awaddr(43) => GND_1,
      s_axi_awaddr(42) => GND_1,
      s_axi_awaddr(41) => GND_1,
      s_axi_awaddr(40) => GND_1,
      s_axi_awaddr(39) => GND_1,
      s_axi_awaddr(38) => GND_1,
      s_axi_awaddr(37) => GND_1,
      s_axi_awaddr(36) => GND_1,
      s_axi_awaddr(35) => GND_1,
      s_axi_awaddr(34) => GND_1,
      s_axi_awaddr(33) => GND_1,
      s_axi_awaddr(32) => GND_1,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(9 downto 8) => s04_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(7) => GND_1,
      s_axi_awburst(6) => GND_1,
      s_axi_awburst(5 downto 4) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(3) => GND_1,
      s_axi_awburst(2) => GND_1,
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(19 downto 16) => s04_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(15) => GND_1,
      s_axi_awcache(14) => GND_1,
      s_axi_awcache(13) => GND_1,
      s_axi_awcache(12) => GND_1,
      s_axi_awcache(11 downto 8) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(7) => GND_1,
      s_axi_awcache(6) => GND_1,
      s_axi_awcache(5) => GND_1,
      s_axi_awcache(4) => GND_1,
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(14) => GND_1,
      s_axi_awid(13) => GND_1,
      s_axi_awid(12) => GND_1,
      s_axi_awid(11) => GND_1,
      s_axi_awid(10) => GND_1,
      s_axi_awid(9) => GND_1,
      s_axi_awid(8) => GND_1,
      s_axi_awid(7) => GND_1,
      s_axi_awid(6) => GND_1,
      s_axi_awid(5) => GND_1,
      s_axi_awid(4) => GND_1,
      s_axi_awid(3) => GND_1,
      s_axi_awid(2) => GND_1,
      s_axi_awid(1) => GND_1,
      s_axi_awid(0) => GND_1,
      s_axi_awlen(39 downto 32) => s04_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(31) => GND_1,
      s_axi_awlen(30) => GND_1,
      s_axi_awlen(29) => GND_1,
      s_axi_awlen(28) => GND_1,
      s_axi_awlen(27) => GND_1,
      s_axi_awlen(26) => GND_1,
      s_axi_awlen(25) => GND_1,
      s_axi_awlen(24) => GND_1,
      s_axi_awlen(23 downto 16) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(15) => GND_1,
      s_axi_awlen(14) => GND_1,
      s_axi_awlen(13) => GND_1,
      s_axi_awlen(12) => GND_1,
      s_axi_awlen(11) => GND_1,
      s_axi_awlen(10) => GND_1,
      s_axi_awlen(9) => GND_1,
      s_axi_awlen(8) => GND_1,
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(4) => s04_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(3) => GND_1,
      s_axi_awlock(2) => s02_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(1) => GND_1,
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(14 downto 12) => s04_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(11) => GND_1,
      s_axi_awprot(10) => GND_1,
      s_axi_awprot(9) => GND_1,
      s_axi_awprot(8 downto 6) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(5) => GND_1,
      s_axi_awprot(4) => GND_1,
      s_axi_awprot(3) => GND_1,
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(19 downto 16) => s04_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(15) => GND_1,
      s_axi_awqos(14) => GND_1,
      s_axi_awqos(13) => GND_1,
      s_axi_awqos(12) => GND_1,
      s_axi_awqos(11 downto 8) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(7) => GND_1,
      s_axi_awqos(6) => GND_1,
      s_axi_awqos(5) => GND_1,
      s_axi_awqos(4) => GND_1,
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(4) => s04_couplers_to_xbar_AWREADY(4),
      s_axi_awready(3) => NLW_xbar_s_axi_awready_UNCONNECTED(3),
      s_axi_awready(2) => s02_couplers_to_xbar_AWREADY(2),
      s_axi_awready(1) => NLW_xbar_s_axi_awready_UNCONNECTED(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(14 downto 12) => s04_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(11) => GND_1,
      s_axi_awsize(10) => GND_1,
      s_axi_awsize(9) => GND_1,
      s_axi_awsize(8 downto 6) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(5) => GND_1,
      s_axi_awsize(4) => GND_1,
      s_axi_awsize(3) => GND_1,
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(4) => s04_couplers_to_xbar_AWVALID,
      s_axi_awvalid(3) => GND_1,
      s_axi_awvalid(2) => s02_couplers_to_xbar_AWVALID,
      s_axi_awvalid(1) => GND_1,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(14 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(14 downto 0),
      s_axi_bready(4) => s04_couplers_to_xbar_BREADY,
      s_axi_bready(3) => GND_1,
      s_axi_bready(2) => s02_couplers_to_xbar_BREADY,
      s_axi_bready(1) => GND_1,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(9 downto 8) => s04_couplers_to_xbar_BRESP(9 downto 8),
      s_axi_bresp(7 downto 6) => NLW_xbar_s_axi_bresp_UNCONNECTED(7 downto 6),
      s_axi_bresp(5 downto 4) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bresp(3 downto 2) => NLW_xbar_s_axi_bresp_UNCONNECTED(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(4) => s04_couplers_to_xbar_BVALID(4),
      s_axi_bvalid(3) => NLW_xbar_s_axi_bvalid_UNCONNECTED(3),
      s_axi_bvalid(2) => s02_couplers_to_xbar_BVALID(2),
      s_axi_bvalid(1) => NLW_xbar_s_axi_bvalid_UNCONNECTED(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(159 downto 128) => s04_couplers_to_xbar_RDATA(159 downto 128),
      s_axi_rdata(127 downto 96) => s03_couplers_to_xbar_RDATA(127 downto 96),
      s_axi_rdata(95 downto 64) => NLW_xbar_s_axi_rdata_UNCONNECTED(95 downto 64),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(14 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(14 downto 0),
      s_axi_rlast(4) => s04_couplers_to_xbar_RLAST(4),
      s_axi_rlast(3) => s03_couplers_to_xbar_RLAST(3),
      s_axi_rlast(2) => NLW_xbar_s_axi_rlast_UNCONNECTED(2),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(4) => s04_couplers_to_xbar_RREADY,
      s_axi_rready(3) => s03_couplers_to_xbar_RREADY,
      s_axi_rready(2) => GND_1,
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(9 downto 8) => s04_couplers_to_xbar_RRESP(9 downto 8),
      s_axi_rresp(7 downto 6) => s03_couplers_to_xbar_RRESP(7 downto 6),
      s_axi_rresp(5 downto 4) => NLW_xbar_s_axi_rresp_UNCONNECTED(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(4) => s04_couplers_to_xbar_RVALID(4),
      s_axi_rvalid(3) => s03_couplers_to_xbar_RVALID(3),
      s_axi_rvalid(2) => NLW_xbar_s_axi_rvalid_UNCONNECTED(2),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(159 downto 128) => s04_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(127) => GND_1,
      s_axi_wdata(126) => GND_1,
      s_axi_wdata(125) => GND_1,
      s_axi_wdata(124) => GND_1,
      s_axi_wdata(123) => GND_1,
      s_axi_wdata(122) => GND_1,
      s_axi_wdata(121) => GND_1,
      s_axi_wdata(120) => GND_1,
      s_axi_wdata(119) => GND_1,
      s_axi_wdata(118) => GND_1,
      s_axi_wdata(117) => GND_1,
      s_axi_wdata(116) => GND_1,
      s_axi_wdata(115) => GND_1,
      s_axi_wdata(114) => GND_1,
      s_axi_wdata(113) => GND_1,
      s_axi_wdata(112) => GND_1,
      s_axi_wdata(111) => GND_1,
      s_axi_wdata(110) => GND_1,
      s_axi_wdata(109) => GND_1,
      s_axi_wdata(108) => GND_1,
      s_axi_wdata(107) => GND_1,
      s_axi_wdata(106) => GND_1,
      s_axi_wdata(105) => GND_1,
      s_axi_wdata(104) => GND_1,
      s_axi_wdata(103) => GND_1,
      s_axi_wdata(102) => GND_1,
      s_axi_wdata(101) => GND_1,
      s_axi_wdata(100) => GND_1,
      s_axi_wdata(99) => GND_1,
      s_axi_wdata(98) => GND_1,
      s_axi_wdata(97) => GND_1,
      s_axi_wdata(96) => GND_1,
      s_axi_wdata(95 downto 64) => s02_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(63) => GND_1,
      s_axi_wdata(62) => GND_1,
      s_axi_wdata(61) => GND_1,
      s_axi_wdata(60) => GND_1,
      s_axi_wdata(59) => GND_1,
      s_axi_wdata(58) => GND_1,
      s_axi_wdata(57) => GND_1,
      s_axi_wdata(56) => GND_1,
      s_axi_wdata(55) => GND_1,
      s_axi_wdata(54) => GND_1,
      s_axi_wdata(53) => GND_1,
      s_axi_wdata(52) => GND_1,
      s_axi_wdata(51) => GND_1,
      s_axi_wdata(50) => GND_1,
      s_axi_wdata(49) => GND_1,
      s_axi_wdata(48) => GND_1,
      s_axi_wdata(47) => GND_1,
      s_axi_wdata(46) => GND_1,
      s_axi_wdata(45) => GND_1,
      s_axi_wdata(44) => GND_1,
      s_axi_wdata(43) => GND_1,
      s_axi_wdata(42) => GND_1,
      s_axi_wdata(41) => GND_1,
      s_axi_wdata(40) => GND_1,
      s_axi_wdata(39) => GND_1,
      s_axi_wdata(38) => GND_1,
      s_axi_wdata(37) => GND_1,
      s_axi_wdata(36) => GND_1,
      s_axi_wdata(35) => GND_1,
      s_axi_wdata(34) => GND_1,
      s_axi_wdata(33) => GND_1,
      s_axi_wdata(32) => GND_1,
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(4) => s04_couplers_to_xbar_WLAST,
      s_axi_wlast(3) => GND_1,
      s_axi_wlast(2) => s02_couplers_to_xbar_WLAST,
      s_axi_wlast(1) => GND_1,
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(4) => s04_couplers_to_xbar_WREADY(4),
      s_axi_wready(3) => NLW_xbar_s_axi_wready_UNCONNECTED(3),
      s_axi_wready(2) => s02_couplers_to_xbar_WREADY(2),
      s_axi_wready(1) => NLW_xbar_s_axi_wready_UNCONNECTED(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(19 downto 16) => s04_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(15) => GND_1,
      s_axi_wstrb(14) => GND_1,
      s_axi_wstrb(13) => GND_1,
      s_axi_wstrb(12) => GND_1,
      s_axi_wstrb(11 downto 8) => s02_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(7) => GND_1,
      s_axi_wstrb(6) => GND_1,
      s_axi_wstrb(5) => GND_1,
      s_axi_wstrb(4) => GND_1,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(4) => s04_couplers_to_xbar_WVALID,
      s_axi_wvalid(3) => GND_1,
      s_axi_wvalid(2) => s02_couplers_to_xbar_WVALID,
      s_axi_wvalid(1) => GND_1,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_microblaze_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC;
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC;
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rready : out STD_LOGIC;
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_arready : in STD_LOGIC;
    M09_AXI_arvalid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_awready : in STD_LOGIC;
    M09_AXI_awvalid : out STD_LOGIC;
    M09_AXI_bready : out STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rready : out STD_LOGIC;
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wready : in STD_LOGIC;
    M09_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_microblaze_0_axi_periph_0;

architecture STRUCTURE of design_1_microblaze_0_axi_periph_0 is
  component design_1_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 319 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 319 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 319 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 319 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component design_1_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M07_ACLK_1 : STD_LOGIC;
  signal M07_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M08_ACLK_1 : STD_LOGIC;
  signal M08_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M09_ACLK_1 : STD_LOGIC;
  signal M09_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m07_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m08_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m08_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m08_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m08_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m08_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m08_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m08_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m08_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m08_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m08_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m09_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m09_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m09_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m09_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m09_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m09_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m09_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m09_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m09_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m09_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_ACLK_net : STD_LOGIC;
  signal microblaze_0_axi_periph_ARESETN_net : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_ARPROT : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_ARVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_AWPROT : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_AWVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m09_couplers_RREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_WVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 12 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1(0) <= M00_ARESETN(0);
  M00_AXI_araddr(8 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_ARADDR(8 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(8 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_AWADDR(8 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1(0) <= M01_ARESETN(0);
  M01_AXI_araddr(4 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARADDR(4 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M01_AXI_awaddr(4 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWADDR(4 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1(0) <= M02_ARESETN(0);
  M02_AXI_araddr(3 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_ARADDR(3 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M02_AXI_awaddr(3 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_AWADDR(3 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1(0) <= M03_ARESETN(0);
  M03_AXI_araddr(9 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_ARADDR(9 downto 0);
  M03_AXI_arvalid(0) <= m03_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M03_AXI_awaddr(9 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_AWADDR(9 downto 0);
  M03_AXI_awvalid(0) <= m03_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M03_AXI_bready(0) <= m03_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M03_AXI_rready(0) <= m03_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wvalid(0) <= m03_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1(0) <= M04_ARESETN(0);
  M04_AXI_araddr(17 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARADDR(17 downto 0);
  M04_AXI_arvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M04_AXI_awaddr(17 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWADDR(17 downto 0);
  M04_AXI_awvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M04_AXI_bready(0) <= m04_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M04_AXI_rready(0) <= m04_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M04_AXI_wvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1(0) <= M05_ARESETN(0);
  M05_AXI_araddr(6 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_ARADDR(6 downto 0);
  M05_AXI_arprot(2 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_microblaze_0_axi_periph_ARVALID;
  M05_AXI_awaddr(6 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_AWADDR(6 downto 0);
  M05_AXI_awprot(2 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_microblaze_0_axi_periph_AWVALID;
  M05_AXI_bready <= m05_couplers_to_microblaze_0_axi_periph_BREADY;
  M05_AXI_rready <= m05_couplers_to_microblaze_0_axi_periph_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_microblaze_0_axi_periph_WVALID;
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1(0) <= M06_ARESETN(0);
  M06_AXI_araddr(3 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_ARADDR(3 downto 0);
  M06_AXI_arprot(2 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_microblaze_0_axi_periph_ARVALID;
  M06_AXI_awaddr(3 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_AWADDR(3 downto 0);
  M06_AXI_awprot(2 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_microblaze_0_axi_periph_AWVALID;
  M06_AXI_bready <= m06_couplers_to_microblaze_0_axi_periph_BREADY;
  M06_AXI_rready <= m06_couplers_to_microblaze_0_axi_periph_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_microblaze_0_axi_periph_WVALID;
  M07_ACLK_1 <= M07_ACLK;
  M07_ARESETN_1(0) <= M07_ARESETN(0);
  M07_AXI_araddr(6 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_ARADDR(6 downto 0);
  M07_AXI_arvalid <= m07_couplers_to_microblaze_0_axi_periph_ARVALID;
  M07_AXI_awaddr(6 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_AWADDR(6 downto 0);
  M07_AXI_awvalid <= m07_couplers_to_microblaze_0_axi_periph_AWVALID;
  M07_AXI_bready <= m07_couplers_to_microblaze_0_axi_periph_BREADY;
  M07_AXI_rready <= m07_couplers_to_microblaze_0_axi_periph_RREADY;
  M07_AXI_wdata(31 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M07_AXI_wvalid <= m07_couplers_to_microblaze_0_axi_periph_WVALID;
  M08_ACLK_1 <= M08_ACLK;
  M08_ARESETN_1(0) <= M08_ARESETN(0);
  M08_AXI_araddr(8 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_ARADDR(8 downto 0);
  M08_AXI_arvalid <= m08_couplers_to_microblaze_0_axi_periph_ARVALID;
  M08_AXI_awaddr(8 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_AWADDR(8 downto 0);
  M08_AXI_awvalid <= m08_couplers_to_microblaze_0_axi_periph_AWVALID;
  M08_AXI_bready <= m08_couplers_to_microblaze_0_axi_periph_BREADY;
  M08_AXI_rready <= m08_couplers_to_microblaze_0_axi_periph_RREADY;
  M08_AXI_wdata(31 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M08_AXI_wstrb(3 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M08_AXI_wvalid <= m08_couplers_to_microblaze_0_axi_periph_WVALID;
  M09_ACLK_1 <= M09_ACLK;
  M09_ARESETN_1(0) <= M09_ARESETN(0);
  M09_AXI_araddr(3 downto 0) <= m09_couplers_to_microblaze_0_axi_periph_ARADDR(3 downto 0);
  M09_AXI_arprot(2 downto 0) <= m09_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M09_AXI_arvalid <= m09_couplers_to_microblaze_0_axi_periph_ARVALID;
  M09_AXI_awaddr(3 downto 0) <= m09_couplers_to_microblaze_0_axi_periph_AWADDR(3 downto 0);
  M09_AXI_awprot(2 downto 0) <= m09_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M09_AXI_awvalid <= m09_couplers_to_microblaze_0_axi_periph_AWVALID;
  M09_AXI_bready <= m09_couplers_to_microblaze_0_axi_periph_BREADY;
  M09_AXI_rready <= m09_couplers_to_microblaze_0_axi_periph_RREADY;
  M09_AXI_wdata(31 downto 0) <= m09_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M09_AXI_wstrb(3 downto 0) <= m09_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M09_AXI_wvalid <= m09_couplers_to_microblaze_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1(0) <= S00_ARESETN(0);
  S00_AXI_arready(0) <= microblaze_0_axi_periph_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= microblaze_0_axi_periph_to_s00_couplers_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= microblaze_0_axi_periph_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= microblaze_0_axi_periph_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= microblaze_0_axi_periph_to_s00_couplers_WREADY(0);
  m00_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M02_AXI_wready(0);
  m03_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M03_AXI_arready(0);
  m03_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M03_AXI_awready(0);
  m03_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M03_AXI_bvalid(0);
  m03_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M03_AXI_rvalid(0);
  m03_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M03_AXI_wready(0);
  m04_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M04_AXI_arready(0);
  m04_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M04_AXI_awready(0);
  m04_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M04_AXI_bvalid(0);
  m04_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M04_AXI_rvalid(0);
  m04_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M04_AXI_wready(0);
  m05_couplers_to_microblaze_0_axi_periph_ARREADY <= M05_AXI_arready;
  m05_couplers_to_microblaze_0_axi_periph_AWREADY <= M05_AXI_awready;
  m05_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_microblaze_0_axi_periph_WREADY <= M05_AXI_wready;
  m06_couplers_to_microblaze_0_axi_periph_ARREADY <= M06_AXI_arready;
  m06_couplers_to_microblaze_0_axi_periph_AWREADY <= M06_AXI_awready;
  m06_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_microblaze_0_axi_periph_WREADY <= M06_AXI_wready;
  m07_couplers_to_microblaze_0_axi_periph_ARREADY <= M07_AXI_arready;
  m07_couplers_to_microblaze_0_axi_periph_AWREADY <= M07_AXI_awready;
  m07_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_BVALID <= M07_AXI_bvalid;
  m07_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_RVALID <= M07_AXI_rvalid;
  m07_couplers_to_microblaze_0_axi_periph_WREADY <= M07_AXI_wready;
  m08_couplers_to_microblaze_0_axi_periph_ARREADY <= M08_AXI_arready;
  m08_couplers_to_microblaze_0_axi_periph_AWREADY <= M08_AXI_awready;
  m08_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M08_AXI_bresp(1 downto 0);
  m08_couplers_to_microblaze_0_axi_periph_BVALID <= M08_AXI_bvalid;
  m08_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M08_AXI_rdata(31 downto 0);
  m08_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M08_AXI_rresp(1 downto 0);
  m08_couplers_to_microblaze_0_axi_periph_RVALID <= M08_AXI_rvalid;
  m08_couplers_to_microblaze_0_axi_periph_WREADY <= M08_AXI_wready;
  m09_couplers_to_microblaze_0_axi_periph_ARREADY <= M09_AXI_arready;
  m09_couplers_to_microblaze_0_axi_periph_AWREADY <= M09_AXI_awready;
  m09_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M09_AXI_bresp(1 downto 0);
  m09_couplers_to_microblaze_0_axi_periph_BVALID <= M09_AXI_bvalid;
  m09_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M09_AXI_rdata(31 downto 0);
  m09_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M09_AXI_rresp(1 downto 0);
  m09_couplers_to_microblaze_0_axi_periph_RVALID <= M09_AXI_rvalid;
  m09_couplers_to_microblaze_0_axi_periph_WREADY <= M09_AXI_wready;
  microblaze_0_axi_periph_ACLK_net <= ACLK;
  microblaze_0_axi_periph_ARESETN_net(0) <= ARESETN(0);
  microblaze_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  microblaze_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  microblaze_0_axi_periph_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  microblaze_0_axi_periph_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  microblaze_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
m00_couplers: entity work.m00_couplers_imp_8RVYHO
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN(0) => M00_ARESETN_1(0),
      M_AXI_araddr(8 downto 0) => m00_couplers_to_microblaze_0_axi_periph_ARADDR(8 downto 0),
      M_AXI_arready(0) => m00_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(8 downto 0) => m00_couplers_to_microblaze_0_axi_periph_AWADDR(8 downto 0),
      M_AXI_awready(0) => m00_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(8 downto 0) => xbar_to_m00_couplers_ARADDR(8 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(8 downto 0) => xbar_to_m00_couplers_AWADDR(8 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1UTB3Y5
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN(0) => M01_ARESETN_1(0),
      M_AXI_araddr(4 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARADDR(4 downto 0),
      M_AXI_arready(0) => m01_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(4 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWADDR(4 downto 0),
      M_AXI_awready(0) => m01_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(4 downto 0) => xbar_to_m01_couplers_ARADDR(36 downto 32),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(4 downto 0) => xbar_to_m01_couplers_AWADDR(36 downto 32),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_7ANRHB
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN(0) => M02_ARESETN_1(0),
      M_AXI_araddr(3 downto 0) => m02_couplers_to_microblaze_0_axi_periph_ARADDR(3 downto 0),
      M_AXI_arready(0) => m02_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(3 downto 0) => m02_couplers_to_microblaze_0_axi_periph_AWADDR(3 downto 0),
      M_AXI_awready(0) => m02_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(3 downto 0) => xbar_to_m02_couplers_ARADDR(67 downto 64),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(3 downto 0) => xbar_to_m02_couplers_AWADDR(67 downto 64),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_1W07O72
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN(0) => M03_ARESETN_1(0),
      M_AXI_araddr(9 downto 0) => m03_couplers_to_microblaze_0_axi_periph_ARADDR(9 downto 0),
      M_AXI_arready(0) => m03_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m03_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(9 downto 0) => m03_couplers_to_microblaze_0_axi_periph_AWADDR(9 downto 0),
      M_AXI_awready(0) => m03_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m03_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m03_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m03_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m03_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m03_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m03_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m03_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m03_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wvalid(0) => m03_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(9 downto 0) => xbar_to_m03_couplers_ARADDR(105 downto 96),
      S_AXI_arready(0) => xbar_to_m03_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(9 downto 0) => xbar_to_m03_couplers_AWADDR(105 downto 96),
      S_AXI_awready(0) => xbar_to_m03_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready(0) => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m03_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m03_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready(0) => xbar_to_m03_couplers_WREADY(0),
      S_AXI_wvalid(0) => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_5LX7BU
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN(0) => M04_ARESETN_1(0),
      M_AXI_araddr(17 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARADDR(17 downto 0),
      M_AXI_arready(0) => m04_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m04_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(17 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWADDR(17 downto 0),
      M_AXI_awready(0) => m04_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m04_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m04_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m04_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m04_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m04_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m04_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m04_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(17 downto 0) => xbar_to_m04_couplers_ARADDR(145 downto 128),
      S_AXI_arready(0) => xbar_to_m04_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(17 downto 0) => xbar_to_m04_couplers_AWADDR(145 downto 128),
      S_AXI_awready(0) => xbar_to_m04_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready(0) => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m04_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m04_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready(0) => xbar_to_m04_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid(0) => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_1XR4ZAZ
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN(0) => M05_ARESETN_1(0),
      M_AXI_araddr(6 downto 0) => m05_couplers_to_microblaze_0_axi_periph_ARADDR(6 downto 0),
      M_AXI_arprot(2 downto 0) => m05_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m05_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m05_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(6 downto 0) => m05_couplers_to_microblaze_0_axi_periph_AWADDR(6 downto 0),
      M_AXI_awprot(2 downto 0) => m05_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m05_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m05_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m05_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arprot(2 downto 0) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awprot(2 downto 0) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_4YOIXL
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN(0) => M06_ARESETN_1(0),
      M_AXI_araddr(3 downto 0) => m06_couplers_to_microblaze_0_axi_periph_ARADDR(3 downto 0),
      M_AXI_arprot(2 downto 0) => m06_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m06_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m06_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(3 downto 0) => m06_couplers_to_microblaze_0_axi_periph_AWADDR(3 downto 0),
      M_AXI_awprot(2 downto 0) => m06_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m06_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m06_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m06_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arprot(2 downto 0) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awprot(2 downto 0) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_1YO2N20
     port map (
      M_ACLK => M07_ACLK_1,
      M_ARESETN(0) => M07_ARESETN_1(0),
      M_AXI_araddr(6 downto 0) => m07_couplers_to_microblaze_0_axi_periph_ARADDR(6 downto 0),
      M_AXI_arready => m07_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m07_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(6 downto 0) => m07_couplers_to_microblaze_0_axi_periph_AWADDR(6 downto 0),
      M_AXI_awready => m07_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m07_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m07_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m07_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m07_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m07_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m07_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m07_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m07_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m07_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m07_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(6 downto 0) => xbar_to_m07_couplers_ARADDR(230 downto 224),
      S_AXI_arready => xbar_to_m07_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(6 downto 0) => xbar_to_m07_couplers_AWADDR(230 downto 224),
      S_AXI_awready => xbar_to_m07_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bready => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => xbar_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m07_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m07_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => xbar_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m07_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m07_couplers_WDATA(255 downto 224),
      S_AXI_wready => xbar_to_m07_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid => xbar_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_2FYR80
     port map (
      M_ACLK => M08_ACLK_1,
      M_ARESETN(0) => M08_ARESETN_1(0),
      M_AXI_araddr(8 downto 0) => m08_couplers_to_microblaze_0_axi_periph_ARADDR(8 downto 0),
      M_AXI_arready => m08_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m08_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(8 downto 0) => m08_couplers_to_microblaze_0_axi_periph_AWADDR(8 downto 0),
      M_AXI_awready => m08_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m08_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m08_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m08_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m08_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m08_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m08_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m08_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m08_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m08_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m08_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m08_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m08_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(8 downto 0) => xbar_to_m08_couplers_ARADDR(264 downto 256),
      S_AXI_arready => xbar_to_m08_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m08_couplers_ARVALID(8),
      S_AXI_awaddr(8 downto 0) => xbar_to_m08_couplers_AWADDR(264 downto 256),
      S_AXI_awready => xbar_to_m08_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m08_couplers_AWVALID(8),
      S_AXI_bready => xbar_to_m08_couplers_BREADY(8),
      S_AXI_bresp(1 downto 0) => xbar_to_m08_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m08_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m08_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m08_couplers_RREADY(8),
      S_AXI_rresp(1 downto 0) => xbar_to_m08_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m08_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m08_couplers_WDATA(287 downto 256),
      S_AXI_wready => xbar_to_m08_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      S_AXI_wvalid => xbar_to_m08_couplers_WVALID(8)
    );
m09_couplers: entity work.m09_couplers_imp_1S9IENL
     port map (
      M_ACLK => M09_ACLK_1,
      M_ARESETN(0) => M09_ARESETN_1(0),
      M_AXI_araddr(3 downto 0) => m09_couplers_to_microblaze_0_axi_periph_ARADDR(3 downto 0),
      M_AXI_arprot(2 downto 0) => m09_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m09_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m09_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(3 downto 0) => m09_couplers_to_microblaze_0_axi_periph_AWADDR(3 downto 0),
      M_AXI_awprot(2 downto 0) => m09_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m09_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m09_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m09_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m09_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m09_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m09_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m09_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m09_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m09_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m09_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m09_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m09_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m09_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      S_AXI_arprot(2 downto 0) => xbar_to_m09_couplers_ARPROT(29 downto 27),
      S_AXI_arready => xbar_to_m09_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m09_couplers_ARVALID(9),
      S_AXI_awaddr(31 downto 0) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      S_AXI_awprot(2 downto 0) => xbar_to_m09_couplers_AWPROT(29 downto 27),
      S_AXI_awready => xbar_to_m09_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m09_couplers_AWVALID(9),
      S_AXI_bready => xbar_to_m09_couplers_BREADY(9),
      S_AXI_bresp(1 downto 0) => xbar_to_m09_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m09_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m09_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m09_couplers_RREADY(9),
      S_AXI_rresp(1 downto 0) => xbar_to_m09_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m09_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m09_couplers_WDATA(319 downto 288),
      S_AXI_wready => xbar_to_m09_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      S_AXI_wvalid => xbar_to_m09_couplers_WVALID(9)
    );
s00_couplers: entity work.s00_couplers_imp_1RZP34U
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN(0) => microblaze_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => S00_ACLK_1,
      S_ARESETN(0) => S00_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => microblaze_0_axi_periph_to_s00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => microblaze_0_axi_periph_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => microblaze_0_axi_periph_to_s00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => microblaze_0_axi_periph_to_s00_couplers_AWVALID(0),
      S_AXI_bready(0) => microblaze_0_axi_periph_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => microblaze_0_axi_periph_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => microblaze_0_axi_periph_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => microblaze_0_axi_periph_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => microblaze_0_axi_periph_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => microblaze_0_axi_periph_to_s00_couplers_WVALID(0)
    );
xbar: component design_1_xbar_0
     port map (
      aclk => microblaze_0_axi_periph_ACLK_net,
      aresetn => microblaze_0_axi_periph_ARESETN_net(0),
      m_axi_araddr(319 downto 288) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      m_axi_araddr(287 downto 256) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(29 downto 27) => xbar_to_m09_couplers_ARPROT(29 downto 27),
      m_axi_arprot(26 downto 21) => NLW_xbar_m_axi_arprot_UNCONNECTED(26 downto 21),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(14 downto 0),
      m_axi_arready(9) => xbar_to_m09_couplers_ARREADY,
      m_axi_arready(8) => xbar_to_m08_couplers_ARREADY,
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY,
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY(0),
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY(0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(9) => xbar_to_m09_couplers_ARVALID(9),
      m_axi_arvalid(8) => xbar_to_m08_couplers_ARVALID(8),
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(319 downto 288) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      m_axi_awaddr(287 downto 256) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(29 downto 27) => xbar_to_m09_couplers_AWPROT(29 downto 27),
      m_axi_awprot(26 downto 21) => NLW_xbar_m_axi_awprot_UNCONNECTED(26 downto 21),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(14 downto 0),
      m_axi_awready(9) => xbar_to_m09_couplers_AWREADY,
      m_axi_awready(8) => xbar_to_m08_couplers_AWREADY,
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY,
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY(0),
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY(0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(9) => xbar_to_m09_couplers_AWVALID(9),
      m_axi_awvalid(8) => xbar_to_m08_couplers_AWVALID(8),
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(9) => xbar_to_m09_couplers_BREADY(9),
      m_axi_bready(8) => xbar_to_m08_couplers_BREADY(8),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(19 downto 18) => xbar_to_m09_couplers_BRESP(1 downto 0),
      m_axi_bresp(17 downto 16) => xbar_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bresp(15 downto 14) => xbar_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(9) => xbar_to_m09_couplers_BVALID,
      m_axi_bvalid(8) => xbar_to_m08_couplers_BVALID,
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID,
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID(0),
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID(0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(319 downto 288) => xbar_to_m09_couplers_RDATA(31 downto 0),
      m_axi_rdata(287 downto 256) => xbar_to_m08_couplers_RDATA(31 downto 0),
      m_axi_rdata(255 downto 224) => xbar_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(9) => xbar_to_m09_couplers_RREADY(9),
      m_axi_rready(8) => xbar_to_m08_couplers_RREADY(8),
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(19 downto 18) => xbar_to_m09_couplers_RRESP(1 downto 0),
      m_axi_rresp(17 downto 16) => xbar_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rresp(15 downto 14) => xbar_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(9) => xbar_to_m09_couplers_RVALID,
      m_axi_rvalid(8) => xbar_to_m08_couplers_RVALID,
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID,
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID(0),
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID(0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(319 downto 288) => xbar_to_m09_couplers_WDATA(319 downto 288),
      m_axi_wdata(287 downto 256) => xbar_to_m08_couplers_WDATA(287 downto 256),
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(9) => xbar_to_m09_couplers_WREADY,
      m_axi_wready(8) => xbar_to_m08_couplers_WREADY,
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY,
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY(0),
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY(0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(39 downto 36) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      m_axi_wstrb(35 downto 32) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => NLW_xbar_m_axi_wstrb_UNCONNECTED(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(9) => xbar_to_m09_couplers_WVALID(9),
      m_axi_wvalid(8) => xbar_to_m08_couplers_WVALID(8),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
    LCD_7Bits_tri_o : out STD_LOGIC_VECTOR ( 6 downto 0 );
    LED_4Bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
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
    mdio_mdc : out STD_LOGIC;
    mdio_mdio_i : in STD_LOGIC;
    mdio_mdio_o : out STD_LOGIC;
    mdio_mdio_t : out STD_LOGIC;
    phy_reset_out : out STD_LOGIC;
    reset : in STD_LOGIC;
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
    sys_clk_n : in STD_LOGIC;
    sys_clk_p : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=56,numReposBlks=35,numNonXlnxBlks=3,numHierBlks=21,maxHierDepth=1,da_axi4_cnt=9,da_board_cnt=6,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_axi_bram_ctrl_0_0;
  component design_1_axi_ethernet_0_0 is
  port (
    s_axi_lite_resetn : in STD_LOGIC;
    s_axi_lite_clk : in STD_LOGIC;
    mac_irq : out STD_LOGIC;
    axis_clk : in STD_LOGIC;
    axi_txd_arstn : in STD_LOGIC;
    axi_txc_arstn : in STD_LOGIC;
    axi_rxd_arstn : in STD_LOGIC;
    axi_rxs_arstn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    gtx_clk : in STD_LOGIC;
    phy_rst_n : out STD_LOGIC;
    ref_clk : in STD_LOGIC;
    gtx_clk90_out : out STD_LOGIC;
    gtx_clk_out : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axis_txc_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_txc_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_txc_tlast : in STD_LOGIC;
    s_axis_txc_tready : out STD_LOGIC;
    s_axis_txc_tvalid : in STD_LOGIC;
    s_axis_txd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_txd_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_txd_tlast : in STD_LOGIC;
    s_axis_txd_tready : out STD_LOGIC;
    s_axis_txd_tvalid : in STD_LOGIC;
    m_axis_rxd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_rxd_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_rxd_tlast : out STD_LOGIC;
    m_axis_rxd_tready : in STD_LOGIC;
    m_axis_rxd_tvalid : out STD_LOGIC;
    m_axis_rxs_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_rxs_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_rxs_tlast : out STD_LOGIC;
    m_axis_rxs_tready : in STD_LOGIC;
    m_axis_rxs_tvalid : out STD_LOGIC;
    rgmii_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_rx_ctl : in STD_LOGIC;
    rgmii_rxc : in STD_LOGIC;
    rgmii_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_tx_ctl : out STD_LOGIC;
    rgmii_txc : out STD_LOGIC;
    mdio_mdc : out STD_LOGIC;
    mdio_mdio_i : in STD_LOGIC;
    mdio_mdio_o : out STD_LOGIC;
    mdio_mdio_t : out STD_LOGIC
  );
  end component design_1_axi_ethernet_0_0;
  component design_1_axi_ethernet_0_dma_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_sg_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_awvalid : out STD_LOGIC;
    m_axi_sg_awready : in STD_LOGIC;
    m_axi_sg_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_wlast : out STD_LOGIC;
    m_axi_sg_wvalid : out STD_LOGIC;
    m_axi_sg_wready : in STD_LOGIC;
    m_axi_sg_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_bvalid : in STD_LOGIC;
    m_axi_sg_bready : out STD_LOGIC;
    m_axi_sg_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_arvalid : out STD_LOGIC;
    m_axi_sg_arready : in STD_LOGIC;
    m_axi_sg_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_rlast : in STD_LOGIC;
    m_axi_sg_rvalid : in STD_LOGIC;
    m_axi_sg_rready : out STD_LOGIC;
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    mm2s_cntrl_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_cntrl_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_cntrl_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_cntrl_tvalid : out STD_LOGIC;
    m_axis_mm2s_cntrl_tready : in STD_LOGIC;
    m_axis_mm2s_cntrl_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s2mm_sts_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_sts_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_sts_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_sts_tvalid : in STD_LOGIC;
    s_axis_s2mm_sts_tready : out STD_LOGIC;
    s_axis_s2mm_sts_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component design_1_axi_ethernet_0_dma_0;
  component design_1_axi_timer_0_0 is
  port (
    capturetrig0 : in STD_LOGIC;
    capturetrig1 : in STD_LOGIC;
    generateout0 : out STD_LOGIC;
    generateout1 : out STD_LOGIC;
    pwm0 : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    freeze : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  end component design_1_axi_timer_0_0;
  component design_1_axi_uartlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component design_1_axi_uartlite_0_0;
  component design_1_blk_mem_gen_0_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_blk_mem_gen_0_1;
  component design_1_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  component design_1_mdm_1_0 is
  port (
    Debug_SYS_Rst : out STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC
  );
  end component design_1_mdm_1_0;
  component design_1_microblaze_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    M_AXI_IC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_AWLOCK : out STD_LOGIC;
    M_AXI_IC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWVALID : out STD_LOGIC;
    M_AXI_IC_AWREADY : in STD_LOGIC;
    M_AXI_IC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_WLAST : out STD_LOGIC;
    M_AXI_IC_WVALID : out STD_LOGIC;
    M_AXI_IC_WREADY : in STD_LOGIC;
    M_AXI_IC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_BVALID : in STD_LOGIC;
    M_AXI_IC_BREADY : out STD_LOGIC;
    M_AXI_IC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_ARLOCK : out STD_LOGIC;
    M_AXI_IC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARVALID : out STD_LOGIC;
    M_AXI_IC_ARREADY : in STD_LOGIC;
    M_AXI_IC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_RLAST : in STD_LOGIC;
    M_AXI_IC_RVALID : in STD_LOGIC;
    M_AXI_IC_RREADY : out STD_LOGIC;
    M_AXI_DC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_AWLOCK : out STD_LOGIC;
    M_AXI_DC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWVALID : out STD_LOGIC;
    M_AXI_DC_AWREADY : in STD_LOGIC;
    M_AXI_DC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_WLAST : out STD_LOGIC;
    M_AXI_DC_WVALID : out STD_LOGIC;
    M_AXI_DC_WREADY : in STD_LOGIC;
    M_AXI_DC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_BVALID : in STD_LOGIC;
    M_AXI_DC_BREADY : out STD_LOGIC;
    M_AXI_DC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_ARLOCK : out STD_LOGIC;
    M_AXI_DC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARVALID : out STD_LOGIC;
    M_AXI_DC_ARREADY : in STD_LOGIC;
    M_AXI_DC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_RLAST : in STD_LOGIC;
    M_AXI_DC_RVALID : in STD_LOGIC;
    M_AXI_DC_RREADY : out STD_LOGIC
  );
  end component design_1_microblaze_0_0;
  component design_1_microblaze_0_axi_intc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_microblaze_0_axi_intc_0;
  component design_1_microblaze_0_xlconcat_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_microblaze_0_xlconcat_0;
  component design_1_mig_7series_0_0 is
  port (
    sys_rst : in STD_LOGIC;
    ddr3_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    ddr3_dqs_p : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ddr3_dqs_n : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ddr3_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ddr3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_ras_n : out STD_LOGIC;
    ddr3_cas_n : out STD_LOGIC;
    ddr3_we_n : out STD_LOGIC;
    ddr3_reset_n : out STD_LOGIC;
    ddr3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_dm : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ddr3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ui_clk_sync_rst : out STD_LOGIC;
    ui_clk : out STD_LOGIC;
    ui_addn_clk_0 : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    mmcm_locked : out STD_LOGIC;
    sys_clk_p : in STD_LOGIC;
    sys_clk_n : in STD_LOGIC;
    init_calib_complete : out STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  end component design_1_mig_7series_0_0;
  component design_1_proc_sys_reset_1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_proc_sys_reset_1_0;
  component design_1_rst_clk_wiz_0_401M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_clk_wiz_0_401M_0;
  component design_1_rst_clk_wiz_0_125M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_clk_wiz_0_125M_0;
  component design_1_real_time_clock_v1_0_S00_AXI_0_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  end component design_1_real_time_clock_v1_0_S00_AXI_0_0;
  component design_1_axi_quad_spi_0_0 is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_i : in STD_LOGIC;
    io2_o : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_i : in STD_LOGIC;
    io3_o : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    cfgclk : out STD_LOGIC;
    cfgmclk : out STD_LOGIC;
    eos : out STD_LOGIC;
    preq : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  end component design_1_axi_quad_spi_0_0;
  component design_1_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component design_1_axi_gpio_0_0;
  component design_1_phase_shift_40MHz_clk_gen_axi_0_1 is
  port (
    CLK_0 : out STD_LOGIC;
    CLK_1 : out STD_LOGIC;
    CLK_2 : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  end component design_1_phase_shift_40MHz_clk_gen_axi_0_1;
  component design_1_trigger_logic_AXI_0_0 is
  port (
    FASTOR_TRIG_IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DIAMOND_TRIG_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SCINTILLATOR_TRIG_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BEAM_CURRENT_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BUSY_IN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    LOGIC_PREAMP_TP_SEL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    LOGIC_DRS4_CH4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PULSER_PREAMP_TP_TTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PULSER_DRS4_CH4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PULSER_PREAMP_TP_SEL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DRS4_TRIG_IN_CH2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PSI46_ATB_DTB : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DRS4_CH3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CAEN_DIG : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRIG_1 : out STD_LOGIC;
    TRIG_2 : out STD_LOGIC;
    TRIG_3 : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  end component design_1_trigger_logic_AXI_0_0;
  signal BEAM_CURRENT_IN_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal BUSY_IN_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DIAMOND_TRIG_IN_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal FASTOR_TRIG_IN_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal GND_1 : STD_LOGIC;
  signal SCINTILLATOR_TRIG_IN_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal VCC_1 : STD_LOGIC;
  signal axi_bram_ctrl_0_bram_porta_ADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_bram_ctrl_0_bram_porta_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_bram_porta_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_bram_porta_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_bram_porta_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_bram_porta_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_bram_porta_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_0_bram_portb_ADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_bram_ctrl_0_bram_portb_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_bram_portb_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_bram_portb_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_bram_portb_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_bram_portb_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_bram_portb_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_0_dma_m_axi_mm2s_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ethernet_0_dma_m_axi_mm2s_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ethernet_0_dma_m_axi_mm2s_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_0_dma_m_axi_mm2s_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_ethernet_0_dma_m_axi_mm2s_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ethernet_0_dma_m_axi_mm2s_ARREADY : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_mm2s_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ethernet_0_dma_m_axi_mm2s_ARVALID : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_mm2s_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ethernet_0_dma_m_axi_mm2s_RLAST : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_mm2s_RREADY : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_mm2s_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ethernet_0_dma_m_axi_mm2s_RVALID : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_s2mm_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ethernet_0_dma_m_axi_s2mm_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ethernet_0_dma_m_axi_s2mm_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_0_dma_m_axi_s2mm_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_ethernet_0_dma_m_axi_s2mm_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ethernet_0_dma_m_axi_s2mm_AWREADY : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_s2mm_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ethernet_0_dma_m_axi_s2mm_AWVALID : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_s2mm_BREADY : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_s2mm_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ethernet_0_dma_m_axi_s2mm_BVALID : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_s2mm_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ethernet_0_dma_m_axi_s2mm_WLAST : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_s2mm_WREADY : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_s2mm_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_0_dma_m_axi_s2mm_WVALID : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_sg_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_ARREADY : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_sg_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_ARVALID : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_sg_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_AWREADY : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_sg_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_AWVALID : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_sg_BREADY : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_sg_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_BVALID : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_sg_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_RLAST : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_sg_RREADY : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_sg_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_RVALID : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_sg_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_WLAST : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_sg_WREADY : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axi_sg_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_0_dma_m_axi_sg_WVALID : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axis_cntrl_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ethernet_0_dma_m_axis_cntrl_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_0_dma_m_axis_cntrl_TLAST : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axis_cntrl_TREADY : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axis_cntrl_TVALID : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axis_mm2s_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ethernet_0_dma_m_axis_mm2s_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_0_dma_m_axis_mm2s_TLAST : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axis_mm2s_TREADY : STD_LOGIC;
  signal axi_ethernet_0_dma_m_axis_mm2s_TVALID : STD_LOGIC;
  signal axi_ethernet_0_dma_mm2s_cntrl_reset_out_n : STD_LOGIC;
  signal axi_ethernet_0_dma_mm2s_introut : STD_LOGIC;
  signal axi_ethernet_0_dma_mm2s_prmry_reset_out_n : STD_LOGIC;
  signal axi_ethernet_0_dma_s2mm_introut : STD_LOGIC;
  signal axi_ethernet_0_dma_s2mm_prmry_reset_out_n : STD_LOGIC;
  signal axi_ethernet_0_dma_s2mm_sts_reset_out_n : STD_LOGIC;
  signal axi_ethernet_0_interrupt : STD_LOGIC;
  signal axi_ethernet_0_m_axis_rxd_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ethernet_0_m_axis_rxd_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_0_m_axis_rxd_TLAST : STD_LOGIC;
  signal axi_ethernet_0_m_axis_rxd_TREADY : STD_LOGIC;
  signal axi_ethernet_0_m_axis_rxd_TVALID : STD_LOGIC;
  signal axi_ethernet_0_m_axis_rxs_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ethernet_0_m_axis_rxs_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_0_m_axis_rxs_TLAST : STD_LOGIC;
  signal axi_ethernet_0_m_axis_rxs_TREADY : STD_LOGIC;
  signal axi_ethernet_0_m_axis_rxs_TVALID : STD_LOGIC;
  signal axi_ethernet_0_mdio_MDC : STD_LOGIC;
  signal axi_ethernet_0_mdio_MDIO_I : STD_LOGIC;
  signal axi_ethernet_0_mdio_MDIO_O : STD_LOGIC;
  signal axi_ethernet_0_mdio_MDIO_T : STD_LOGIC;
  signal axi_ethernet_0_phy_rst_n : STD_LOGIC;
  signal axi_ethernet_0_rgmii_RD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_0_rgmii_RXC : STD_LOGIC;
  signal axi_ethernet_0_rgmii_RX_CTL : STD_LOGIC;
  signal axi_ethernet_0_rgmii_TD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernet_0_rgmii_TXC : STD_LOGIC;
  signal axi_ethernet_0_rgmii_TX_CTL : STD_LOGIC;
  signal axi_gpio_0_GPIO2_TRI_O : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal axi_gpio_0_GPIO_TRI_O : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_m00_axi_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_mem_intercon_m00_axi_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_m00_axi_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_m00_axi_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m00_axi_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_m00_axi_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_m00_axi_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m00_axi_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_m00_axi_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m00_axi_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_m00_axi_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_mem_intercon_m00_axi_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_m00_axi_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_m00_axi_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m00_axi_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_m00_axi_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_m00_axi_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m00_axi_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_m00_axi_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m00_axi_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_m00_axi_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m00_axi_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_m00_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_m00_axi_BVALID : STD_LOGIC;
  signal axi_mem_intercon_m00_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_m00_axi_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m00_axi_RLAST : STD_LOGIC;
  signal axi_mem_intercon_m00_axi_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_m00_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_m00_axi_RVALID : STD_LOGIC;
  signal axi_mem_intercon_m00_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_m00_axi_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_m00_axi_WREADY : STD_LOGIC;
  signal axi_mem_intercon_m00_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_m00_axi_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_m01_axi_ARADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal axi_mem_intercon_m01_axi_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_m01_axi_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_m01_axi_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m01_axi_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_m01_axi_ARLOCK : STD_LOGIC;
  signal axi_mem_intercon_m01_axi_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m01_axi_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_m01_axi_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_m01_axi_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m01_axi_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_m01_axi_AWADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal axi_mem_intercon_m01_axi_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_m01_axi_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_m01_axi_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m01_axi_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_m01_axi_AWLOCK : STD_LOGIC;
  signal axi_mem_intercon_m01_axi_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m01_axi_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_m01_axi_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_m01_axi_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m01_axi_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_m01_axi_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m01_axi_BREADY : STD_LOGIC;
  signal axi_mem_intercon_m01_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_m01_axi_BVALID : STD_LOGIC;
  signal axi_mem_intercon_m01_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_m01_axi_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_m01_axi_RLAST : STD_LOGIC;
  signal axi_mem_intercon_m01_axi_RREADY : STD_LOGIC;
  signal axi_mem_intercon_m01_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_m01_axi_RVALID : STD_LOGIC;
  signal axi_mem_intercon_m01_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_m01_axi_WLAST : STD_LOGIC;
  signal axi_mem_intercon_m01_axi_WREADY : STD_LOGIC;
  signal axi_mem_intercon_m01_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_m01_axi_WVALID : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO2_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO2_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO2_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO3_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO3_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO3_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SS_I : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_quad_spi_0_SPI_0_SS_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_quad_spi_0_SPI_0_SS_T : STD_LOGIC;
  signal axi_timer_0_interrupt : STD_LOGIC;
  signal axi_uartlite_0_interrupt : STD_LOGIC;
  signal axi_uartlite_0_uart_RxD : STD_LOGIC;
  signal axi_uartlite_0_uart_TxD : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_CAPTURE : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_CLK : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal mdm_1_MBDEBUG_0_RST : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_SHIFT : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_TDI : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_TDO : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_UPDATE : STD_LOGIC;
  signal mdm_1_debug_sys_rst : STD_LOGIC;
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_axi_dp_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_dp_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_dp_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_BREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_dp_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_RREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_dp_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_dp_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_m01_axi_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal microblaze_0_axi_periph_m01_axi_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_m01_axi_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m01_axi_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal microblaze_0_axi_periph_m01_axi_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_m01_axi_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m01_axi_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m01_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_m01_axi_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_m01_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_m01_axi_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m01_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_m01_axi_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_m01_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_m01_axi_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_m01_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_m01_axi_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m02_axi_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_m02_axi_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_m02_axi_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m02_axi_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_m02_axi_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_m02_axi_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m02_axi_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m02_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_m02_axi_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_m02_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_m02_axi_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m02_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_m02_axi_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_m02_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_m02_axi_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_m02_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_m02_axi_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m03_axi_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal microblaze_0_axi_periph_m03_axi_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_m03_axi_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m03_axi_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal microblaze_0_axi_periph_m03_axi_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_m03_axi_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m03_axi_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m03_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_m03_axi_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_m03_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_m03_axi_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m03_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_m03_axi_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_m03_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_m03_axi_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_m03_axi_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m04_axi_ARADDR : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal microblaze_0_axi_periph_m04_axi_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_m04_axi_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m04_axi_AWADDR : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal microblaze_0_axi_periph_m04_axi_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_m04_axi_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m04_axi_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m04_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_m04_axi_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_m04_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_m04_axi_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_m04_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_m04_axi_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_m04_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_m04_axi_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_m04_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_m04_axi_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_CE : STD_LOGIC;
  signal microblaze_0_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_READY : STD_LOGIC;
  signal microblaze_0_dlmb_UE : STD_LOGIC;
  signal microblaze_0_dlmb_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_CE : STD_LOGIC;
  signal microblaze_0_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_READY : STD_LOGIC;
  signal microblaze_0_ilmb_UE : STD_LOGIC;
  signal microblaze_0_ilmb_WAIT : STD_LOGIC;
  signal microblaze_0_intc_axi_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal microblaze_0_intc_axi_ARREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_intc_axi_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal microblaze_0_intc_axi_AWREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_intc_axi_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_intc_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intc_axi_BVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_intc_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intc_axi_RVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_WREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_intc_axi_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_interrupt_ACK : STD_LOGIC_VECTOR ( 0 to 1 );
  signal microblaze_0_interrupt_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_interrupt_INTERRUPT : STD_LOGIC;
  signal microblaze_0_intr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal microblaze_0_m_axi_dc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_m_axi_dc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_m_axi_dc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_m_axi_dc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_m_axi_dc_ARLOCK : STD_LOGIC;
  signal microblaze_0_m_axi_dc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_m_axi_dc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_m_axi_dc_ARREADY : STD_LOGIC;
  signal microblaze_0_m_axi_dc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_m_axi_dc_ARVALID : STD_LOGIC;
  signal microblaze_0_m_axi_dc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_m_axi_dc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_m_axi_dc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_m_axi_dc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_m_axi_dc_AWLOCK : STD_LOGIC;
  signal microblaze_0_m_axi_dc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_m_axi_dc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_m_axi_dc_AWREADY : STD_LOGIC;
  signal microblaze_0_m_axi_dc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_m_axi_dc_AWVALID : STD_LOGIC;
  signal microblaze_0_m_axi_dc_BREADY : STD_LOGIC;
  signal microblaze_0_m_axi_dc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_m_axi_dc_BVALID : STD_LOGIC;
  signal microblaze_0_m_axi_dc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_m_axi_dc_RLAST : STD_LOGIC;
  signal microblaze_0_m_axi_dc_RREADY : STD_LOGIC;
  signal microblaze_0_m_axi_dc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_m_axi_dc_RVALID : STD_LOGIC;
  signal microblaze_0_m_axi_dc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_m_axi_dc_WLAST : STD_LOGIC;
  signal microblaze_0_m_axi_dc_WREADY : STD_LOGIC;
  signal microblaze_0_m_axi_dc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_m_axi_dc_WVALID : STD_LOGIC;
  signal microblaze_0_m_axi_ic_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_m_axi_ic_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_m_axi_ic_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_m_axi_ic_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_m_axi_ic_ARLOCK : STD_LOGIC;
  signal microblaze_0_m_axi_ic_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_m_axi_ic_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_m_axi_ic_ARREADY : STD_LOGIC;
  signal microblaze_0_m_axi_ic_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_m_axi_ic_ARVALID : STD_LOGIC;
  signal microblaze_0_m_axi_ic_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_m_axi_ic_RLAST : STD_LOGIC;
  signal microblaze_0_m_axi_ic_RREADY : STD_LOGIC;
  signal microblaze_0_m_axi_ic_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_m_axi_ic_RVALID : STD_LOGIC;
  signal mig_7series_0_ddr3_ADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal mig_7series_0_ddr3_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mig_7series_0_ddr3_CAS_N : STD_LOGIC;
  signal mig_7series_0_ddr3_CKE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_ddr3_CK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_ddr3_CK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_ddr3_CS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_ddr3_DM : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mig_7series_0_ddr3_DQ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal mig_7series_0_ddr3_DQS_N : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mig_7series_0_ddr3_DQS_P : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mig_7series_0_ddr3_ODT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_ddr3_RAS_N : STD_LOGIC;
  signal mig_7series_0_ddr3_RESET_N : STD_LOGIC;
  signal mig_7series_0_ddr3_WE_N : STD_LOGIC;
  signal mig_7series_0_ui_addn_clk_0 : STD_LOGIC;
  signal mig_7series_0_ui_clk_sync_rst : STD_LOGIC;
  signal phase_shift_40MHz_clk_gen_axi_0_CLK_0 : STD_LOGIC;
  signal phase_shift_40MHz_clk_gen_axi_0_CLK_1 : STD_LOGIC;
  signal phase_shift_40MHz_clk_gen_axi_0_CLK_2 : STD_LOGIC;
  signal proc_sys_reset_1_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_1_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_1_mb_reset : STD_LOGIC;
  signal proc_sys_reset_1_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_1 : STD_LOGIC;
  signal rst_clk_wiz_0_125M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_0_401M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_clk_n_1 : STD_LOGIC;
  signal sys_clk_p_1 : STD_LOGIC;
  signal trigger_logic_AXI_0_CAEN_DIG : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal trigger_logic_AXI_0_DRS4_CH3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal trigger_logic_AXI_0_DRS4_TRIG_IN_CH2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal trigger_logic_AXI_0_LOGIC_DRS4_CH4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal trigger_logic_AXI_0_LOGIC_PREAMP_TP_SEL : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal trigger_logic_AXI_0_PSI46_ATB_DTB : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal trigger_logic_AXI_0_PULSER_DRS4_CH4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal trigger_logic_AXI_0_PULSER_PREAMP_TP_SEL : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal trigger_logic_AXI_0_PULSER_PREAMP_TP_TTL : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal trigger_logic_AXI_0_TRIG_1 : STD_LOGIC;
  signal trigger_logic_AXI_0_TRIG_2 : STD_LOGIC;
  signal trigger_logic_AXI_0_TRIG_3 : STD_LOGIC;
  signal NLW_axi_ethernet_0_gtx_clk90_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ethernet_0_gtx_clk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_ethernet_0_mac_irq_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_quad_spi_0_cfgclk_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_quad_spi_0_cfgmclk_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_quad_spi_0_eos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_quad_spi_0_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_quad_spi_0_preq_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_0_generateout0_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_0_generateout1_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_0_pwm0_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_M_AXI_IC_AWLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_M_AXI_IC_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_M_AXI_IC_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_M_AXI_IC_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_M_AXI_IC_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_M_AXI_DC_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_microblaze_0_M_AXI_DC_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_microblaze_0_M_AXI_IC_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mig_7series_0_init_calib_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_mig_7series_0_mmcm_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_125M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_0_125M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_125M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_125M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_401M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_0_401M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_401M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_401M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of axi_bram_ctrl_0 : label is "byte  0xC0000000 32 >  design_1 blk_mem_gen_0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of axi_bram_ctrl_0 : label is "yes";
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of microblaze_0 : label is "microblaze-le > design_1 microblaze_0_local_memory/dlmb_bram_if_cntlr design_1 axi_bram_ctrl_0";
  attribute KEEP_HIERARCHY of microblaze_0 : label is "yes";
begin
  BEAM_CURRENT_IN_1(1 downto 0) <= BEAM_CURRENT_IN(1 downto 0);
  BUSY_IN_1(3 downto 0) <= BUSY_IN(3 downto 0);
  CAEN_DIG(1 downto 0) <= trigger_logic_AXI_0_CAEN_DIG(1 downto 0);
  CLK_0 <= phase_shift_40MHz_clk_gen_axi_0_CLK_0;
  CLK_1 <= phase_shift_40MHz_clk_gen_axi_0_CLK_1;
  CLK_2 <= phase_shift_40MHz_clk_gen_axi_0_CLK_2;
  DDR3_addr(13 downto 0) <= mig_7series_0_ddr3_ADDR(13 downto 0);
  DDR3_ba(2 downto 0) <= mig_7series_0_ddr3_BA(2 downto 0);
  DDR3_cas_n <= mig_7series_0_ddr3_CAS_N;
  DDR3_ck_n(0) <= mig_7series_0_ddr3_CK_N(0);
  DDR3_ck_p(0) <= mig_7series_0_ddr3_CK_P(0);
  DDR3_cke(0) <= mig_7series_0_ddr3_CKE(0);
  DDR3_cs_n(0) <= mig_7series_0_ddr3_CS_N(0);
  DDR3_dm(7 downto 0) <= mig_7series_0_ddr3_DM(7 downto 0);
  DDR3_odt(0) <= mig_7series_0_ddr3_ODT(0);
  DDR3_ras_n <= mig_7series_0_ddr3_RAS_N;
  DDR3_reset_n <= mig_7series_0_ddr3_RESET_N;
  DDR3_we_n <= mig_7series_0_ddr3_WE_N;
  DIAMOND_TRIG_IN_1(1 downto 0) <= DIAMOND_TRIG_IN(1 downto 0);
  DRS4_CH3(1 downto 0) <= trigger_logic_AXI_0_DRS4_CH3(1 downto 0);
  DRS4_TRIG_IN_CH2(1 downto 0) <= trigger_logic_AXI_0_DRS4_TRIG_IN_CH2(1 downto 0);
  FASTOR_TRIG_IN_1(15 downto 0) <= FASTOR_TRIG_IN(15 downto 0);
  LCD_7Bits_tri_o(6 downto 0) <= axi_gpio_0_GPIO2_TRI_O(6 downto 0);
  LED_4Bits_tri_o(3 downto 0) <= axi_gpio_0_GPIO_TRI_O(3 downto 0);
  LOGIC_DRS4_CH4(1 downto 0) <= trigger_logic_AXI_0_LOGIC_DRS4_CH4(1 downto 0);
  LOGIC_PREAMP_TP_SEL(1 downto 0) <= trigger_logic_AXI_0_LOGIC_PREAMP_TP_SEL(1 downto 0);
  PSI46_ATB_DTB(1 downto 0) <= trigger_logic_AXI_0_PSI46_ATB_DTB(1 downto 0);
  PULSER_DRS4_CH4(1 downto 0) <= trigger_logic_AXI_0_PULSER_DRS4_CH4(1 downto 0);
  PULSER_PREAMP_TP_SEL(1 downto 0) <= trigger_logic_AXI_0_PULSER_PREAMP_TP_SEL(1 downto 0);
  PULSER_PREAMP_TP_TTL(1 downto 0) <= trigger_logic_AXI_0_PULSER_PREAMP_TP_TTL(1 downto 0);
  RS232_Uart_txd <= axi_uartlite_0_uart_TxD;
  SCINTILLATOR_TRIG_IN_1(1 downto 0) <= SCINTILLATOR_TRIG_IN(1 downto 0);
  TRIG_1 <= trigger_logic_AXI_0_TRIG_1;
  TRIG_2 <= trigger_logic_AXI_0_TRIG_2;
  TRIG_3 <= trigger_logic_AXI_0_TRIG_3;
  axi_ethernet_0_mdio_MDIO_I <= mdio_mdio_i;
  axi_ethernet_0_rgmii_RD(3 downto 0) <= rgmii_rd(3 downto 0);
  axi_ethernet_0_rgmii_RXC <= rgmii_rxc;
  axi_ethernet_0_rgmii_RX_CTL <= rgmii_rx_ctl;
  axi_quad_spi_0_SPI_0_IO0_I <= spi_flash_io0_i;
  axi_quad_spi_0_SPI_0_IO1_I <= spi_flash_io1_i;
  axi_quad_spi_0_SPI_0_IO2_I <= spi_flash_io2_i;
  axi_quad_spi_0_SPI_0_IO3_I <= spi_flash_io3_i;
  axi_quad_spi_0_SPI_0_SS_I(0) <= spi_flash_ss_i(0);
  axi_uartlite_0_uart_RxD <= RS232_Uart_rxd;
  mdio_mdc <= axi_ethernet_0_mdio_MDC;
  mdio_mdio_o <= axi_ethernet_0_mdio_MDIO_O;
  mdio_mdio_t <= axi_ethernet_0_mdio_MDIO_T;
  phy_reset_out <= axi_ethernet_0_phy_rst_n;
  reset_1 <= reset;
  rgmii_td(3 downto 0) <= axi_ethernet_0_rgmii_TD(3 downto 0);
  rgmii_tx_ctl <= axi_ethernet_0_rgmii_TX_CTL;
  rgmii_txc <= axi_ethernet_0_rgmii_TXC;
  spi_flash_io0_o <= axi_quad_spi_0_SPI_0_IO0_O;
  spi_flash_io0_t <= axi_quad_spi_0_SPI_0_IO0_T;
  spi_flash_io1_o <= axi_quad_spi_0_SPI_0_IO1_O;
  spi_flash_io1_t <= axi_quad_spi_0_SPI_0_IO1_T;
  spi_flash_io2_o <= axi_quad_spi_0_SPI_0_IO2_O;
  spi_flash_io2_t <= axi_quad_spi_0_SPI_0_IO2_T;
  spi_flash_io3_o <= axi_quad_spi_0_SPI_0_IO3_O;
  spi_flash_io3_t <= axi_quad_spi_0_SPI_0_IO3_T;
  spi_flash_ss_o(0) <= axi_quad_spi_0_SPI_0_SS_O(0);
  spi_flash_ss_t <= axi_quad_spi_0_SPI_0_SS_T;
  sys_clk_n_1 <= sys_clk_n;
  sys_clk_p_1 <= sys_clk_p;
GND: unisim.vcomponents.GND
     port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => VCC_1
    );
axi_bram_ctrl_0: component design_1_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(11 downto 0) => axi_bram_ctrl_0_bram_porta_ADDR(11 downto 0),
      bram_addr_b(11 downto 0) => axi_bram_ctrl_0_bram_portb_ADDR(11 downto 0),
      bram_clk_a => axi_bram_ctrl_0_bram_porta_CLK,
      bram_clk_b => axi_bram_ctrl_0_bram_portb_CLK,
      bram_en_a => axi_bram_ctrl_0_bram_porta_EN,
      bram_en_b => axi_bram_ctrl_0_bram_portb_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_bram_porta_DOUT(31 downto 0),
      bram_rddata_b(31 downto 0) => axi_bram_ctrl_0_bram_portb_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_bram_porta_RST,
      bram_rst_b => axi_bram_ctrl_0_bram_portb_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_bram_porta_WE(3 downto 0),
      bram_we_b(3 downto 0) => axi_bram_ctrl_0_bram_portb_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_bram_porta_DIN(31 downto 0),
      bram_wrdata_b(31 downto 0) => axi_bram_ctrl_0_bram_portb_DIN(31 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(11 downto 0) => axi_mem_intercon_m00_axi_ARADDR(11 downto 0),
      s_axi_arburst(1 downto 0) => axi_mem_intercon_m00_axi_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_mem_intercon_m00_axi_ARCACHE(3 downto 0),
      s_axi_aresetn => proc_sys_reset_1_peripheral_aresetn(0),
      s_axi_arid(2 downto 0) => axi_mem_intercon_m00_axi_ARID(2 downto 0),
      s_axi_arlen(7 downto 0) => axi_mem_intercon_m00_axi_ARLEN(7 downto 0),
      s_axi_arlock => axi_mem_intercon_m00_axi_ARLOCK(0),
      s_axi_arprot(2 downto 0) => axi_mem_intercon_m00_axi_ARPROT(2 downto 0),
      s_axi_arready => axi_mem_intercon_m00_axi_ARREADY,
      s_axi_arsize(2 downto 0) => axi_mem_intercon_m00_axi_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_mem_intercon_m00_axi_ARVALID(0),
      s_axi_awaddr(11 downto 0) => axi_mem_intercon_m00_axi_AWADDR(11 downto 0),
      s_axi_awburst(1 downto 0) => axi_mem_intercon_m00_axi_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_mem_intercon_m00_axi_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => axi_mem_intercon_m00_axi_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => axi_mem_intercon_m00_axi_AWLEN(7 downto 0),
      s_axi_awlock => axi_mem_intercon_m00_axi_AWLOCK(0),
      s_axi_awprot(2 downto 0) => axi_mem_intercon_m00_axi_AWPROT(2 downto 0),
      s_axi_awready => axi_mem_intercon_m00_axi_AWREADY,
      s_axi_awsize(2 downto 0) => axi_mem_intercon_m00_axi_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_mem_intercon_m00_axi_AWVALID(0),
      s_axi_bid(2 downto 0) => axi_mem_intercon_m00_axi_BID(2 downto 0),
      s_axi_bready => axi_mem_intercon_m00_axi_BREADY(0),
      s_axi_bresp(1 downto 0) => axi_mem_intercon_m00_axi_BRESP(1 downto 0),
      s_axi_bvalid => axi_mem_intercon_m00_axi_BVALID,
      s_axi_rdata(31 downto 0) => axi_mem_intercon_m00_axi_RDATA(31 downto 0),
      s_axi_rid(2 downto 0) => axi_mem_intercon_m00_axi_RID(2 downto 0),
      s_axi_rlast => axi_mem_intercon_m00_axi_RLAST,
      s_axi_rready => axi_mem_intercon_m00_axi_RREADY(0),
      s_axi_rresp(1 downto 0) => axi_mem_intercon_m00_axi_RRESP(1 downto 0),
      s_axi_rvalid => axi_mem_intercon_m00_axi_RVALID,
      s_axi_wdata(31 downto 0) => axi_mem_intercon_m00_axi_WDATA(31 downto 0),
      s_axi_wlast => axi_mem_intercon_m00_axi_WLAST(0),
      s_axi_wready => axi_mem_intercon_m00_axi_WREADY,
      s_axi_wstrb(3 downto 0) => axi_mem_intercon_m00_axi_WSTRB(3 downto 0),
      s_axi_wvalid => axi_mem_intercon_m00_axi_WVALID(0)
    );
axi_ethernet_0: component design_1_axi_ethernet_0_0
     port map (
      axi_rxd_arstn => axi_ethernet_0_dma_s2mm_prmry_reset_out_n,
      axi_rxs_arstn => axi_ethernet_0_dma_s2mm_sts_reset_out_n,
      axi_txc_arstn => axi_ethernet_0_dma_mm2s_cntrl_reset_out_n,
      axi_txd_arstn => axi_ethernet_0_dma_mm2s_prmry_reset_out_n,
      axis_clk => microblaze_0_Clk,
      gtx_clk => clk_wiz_0_clk_out1,
      gtx_clk90_out => NLW_axi_ethernet_0_gtx_clk90_out_UNCONNECTED,
      gtx_clk_out => NLW_axi_ethernet_0_gtx_clk_out_UNCONNECTED,
      interrupt => axi_ethernet_0_interrupt,
      m_axis_rxd_tdata(31 downto 0) => axi_ethernet_0_m_axis_rxd_TDATA(31 downto 0),
      m_axis_rxd_tkeep(3 downto 0) => axi_ethernet_0_m_axis_rxd_TKEEP(3 downto 0),
      m_axis_rxd_tlast => axi_ethernet_0_m_axis_rxd_TLAST,
      m_axis_rxd_tready => axi_ethernet_0_m_axis_rxd_TREADY,
      m_axis_rxd_tvalid => axi_ethernet_0_m_axis_rxd_TVALID,
      m_axis_rxs_tdata(31 downto 0) => axi_ethernet_0_m_axis_rxs_TDATA(31 downto 0),
      m_axis_rxs_tkeep(3 downto 0) => axi_ethernet_0_m_axis_rxs_TKEEP(3 downto 0),
      m_axis_rxs_tlast => axi_ethernet_0_m_axis_rxs_TLAST,
      m_axis_rxs_tready => axi_ethernet_0_m_axis_rxs_TREADY,
      m_axis_rxs_tvalid => axi_ethernet_0_m_axis_rxs_TVALID,
      mac_irq => NLW_axi_ethernet_0_mac_irq_UNCONNECTED,
      mdio_mdc => axi_ethernet_0_mdio_MDC,
      mdio_mdio_i => axi_ethernet_0_mdio_MDIO_I,
      mdio_mdio_o => axi_ethernet_0_mdio_MDIO_O,
      mdio_mdio_t => axi_ethernet_0_mdio_MDIO_T,
      phy_rst_n => axi_ethernet_0_phy_rst_n,
      ref_clk => mig_7series_0_ui_addn_clk_0,
      rgmii_rd(3 downto 0) => axi_ethernet_0_rgmii_RD(3 downto 0),
      rgmii_rx_ctl => axi_ethernet_0_rgmii_RX_CTL,
      rgmii_rxc => axi_ethernet_0_rgmii_RXC,
      rgmii_td(3 downto 0) => axi_ethernet_0_rgmii_TD(3 downto 0),
      rgmii_tx_ctl => axi_ethernet_0_rgmii_TX_CTL,
      rgmii_txc => axi_ethernet_0_rgmii_TXC,
      s_axi_araddr(17 downto 0) => microblaze_0_axi_periph_m04_axi_ARADDR(17 downto 0),
      s_axi_arready => microblaze_0_axi_periph_m04_axi_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_m04_axi_ARVALID(0),
      s_axi_awaddr(17 downto 0) => microblaze_0_axi_periph_m04_axi_AWADDR(17 downto 0),
      s_axi_awready => microblaze_0_axi_periph_m04_axi_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_m04_axi_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_m04_axi_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_m04_axi_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_m04_axi_BVALID,
      s_axi_lite_clk => microblaze_0_Clk,
      s_axi_lite_resetn => proc_sys_reset_1_peripheral_aresetn(0),
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_m04_axi_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_m04_axi_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_m04_axi_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_m04_axi_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_m04_axi_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_m04_axi_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_m04_axi_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_m04_axi_WVALID(0),
      s_axis_txc_tdata(31 downto 0) => axi_ethernet_0_dma_m_axis_cntrl_TDATA(31 downto 0),
      s_axis_txc_tkeep(3 downto 0) => axi_ethernet_0_dma_m_axis_cntrl_TKEEP(3 downto 0),
      s_axis_txc_tlast => axi_ethernet_0_dma_m_axis_cntrl_TLAST,
      s_axis_txc_tready => axi_ethernet_0_dma_m_axis_cntrl_TREADY,
      s_axis_txc_tvalid => axi_ethernet_0_dma_m_axis_cntrl_TVALID,
      s_axis_txd_tdata(31 downto 0) => axi_ethernet_0_dma_m_axis_mm2s_TDATA(31 downto 0),
      s_axis_txd_tkeep(3 downto 0) => axi_ethernet_0_dma_m_axis_mm2s_TKEEP(3 downto 0),
      s_axis_txd_tlast => axi_ethernet_0_dma_m_axis_mm2s_TLAST,
      s_axis_txd_tready => axi_ethernet_0_dma_m_axis_mm2s_TREADY,
      s_axis_txd_tvalid => axi_ethernet_0_dma_m_axis_mm2s_TVALID
    );
axi_ethernet_0_dma: component design_1_axi_ethernet_0_dma_0
     port map (
      axi_resetn => proc_sys_reset_1_peripheral_aresetn(0),
      m_axi_mm2s_aclk => microblaze_0_Clk,
      m_axi_mm2s_araddr(31 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_ethernet_0_dma_m_axi_mm2s_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_ethernet_0_dma_m_axi_mm2s_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_ethernet_0_dma_m_axi_mm2s_RLAST,
      m_axi_mm2s_rready => axi_ethernet_0_dma_m_axi_mm2s_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_ethernet_0_dma_m_axi_mm2s_RVALID,
      m_axi_s2mm_aclk => microblaze_0_Clk,
      m_axi_s2mm_awaddr(31 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_ethernet_0_dma_m_axi_s2mm_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_ethernet_0_dma_m_axi_s2mm_AWVALID,
      m_axi_s2mm_bready => axi_ethernet_0_dma_m_axi_s2mm_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_ethernet_0_dma_m_axi_s2mm_BVALID,
      m_axi_s2mm_wdata(31 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_ethernet_0_dma_m_axi_s2mm_WLAST,
      m_axi_s2mm_wready => axi_ethernet_0_dma_m_axi_s2mm_WREADY,
      m_axi_s2mm_wstrb(3 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_ethernet_0_dma_m_axi_s2mm_WVALID,
      m_axi_sg_aclk => microblaze_0_Clk,
      m_axi_sg_araddr(31 downto 0) => axi_ethernet_0_dma_m_axi_sg_ARADDR(31 downto 0),
      m_axi_sg_arburst(1 downto 0) => axi_ethernet_0_dma_m_axi_sg_ARBURST(1 downto 0),
      m_axi_sg_arcache(3 downto 0) => axi_ethernet_0_dma_m_axi_sg_ARCACHE(3 downto 0),
      m_axi_sg_arlen(7 downto 0) => axi_ethernet_0_dma_m_axi_sg_ARLEN(7 downto 0),
      m_axi_sg_arprot(2 downto 0) => axi_ethernet_0_dma_m_axi_sg_ARPROT(2 downto 0),
      m_axi_sg_arready => axi_ethernet_0_dma_m_axi_sg_ARREADY,
      m_axi_sg_arsize(2 downto 0) => axi_ethernet_0_dma_m_axi_sg_ARSIZE(2 downto 0),
      m_axi_sg_arvalid => axi_ethernet_0_dma_m_axi_sg_ARVALID,
      m_axi_sg_awaddr(31 downto 0) => axi_ethernet_0_dma_m_axi_sg_AWADDR(31 downto 0),
      m_axi_sg_awburst(1 downto 0) => axi_ethernet_0_dma_m_axi_sg_AWBURST(1 downto 0),
      m_axi_sg_awcache(3 downto 0) => axi_ethernet_0_dma_m_axi_sg_AWCACHE(3 downto 0),
      m_axi_sg_awlen(7 downto 0) => axi_ethernet_0_dma_m_axi_sg_AWLEN(7 downto 0),
      m_axi_sg_awprot(2 downto 0) => axi_ethernet_0_dma_m_axi_sg_AWPROT(2 downto 0),
      m_axi_sg_awready => axi_ethernet_0_dma_m_axi_sg_AWREADY,
      m_axi_sg_awsize(2 downto 0) => axi_ethernet_0_dma_m_axi_sg_AWSIZE(2 downto 0),
      m_axi_sg_awvalid => axi_ethernet_0_dma_m_axi_sg_AWVALID,
      m_axi_sg_bready => axi_ethernet_0_dma_m_axi_sg_BREADY,
      m_axi_sg_bresp(1 downto 0) => axi_ethernet_0_dma_m_axi_sg_BRESP(1 downto 0),
      m_axi_sg_bvalid => axi_ethernet_0_dma_m_axi_sg_BVALID,
      m_axi_sg_rdata(31 downto 0) => axi_ethernet_0_dma_m_axi_sg_RDATA(31 downto 0),
      m_axi_sg_rlast => axi_ethernet_0_dma_m_axi_sg_RLAST,
      m_axi_sg_rready => axi_ethernet_0_dma_m_axi_sg_RREADY,
      m_axi_sg_rresp(1 downto 0) => axi_ethernet_0_dma_m_axi_sg_RRESP(1 downto 0),
      m_axi_sg_rvalid => axi_ethernet_0_dma_m_axi_sg_RVALID,
      m_axi_sg_wdata(31 downto 0) => axi_ethernet_0_dma_m_axi_sg_WDATA(31 downto 0),
      m_axi_sg_wlast => axi_ethernet_0_dma_m_axi_sg_WLAST,
      m_axi_sg_wready => axi_ethernet_0_dma_m_axi_sg_WREADY,
      m_axi_sg_wstrb(3 downto 0) => axi_ethernet_0_dma_m_axi_sg_WSTRB(3 downto 0),
      m_axi_sg_wvalid => axi_ethernet_0_dma_m_axi_sg_WVALID,
      m_axis_mm2s_cntrl_tdata(31 downto 0) => axi_ethernet_0_dma_m_axis_cntrl_TDATA(31 downto 0),
      m_axis_mm2s_cntrl_tkeep(3 downto 0) => axi_ethernet_0_dma_m_axis_cntrl_TKEEP(3 downto 0),
      m_axis_mm2s_cntrl_tlast => axi_ethernet_0_dma_m_axis_cntrl_TLAST,
      m_axis_mm2s_cntrl_tready => axi_ethernet_0_dma_m_axis_cntrl_TREADY,
      m_axis_mm2s_cntrl_tvalid => axi_ethernet_0_dma_m_axis_cntrl_TVALID,
      m_axis_mm2s_tdata(31 downto 0) => axi_ethernet_0_dma_m_axis_mm2s_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => axi_ethernet_0_dma_m_axis_mm2s_TKEEP(3 downto 0),
      m_axis_mm2s_tlast => axi_ethernet_0_dma_m_axis_mm2s_TLAST,
      m_axis_mm2s_tready => axi_ethernet_0_dma_m_axis_mm2s_TREADY,
      m_axis_mm2s_tvalid => axi_ethernet_0_dma_m_axis_mm2s_TVALID,
      mm2s_cntrl_reset_out_n => axi_ethernet_0_dma_mm2s_cntrl_reset_out_n,
      mm2s_introut => axi_ethernet_0_dma_mm2s_introut,
      mm2s_prmry_reset_out_n => axi_ethernet_0_dma_mm2s_prmry_reset_out_n,
      s2mm_introut => axi_ethernet_0_dma_s2mm_introut,
      s2mm_prmry_reset_out_n => axi_ethernet_0_dma_s2mm_prmry_reset_out_n,
      s2mm_sts_reset_out_n => axi_ethernet_0_dma_s2mm_sts_reset_out_n,
      s_axi_lite_aclk => microblaze_0_Clk,
      s_axi_lite_araddr(9 downto 0) => microblaze_0_axi_periph_m03_axi_ARADDR(9 downto 0),
      s_axi_lite_arready => microblaze_0_axi_periph_m03_axi_ARREADY,
      s_axi_lite_arvalid => microblaze_0_axi_periph_m03_axi_ARVALID(0),
      s_axi_lite_awaddr(9 downto 0) => microblaze_0_axi_periph_m03_axi_AWADDR(9 downto 0),
      s_axi_lite_awready => microblaze_0_axi_periph_m03_axi_AWREADY,
      s_axi_lite_awvalid => microblaze_0_axi_periph_m03_axi_AWVALID(0),
      s_axi_lite_bready => microblaze_0_axi_periph_m03_axi_BREADY(0),
      s_axi_lite_bresp(1 downto 0) => microblaze_0_axi_periph_m03_axi_BRESP(1 downto 0),
      s_axi_lite_bvalid => microblaze_0_axi_periph_m03_axi_BVALID,
      s_axi_lite_rdata(31 downto 0) => microblaze_0_axi_periph_m03_axi_RDATA(31 downto 0),
      s_axi_lite_rready => microblaze_0_axi_periph_m03_axi_RREADY(0),
      s_axi_lite_rresp(1 downto 0) => microblaze_0_axi_periph_m03_axi_RRESP(1 downto 0),
      s_axi_lite_rvalid => microblaze_0_axi_periph_m03_axi_RVALID,
      s_axi_lite_wdata(31 downto 0) => microblaze_0_axi_periph_m03_axi_WDATA(31 downto 0),
      s_axi_lite_wready => microblaze_0_axi_periph_m03_axi_WREADY,
      s_axi_lite_wvalid => microblaze_0_axi_periph_m03_axi_WVALID(0),
      s_axis_s2mm_sts_tdata(31 downto 0) => axi_ethernet_0_m_axis_rxs_TDATA(31 downto 0),
      s_axis_s2mm_sts_tkeep(3 downto 0) => axi_ethernet_0_m_axis_rxs_TKEEP(3 downto 0),
      s_axis_s2mm_sts_tlast => axi_ethernet_0_m_axis_rxs_TLAST,
      s_axis_s2mm_sts_tready => axi_ethernet_0_m_axis_rxs_TREADY,
      s_axis_s2mm_sts_tvalid => axi_ethernet_0_m_axis_rxs_TVALID,
      s_axis_s2mm_tdata(31 downto 0) => axi_ethernet_0_m_axis_rxd_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => axi_ethernet_0_m_axis_rxd_TKEEP(3 downto 0),
      s_axis_s2mm_tlast => axi_ethernet_0_m_axis_rxd_TLAST,
      s_axis_s2mm_tready => axi_ethernet_0_m_axis_rxd_TREADY,
      s_axis_s2mm_tvalid => axi_ethernet_0_m_axis_rxd_TVALID
    );
axi_gpio_0: component design_1_axi_gpio_0_0
     port map (
      gpio2_io_o(6 downto 0) => axi_gpio_0_GPIO2_TRI_O(6 downto 0),
      gpio_io_o(3 downto 0) => axi_gpio_0_GPIO_TRI_O(3 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M08_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_1_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M08_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M08_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M08_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M08_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M08_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M08_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M08_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M08_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M08_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M08_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M08_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M08_AXI_WVALID
    );
axi_mem_intercon: entity work.design_1_axi_mem_intercon_1
     port map (
      ACLK => microblaze_0_Clk,
      ARESETN(0) => proc_sys_reset_1_interconnect_aresetn(0),
      M00_ACLK => microblaze_0_Clk,
      M00_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      M00_AXI_araddr(11 downto 0) => axi_mem_intercon_m00_axi_ARADDR(11 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_mem_intercon_m00_axi_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_mem_intercon_m00_axi_ARCACHE(3 downto 0),
      M00_AXI_arid(2 downto 0) => axi_mem_intercon_m00_axi_ARID(2 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_mem_intercon_m00_axi_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_mem_intercon_m00_axi_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => axi_mem_intercon_m00_axi_ARPROT(2 downto 0),
      M00_AXI_arready(0) => axi_mem_intercon_m00_axi_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_mem_intercon_m00_axi_ARSIZE(2 downto 0),
      M00_AXI_arvalid(0) => axi_mem_intercon_m00_axi_ARVALID(0),
      M00_AXI_awaddr(11 downto 0) => axi_mem_intercon_m00_axi_AWADDR(11 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_mem_intercon_m00_axi_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_mem_intercon_m00_axi_AWCACHE(3 downto 0),
      M00_AXI_awid(2 downto 0) => axi_mem_intercon_m00_axi_AWID(2 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_mem_intercon_m00_axi_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_mem_intercon_m00_axi_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => axi_mem_intercon_m00_axi_AWPROT(2 downto 0),
      M00_AXI_awready(0) => axi_mem_intercon_m00_axi_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_mem_intercon_m00_axi_AWSIZE(2 downto 0),
      M00_AXI_awvalid(0) => axi_mem_intercon_m00_axi_AWVALID(0),
      M00_AXI_bid(2 downto 0) => axi_mem_intercon_m00_axi_BID(2 downto 0),
      M00_AXI_bready(0) => axi_mem_intercon_m00_axi_BREADY(0),
      M00_AXI_bresp(1 downto 0) => axi_mem_intercon_m00_axi_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => axi_mem_intercon_m00_axi_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_mem_intercon_m00_axi_RDATA(31 downto 0),
      M00_AXI_rid(2 downto 0) => axi_mem_intercon_m00_axi_RID(2 downto 0),
      M00_AXI_rlast(0) => axi_mem_intercon_m00_axi_RLAST,
      M00_AXI_rready(0) => axi_mem_intercon_m00_axi_RREADY(0),
      M00_AXI_rresp(1 downto 0) => axi_mem_intercon_m00_axi_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => axi_mem_intercon_m00_axi_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_mem_intercon_m00_axi_WDATA(31 downto 0),
      M00_AXI_wlast(0) => axi_mem_intercon_m00_axi_WLAST(0),
      M00_AXI_wready(0) => axi_mem_intercon_m00_axi_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_mem_intercon_m00_axi_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => axi_mem_intercon_m00_axi_WVALID(0),
      M01_ACLK => microblaze_0_Clk,
      M01_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      M01_AXI_araddr(29 downto 0) => axi_mem_intercon_m01_axi_ARADDR(29 downto 0),
      M01_AXI_arburst(1 downto 0) => axi_mem_intercon_m01_axi_ARBURST(1 downto 0),
      M01_AXI_arcache(3 downto 0) => axi_mem_intercon_m01_axi_ARCACHE(3 downto 0),
      M01_AXI_arid(2 downto 0) => axi_mem_intercon_m01_axi_ARID(2 downto 0),
      M01_AXI_arlen(7 downto 0) => axi_mem_intercon_m01_axi_ARLEN(7 downto 0),
      M01_AXI_arlock => axi_mem_intercon_m01_axi_ARLOCK,
      M01_AXI_arprot(2 downto 0) => axi_mem_intercon_m01_axi_ARPROT(2 downto 0),
      M01_AXI_arqos(3 downto 0) => axi_mem_intercon_m01_axi_ARQOS(3 downto 0),
      M01_AXI_arready => axi_mem_intercon_m01_axi_ARREADY,
      M01_AXI_arsize(2 downto 0) => axi_mem_intercon_m01_axi_ARSIZE(2 downto 0),
      M01_AXI_arvalid => axi_mem_intercon_m01_axi_ARVALID,
      M01_AXI_awaddr(29 downto 0) => axi_mem_intercon_m01_axi_AWADDR(29 downto 0),
      M01_AXI_awburst(1 downto 0) => axi_mem_intercon_m01_axi_AWBURST(1 downto 0),
      M01_AXI_awcache(3 downto 0) => axi_mem_intercon_m01_axi_AWCACHE(3 downto 0),
      M01_AXI_awid(2 downto 0) => axi_mem_intercon_m01_axi_AWID(2 downto 0),
      M01_AXI_awlen(7 downto 0) => axi_mem_intercon_m01_axi_AWLEN(7 downto 0),
      M01_AXI_awlock => axi_mem_intercon_m01_axi_AWLOCK,
      M01_AXI_awprot(2 downto 0) => axi_mem_intercon_m01_axi_AWPROT(2 downto 0),
      M01_AXI_awqos(3 downto 0) => axi_mem_intercon_m01_axi_AWQOS(3 downto 0),
      M01_AXI_awready => axi_mem_intercon_m01_axi_AWREADY,
      M01_AXI_awsize(2 downto 0) => axi_mem_intercon_m01_axi_AWSIZE(2 downto 0),
      M01_AXI_awvalid => axi_mem_intercon_m01_axi_AWVALID,
      M01_AXI_bid(2 downto 0) => axi_mem_intercon_m01_axi_BID(2 downto 0),
      M01_AXI_bready => axi_mem_intercon_m01_axi_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_mem_intercon_m01_axi_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_mem_intercon_m01_axi_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_mem_intercon_m01_axi_RDATA(31 downto 0),
      M01_AXI_rid(2 downto 0) => axi_mem_intercon_m01_axi_RID(2 downto 0),
      M01_AXI_rlast => axi_mem_intercon_m01_axi_RLAST,
      M01_AXI_rready => axi_mem_intercon_m01_axi_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_mem_intercon_m01_axi_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_mem_intercon_m01_axi_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_mem_intercon_m01_axi_WDATA(31 downto 0),
      M01_AXI_wlast => axi_mem_intercon_m01_axi_WLAST,
      M01_AXI_wready => axi_mem_intercon_m01_axi_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_mem_intercon_m01_axi_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_mem_intercon_m01_axi_WVALID,
      S00_ACLK => microblaze_0_Clk,
      S00_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => microblaze_0_m_axi_dc_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => microblaze_0_m_axi_dc_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => microblaze_0_m_axi_dc_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => microblaze_0_m_axi_dc_ARLEN(7 downto 0),
      S00_AXI_arlock => microblaze_0_m_axi_dc_ARLOCK,
      S00_AXI_arprot(2 downto 0) => microblaze_0_m_axi_dc_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => microblaze_0_m_axi_dc_ARQOS(3 downto 0),
      S00_AXI_arready => microblaze_0_m_axi_dc_ARREADY,
      S00_AXI_arsize(2 downto 0) => microblaze_0_m_axi_dc_ARSIZE(2 downto 0),
      S00_AXI_arvalid => microblaze_0_m_axi_dc_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_0_m_axi_dc_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => microblaze_0_m_axi_dc_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => microblaze_0_m_axi_dc_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => microblaze_0_m_axi_dc_AWLEN(7 downto 0),
      S00_AXI_awlock => microblaze_0_m_axi_dc_AWLOCK,
      S00_AXI_awprot(2 downto 0) => microblaze_0_m_axi_dc_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => microblaze_0_m_axi_dc_AWQOS(3 downto 0),
      S00_AXI_awready => microblaze_0_m_axi_dc_AWREADY,
      S00_AXI_awsize(2 downto 0) => microblaze_0_m_axi_dc_AWSIZE(2 downto 0),
      S00_AXI_awvalid => microblaze_0_m_axi_dc_AWVALID,
      S00_AXI_bready => microblaze_0_m_axi_dc_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_0_m_axi_dc_BRESP(1 downto 0),
      S00_AXI_bvalid => microblaze_0_m_axi_dc_BVALID,
      S00_AXI_rdata(31 downto 0) => microblaze_0_m_axi_dc_RDATA(31 downto 0),
      S00_AXI_rlast => microblaze_0_m_axi_dc_RLAST,
      S00_AXI_rready => microblaze_0_m_axi_dc_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_0_m_axi_dc_RRESP(1 downto 0),
      S00_AXI_rvalid => microblaze_0_m_axi_dc_RVALID,
      S00_AXI_wdata(31 downto 0) => microblaze_0_m_axi_dc_WDATA(31 downto 0),
      S00_AXI_wlast => microblaze_0_m_axi_dc_WLAST,
      S00_AXI_wready => microblaze_0_m_axi_dc_WREADY,
      S00_AXI_wstrb(3 downto 0) => microblaze_0_m_axi_dc_WSTRB(3 downto 0),
      S00_AXI_wvalid => microblaze_0_m_axi_dc_WVALID,
      S01_ACLK => microblaze_0_Clk,
      S01_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => microblaze_0_m_axi_ic_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => microblaze_0_m_axi_ic_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => microblaze_0_m_axi_ic_ARCACHE(3 downto 0),
      S01_AXI_arlen(7 downto 0) => microblaze_0_m_axi_ic_ARLEN(7 downto 0),
      S01_AXI_arlock => microblaze_0_m_axi_ic_ARLOCK,
      S01_AXI_arprot(2 downto 0) => microblaze_0_m_axi_ic_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => microblaze_0_m_axi_ic_ARQOS(3 downto 0),
      S01_AXI_arready => microblaze_0_m_axi_ic_ARREADY,
      S01_AXI_arsize(2 downto 0) => microblaze_0_m_axi_ic_ARSIZE(2 downto 0),
      S01_AXI_arvalid => microblaze_0_m_axi_ic_ARVALID,
      S01_AXI_rdata(31 downto 0) => microblaze_0_m_axi_ic_RDATA(31 downto 0),
      S01_AXI_rlast => microblaze_0_m_axi_ic_RLAST,
      S01_AXI_rready => microblaze_0_m_axi_ic_RREADY,
      S01_AXI_rresp(1 downto 0) => microblaze_0_m_axi_ic_RRESP(1 downto 0),
      S01_AXI_rvalid => microblaze_0_m_axi_ic_RVALID,
      S02_ACLK => microblaze_0_Clk,
      S02_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      S02_AXI_awaddr(31 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_AWCACHE(3 downto 0),
      S02_AXI_awlen(7 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_AWLEN(7 downto 0),
      S02_AXI_awprot(2 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_AWPROT(2 downto 0),
      S02_AXI_awready => axi_ethernet_0_dma_m_axi_s2mm_AWREADY,
      S02_AXI_awsize(2 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_AWSIZE(2 downto 0),
      S02_AXI_awvalid => axi_ethernet_0_dma_m_axi_s2mm_AWVALID,
      S02_AXI_bready => axi_ethernet_0_dma_m_axi_s2mm_BREADY,
      S02_AXI_bresp(1 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_BRESP(1 downto 0),
      S02_AXI_bvalid => axi_ethernet_0_dma_m_axi_s2mm_BVALID,
      S02_AXI_wdata(31 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_WDATA(31 downto 0),
      S02_AXI_wlast => axi_ethernet_0_dma_m_axi_s2mm_WLAST,
      S02_AXI_wready => axi_ethernet_0_dma_m_axi_s2mm_WREADY,
      S02_AXI_wstrb(3 downto 0) => axi_ethernet_0_dma_m_axi_s2mm_WSTRB(3 downto 0),
      S02_AXI_wvalid => axi_ethernet_0_dma_m_axi_s2mm_WVALID,
      S03_ACLK => microblaze_0_Clk,
      S03_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      S03_AXI_araddr(31 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_ARADDR(31 downto 0),
      S03_AXI_arburst(1 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_ARBURST(1 downto 0),
      S03_AXI_arcache(3 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_ARCACHE(3 downto 0),
      S03_AXI_arlen(7 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_ARLEN(7 downto 0),
      S03_AXI_arprot(2 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_ARPROT(2 downto 0),
      S03_AXI_arready => axi_ethernet_0_dma_m_axi_mm2s_ARREADY,
      S03_AXI_arsize(2 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_ARSIZE(2 downto 0),
      S03_AXI_arvalid => axi_ethernet_0_dma_m_axi_mm2s_ARVALID,
      S03_AXI_rdata(31 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_RDATA(31 downto 0),
      S03_AXI_rlast => axi_ethernet_0_dma_m_axi_mm2s_RLAST,
      S03_AXI_rready => axi_ethernet_0_dma_m_axi_mm2s_RREADY,
      S03_AXI_rresp(1 downto 0) => axi_ethernet_0_dma_m_axi_mm2s_RRESP(1 downto 0),
      S03_AXI_rvalid => axi_ethernet_0_dma_m_axi_mm2s_RVALID,
      S04_ACLK => microblaze_0_Clk,
      S04_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      S04_AXI_araddr(31 downto 0) => axi_ethernet_0_dma_m_axi_sg_ARADDR(31 downto 0),
      S04_AXI_arburst(1 downto 0) => axi_ethernet_0_dma_m_axi_sg_ARBURST(1 downto 0),
      S04_AXI_arcache(3 downto 0) => axi_ethernet_0_dma_m_axi_sg_ARCACHE(3 downto 0),
      S04_AXI_arlen(7 downto 0) => axi_ethernet_0_dma_m_axi_sg_ARLEN(7 downto 0),
      S04_AXI_arprot(2 downto 0) => axi_ethernet_0_dma_m_axi_sg_ARPROT(2 downto 0),
      S04_AXI_arready => axi_ethernet_0_dma_m_axi_sg_ARREADY,
      S04_AXI_arsize(2 downto 0) => axi_ethernet_0_dma_m_axi_sg_ARSIZE(2 downto 0),
      S04_AXI_arvalid => axi_ethernet_0_dma_m_axi_sg_ARVALID,
      S04_AXI_awaddr(31 downto 0) => axi_ethernet_0_dma_m_axi_sg_AWADDR(31 downto 0),
      S04_AXI_awburst(1 downto 0) => axi_ethernet_0_dma_m_axi_sg_AWBURST(1 downto 0),
      S04_AXI_awcache(3 downto 0) => axi_ethernet_0_dma_m_axi_sg_AWCACHE(3 downto 0),
      S04_AXI_awlen(7 downto 0) => axi_ethernet_0_dma_m_axi_sg_AWLEN(7 downto 0),
      S04_AXI_awprot(2 downto 0) => axi_ethernet_0_dma_m_axi_sg_AWPROT(2 downto 0),
      S04_AXI_awready => axi_ethernet_0_dma_m_axi_sg_AWREADY,
      S04_AXI_awsize(2 downto 0) => axi_ethernet_0_dma_m_axi_sg_AWSIZE(2 downto 0),
      S04_AXI_awvalid => axi_ethernet_0_dma_m_axi_sg_AWVALID,
      S04_AXI_bready => axi_ethernet_0_dma_m_axi_sg_BREADY,
      S04_AXI_bresp(1 downto 0) => axi_ethernet_0_dma_m_axi_sg_BRESP(1 downto 0),
      S04_AXI_bvalid => axi_ethernet_0_dma_m_axi_sg_BVALID,
      S04_AXI_rdata(31 downto 0) => axi_ethernet_0_dma_m_axi_sg_RDATA(31 downto 0),
      S04_AXI_rlast => axi_ethernet_0_dma_m_axi_sg_RLAST,
      S04_AXI_rready => axi_ethernet_0_dma_m_axi_sg_RREADY,
      S04_AXI_rresp(1 downto 0) => axi_ethernet_0_dma_m_axi_sg_RRESP(1 downto 0),
      S04_AXI_rvalid => axi_ethernet_0_dma_m_axi_sg_RVALID,
      S04_AXI_wdata(31 downto 0) => axi_ethernet_0_dma_m_axi_sg_WDATA(31 downto 0),
      S04_AXI_wlast => axi_ethernet_0_dma_m_axi_sg_WLAST,
      S04_AXI_wready => axi_ethernet_0_dma_m_axi_sg_WREADY,
      S04_AXI_wstrb(3 downto 0) => axi_ethernet_0_dma_m_axi_sg_WSTRB(3 downto 0),
      S04_AXI_wvalid => axi_ethernet_0_dma_m_axi_sg_WVALID
    );
axi_quad_spi_0: component design_1_axi_quad_spi_0_0
     port map (
      cfgclk => NLW_axi_quad_spi_0_cfgclk_UNCONNECTED,
      cfgmclk => NLW_axi_quad_spi_0_cfgmclk_UNCONNECTED,
      eos => NLW_axi_quad_spi_0_eos_UNCONNECTED,
      ext_spi_clk => microblaze_0_Clk,
      io0_i => axi_quad_spi_0_SPI_0_IO0_I,
      io0_o => axi_quad_spi_0_SPI_0_IO0_O,
      io0_t => axi_quad_spi_0_SPI_0_IO0_T,
      io1_i => axi_quad_spi_0_SPI_0_IO1_I,
      io1_o => axi_quad_spi_0_SPI_0_IO1_O,
      io1_t => axi_quad_spi_0_SPI_0_IO1_T,
      io2_i => axi_quad_spi_0_SPI_0_IO2_I,
      io2_o => axi_quad_spi_0_SPI_0_IO2_O,
      io2_t => axi_quad_spi_0_SPI_0_IO2_T,
      io3_i => axi_quad_spi_0_SPI_0_IO3_I,
      io3_o => axi_quad_spi_0_SPI_0_IO3_O,
      io3_t => axi_quad_spi_0_SPI_0_IO3_T,
      ip2intc_irpt => NLW_axi_quad_spi_0_ip2intc_irpt_UNCONNECTED,
      preq => NLW_axi_quad_spi_0_preq_UNCONNECTED,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(6 downto 0) => microblaze_0_axi_periph_M07_AXI_ARADDR(6 downto 0),
      s_axi_aresetn => proc_sys_reset_1_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M07_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M07_AXI_ARVALID,
      s_axi_awaddr(6 downto 0) => microblaze_0_axi_periph_M07_AXI_AWADDR(6 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M07_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M07_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M07_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M07_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M07_AXI_WVALID,
      ss_i(0) => axi_quad_spi_0_SPI_0_SS_I(0),
      ss_o(0) => axi_quad_spi_0_SPI_0_SS_O(0),
      ss_t => axi_quad_spi_0_SPI_0_SS_T
    );
axi_timer_0: component design_1_axi_timer_0_0
     port map (
      capturetrig0 => GND_1,
      capturetrig1 => GND_1,
      freeze => GND_1,
      generateout0 => NLW_axi_timer_0_generateout0_UNCONNECTED,
      generateout1 => NLW_axi_timer_0_generateout1_UNCONNECTED,
      interrupt => axi_timer_0_interrupt,
      pwm0 => NLW_axi_timer_0_pwm0_UNCONNECTED,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(4 downto 0) => microblaze_0_axi_periph_m01_axi_ARADDR(4 downto 0),
      s_axi_aresetn => proc_sys_reset_1_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_m01_axi_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_m01_axi_ARVALID(0),
      s_axi_awaddr(4 downto 0) => microblaze_0_axi_periph_m01_axi_AWADDR(4 downto 0),
      s_axi_awready => microblaze_0_axi_periph_m01_axi_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_m01_axi_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_m01_axi_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_m01_axi_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_m01_axi_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_m01_axi_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_m01_axi_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_m01_axi_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_m01_axi_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_m01_axi_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_m01_axi_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_m01_axi_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_m01_axi_WVALID(0)
    );
axi_uartlite_0: component design_1_axi_uartlite_0_0
     port map (
      interrupt => axi_uartlite_0_interrupt,
      rx => axi_uartlite_0_uart_RxD,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(3 downto 0) => microblaze_0_axi_periph_m02_axi_ARADDR(3 downto 0),
      s_axi_aresetn => proc_sys_reset_1_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_m02_axi_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_m02_axi_ARVALID(0),
      s_axi_awaddr(3 downto 0) => microblaze_0_axi_periph_m02_axi_AWADDR(3 downto 0),
      s_axi_awready => microblaze_0_axi_periph_m02_axi_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_m02_axi_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_m02_axi_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_m02_axi_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_m02_axi_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_m02_axi_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_m02_axi_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_m02_axi_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_m02_axi_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_m02_axi_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_m02_axi_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_m02_axi_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_m02_axi_WVALID(0),
      tx => axi_uartlite_0_uart_TxD
    );
blk_mem_gen_0: component design_1_blk_mem_gen_0_1
     port map (
      addra(31) => GND_1,
      addra(30) => GND_1,
      addra(29) => GND_1,
      addra(28) => GND_1,
      addra(27) => GND_1,
      addra(26) => GND_1,
      addra(25) => GND_1,
      addra(24) => GND_1,
      addra(23) => GND_1,
      addra(22) => GND_1,
      addra(21) => GND_1,
      addra(20) => GND_1,
      addra(19) => GND_1,
      addra(18) => GND_1,
      addra(17) => GND_1,
      addra(16) => GND_1,
      addra(15) => GND_1,
      addra(14) => GND_1,
      addra(13) => GND_1,
      addra(12) => GND_1,
      addra(11 downto 0) => axi_bram_ctrl_0_bram_porta_ADDR(11 downto 0),
      addrb(31) => GND_1,
      addrb(30) => GND_1,
      addrb(29) => GND_1,
      addrb(28) => GND_1,
      addrb(27) => GND_1,
      addrb(26) => GND_1,
      addrb(25) => GND_1,
      addrb(24) => GND_1,
      addrb(23) => GND_1,
      addrb(22) => GND_1,
      addrb(21) => GND_1,
      addrb(20) => GND_1,
      addrb(19) => GND_1,
      addrb(18) => GND_1,
      addrb(17) => GND_1,
      addrb(16) => GND_1,
      addrb(15) => GND_1,
      addrb(14) => GND_1,
      addrb(13) => GND_1,
      addrb(12) => GND_1,
      addrb(11 downto 0) => axi_bram_ctrl_0_bram_portb_ADDR(11 downto 0),
      clka => axi_bram_ctrl_0_bram_porta_CLK,
      clkb => axi_bram_ctrl_0_bram_portb_CLK,
      dina(31 downto 0) => axi_bram_ctrl_0_bram_porta_DIN(31 downto 0),
      dinb(31 downto 0) => axi_bram_ctrl_0_bram_portb_DIN(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_0_bram_porta_DOUT(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_0_bram_portb_DOUT(31 downto 0),
      ena => axi_bram_ctrl_0_bram_porta_EN,
      enb => axi_bram_ctrl_0_bram_portb_EN,
      rsta => axi_bram_ctrl_0_bram_porta_RST,
      rstb => axi_bram_ctrl_0_bram_portb_RST,
      wea(3 downto 0) => axi_bram_ctrl_0_bram_porta_WE(3 downto 0),
      web(3 downto 0) => axi_bram_ctrl_0_bram_portb_WE(3 downto 0)
    );
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_in1 => microblaze_0_Clk,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2,
      locked => clk_wiz_0_locked,
      reset => reset_1
    );
mdm_1: component design_1_mdm_1_0
     port map (
      Dbg_Capture_0 => mdm_1_MBDEBUG_0_CAPTURE,
      Dbg_Clk_0 => mdm_1_MBDEBUG_0_CLK,
      Dbg_Reg_En_0(0 to 7) => mdm_1_MBDEBUG_0_REG_EN(0 to 7),
      Dbg_Rst_0 => mdm_1_MBDEBUG_0_RST,
      Dbg_Shift_0 => mdm_1_MBDEBUG_0_SHIFT,
      Dbg_TDI_0 => mdm_1_MBDEBUG_0_TDI,
      Dbg_TDO_0 => mdm_1_MBDEBUG_0_TDO,
      Dbg_Update_0 => mdm_1_MBDEBUG_0_UPDATE,
      Debug_SYS_Rst => mdm_1_debug_sys_rst
    );
microblaze_0: component design_1_microblaze_0_0
     port map (
      Byte_Enable(0 to 3) => microblaze_0_dlmb_BE(0 to 3),
      Clk => microblaze_0_Clk,
      DCE => microblaze_0_dlmb_CE,
      DReady => microblaze_0_dlmb_READY,
      DUE => microblaze_0_dlmb_UE,
      DWait => microblaze_0_dlmb_WAIT,
      D_AS => microblaze_0_dlmb_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_0_dlmb_ABUS(0 to 31),
      Data_Read(0 to 31) => microblaze_0_dlmb_READDBUS(0 to 31),
      Data_Write(0 to 31) => microblaze_0_dlmb_WRITEDBUS(0 to 31),
      Dbg_Capture => mdm_1_MBDEBUG_0_CAPTURE,
      Dbg_Clk => mdm_1_MBDEBUG_0_CLK,
      Dbg_Reg_En(0 to 7) => mdm_1_MBDEBUG_0_REG_EN(0 to 7),
      Dbg_Shift => mdm_1_MBDEBUG_0_SHIFT,
      Dbg_TDI => mdm_1_MBDEBUG_0_TDI,
      Dbg_TDO => mdm_1_MBDEBUG_0_TDO,
      Dbg_Update => mdm_1_MBDEBUG_0_UPDATE,
      Debug_Rst => mdm_1_MBDEBUG_0_RST,
      ICE => microblaze_0_ilmb_CE,
      IFetch => microblaze_0_ilmb_READSTROBE,
      IReady => microblaze_0_ilmb_READY,
      IUE => microblaze_0_ilmb_UE,
      IWAIT => microblaze_0_ilmb_WAIT,
      I_AS => microblaze_0_ilmb_ADDRSTROBE,
      Instr(0 to 31) => microblaze_0_ilmb_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => microblaze_0_ilmb_ABUS(0 to 31),
      Interrupt => microblaze_0_interrupt_INTERRUPT,
      Interrupt_Ack(0 to 1) => microblaze_0_interrupt_ACK(0 to 1),
      Interrupt_Address(0) => microblaze_0_interrupt_ADDRESS(31),
      Interrupt_Address(1) => microblaze_0_interrupt_ADDRESS(30),
      Interrupt_Address(2) => microblaze_0_interrupt_ADDRESS(29),
      Interrupt_Address(3) => microblaze_0_interrupt_ADDRESS(28),
      Interrupt_Address(4) => microblaze_0_interrupt_ADDRESS(27),
      Interrupt_Address(5) => microblaze_0_interrupt_ADDRESS(26),
      Interrupt_Address(6) => microblaze_0_interrupt_ADDRESS(25),
      Interrupt_Address(7) => microblaze_0_interrupt_ADDRESS(24),
      Interrupt_Address(8) => microblaze_0_interrupt_ADDRESS(23),
      Interrupt_Address(9) => microblaze_0_interrupt_ADDRESS(22),
      Interrupt_Address(10) => microblaze_0_interrupt_ADDRESS(21),
      Interrupt_Address(11) => microblaze_0_interrupt_ADDRESS(20),
      Interrupt_Address(12) => microblaze_0_interrupt_ADDRESS(19),
      Interrupt_Address(13) => microblaze_0_interrupt_ADDRESS(18),
      Interrupt_Address(14) => microblaze_0_interrupt_ADDRESS(17),
      Interrupt_Address(15) => microblaze_0_interrupt_ADDRESS(16),
      Interrupt_Address(16) => microblaze_0_interrupt_ADDRESS(15),
      Interrupt_Address(17) => microblaze_0_interrupt_ADDRESS(14),
      Interrupt_Address(18) => microblaze_0_interrupt_ADDRESS(13),
      Interrupt_Address(19) => microblaze_0_interrupt_ADDRESS(12),
      Interrupt_Address(20) => microblaze_0_interrupt_ADDRESS(11),
      Interrupt_Address(21) => microblaze_0_interrupt_ADDRESS(10),
      Interrupt_Address(22) => microblaze_0_interrupt_ADDRESS(9),
      Interrupt_Address(23) => microblaze_0_interrupt_ADDRESS(8),
      Interrupt_Address(24) => microblaze_0_interrupt_ADDRESS(7),
      Interrupt_Address(25) => microblaze_0_interrupt_ADDRESS(6),
      Interrupt_Address(26) => microblaze_0_interrupt_ADDRESS(5),
      Interrupt_Address(27) => microblaze_0_interrupt_ADDRESS(4),
      Interrupt_Address(28) => microblaze_0_interrupt_ADDRESS(3),
      Interrupt_Address(29) => microblaze_0_interrupt_ADDRESS(2),
      Interrupt_Address(30) => microblaze_0_interrupt_ADDRESS(1),
      Interrupt_Address(31) => microblaze_0_interrupt_ADDRESS(0),
      M_AXI_DC_ARADDR(31 downto 0) => microblaze_0_m_axi_dc_ARADDR(31 downto 0),
      M_AXI_DC_ARBURST(1 downto 0) => microblaze_0_m_axi_dc_ARBURST(1 downto 0),
      M_AXI_DC_ARCACHE(3 downto 0) => microblaze_0_m_axi_dc_ARCACHE(3 downto 0),
      M_AXI_DC_ARID(0) => NLW_microblaze_0_M_AXI_DC_ARID_UNCONNECTED(0),
      M_AXI_DC_ARLEN(7 downto 0) => microblaze_0_m_axi_dc_ARLEN(7 downto 0),
      M_AXI_DC_ARLOCK => microblaze_0_m_axi_dc_ARLOCK,
      M_AXI_DC_ARPROT(2 downto 0) => microblaze_0_m_axi_dc_ARPROT(2 downto 0),
      M_AXI_DC_ARQOS(3 downto 0) => microblaze_0_m_axi_dc_ARQOS(3 downto 0),
      M_AXI_DC_ARREADY => microblaze_0_m_axi_dc_ARREADY,
      M_AXI_DC_ARSIZE(2 downto 0) => microblaze_0_m_axi_dc_ARSIZE(2 downto 0),
      M_AXI_DC_ARVALID => microblaze_0_m_axi_dc_ARVALID,
      M_AXI_DC_AWADDR(31 downto 0) => microblaze_0_m_axi_dc_AWADDR(31 downto 0),
      M_AXI_DC_AWBURST(1 downto 0) => microblaze_0_m_axi_dc_AWBURST(1 downto 0),
      M_AXI_DC_AWCACHE(3 downto 0) => microblaze_0_m_axi_dc_AWCACHE(3 downto 0),
      M_AXI_DC_AWID(0) => NLW_microblaze_0_M_AXI_DC_AWID_UNCONNECTED(0),
      M_AXI_DC_AWLEN(7 downto 0) => microblaze_0_m_axi_dc_AWLEN(7 downto 0),
      M_AXI_DC_AWLOCK => microblaze_0_m_axi_dc_AWLOCK,
      M_AXI_DC_AWPROT(2 downto 0) => microblaze_0_m_axi_dc_AWPROT(2 downto 0),
      M_AXI_DC_AWQOS(3 downto 0) => microblaze_0_m_axi_dc_AWQOS(3 downto 0),
      M_AXI_DC_AWREADY => microblaze_0_m_axi_dc_AWREADY,
      M_AXI_DC_AWSIZE(2 downto 0) => microblaze_0_m_axi_dc_AWSIZE(2 downto 0),
      M_AXI_DC_AWVALID => microblaze_0_m_axi_dc_AWVALID,
      M_AXI_DC_BID(0) => GND_1,
      M_AXI_DC_BREADY => microblaze_0_m_axi_dc_BREADY,
      M_AXI_DC_BRESP(1 downto 0) => microblaze_0_m_axi_dc_BRESP(1 downto 0),
      M_AXI_DC_BVALID => microblaze_0_m_axi_dc_BVALID,
      M_AXI_DC_RDATA(31 downto 0) => microblaze_0_m_axi_dc_RDATA(31 downto 0),
      M_AXI_DC_RID(0) => GND_1,
      M_AXI_DC_RLAST => microblaze_0_m_axi_dc_RLAST,
      M_AXI_DC_RREADY => microblaze_0_m_axi_dc_RREADY,
      M_AXI_DC_RRESP(1 downto 0) => microblaze_0_m_axi_dc_RRESP(1 downto 0),
      M_AXI_DC_RVALID => microblaze_0_m_axi_dc_RVALID,
      M_AXI_DC_WDATA(31 downto 0) => microblaze_0_m_axi_dc_WDATA(31 downto 0),
      M_AXI_DC_WLAST => microblaze_0_m_axi_dc_WLAST,
      M_AXI_DC_WREADY => microblaze_0_m_axi_dc_WREADY,
      M_AXI_DC_WSTRB(3 downto 0) => microblaze_0_m_axi_dc_WSTRB(3 downto 0),
      M_AXI_DC_WVALID => microblaze_0_m_axi_dc_WVALID,
      M_AXI_DP_ARADDR(31 downto 0) => microblaze_0_axi_dp_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => microblaze_0_axi_dp_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => microblaze_0_axi_dp_ARREADY(0),
      M_AXI_DP_ARVALID => microblaze_0_axi_dp_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => microblaze_0_axi_dp_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => microblaze_0_axi_dp_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => microblaze_0_axi_dp_AWREADY(0),
      M_AXI_DP_AWVALID => microblaze_0_axi_dp_AWVALID,
      M_AXI_DP_BREADY => microblaze_0_axi_dp_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => microblaze_0_axi_dp_BRESP(1 downto 0),
      M_AXI_DP_BVALID => microblaze_0_axi_dp_BVALID(0),
      M_AXI_DP_RDATA(31 downto 0) => microblaze_0_axi_dp_RDATA(31 downto 0),
      M_AXI_DP_RREADY => microblaze_0_axi_dp_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => microblaze_0_axi_dp_RRESP(1 downto 0),
      M_AXI_DP_RVALID => microblaze_0_axi_dp_RVALID(0),
      M_AXI_DP_WDATA(31 downto 0) => microblaze_0_axi_dp_WDATA(31 downto 0),
      M_AXI_DP_WREADY => microblaze_0_axi_dp_WREADY(0),
      M_AXI_DP_WSTRB(3 downto 0) => microblaze_0_axi_dp_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => microblaze_0_axi_dp_WVALID,
      M_AXI_IC_ARADDR(31 downto 0) => microblaze_0_m_axi_ic_ARADDR(31 downto 0),
      M_AXI_IC_ARBURST(1 downto 0) => microblaze_0_m_axi_ic_ARBURST(1 downto 0),
      M_AXI_IC_ARCACHE(3 downto 0) => microblaze_0_m_axi_ic_ARCACHE(3 downto 0),
      M_AXI_IC_ARID(0) => NLW_microblaze_0_M_AXI_IC_ARID_UNCONNECTED(0),
      M_AXI_IC_ARLEN(7 downto 0) => microblaze_0_m_axi_ic_ARLEN(7 downto 0),
      M_AXI_IC_ARLOCK => microblaze_0_m_axi_ic_ARLOCK,
      M_AXI_IC_ARPROT(2 downto 0) => microblaze_0_m_axi_ic_ARPROT(2 downto 0),
      M_AXI_IC_ARQOS(3 downto 0) => microblaze_0_m_axi_ic_ARQOS(3 downto 0),
      M_AXI_IC_ARREADY => microblaze_0_m_axi_ic_ARREADY,
      M_AXI_IC_ARSIZE(2 downto 0) => microblaze_0_m_axi_ic_ARSIZE(2 downto 0),
      M_AXI_IC_ARVALID => microblaze_0_m_axi_ic_ARVALID,
      M_AXI_IC_AWADDR(31 downto 0) => NLW_microblaze_0_M_AXI_IC_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI_IC_AWBURST(1 downto 0) => NLW_microblaze_0_M_AXI_IC_AWBURST_UNCONNECTED(1 downto 0),
      M_AXI_IC_AWCACHE(3 downto 0) => NLW_microblaze_0_M_AXI_IC_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXI_IC_AWID(0) => NLW_microblaze_0_M_AXI_IC_AWID_UNCONNECTED(0),
      M_AXI_IC_AWLEN(7 downto 0) => NLW_microblaze_0_M_AXI_IC_AWLEN_UNCONNECTED(7 downto 0),
      M_AXI_IC_AWLOCK => NLW_microblaze_0_M_AXI_IC_AWLOCK_UNCONNECTED,
      M_AXI_IC_AWPROT(2 downto 0) => NLW_microblaze_0_M_AXI_IC_AWPROT_UNCONNECTED(2 downto 0),
      M_AXI_IC_AWQOS(3 downto 0) => NLW_microblaze_0_M_AXI_IC_AWQOS_UNCONNECTED(3 downto 0),
      M_AXI_IC_AWREADY => GND_1,
      M_AXI_IC_AWSIZE(2 downto 0) => NLW_microblaze_0_M_AXI_IC_AWSIZE_UNCONNECTED(2 downto 0),
      M_AXI_IC_AWVALID => NLW_microblaze_0_M_AXI_IC_AWVALID_UNCONNECTED,
      M_AXI_IC_BID(0) => GND_1,
      M_AXI_IC_BREADY => NLW_microblaze_0_M_AXI_IC_BREADY_UNCONNECTED,
      M_AXI_IC_BRESP(1) => GND_1,
      M_AXI_IC_BRESP(0) => GND_1,
      M_AXI_IC_BVALID => GND_1,
      M_AXI_IC_RDATA(31 downto 0) => microblaze_0_m_axi_ic_RDATA(31 downto 0),
      M_AXI_IC_RID(0) => GND_1,
      M_AXI_IC_RLAST => microblaze_0_m_axi_ic_RLAST,
      M_AXI_IC_RREADY => microblaze_0_m_axi_ic_RREADY,
      M_AXI_IC_RRESP(1 downto 0) => microblaze_0_m_axi_ic_RRESP(1 downto 0),
      M_AXI_IC_RVALID => microblaze_0_m_axi_ic_RVALID,
      M_AXI_IC_WDATA(31 downto 0) => NLW_microblaze_0_M_AXI_IC_WDATA_UNCONNECTED(31 downto 0),
      M_AXI_IC_WLAST => NLW_microblaze_0_M_AXI_IC_WLAST_UNCONNECTED,
      M_AXI_IC_WREADY => GND_1,
      M_AXI_IC_WSTRB(3 downto 0) => NLW_microblaze_0_M_AXI_IC_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI_IC_WVALID => NLW_microblaze_0_M_AXI_IC_WVALID_UNCONNECTED,
      Read_Strobe => microblaze_0_dlmb_READSTROBE,
      Reset => proc_sys_reset_1_mb_reset,
      Write_Strobe => microblaze_0_dlmb_WRITESTROBE
    );
microblaze_0_axi_intc: component design_1_microblaze_0_axi_intc_0
     port map (
      interrupt_address(31 downto 0) => microblaze_0_interrupt_ADDRESS(31 downto 0),
      intr(4 downto 0) => microblaze_0_intr(4 downto 0),
      irq => microblaze_0_interrupt_INTERRUPT,
      processor_ack(1) => microblaze_0_interrupt_ACK(0),
      processor_ack(0) => microblaze_0_interrupt_ACK(1),
      processor_clk => microblaze_0_Clk,
      processor_rst => proc_sys_reset_1_mb_reset,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_intc_axi_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_1_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_intc_axi_ARREADY,
      s_axi_arvalid => microblaze_0_intc_axi_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_intc_axi_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_intc_axi_AWREADY,
      s_axi_awvalid => microblaze_0_intc_axi_AWVALID(0),
      s_axi_bready => microblaze_0_intc_axi_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_intc_axi_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_intc_axi_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_intc_axi_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_intc_axi_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_intc_axi_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_intc_axi_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_intc_axi_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_intc_axi_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_intc_axi_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_intc_axi_WVALID(0)
    );
microblaze_0_axi_periph: entity work.design_1_microblaze_0_axi_periph_0
     port map (
      ACLK => microblaze_0_Clk,
      ARESETN(0) => proc_sys_reset_1_interconnect_aresetn(0),
      M00_ACLK => microblaze_0_Clk,
      M00_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      M00_AXI_araddr(8 downto 0) => microblaze_0_intc_axi_ARADDR(8 downto 0),
      M00_AXI_arready(0) => microblaze_0_intc_axi_ARREADY,
      M00_AXI_arvalid(0) => microblaze_0_intc_axi_ARVALID(0),
      M00_AXI_awaddr(8 downto 0) => microblaze_0_intc_axi_AWADDR(8 downto 0),
      M00_AXI_awready(0) => microblaze_0_intc_axi_AWREADY,
      M00_AXI_awvalid(0) => microblaze_0_intc_axi_AWVALID(0),
      M00_AXI_bready(0) => microblaze_0_intc_axi_BREADY(0),
      M00_AXI_bresp(1 downto 0) => microblaze_0_intc_axi_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => microblaze_0_intc_axi_BVALID,
      M00_AXI_rdata(31 downto 0) => microblaze_0_intc_axi_RDATA(31 downto 0),
      M00_AXI_rready(0) => microblaze_0_intc_axi_RREADY(0),
      M00_AXI_rresp(1 downto 0) => microblaze_0_intc_axi_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => microblaze_0_intc_axi_RVALID,
      M00_AXI_wdata(31 downto 0) => microblaze_0_intc_axi_WDATA(31 downto 0),
      M00_AXI_wready(0) => microblaze_0_intc_axi_WREADY,
      M00_AXI_wstrb(3 downto 0) => microblaze_0_intc_axi_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => microblaze_0_intc_axi_WVALID(0),
      M01_ACLK => microblaze_0_Clk,
      M01_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      M01_AXI_araddr(4 downto 0) => microblaze_0_axi_periph_m01_axi_ARADDR(4 downto 0),
      M01_AXI_arready(0) => microblaze_0_axi_periph_m01_axi_ARREADY,
      M01_AXI_arvalid(0) => microblaze_0_axi_periph_m01_axi_ARVALID(0),
      M01_AXI_awaddr(4 downto 0) => microblaze_0_axi_periph_m01_axi_AWADDR(4 downto 0),
      M01_AXI_awready(0) => microblaze_0_axi_periph_m01_axi_AWREADY,
      M01_AXI_awvalid(0) => microblaze_0_axi_periph_m01_axi_AWVALID(0),
      M01_AXI_bready(0) => microblaze_0_axi_periph_m01_axi_BREADY(0),
      M01_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_m01_axi_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => microblaze_0_axi_periph_m01_axi_BVALID,
      M01_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_m01_axi_RDATA(31 downto 0),
      M01_AXI_rready(0) => microblaze_0_axi_periph_m01_axi_RREADY(0),
      M01_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_m01_axi_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => microblaze_0_axi_periph_m01_axi_RVALID,
      M01_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_m01_axi_WDATA(31 downto 0),
      M01_AXI_wready(0) => microblaze_0_axi_periph_m01_axi_WREADY,
      M01_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_m01_axi_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => microblaze_0_axi_periph_m01_axi_WVALID(0),
      M02_ACLK => microblaze_0_Clk,
      M02_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      M02_AXI_araddr(3 downto 0) => microblaze_0_axi_periph_m02_axi_ARADDR(3 downto 0),
      M02_AXI_arready(0) => microblaze_0_axi_periph_m02_axi_ARREADY,
      M02_AXI_arvalid(0) => microblaze_0_axi_periph_m02_axi_ARVALID(0),
      M02_AXI_awaddr(3 downto 0) => microblaze_0_axi_periph_m02_axi_AWADDR(3 downto 0),
      M02_AXI_awready(0) => microblaze_0_axi_periph_m02_axi_AWREADY,
      M02_AXI_awvalid(0) => microblaze_0_axi_periph_m02_axi_AWVALID(0),
      M02_AXI_bready(0) => microblaze_0_axi_periph_m02_axi_BREADY(0),
      M02_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_m02_axi_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => microblaze_0_axi_periph_m02_axi_BVALID,
      M02_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_m02_axi_RDATA(31 downto 0),
      M02_AXI_rready(0) => microblaze_0_axi_periph_m02_axi_RREADY(0),
      M02_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_m02_axi_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => microblaze_0_axi_periph_m02_axi_RVALID,
      M02_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_m02_axi_WDATA(31 downto 0),
      M02_AXI_wready(0) => microblaze_0_axi_periph_m02_axi_WREADY,
      M02_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_m02_axi_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => microblaze_0_axi_periph_m02_axi_WVALID(0),
      M03_ACLK => microblaze_0_Clk,
      M03_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      M03_AXI_araddr(9 downto 0) => microblaze_0_axi_periph_m03_axi_ARADDR(9 downto 0),
      M03_AXI_arready(0) => microblaze_0_axi_periph_m03_axi_ARREADY,
      M03_AXI_arvalid(0) => microblaze_0_axi_periph_m03_axi_ARVALID(0),
      M03_AXI_awaddr(9 downto 0) => microblaze_0_axi_periph_m03_axi_AWADDR(9 downto 0),
      M03_AXI_awready(0) => microblaze_0_axi_periph_m03_axi_AWREADY,
      M03_AXI_awvalid(0) => microblaze_0_axi_periph_m03_axi_AWVALID(0),
      M03_AXI_bready(0) => microblaze_0_axi_periph_m03_axi_BREADY(0),
      M03_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_m03_axi_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => microblaze_0_axi_periph_m03_axi_BVALID,
      M03_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_m03_axi_RDATA(31 downto 0),
      M03_AXI_rready(0) => microblaze_0_axi_periph_m03_axi_RREADY(0),
      M03_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_m03_axi_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => microblaze_0_axi_periph_m03_axi_RVALID,
      M03_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_m03_axi_WDATA(31 downto 0),
      M03_AXI_wready(0) => microblaze_0_axi_periph_m03_axi_WREADY,
      M03_AXI_wvalid(0) => microblaze_0_axi_periph_m03_axi_WVALID(0),
      M04_ACLK => microblaze_0_Clk,
      M04_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      M04_AXI_araddr(17 downto 0) => microblaze_0_axi_periph_m04_axi_ARADDR(17 downto 0),
      M04_AXI_arready(0) => microblaze_0_axi_periph_m04_axi_ARREADY,
      M04_AXI_arvalid(0) => microblaze_0_axi_periph_m04_axi_ARVALID(0),
      M04_AXI_awaddr(17 downto 0) => microblaze_0_axi_periph_m04_axi_AWADDR(17 downto 0),
      M04_AXI_awready(0) => microblaze_0_axi_periph_m04_axi_AWREADY,
      M04_AXI_awvalid(0) => microblaze_0_axi_periph_m04_axi_AWVALID(0),
      M04_AXI_bready(0) => microblaze_0_axi_periph_m04_axi_BREADY(0),
      M04_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_m04_axi_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => microblaze_0_axi_periph_m04_axi_BVALID,
      M04_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_m04_axi_RDATA(31 downto 0),
      M04_AXI_rready(0) => microblaze_0_axi_periph_m04_axi_RREADY(0),
      M04_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_m04_axi_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => microblaze_0_axi_periph_m04_axi_RVALID,
      M04_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_m04_axi_WDATA(31 downto 0),
      M04_AXI_wready(0) => microblaze_0_axi_periph_m04_axi_WREADY,
      M04_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_m04_axi_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => microblaze_0_axi_periph_m04_axi_WVALID(0),
      M05_ACLK => clk_wiz_0_clk_out2,
      M05_ARESETN(0) => rst_clk_wiz_0_401M_peripheral_aresetn(0),
      M05_AXI_araddr(6 downto 0) => microblaze_0_axi_periph_M05_AXI_ARADDR(6 downto 0),
      M05_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_M05_AXI_ARPROT(2 downto 0),
      M05_AXI_arready => microblaze_0_axi_periph_M05_AXI_ARREADY,
      M05_AXI_arvalid => microblaze_0_axi_periph_M05_AXI_ARVALID,
      M05_AXI_awaddr(6 downto 0) => microblaze_0_axi_periph_M05_AXI_AWADDR(6 downto 0),
      M05_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_M05_AXI_AWPROT(2 downto 0),
      M05_AXI_awready => microblaze_0_axi_periph_M05_AXI_AWREADY,
      M05_AXI_awvalid => microblaze_0_axi_periph_M05_AXI_AWVALID,
      M05_AXI_bready => microblaze_0_axi_periph_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => microblaze_0_axi_periph_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => microblaze_0_axi_periph_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => microblaze_0_axi_periph_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => microblaze_0_axi_periph_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => microblaze_0_axi_periph_M05_AXI_WVALID,
      M06_ACLK => clk_wiz_0_clk_out1,
      M06_ARESETN(0) => rst_clk_wiz_0_125M_peripheral_aresetn(0),
      M06_AXI_araddr(3 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(3 downto 0),
      M06_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_M06_AXI_ARPROT(2 downto 0),
      M06_AXI_arready => microblaze_0_axi_periph_M06_AXI_ARREADY,
      M06_AXI_arvalid => microblaze_0_axi_periph_M06_AXI_ARVALID,
      M06_AXI_awaddr(3 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(3 downto 0),
      M06_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_M06_AXI_AWPROT(2 downto 0),
      M06_AXI_awready => microblaze_0_axi_periph_M06_AXI_AWREADY,
      M06_AXI_awvalid => microblaze_0_axi_periph_M06_AXI_AWVALID,
      M06_AXI_bready => microblaze_0_axi_periph_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => microblaze_0_axi_periph_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => microblaze_0_axi_periph_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => microblaze_0_axi_periph_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => microblaze_0_axi_periph_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => microblaze_0_axi_periph_M06_AXI_WVALID,
      M07_ACLK => microblaze_0_Clk,
      M07_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      M07_AXI_araddr(6 downto 0) => microblaze_0_axi_periph_M07_AXI_ARADDR(6 downto 0),
      M07_AXI_arready => microblaze_0_axi_periph_M07_AXI_ARREADY,
      M07_AXI_arvalid => microblaze_0_axi_periph_M07_AXI_ARVALID,
      M07_AXI_awaddr(6 downto 0) => microblaze_0_axi_periph_M07_AXI_AWADDR(6 downto 0),
      M07_AXI_awready => microblaze_0_axi_periph_M07_AXI_AWREADY,
      M07_AXI_awvalid => microblaze_0_axi_periph_M07_AXI_AWVALID,
      M07_AXI_bready => microblaze_0_axi_periph_M07_AXI_BREADY,
      M07_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid => microblaze_0_axi_periph_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready => microblaze_0_axi_periph_M07_AXI_RREADY,
      M07_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid => microblaze_0_axi_periph_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready => microblaze_0_axi_periph_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid => microblaze_0_axi_periph_M07_AXI_WVALID,
      M08_ACLK => microblaze_0_Clk,
      M08_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      M08_AXI_araddr(8 downto 0) => microblaze_0_axi_periph_M08_AXI_ARADDR(8 downto 0),
      M08_AXI_arready => microblaze_0_axi_periph_M08_AXI_ARREADY,
      M08_AXI_arvalid => microblaze_0_axi_periph_M08_AXI_ARVALID,
      M08_AXI_awaddr(8 downto 0) => microblaze_0_axi_periph_M08_AXI_AWADDR(8 downto 0),
      M08_AXI_awready => microblaze_0_axi_periph_M08_AXI_AWREADY,
      M08_AXI_awvalid => microblaze_0_axi_periph_M08_AXI_AWVALID,
      M08_AXI_bready => microblaze_0_axi_periph_M08_AXI_BREADY,
      M08_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid => microblaze_0_axi_periph_M08_AXI_BVALID,
      M08_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rready => microblaze_0_axi_periph_M08_AXI_RREADY,
      M08_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid => microblaze_0_axi_periph_M08_AXI_RVALID,
      M08_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wready => microblaze_0_axi_periph_M08_AXI_WREADY,
      M08_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid => microblaze_0_axi_periph_M08_AXI_WVALID,
      M09_ACLK => clk_wiz_0_clk_out2,
      M09_ARESETN(0) => rst_clk_wiz_0_401M_peripheral_aresetn(0),
      M09_AXI_araddr(3 downto 0) => microblaze_0_axi_periph_M09_AXI_ARADDR(3 downto 0),
      M09_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_M09_AXI_ARPROT(2 downto 0),
      M09_AXI_arready => microblaze_0_axi_periph_M09_AXI_ARREADY,
      M09_AXI_arvalid => microblaze_0_axi_periph_M09_AXI_ARVALID,
      M09_AXI_awaddr(3 downto 0) => microblaze_0_axi_periph_M09_AXI_AWADDR(3 downto 0),
      M09_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_M09_AXI_AWPROT(2 downto 0),
      M09_AXI_awready => microblaze_0_axi_periph_M09_AXI_AWREADY,
      M09_AXI_awvalid => microblaze_0_axi_periph_M09_AXI_AWVALID,
      M09_AXI_bready => microblaze_0_axi_periph_M09_AXI_BREADY,
      M09_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M09_AXI_BRESP(1 downto 0),
      M09_AXI_bvalid => microblaze_0_axi_periph_M09_AXI_BVALID,
      M09_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M09_AXI_RDATA(31 downto 0),
      M09_AXI_rready => microblaze_0_axi_periph_M09_AXI_RREADY,
      M09_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M09_AXI_RRESP(1 downto 0),
      M09_AXI_rvalid => microblaze_0_axi_periph_M09_AXI_RVALID,
      M09_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M09_AXI_WDATA(31 downto 0),
      M09_AXI_wready => microblaze_0_axi_periph_M09_AXI_WREADY,
      M09_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M09_AXI_WSTRB(3 downto 0),
      M09_AXI_wvalid => microblaze_0_axi_periph_M09_AXI_WVALID,
      S00_ACLK => microblaze_0_Clk,
      S00_ARESETN(0) => proc_sys_reset_1_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => microblaze_0_axi_dp_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => microblaze_0_axi_dp_ARPROT(2 downto 0),
      S00_AXI_arready(0) => microblaze_0_axi_dp_ARREADY(0),
      S00_AXI_arvalid(0) => microblaze_0_axi_dp_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_0_axi_dp_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => microblaze_0_axi_dp_AWPROT(2 downto 0),
      S00_AXI_awready(0) => microblaze_0_axi_dp_AWREADY(0),
      S00_AXI_awvalid(0) => microblaze_0_axi_dp_AWVALID,
      S00_AXI_bready(0) => microblaze_0_axi_dp_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_0_axi_dp_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => microblaze_0_axi_dp_BVALID(0),
      S00_AXI_rdata(31 downto 0) => microblaze_0_axi_dp_RDATA(31 downto 0),
      S00_AXI_rready(0) => microblaze_0_axi_dp_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_0_axi_dp_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => microblaze_0_axi_dp_RVALID(0),
      S00_AXI_wdata(31 downto 0) => microblaze_0_axi_dp_WDATA(31 downto 0),
      S00_AXI_wready(0) => microblaze_0_axi_dp_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => microblaze_0_axi_dp_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => microblaze_0_axi_dp_WVALID
    );
microblaze_0_local_memory: entity work.microblaze_0_local_memory_imp_1K0VQXK
     port map (
      DLMB_abus(0 to 31) => microblaze_0_dlmb_ABUS(0 to 31),
      DLMB_addrstrobe => microblaze_0_dlmb_ADDRSTROBE,
      DLMB_be(0 to 3) => microblaze_0_dlmb_BE(0 to 3),
      DLMB_ce => microblaze_0_dlmb_CE,
      DLMB_readdbus(0 to 31) => microblaze_0_dlmb_READDBUS(0 to 31),
      DLMB_readstrobe => microblaze_0_dlmb_READSTROBE,
      DLMB_ready => microblaze_0_dlmb_READY,
      DLMB_ue => microblaze_0_dlmb_UE,
      DLMB_wait => microblaze_0_dlmb_WAIT,
      DLMB_writedbus(0 to 31) => microblaze_0_dlmb_WRITEDBUS(0 to 31),
      DLMB_writestrobe => microblaze_0_dlmb_WRITESTROBE,
      ILMB_abus(0 to 31) => microblaze_0_ilmb_ABUS(0 to 31),
      ILMB_addrstrobe => microblaze_0_ilmb_ADDRSTROBE,
      ILMB_ce => microblaze_0_ilmb_CE,
      ILMB_readdbus(0 to 31) => microblaze_0_ilmb_READDBUS(0 to 31),
      ILMB_readstrobe => microblaze_0_ilmb_READSTROBE,
      ILMB_ready => microblaze_0_ilmb_READY,
      ILMB_ue => microblaze_0_ilmb_UE,
      ILMB_wait => microblaze_0_ilmb_WAIT,
      LMB_Clk => microblaze_0_Clk,
      LMB_Rst(0) => proc_sys_reset_1_bus_struct_reset(0)
    );
microblaze_0_xlconcat: component design_1_microblaze_0_xlconcat_0
     port map (
      In0(0) => axi_ethernet_0_interrupt,
      In1(0) => axi_ethernet_0_dma_s2mm_introut,
      In2(0) => axi_ethernet_0_dma_mm2s_introut,
      In3(0) => axi_uartlite_0_interrupt,
      In4(0) => axi_timer_0_interrupt,
      dout(4 downto 0) => microblaze_0_intr(4 downto 0)
    );
mig_7series_0: component design_1_mig_7series_0_0
     port map (
      aresetn => proc_sys_reset_1_peripheral_aresetn(0),
      ddr3_addr(13 downto 0) => mig_7series_0_ddr3_ADDR(13 downto 0),
      ddr3_ba(2 downto 0) => mig_7series_0_ddr3_BA(2 downto 0),
      ddr3_cas_n => mig_7series_0_ddr3_CAS_N,
      ddr3_ck_n(0) => mig_7series_0_ddr3_CK_N(0),
      ddr3_ck_p(0) => mig_7series_0_ddr3_CK_P(0),
      ddr3_cke(0) => mig_7series_0_ddr3_CKE(0),
      ddr3_cs_n(0) => mig_7series_0_ddr3_CS_N(0),
      ddr3_dm(7 downto 0) => mig_7series_0_ddr3_DM(7 downto 0),
      ddr3_dq(63 downto 0) => DDR3_dq(63 downto 0),
      ddr3_dqs_n(7 downto 0) => DDR3_dqs_n(7 downto 0),
      ddr3_dqs_p(7 downto 0) => DDR3_dqs_p(7 downto 0),
      ddr3_odt(0) => mig_7series_0_ddr3_ODT(0),
      ddr3_ras_n => mig_7series_0_ddr3_RAS_N,
      ddr3_reset_n => mig_7series_0_ddr3_RESET_N,
      ddr3_we_n => mig_7series_0_ddr3_WE_N,
      init_calib_complete => NLW_mig_7series_0_init_calib_complete_UNCONNECTED,
      mmcm_locked => NLW_mig_7series_0_mmcm_locked_UNCONNECTED,
      s_axi_araddr(29 downto 0) => axi_mem_intercon_m01_axi_ARADDR(29 downto 0),
      s_axi_arburst(1 downto 0) => axi_mem_intercon_m01_axi_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_mem_intercon_m01_axi_ARCACHE(3 downto 0),
      s_axi_arid(2 downto 0) => axi_mem_intercon_m01_axi_ARID(2 downto 0),
      s_axi_arlen(7 downto 0) => axi_mem_intercon_m01_axi_ARLEN(7 downto 0),
      s_axi_arlock => axi_mem_intercon_m01_axi_ARLOCK,
      s_axi_arprot(2 downto 0) => axi_mem_intercon_m01_axi_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => axi_mem_intercon_m01_axi_ARQOS(3 downto 0),
      s_axi_arready => axi_mem_intercon_m01_axi_ARREADY,
      s_axi_arsize(2 downto 0) => axi_mem_intercon_m01_axi_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_mem_intercon_m01_axi_ARVALID,
      s_axi_awaddr(29 downto 0) => axi_mem_intercon_m01_axi_AWADDR(29 downto 0),
      s_axi_awburst(1 downto 0) => axi_mem_intercon_m01_axi_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_mem_intercon_m01_axi_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => axi_mem_intercon_m01_axi_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => axi_mem_intercon_m01_axi_AWLEN(7 downto 0),
      s_axi_awlock => axi_mem_intercon_m01_axi_AWLOCK,
      s_axi_awprot(2 downto 0) => axi_mem_intercon_m01_axi_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => axi_mem_intercon_m01_axi_AWQOS(3 downto 0),
      s_axi_awready => axi_mem_intercon_m01_axi_AWREADY,
      s_axi_awsize(2 downto 0) => axi_mem_intercon_m01_axi_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_mem_intercon_m01_axi_AWVALID,
      s_axi_bid(2 downto 0) => axi_mem_intercon_m01_axi_BID(2 downto 0),
      s_axi_bready => axi_mem_intercon_m01_axi_BREADY,
      s_axi_bresp(1 downto 0) => axi_mem_intercon_m01_axi_BRESP(1 downto 0),
      s_axi_bvalid => axi_mem_intercon_m01_axi_BVALID,
      s_axi_rdata(31 downto 0) => axi_mem_intercon_m01_axi_RDATA(31 downto 0),
      s_axi_rid(2 downto 0) => axi_mem_intercon_m01_axi_RID(2 downto 0),
      s_axi_rlast => axi_mem_intercon_m01_axi_RLAST,
      s_axi_rready => axi_mem_intercon_m01_axi_RREADY,
      s_axi_rresp(1 downto 0) => axi_mem_intercon_m01_axi_RRESP(1 downto 0),
      s_axi_rvalid => axi_mem_intercon_m01_axi_RVALID,
      s_axi_wdata(31 downto 0) => axi_mem_intercon_m01_axi_WDATA(31 downto 0),
      s_axi_wlast => axi_mem_intercon_m01_axi_WLAST,
      s_axi_wready => axi_mem_intercon_m01_axi_WREADY,
      s_axi_wstrb(3 downto 0) => axi_mem_intercon_m01_axi_WSTRB(3 downto 0),
      s_axi_wvalid => axi_mem_intercon_m01_axi_WVALID,
      sys_clk_n => sys_clk_n_1,
      sys_clk_p => sys_clk_p_1,
      sys_rst => reset_1,
      ui_addn_clk_0 => mig_7series_0_ui_addn_clk_0,
      ui_clk => microblaze_0_Clk,
      ui_clk_sync_rst => mig_7series_0_ui_clk_sync_rst
    );
phase_shift_40MHz_clk_gen_axi_0: component design_1_phase_shift_40MHz_clk_gen_axi_0_1
     port map (
      CLK_0 => phase_shift_40MHz_clk_gen_axi_0_CLK_0,
      CLK_1 => phase_shift_40MHz_clk_gen_axi_0_CLK_1,
      CLK_2 => phase_shift_40MHz_clk_gen_axi_0_CLK_2,
      S_AXI_ACLK => clk_wiz_0_clk_out2,
      S_AXI_ARADDR(3 downto 0) => microblaze_0_axi_periph_M09_AXI_ARADDR(3 downto 0),
      S_AXI_ARESETN => rst_clk_wiz_0_401M_peripheral_aresetn(0),
      S_AXI_ARPROT(2 downto 0) => microblaze_0_axi_periph_M09_AXI_ARPROT(2 downto 0),
      S_AXI_ARREADY => microblaze_0_axi_periph_M09_AXI_ARREADY,
      S_AXI_ARVALID => microblaze_0_axi_periph_M09_AXI_ARVALID,
      S_AXI_AWADDR(3 downto 0) => microblaze_0_axi_periph_M09_AXI_AWADDR(3 downto 0),
      S_AXI_AWPROT(2 downto 0) => microblaze_0_axi_periph_M09_AXI_AWPROT(2 downto 0),
      S_AXI_AWREADY => microblaze_0_axi_periph_M09_AXI_AWREADY,
      S_AXI_AWVALID => microblaze_0_axi_periph_M09_AXI_AWVALID,
      S_AXI_BREADY => microblaze_0_axi_periph_M09_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => microblaze_0_axi_periph_M09_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => microblaze_0_axi_periph_M09_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => microblaze_0_axi_periph_M09_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => microblaze_0_axi_periph_M09_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => microblaze_0_axi_periph_M09_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => microblaze_0_axi_periph_M09_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => microblaze_0_axi_periph_M09_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => microblaze_0_axi_periph_M09_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => microblaze_0_axi_periph_M09_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => microblaze_0_axi_periph_M09_AXI_WVALID
    );
proc_sys_reset_1: component design_1_proc_sys_reset_1_0
     port map (
      aux_reset_in => VCC_1,
      bus_struct_reset(0) => proc_sys_reset_1_bus_struct_reset(0),
      dcm_locked => VCC_1,
      ext_reset_in => mig_7series_0_ui_clk_sync_rst,
      interconnect_aresetn(0) => proc_sys_reset_1_interconnect_aresetn(0),
      mb_debug_sys_rst => mdm_1_debug_sys_rst,
      mb_reset => proc_sys_reset_1_mb_reset,
      peripheral_aresetn(0) => proc_sys_reset_1_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => microblaze_0_Clk
    );
real_time_clock_v1_0_S00_AXI_0: component design_1_real_time_clock_v1_0_S00_AXI_0_0
     port map (
      S_AXI_ACLK => clk_wiz_0_clk_out1,
      S_AXI_ARADDR(3 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(3 downto 0),
      S_AXI_ARESETN => rst_clk_wiz_0_125M_peripheral_aresetn(0),
      S_AXI_ARPROT(2 downto 0) => microblaze_0_axi_periph_M06_AXI_ARPROT(2 downto 0),
      S_AXI_ARREADY => microblaze_0_axi_periph_M06_AXI_ARREADY,
      S_AXI_ARVALID => microblaze_0_axi_periph_M06_AXI_ARVALID,
      S_AXI_AWADDR(3 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(3 downto 0),
      S_AXI_AWPROT(2 downto 0) => microblaze_0_axi_periph_M06_AXI_AWPROT(2 downto 0),
      S_AXI_AWREADY => microblaze_0_axi_periph_M06_AXI_AWREADY,
      S_AXI_AWVALID => microblaze_0_axi_periph_M06_AXI_AWVALID,
      S_AXI_BREADY => microblaze_0_axi_periph_M06_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => microblaze_0_axi_periph_M06_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => microblaze_0_axi_periph_M06_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => microblaze_0_axi_periph_M06_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => microblaze_0_axi_periph_M06_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => microblaze_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => microblaze_0_axi_periph_M06_AXI_WVALID
    );
rst_clk_wiz_0_125M: component design_1_rst_clk_wiz_0_125M_0
     port map (
      aux_reset_in => VCC_1,
      bus_struct_reset(0) => NLW_rst_clk_wiz_0_125M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_1,
      interconnect_aresetn(0) => NLW_rst_clk_wiz_0_125M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => GND_1,
      mb_reset => NLW_rst_clk_wiz_0_125M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_wiz_0_125M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_0_125M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
rst_clk_wiz_0_401M: component design_1_rst_clk_wiz_0_401M_0
     port map (
      aux_reset_in => VCC_1,
      bus_struct_reset(0) => NLW_rst_clk_wiz_0_401M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_1,
      interconnect_aresetn(0) => NLW_rst_clk_wiz_0_401M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => GND_1,
      mb_reset => NLW_rst_clk_wiz_0_401M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_wiz_0_401M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_0_401M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out2
    );
trigger_logic_AXI_0: component design_1_trigger_logic_AXI_0_0
     port map (
      BEAM_CURRENT_IN(1 downto 0) => BEAM_CURRENT_IN_1(1 downto 0),
      BUSY_IN(3 downto 0) => BUSY_IN_1(3 downto 0),
      CAEN_DIG(1 downto 0) => trigger_logic_AXI_0_CAEN_DIG(1 downto 0),
      DIAMOND_TRIG_IN(1 downto 0) => DIAMOND_TRIG_IN_1(1 downto 0),
      DRS4_CH3(1 downto 0) => trigger_logic_AXI_0_DRS4_CH3(1 downto 0),
      DRS4_TRIG_IN_CH2(1 downto 0) => trigger_logic_AXI_0_DRS4_TRIG_IN_CH2(1 downto 0),
      FASTOR_TRIG_IN(15 downto 0) => FASTOR_TRIG_IN_1(15 downto 0),
      LOGIC_DRS4_CH4(1 downto 0) => trigger_logic_AXI_0_LOGIC_DRS4_CH4(1 downto 0),
      LOGIC_PREAMP_TP_SEL(1 downto 0) => trigger_logic_AXI_0_LOGIC_PREAMP_TP_SEL(1 downto 0),
      PSI46_ATB_DTB(1 downto 0) => trigger_logic_AXI_0_PSI46_ATB_DTB(1 downto 0),
      PULSER_DRS4_CH4(1 downto 0) => trigger_logic_AXI_0_PULSER_DRS4_CH4(1 downto 0),
      PULSER_PREAMP_TP_SEL(1 downto 0) => trigger_logic_AXI_0_PULSER_PREAMP_TP_SEL(1 downto 0),
      PULSER_PREAMP_TP_TTL(1 downto 0) => trigger_logic_AXI_0_PULSER_PREAMP_TP_TTL(1 downto 0),
      SCINTILLATOR_TRIG_IN(1 downto 0) => SCINTILLATOR_TRIG_IN_1(1 downto 0),
      S_AXI_ACLK => clk_wiz_0_clk_out2,
      S_AXI_ARADDR(6 downto 0) => microblaze_0_axi_periph_M05_AXI_ARADDR(6 downto 0),
      S_AXI_ARESETN => rst_clk_wiz_0_401M_peripheral_aresetn(0),
      S_AXI_ARPROT(2 downto 0) => microblaze_0_axi_periph_M05_AXI_ARPROT(2 downto 0),
      S_AXI_ARREADY => microblaze_0_axi_periph_M05_AXI_ARREADY,
      S_AXI_ARVALID => microblaze_0_axi_periph_M05_AXI_ARVALID,
      S_AXI_AWADDR(6 downto 0) => microblaze_0_axi_periph_M05_AXI_AWADDR(6 downto 0),
      S_AXI_AWPROT(2 downto 0) => microblaze_0_axi_periph_M05_AXI_AWPROT(2 downto 0),
      S_AXI_AWREADY => microblaze_0_axi_periph_M05_AXI_AWREADY,
      S_AXI_AWVALID => microblaze_0_axi_periph_M05_AXI_AWVALID,
      S_AXI_BREADY => microblaze_0_axi_periph_M05_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => microblaze_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => microblaze_0_axi_periph_M05_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => microblaze_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => microblaze_0_axi_periph_M05_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => microblaze_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => microblaze_0_axi_periph_M05_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => microblaze_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => microblaze_0_axi_periph_M05_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => microblaze_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => microblaze_0_axi_periph_M05_AXI_WVALID,
      TRIG_1 => trigger_logic_AXI_0_TRIG_1,
      TRIG_2 => trigger_logic_AXI_0_TRIG_2,
      TRIG_3 => trigger_logic_AXI_0_TRIG_3
    );
end STRUCTURE;
