library ieee;
use ieee.std_logic_1164.all;

use ieee.numeric_std.all;
--  Xilinx primitives 
library UNISIM;
use UNISIM.VComponents.all;

use work.lib.all;


entity trigger_logic_AXI is
	generic (
		-- Users to add parameters here
		triggers : integer	:= 10;
		DELAY_INPUT_WIDTH : integer	:= 16;
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 7
	);
	port (
		-- Users to add ports here

 	 -- FMC Interface
	  -----------------
	  ---- HA Pins
	  -------------------
	  -- Trigger Inputs
	  FASTOR_TRIG_IN                  : in std_logic_vector(15 downto 0);
	  DIAMOND_TRIG_IN                 : in std_logic_Vector(1 downto 0);
	  SCINTILLATOR_TRIG_IN            : in std_logic_vector(1 downto 0);
	  -- Other differential inputs
	  BEAM_CURRENT_IN                 : in std_logic_vector(1 downto 0);
	  -- Input Control Signals
	  --  Single-ended
	  BUSY_IN                         : in std_logic_vector(3 downto 0);
	  -- Trigger Outputs
	  LOGIC_PREAMP_TP_SEL             : out std_logic_vector(1 downto 0);
	  LOGIC_DRS4_CH4                  : out std_logic_vector(1 downto 0);
	  PULSER_PREAMP_TP_TTL            : out std_logic_vector(1 downto 0);
	  PULSER_DRS4_CH4                 : out std_logic_vector(1 downto 0);
	  PULSER_PREAMP_TP_SEL            : out std_logic_vector(1 downto 0);
	  DRS4_TRIG_IN_CH2                : out std_logic_vector(1 downto 0);
	  PSI46_ATB_DTB                   : out std_logic_vector(1 downto 0);
	  DRS4_CH3                        : out std_logic_vector(1 downto 0);
	  CAEN_DIG                        : out std_logic_vector(1 downto 0);
	  TRIG_1                          : out std_logic;
	  TRIG_2                          : out std_logic;
	  TRIG_3                          : out std_logic;
--	  -- Test Output
--	  TEST_OUT                        : out std_logic_vector(1 downto 0);

--	  TEST_SMA                        : out std_logic_vector(1 downto 0);
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global Clock Signal
		S_AXI_ACLK	: in std_logic;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN	: in std_logic;
		-- Write address (issued by master, acceped by Slave)
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type. This signal indicates the
    		-- privilege and security level of the transaction, and whether
    		-- the transaction is a data access or an instruction access.
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		-- Write address valid. This signal indicates that the master signaling
    		-- valid write address and control information.
		S_AXI_AWVALID	: in std_logic;
		-- Write address ready. This signal indicates that the slave is ready
    		-- to accept an address and associated control signals.
		S_AXI_AWREADY	: out std_logic;
		-- Write data (issued by master, acceped by Slave) 
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte lanes hold
    		-- valid data. There is one write strobe bit for each eight
    		-- bits of the write data bus.    
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		-- Write valid. This signal indicates that valid write
    		-- data and strobes are available.
		S_AXI_WVALID	: in std_logic;
		-- Write ready. This signal indicates that the slave
    		-- can accept the write data.
		S_AXI_WREADY	: out std_logic;
		-- Write response. This signal indicates the status
    		-- of the write transaction.
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		-- Write response valid. This signal indicates that the channel
    		-- is signaling a valid write response.
		S_AXI_BVALID	: out std_logic;
		-- Response ready. This signal indicates that the master
    		-- can accept a write response.
		S_AXI_BREADY	: in std_logic;
		-- Read address (issued by master, acceped by Slave)
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. This signal indicates the privilege
    		-- and security level of the transaction, and whether the
    		-- transaction is a data access or an instruction access.
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		-- Read address valid. This signal indicates that the channel
    		-- is signaling valid read address and control information.
		S_AXI_ARVALID	: in std_logic;
		-- Read address ready. This signal indicates that the slave is
    		-- ready to accept an address and associated control signals.
		S_AXI_ARREADY	: out std_logic;
		-- Read data (issued by slave)
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the
    		-- read transfer.
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is
    		-- signaling the required read data.
		S_AXI_RVALID	: out std_logic;
		-- Read ready. This signal indicates that the master can
    		-- accept the read data and response information.
		S_AXI_RREADY	: in std_logic
	);
end trigger_logic_AXI;

