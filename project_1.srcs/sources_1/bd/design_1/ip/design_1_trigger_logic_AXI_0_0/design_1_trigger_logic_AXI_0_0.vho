-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:trigger_logic_AXI:1.1
-- IP Revision: 33

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT design_1_trigger_logic_AXI_0_0
  PORT (
    FASTOR_TRIG_IN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    DIAMOND_TRIG_IN : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SCINTILLATOR_TRIG_IN : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    BEAM_CURRENT_IN : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    BUSY_IN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    LOGIC_PREAMP_TP_SEL : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    LOGIC_DRS4_CH4 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PULSER_PREAMP_TP_TTL : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PULSER_DRS4_CH4 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PULSER_PREAMP_TP_SEL : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    DRS4_TRIG_IN_CH2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PSI46_ATB_DTB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    DRS4_CH3 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    CAEN_DIG : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    TRIG_1 : OUT STD_LOGIC;
    TRIG_2 : OUT STD_LOGIC;
    TRIG_3 : OUT STD_LOGIC;
    S_AXI_ACLK : IN STD_LOGIC;
    S_AXI_ARESETN : IN STD_LOGIC;
    S_AXI_AWADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    S_AXI_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_AWVALID : IN STD_LOGIC;
    S_AXI_AWREADY : OUT STD_LOGIC;
    S_AXI_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_WVALID : IN STD_LOGIC;
    S_AXI_WREADY : OUT STD_LOGIC;
    S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_BVALID : OUT STD_LOGIC;
    S_AXI_BREADY : IN STD_LOGIC;
    S_AXI_ARADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    S_AXI_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_ARVALID : IN STD_LOGIC;
    S_AXI_ARREADY : OUT STD_LOGIC;
    S_AXI_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_RVALID : OUT STD_LOGIC;
    S_AXI_RREADY : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : design_1_trigger_logic_AXI_0_0
  PORT MAP (
    FASTOR_TRIG_IN => FASTOR_TRIG_IN,
    DIAMOND_TRIG_IN => DIAMOND_TRIG_IN,
    SCINTILLATOR_TRIG_IN => SCINTILLATOR_TRIG_IN,
    BEAM_CURRENT_IN => BEAM_CURRENT_IN,
    BUSY_IN => BUSY_IN,
    LOGIC_PREAMP_TP_SEL => LOGIC_PREAMP_TP_SEL,
    LOGIC_DRS4_CH4 => LOGIC_DRS4_CH4,
    PULSER_PREAMP_TP_TTL => PULSER_PREAMP_TP_TTL,
    PULSER_DRS4_CH4 => PULSER_DRS4_CH4,
    PULSER_PREAMP_TP_SEL => PULSER_PREAMP_TP_SEL,
    DRS4_TRIG_IN_CH2 => DRS4_TRIG_IN_CH2,
    PSI46_ATB_DTB => PSI46_ATB_DTB,
    DRS4_CH3 => DRS4_CH3,
    CAEN_DIG => CAEN_DIG,
    TRIG_1 => TRIG_1,
    TRIG_2 => TRIG_2,
    TRIG_3 => TRIG_3,
    S_AXI_ACLK => S_AXI_ACLK,
    S_AXI_ARESETN => S_AXI_ARESETN,
    S_AXI_AWADDR => S_AXI_AWADDR,
    S_AXI_AWPROT => S_AXI_AWPROT,
    S_AXI_AWVALID => S_AXI_AWVALID,
    S_AXI_AWREADY => S_AXI_AWREADY,
    S_AXI_WDATA => S_AXI_WDATA,
    S_AXI_WSTRB => S_AXI_WSTRB,
    S_AXI_WVALID => S_AXI_WVALID,
    S_AXI_WREADY => S_AXI_WREADY,
    S_AXI_BRESP => S_AXI_BRESP,
    S_AXI_BVALID => S_AXI_BVALID,
    S_AXI_BREADY => S_AXI_BREADY,
    S_AXI_ARADDR => S_AXI_ARADDR,
    S_AXI_ARPROT => S_AXI_ARPROT,
    S_AXI_ARVALID => S_AXI_ARVALID,
    S_AXI_ARREADY => S_AXI_ARREADY,
    S_AXI_RDATA => S_AXI_RDATA,
    S_AXI_RRESP => S_AXI_RRESP,
    S_AXI_RVALID => S_AXI_RVALID,
    S_AXI_RREADY => S_AXI_RREADY
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