architecture arch_imp of trigger_logic_AXI is

	-- AXI4LITE signals
	signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awready	: std_logic;
	signal axi_wready	: std_logic;
	signal axi_bresp	: std_logic_vector(1 downto 0);
	signal axi_bvalid	: std_logic;
	signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arready	: std_logic;
	signal axi_rdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal axi_rresp	: std_logic_vector(1 downto 0);
	signal axi_rvalid	: std_logic;

	-- Example-specific design signals
	-- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	-- ADDR_LSB is used for addressing 32/64 bit registers/memories
	-- ADDR_LSB = 2 for 32 bits (n downto 2)
	-- ADDR_LSB = 3 for 64 bits (n downto 3)
	constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
	constant OPT_MEM_ADDR_BITS : integer := 4; --was 1
	------------------------------------------------
	---- Signals for user logic register space example
	--------------------------------------------------
	---- Number of Slave Registers 4
	signal slv_reg0	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg1	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg2	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg3	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg4	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg5	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg6	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg7	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg8	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg9	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg10	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg11	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg12	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg13	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg14	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg15	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg16	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg17	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg18	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg19	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg20	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg21	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg22	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg23	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg24	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg25	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg26	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg27	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg28	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg29	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg30	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg31	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg_rden	: std_logic;
	signal slv_reg_wren	: std_logic;
	signal reg_data_out	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal byte_index	: integer;


    -- Inputs from fabric
    signal trigger_counts :  data_array_28b(triggers-1 downto 0);
    signal coincidence_cnt :  std_logic_vector(27 downto 0);
    signal coincidence_no_sin_cnt :  std_logic_vector(27 downto 0);
    signal beam_current :  std_logic_vector(27 downto 0);
    signal prescaler_cnt :  std_logic_vector(27 downto 0);
    signal prescaler_xor_pulser_cnt :  std_logic_vector(27 downto 0);
    signal prescaler_xor_pulser_AND_prescaler_delayed_cnt :  std_logic_vector(27 downto 0);
    signal pulser_delayed_AND_prescaler_xor_pulser_cnt :  std_logic_vector(27 downto 0);
    signal handshake_cnt :  std_logic_vector(27 downto 0);
--    signal coincidence_rate:  std_logic_vector(27 downto 0);
--    signal prescaler_rate:  std_logic_vector(27 downto 0);
    -- Outputs to fabric
    signal delay_time : delay_array(triggers-1 downto 0);
    signal delay_rst : std_logic_vector(triggers-1 downto 0);
    signal reset_counters :  std_logic;
    signal coin_enable :  std_logic_vector(triggers-1 downto 0);
    signal pulser_divisor :  std_logic_vector(27 downto 0);
    signal prescaler_delay :  std_logic_vector(11 downto 0);
    signal prescaler_value :  std_logic_vector(9 downto 0);
    signal pulser_delay :  std_logic_vector(11 downto 0);
    signal pulser_duty :  std_logic_vector(27 downto 0);
    signal trigger_enable : std_logic;
    signal handshake_mask : std_logic_vector(3 downto 0);
    signal handshake_delay : std_logic_vector(31 downto 0);
    signal sys_en : std_logic;
    signal delay_en :  std_logic;
    
    
    signal coincidence_edge_hold :  STD_LOGIC_VECTOR (4 downto 0); -- riseing edge ambiguity hold
    signal coincidence_pwidth :  STD_LOGIC_VECTOR (4 downto 0);  -- how long to hold a quinsidens 
        
    signal BEAM_CURRENT_sig :  std_logic;
	signal trig_1_delay        :  std_logic_vector(11 downto 0);
	signal trig_2_delay        :  std_logic_vector(11 downto 0);
	signal trig_3_delay        :  std_logic_vector(11 downto 0);
	 
    --internal signals between front & back end
	signal coincidence_out : std_logic;
	signal prescaler_out_pulse : std_logic;
	--debug signals
	signal triggers_buf_out :  std_logic_vector(9 downto 0);
	signal M1_out : std_logic;
	signal M2_out : std_logic;
	signal mux_selects:  std_logic_vector(7 downto 0);
    component tlu_frontend is
        Generic (
            DELAY_INPUT_WIDTH : integer := DELAY_INPUT_WIDTH;
            TRIGGERS : integer := TRIGGERS
        );
        Port (
            -- Clocks
            clk                             : in std_logic;
            
            -- Enables
            coin_enable                    : in std_logic_vector(TRIGGERS-1 downto 0);
            delay_en                        : in std_logic;
            trigger_enable                  : in std_logic;

			-- Resets
			reset_counters                  : in std_logic;
            -- Trigger Inputs
            FASTOR_TRIG_IN                  : in std_logic_vector(15 downto 0);
            DIAMOND_TRIG_IN                 : in std_logic_Vector(1 downto 0);
            SCINTILLATOR_TRIG_IN            : in std_logic_vector(1 downto 0);
    
            -- Other Inputs
            BEAM_CURRENT_sig                : in std_logic;
            delay_in                        : in delay_array(TRIGGERS-1 downto 0);
			-- quinsidens delays
			coincidence_edge_hold 			: in STD_LOGIC_VECTOR (4 downto 0); -- riseing edge ambiguity hold
	        coincidence_pwidth 				: in STD_LOGIC_VECTOR (4 downto 0);  -- how long to hold a quinsidens 
    
            -- Logic Outputs
            coincidence_out                 : out std_logic;
             
            -- Trigger Outputs
            DRS4_CH3                        : out std_logic_vector(1 downto 0);
            
            -- Counter Outputs
            beam_current_cnt                : out std_logic_vector(27 downto 0);
            cnt_triggers                    : out data_array_28b(triggers-1 downto 0);
            coincidence_cnt                 : out std_logic_vector(27 downto 0);
			coincidence_no_sin_cnt          : out std_logic_vector(27 downto 0);
           
            -- Test outputs
            triggers_buf_out                : out std_logic_vector(9 downto 0)
        );
    end component;

    ------------------------------------------------------------------------------
    -- Trigger logic unit backend
    ------------------------------------------------------------------------------
    component tlu_backend is
        Generic (
            DELAY_INPUT_WIDTH               : integer := DELAY_INPUT_WIDTH
        );
        Port (
            -- Clocks
            clk                             : in STD_LOGIC;
--			pulser_pulse					: in STD_LOGIC;
    
            -- Enables
            trigger_enable                  : in std_logic;
			-- Reset counts
			reset_counters					: in std_logic;
    
            -- Input Controls
            BUSY_IN                         : in std_logic_vector(3 downto 0);
            coincidence_out                 : in std_logic;
    
            -- Control Signals
            handshake_mask                  : in std_logic_vector(3 downto 0);
            handshake_delay                 : in std_logic_vector(31 downto 0);
            prescaler_value                  : in std_logic_vector(9 downto 0);
            prescaler_delay                 : in std_logic_vector(11 downto 0);
           pulser_delay                    : in std_logic_vector(11 downto 0);
            pulser_duty                     : in std_logic_vector(27 downto 0);
            pulser_divisor                  : in std_logic_vector(27 downto 0);
   			pwidth 							: in STD_LOGIC_VECTOR (4 downto 0);  --/width of interna signal pulses

   			        trig_1_delay                    : in std_logic_vector(11 downto 0);
   			        trig_2_delay                    : in std_logic_vector(11 downto 0);
   			        trig_3_delay                    : in std_logic_vector(11 downto 0);
            -- Trigger Outputs
            LOGIC_PREAMP_TP_SEL             : out std_logic_vector(1 downto 0);
            LOGIC_DRS4_CH4                  : out std_logic_vector(1 downto 0);
            PULSER_PREAMP_TP_TTL            : out std_logic_vector(1 downto 0);
            PULSER_DRS4_CH4                 : out std_logic_vector(1 downto 0);
            PULSER_PREAMP_TP_SEL            : out std_logic_vector(1 downto 0);
            DRS4_TRIG_IN_CH2                : out std_logic_vector(1 downto 0);
            PSI46_ATB_DTB                   : out std_logic_vector(1 downto 0);
            CAEN_DIG                        : out std_logic_vector(1 downto 0);
			TRIG_1                          : out std_logic;
			TRIG_2                          : out std_logic;
			TRIG_3                          : out std_logic;
            		
            prescaler_out_pulse				:out std_logic;
    
            -- Counters
            handshake_cnt                   : out std_logic_vector(27 downto 0);
            prescaler_cnt                   : out std_logic_vector(27 downto 0);
            prescaler_xor_pulser_cnt        : out std_logic_vector(27 downto 0);
            prescaler_xor_pulser_AND_prescaler_delayed_cnt : out std_logic_vector(27 downto 0);
            pulser_delayed_AND_prescaler_xor_pulser_cnt : out std_logic_vector(27 downto 0)
        );
    end component;


--	component test_mux is
--        Port ( sig : in STD_LOGIC_VECTOR (9 downto 0);
--        	   s1  : in STD_LOGIC;
--               s2  : in STD_LOGIC;
--        	   s3  : in STD_LOGIC;
--               sel_1 : in STD_LOGIC_VECTOR (3 downto 0);
--               sel_2 : in STD_LOGIC_VECTOR (3 downto 0);
--               Q1 : out STD_LOGIC;
--               Q2 : out STD_LOGIC);
--    end component;

	component	rate_counters is
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               sig_1 : in STD_LOGIC;
               sig_2 : in STD_LOGIC;
               rate_1 : out STD_LOGIC_VECTOR (27 downto 0);
               rate_2 : out STD_LOGIC_VECTOR (27 downto 0));
    end component;



begin
	-- I/O Connections assignments

	S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP	<= axi_bresp;
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RDATA	<= axi_rdata;
	S_AXI_RRESP	<= axi_rresp;
	S_AXI_RVALID	<= axi_rvalid;
	-- Implement axi_awready generation
	-- axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	-- de-asserted when reset is low.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awready <= '0';
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') then
	        -- slave is ready to accept write address when
	        -- there is a valid write address and write data
	        -- on the write address and data bus. This design 
	        -- expects no outstanding transactions. 
	        axi_awready <= '1';
	      else
	        axi_awready <= '0';
	      end if;
	    end if;
	  end if;
	end process;

	-- Implement axi_awaddr latching
	-- This process is used to latch the address when both 
	-- S_AXI_AWVALID and S_AXI_WVALID are valid. 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awaddr <= (others => '0');
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') then
	        -- Write Address latching
	        axi_awaddr <= S_AXI_AWADDR;
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_wready generation
	-- axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	-- de-asserted when reset is low. 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_wready <= '0';
	    else
	      if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1') then
	          -- slave is ready to accept write data when 
	          -- there is a valid write address and write data
	          -- on the write address and data bus. This design 
	          -- expects no outstanding transactions.           
	          axi_wready <= '1';
	      else
	        axi_wready <= '0';
	      end if;
	    end if;
	  end if;
	end process; 

	-- Implement memory mapped register select and write logic generation
	-- The write data is accepted and written to memory mapped registers when
	-- axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	-- select byte enables of slave registers while writing.
	-- These registers are cleared when reset (active low) is applied.
	-- Slave register write enable is asserted when valid address and data are available
	-- and the slave is ready to accept the write address and write data.
	slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID ;

	process (S_AXI_ACLK)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0); 
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      slv_reg0 <= (others => '0');
	      slv_reg1 <= (others => '0');
	      slv_reg2 <= (others => '0');
	      slv_reg3 <= (others => '0');
	      slv_reg4 <= (others => '0');
	      slv_reg5 <= (others => '0');
	      slv_reg6 <= (others => '0');
	      slv_reg7 <= (others => '0');
	      slv_reg8 <= (others => '0');
	      slv_reg9 <= (others => '0');
	      slv_reg10 <= (others => '0');
	      slv_reg11 <= (others => '0');
	      slv_reg12 <= (others => '0');
	      slv_reg13 <= (others => '0');
	      slv_reg14 <= (others => '0');
	      slv_reg15 <= (others => '0');
	      slv_reg16 <= (others => '0');
	      slv_reg17 <= (others => '0');
	      slv_reg18 <= (others => '0');
	      slv_reg19 <= (others => '0');
	      slv_reg20 <= (others => '0');
	      slv_reg21 <= (others => '0');
	      slv_reg22 <= (others => '0');
	      slv_reg23 <= (others => '0');
	      slv_reg24 <= (others => '0');
	      slv_reg25 <= (others => '0');
	      slv_reg26 <= (others => '0');
	      slv_reg27 <= (others => '0');
	      slv_reg28 <= (others => '0');
	      slv_reg29 <= (others => '0');
	      slv_reg30 <= (others => '0');
	      slv_reg31 <= (others => '0');
	    else
	      loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	      if (slv_reg_wren = '1') then
	        case loc_addr is
	          when b"00000" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 0
	                slv_reg0(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"00001" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 1
	                slv_reg1(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"00010" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 2
	                slv_reg2(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"00011" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg3(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"00100" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg4(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"00101" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg5(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"00110" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg6(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"00111" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg7(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01000" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 0
	                slv_reg8(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01001" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 1
	                slv_reg9(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01010" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 2
	                slv_reg10(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01011" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg11(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01100" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg12(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01101" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg13(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01110" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg14(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01111" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg15(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10000" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 0
	                slv_reg16(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10001" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 1
	                slv_reg17(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10010" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 2
	                slv_reg18(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10011" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg19(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10100" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg20(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10101" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg21(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10110" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg22(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10111" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg23(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11000" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg24(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11001" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg25(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11010" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg26(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11011" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg27(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11100" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg28(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11101" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg29(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;

			  when b"11110" =>
				for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
				  if ( S_AXI_WSTRB(byte_index) = '1' ) then
					-- Respective byte enables are asserted as per write strobes                   
					-- slave registor 3
					slv_reg30(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
				  end if;
				end loop;
			  when b"11111" =>
				for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
				  if ( S_AXI_WSTRB(byte_index) = '1' ) then
					-- Respective byte enables are asserted as per write strobes                   
					-- slave registor 3
					slv_reg31(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
				  end if;
				end loop;

	          when others =>
	            slv_reg0 <= slv_reg0;
	            slv_reg1 <= slv_reg1;
	            slv_reg2 <= slv_reg2;
	            slv_reg3 <= slv_reg3;
	            slv_reg4 <= slv_reg4;
	            slv_reg5 <= slv_reg5;
	            slv_reg6 <= slv_reg6;
	            slv_reg7 <= slv_reg7;
	            slv_reg8 <= slv_reg8;
	            slv_reg9 <= slv_reg9;
	            slv_reg10 <= slv_reg10;
	            slv_reg11 <= slv_reg11;
	            slv_reg12 <= slv_reg12;
	            slv_reg13 <= slv_reg13;
	            slv_reg14 <= slv_reg14;
	            slv_reg15 <= slv_reg15;
	            slv_reg16 <= slv_reg16;
	            slv_reg17 <= slv_reg17;
	            slv_reg18 <= slv_reg18;
	            slv_reg19 <= slv_reg19;
	            slv_reg20 <= slv_reg20;
	            slv_reg21 <= slv_reg21;
	            slv_reg22 <= slv_reg22;
	            slv_reg23 <= slv_reg23;
	            slv_reg24 <= slv_reg24;
	            slv_reg25 <= slv_reg25;
	            slv_reg26 <= slv_reg26;
	            slv_reg27 <= slv_reg27;
	            slv_reg28 <= slv_reg28;
	            slv_reg29 <= slv_reg29;
	            slv_reg30 <= slv_reg30;
	            slv_reg31 <= slv_reg31;
	        end case;
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement write response logic generation
	-- The write response and response valid signals are asserted by the slave 
	-- when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	-- This marks the acceptance of address and indicates the status of 
	-- write transaction.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_bvalid  <= '0';
	      axi_bresp   <= "00"; --need to work more on the responses
	    else
	      if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0'  ) then
	        axi_bvalid <= '1';
	        axi_bresp  <= "00"; 
	      elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then   --check if bready is asserted while bvalid is high)
	        axi_bvalid <= '0';                                 -- (there is a possibility that bready is always asserted high)
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arready generation
	-- axi_arready is asserted for one S_AXI_ACLK clock cycle when
	-- S_AXI_ARVALID is asserted. axi_awready is 
	-- de-asserted when reset (active low) is asserted. 
	-- The read address is also latched when S_AXI_ARVALID is 
	-- asserted. axi_araddr is reset to zero on reset assertion.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_arready <= '0';
	      axi_araddr  <= (others => '1');
	    else
	      if (axi_arready = '0' and S_AXI_ARVALID = '1') then
	        -- indicates that the slave has acceped the valid read address
	        axi_arready <= '1';
	        -- Read Address latching 
	        axi_araddr  <= S_AXI_ARADDR;           
	      else
	        axi_arready <= '0';
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arvalid generation
	-- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	-- S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	-- data are available on the axi_rdata bus at this instance. The 
	-- assertion of axi_rvalid marks the validity of read data on the 
	-- bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	-- is deasserted on reset (active low). axi_rresp and axi_rdata are 
	-- cleared to zero on reset (active low).  
	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then
	    if S_AXI_ARESETN = '0' then
	      axi_rvalid <= '0';
	      axi_rresp  <= "00";
	    else
	      if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
	        -- Valid read data is available at the read data bus
	        axi_rvalid <= '1';
	        axi_rresp  <= "00"; -- 'OKAY' response
	      elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
	        -- Read data is accepted by the master
	        axi_rvalid <= '0';
	      end if;            
	    end if;
	  end if;
	end process;

	-- Implement memory mapped register select and read logic generation
	-- Slave register read enable is asserted when valid address is available
	-- and the slave is ready to accept the read address.
    ------------------------------------------------------------------------------
	-- map slave registres to registres used 
       -- AXI memory map		
	-- trigger_counts					10 x28	0-9
	-- coincidence_cnt					16	16
	-- beam_current			beam_current_resolution		17
	-- prescaler_cnt					16	18
	-- prescaler_xor_pulser_cnt				16	19
	-- prescaler_xor_pulser_AND_prescaler_delayed_cnt	16	20
	-- pulser_delayed_AND_prescaler_xor_pulser_cnt		16	21
	-- handshake_cnt					16	22
	-- enable readback 					3	24
	------------------------------------------------------------------------------




	slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid) ;

	process ( axi_araddr, S_AXI_ARESETN, slv_reg_rden,trigger_counts,coincidence_cnt,beam_current,
			prescaler_cnt,prescaler_xor_pulser_cnt,prescaler_xor_pulser_AND_prescaler_delayed_cnt,
			pulser_delayed_AND_prescaler_xor_pulser_cnt,handshake_cnt,slv_reg24
			)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	    -- Address decoding for reading registers
	    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	    case loc_addr is
	      when b"00000" =>
	        reg_data_out(27 downto 0) <= trigger_counts(0);
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"00001" =>
	        reg_data_out(27 downto 0) <= trigger_counts(1);
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"00010" =>
	        reg_data_out(27 downto 0) <= trigger_counts(2);
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"00011" =>
	        reg_data_out(27 downto 0) <= trigger_counts(3);
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"00100" =>
	        reg_data_out(27 downto 0) <= trigger_counts(4);
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"00101" =>
	        reg_data_out(27 downto 0) <= trigger_counts(5);
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"00110" =>
	        reg_data_out(27 downto 0) <= trigger_counts(6);
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"00111" =>
	        reg_data_out(27 downto 0) <= trigger_counts(7);
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"01000" =>
	        reg_data_out(27 downto 0) <= trigger_counts(8);
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"01001" =>
	        reg_data_out(27 downto 0) <= trigger_counts(9);
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"01010" =>
	        reg_data_out(27 downto 0) <= coincidence_cnt;
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"01011" =>
	        reg_data_out(27 downto 0) <= beam_current(27 downto 0);
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"01100" =>
	        reg_data_out(27 downto 0) <= prescaler_cnt;
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"01101" =>
	        reg_data_out(27 downto 0) <= prescaler_xor_pulser_cnt;
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"01110" =>
	        reg_data_out(27 downto 0) <= prescaler_xor_pulser_AND_prescaler_delayed_cnt;
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"01111" =>
	        reg_data_out(27 downto 0) <= pulser_delayed_AND_prescaler_xor_pulser_cnt;
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
	      when b"10000" =>
	        reg_data_out(27 downto 0) <= handshake_cnt;
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
		  when b"10001" =>
			reg_data_out(27 downto 0) <= coincidence_no_sin_cnt;
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 28) <= (others => '0');
		  when b"10010" =>
			reg_data_out(7 downto 0) <= "01010010";--return S
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 8) <= (others => '0');
		  when b"10011" =>
			reg_data_out(7 downto 0) <= "01010100";--return T reserv for futuer use
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 8) <= (others => '0');
		  when b"10100" =>
			reg_data_out(7 downto 0) <= "01010101";--return U
			reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 8) <= (others => '0');
		  when b"10101" =>
			reg_data_out <= slv_reg24; -- enable readback
	      when others =>
	        reg_data_out  <= (others => '0');
	    end case;
	end process; 

	-- Output register or memory read data
	process( S_AXI_ACLK ) is
	begin
	  if (rising_edge (S_AXI_ACLK)) then
	    if ( S_AXI_ARESETN = '0' ) then
	      axi_rdata  <= (others => '0');
	    else
	      if (slv_reg_rden = '1') then
	        -- When there is a valid read address (S_AXI_ARVALID) with 
	        -- acceptance of read address by the slave (axi_arready), 
	        -- output the read dada 
	        -- Read address mux
	          axi_rdata <= reg_data_out;     -- register read data
	      end if;   
	    end if;
	  end if;
	end process;


	-- Add user logic here
    ------------------------------------------------------------------------------
	-- map slave registres to registres used 
        -- AXI memory map		
	-- delay_time		delay_array x triggers	0-15
	-- reset_counters		1	16    for reseting all counters
	-- coin_enable			triggers	18
	-- prescaler_value		10	19
	-- prescaler_delay		12	20
	-- unused  pulser_divisor		32	21
 	-- unused pulser_duty			32	22
	-- pulser_delay			12	23
	-- trigger_enable 0 	1	24,0
	--  sys_en 1 			1	24,1
	--  delay_en 2			1	24,2			
	-- handshake_mask		4	25
	-- handshake_delay		9	26
	-- coincidence_edge_hold	5	27
	-- coincidence_pwidth	5	28
	-- mux_selects			8 	29		
	------------------------------------------------------------------------------



	process( S_AXI_ACLK ) is
	begin
	  if (rising_edge (S_AXI_ACLK)) then
		delay_time(0) <= slv_reg0(15 downto 0);
		delay_time(1) <= slv_reg1(15 downto 0);
		delay_time(2) <= slv_reg2(15 downto 0);
		delay_time(3) <= slv_reg3(15 downto 0);
		delay_time(4) <= slv_reg4(15 downto 0);
		delay_time(5) <= slv_reg5(15 downto 0);
		delay_time(6) <= slv_reg6(15 downto 0);
		delay_time(7) <= slv_reg7(15 downto 0);
		delay_time(8) <= slv_reg8(15 downto 0);
		delay_time(9) <= slv_reg9(15 downto 0);
		reset_counters <= slv_reg16(0);
		coin_enable <=  slv_reg18(triggers-1 downto 0);
		prescaler_value <=  slv_reg19(9 downto 0);
		prescaler_delay <= slv_reg20(11 downto 0);
		pulser_divisor <= slv_reg21(27 downto 0);
		pulser_duty <= slv_reg22(27 downto 0);
		pulser_delay <= slv_reg23(11 downto 0);
			-- trigger_enable 0 	1	24,0
			--  sys_en 1 			1	24,1
			--  delay_en 2			1	24,2	
		trigger_enable <= slv_reg24(0);
		sys_en <=  slv_reg24( 1);
		delay_en <=  slv_reg24( 2);
		handshake_mask <= slv_reg25(3 downto 0);
		handshake_delay <= slv_reg26(31 downto 0);
		coincidence_edge_hold <= slv_reg27(4 downto 0); -- riseing edge ambiguity hold
		coincidence_pwidth <= slv_reg28(4 downto 0);
		mux_selects <= slv_reg29(7 downto 0);
		trig_1_delay <= slv_reg30(11 downto 0);
		trig_2_delay <= slv_reg30(23 downto 12);
		trig_3_delay <= slv_reg31(11 downto 0);
	  end if;
	end process;
    ------------------------------------------------------------------------------
	-- Frontend for the Trigger Logic Unit
	------------------------------------------------------------------------------
	frontend_logic : tlu_frontend
	port map (
	    -- Clocks
	    clk                     => S_AXI_ACLK,

	    -- Enables
	    coin_enable            => coin_enable,
	    delay_en                => delay_en,
	    trigger_enable          => trigger_enable,
	    
	    -- Resets
	    reset_counters 			=> reset_counters,
	    
	    -- Trigger Inputs
	    FASTOR_TRIG_IN          => FASTOR_TRIG_IN,
	    DIAMOND_TRIG_IN         => DIAMOND_TRIG_IN,
	    SCINTILLATOR_TRIG_IN    => SCINTILLATOR_TRIG_IN,
	    
	    -- Other Inputs
	    BEAM_CURRENT_sig         => BEAM_CURRENT_sig,
	    delay_in                => delay_time,	
	    coincidence_edge_hold 	=> coincidence_edge_hold, -- riseing edge ambiguity hold
	    coincidence_pwidth 		=> coincidence_pwidth, -- how long to hold a quinsidens 
    
	    
	    -- Logic outputs
	    coincidence_out         => coincidence_out,
	    -- Trigger outputs
	    DRS4_CH3                => DRS4_CH3,
	    
	    -- Counter outputs
	    beam_current_cnt        => beam_current,
	    cnt_triggers            => trigger_counts,
	    coincidence_cnt         => coincidence_cnt,
	    coincidence_no_sin_cnt  => coincidence_no_sin_cnt,
	    
	    -- Test outputs
	    triggers_buf_out        => triggers_buf_out
	);
	
	backend_logic : tlu_backend
	port map (
	    -- Clocks
	    clk => S_AXI_ACLK,
	    
	    -- Enables
	    trigger_enable => trigger_enable,
		--counter resets
	    reset_counters => reset_counters,
	    -- Input Controls
	    BUSY_IN => BUSY_IN,
	    coincidence_out => coincidence_out,
	    
	    -- Control Signals
	    handshake_mask => handshake_mask,
	    handshake_delay => handshake_delay,
	    prescaler_value => prescaler_value,
	    prescaler_delay => prescaler_delay,
	    pulser_delay => pulser_delay,
	    pulser_duty => pulser_duty,
	    pulser_divisor => pulser_divisor,
	    pwidth	=> coincidence_pwidth,
	            trig_1_delay => trig_1_delay,
	            trig_2_delay => trig_2_delay,
	            trig_3_delay => trig_3_delay,
	    -- Trigger Outputs
        LOGIC_PREAMP_TP_SEL => LOGIC_PREAMP_TP_SEL,--open,
	    LOGIC_DRS4_CH4 => LOGIC_DRS4_CH4,
	    PULSER_PREAMP_TP_TTL => PULSER_PREAMP_TP_TTL,
	    PULSER_DRS4_CH4 => PULSER_DRS4_CH4,
	    PULSER_PREAMP_TP_SEL => PULSER_PREAMP_TP_SEL,
	    DRS4_TRIG_IN_CH2 => DRS4_TRIG_IN_CH2,
	    PSI46_ATB_DTB => PSI46_ATB_DTB,
        CAEN_DIG => CAEN_DIG,
	    TRIG_1 => TRIG_1,
	    TRIG_2 => TRIG_2,
	    TRIG_3 => TRIG_3,
	    prescaler_out_pulse  =>prescaler_out_pulse,
	    -- Counters
	    handshake_cnt => handshake_cnt,
	    prescaler_cnt => prescaler_cnt,
	    prescaler_xor_pulser_cnt => prescaler_xor_pulser_cnt,
	    prescaler_xor_pulser_AND_prescaler_delayed_cnt => prescaler_xor_pulser_AND_prescaler_delayed_cnt,
	    pulser_delayed_AND_prescaler_xor_pulser_cnt => pulser_delayed_AND_prescaler_xor_pulser_cnt
	);
    beam_current_ibufds : ibufds port map (
	    i => BEAM_CURRENT_IN(1),
	    ib => BEAM_CURRENT_IN(0),
	    o => beam_current_sig
	);
	-- Test outputs
--	test_obuf1 : obufds
--	port map (
--	    i => triggers_buf_out(2),
--	    o => LOGIC_PREAMP_TP_SEL(1),
--	    ob => LOGIC_PREAMP_TP_SEL(0)
--	);
	
--	test_obuf2 : obufds
--	port map (
--	    i => triggers_buf_out(1),
--	    o => CAEN_DIG(1),
--	    ob => CAEN_DIG(0)
--	);
	
	
--	rc:	rate_counters 
--        Port map( clk => S_AXI_ACLK,
--               reset => reset_counters,
--               sig_1 => coincidence_pulse,
--               sig_2 => prescaler_out_pulse,
--               rate_1 => coincidence_rate,
--               rate_2  => prescaler_rate);
------------------------------------------------------------------------------------
-- Test ports
--Mux all triger buffer output therew test ports

--	mux1 : test_mux 
--    Port map ( sig => triggers_buf_out,
--    	   s1 =>  BEAM_CURRENT_sig,
--           s2 => fixed_1HZ_pulse,
--    	   s3  => '1',
--           sel_1 => mux_selects(3 downto 0),
--           sel_2 => mux_selects(7 downto 4),
--           Q1 => M1_out,
--           Q2 => M2_out);
--	test_out_obuf : obufds
--	port map (
--	    I => M1_out,
--	    O => TEST_OUT(1),
--	    OB => TEST_OUT(0)
--	);

--	test_sma_obuf : obufds
--	port map (
--	    I => M2_out,
--	    O => TEST_SMA(1),
--	    OB => TEST_SMA(0)
--	);


	-- User logic ends

end arch_imp;
