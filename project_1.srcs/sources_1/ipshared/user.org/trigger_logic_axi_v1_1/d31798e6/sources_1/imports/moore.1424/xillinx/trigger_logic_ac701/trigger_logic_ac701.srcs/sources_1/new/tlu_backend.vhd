----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 08/12/2015 02:42:43 PM
-- Design Name:
-- Module Name: tlu_backend - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

library WORK;
use WORK.LIB.ALL;

entity tlu_backend is
    Generic (
        BEAM_CURRENT_RESOLUTION         : integer := 16;
        DELAY_INPUT_WIDTH               : integer := 12
    );
    Port (
        -- Clocks
        clk                             : in STD_LOGIC;
--		pulser_pulse					: in STD_LOGIC;
		-- Reset counts
		reset_counters					: in std_logic;
		
        -- Enables
        trigger_enable                  : in std_logic;

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
        pulser_divisor                   : in std_logic_vector(27 downto 0);
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
end tlu_backend;

architecture Behavioral of tlu_backend is
    ------------------------------------------------------------------------------
    -- prescaler definition
    ------------------------------------------------------------------------------
	component prescaler is
		Port ( clk : in STD_LOGIC;
			   reset : in STD_LOGIC;
			   coincidence : in STD_LOGIC;
			   pwidth : in STD_LOGIC_VECTOR (4 downto 0); 
			   scaler : in STD_LOGIC_VECTOR (9 downto 0);
			   cnt : out STD_LOGIC_VECTOR (27 downto 0);
			   q : out STD_LOGIC);
	end component;
    ------------------------------------------------------------------------------
    -- Beam current monitor definition
    ------------------------------------------------------------------------------
    component beam_current_monitor is
        Port (
            beam_current                    : in STD_LOGIC;
            clk                             : in STD_LOGIC;
            rst                             : in STD_LOGIC;
            cnt                             : out STD_LOGIC_VECTOR(27 downto 0)
        );
    end component;


    ------------------------------------------------------------------------------
    -- Pulse generator 20 bit clk divisor 
    ------------------------------------------------------------------------------
    component  pulse_gen is
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               divisor : in STD_LOGIC_VECTOR (27 downto 0);
               duty : in STD_LOGIC_VECTOR (27 downto 0);
               q : out STD_LOGIC);
    end component;

    ------------------------------------------------------------------------------
    -- Beam current monitor definition
    ------------------------------------------------------------------------------
    component handshake_unit is
        Port (
               CLK			: in STD_LOGIC;
        	   reset		: in STD_LOGIC;
        	   BUSY_IN		: in STD_LOGIC_VECTOR (3 downto 0);
               MASK 		: in STD_LOGIC_VECTOR(3 downto 0);
               DELAY		: in STD_LOGIC_VECTOR(31 downto 0);
               SIG_IN 		: in STD_LOGIC;
               SIG_OUT 		: out STD_LOGIC
       );
    end component;
    ------------------------------------------------------------------------------
    -- Adjustable delay buffer definition
    ------------------------------------------------------------------------------
    component one_ch_delay is
        Port ( clk 		:		 in STD_LOGIC;
               reset 	:		 in STD_LOGIC;
               sig_in	:		 in STD_LOGIC;
               delay 	:		 in STD_LOGIC_VECTOR (11 downto 0);
               sig_out 	: 		out STD_LOGIC);
       end component;

    signal prescaler_out : std_logic := '0';
    signal prescaler_delayed_out : std_logic := '0';
    -- Pulser signals
   signal pulser_pulse : std_logic := '0';
    signal pulser_pulse_delayed : std_logic := '0';
    -- Misc logic signals
    signal prescaler_xor_pulser : std_logic := '0';
    signal prescaler_xor_pulser_AND_prescaler_delayed : std_logic := '0';
    signal pulser_delayed_AND_prescaler_xor_pulser : std_logic := '0';

    -- handshake signals
    signal handshake_in : std_logic := '0';
    signal handshake_out : std_logic := '0';
    signal busy_in_buf : std_logic_vector(3 downto 0) := (others => '0');
    signal trigger_1_int : std_logic;
    signal trigger_2_int : std_logic;
    signal trigger_3_int : std_logic;

begin

    ------------------------------------------------------------------------------
    -- Busy in inputs
    ------------------------------------------------------------------------------
    gen_busy_in : for I in 0 to 3 generate
        uX_ibuf : ibuf port map (
            i => busy_in(I),
            o => busy_in_buf(I)
        );
    end generate;

    ------------------------------------------------------------------------------
    -- Trigger Outputs
    ------------------------------------------------------------------------------
    -- pulser outputs
    pulser_out1 : obufds
    port map (
        I => pulser_pulse,
        O => PULSER_PREAMP_TP_TTL(1),
        OB => PULSER_PREAMP_TP_TTL(0)
    );

    pulser_out2 : obufds
    port map (
        I => pulser_pulse,
        O => PULSER_DRS4_CH4(1),
        OB => PULSER_DRS4_CH4(0)
    );

    pulser_out3 : obufds
    port map (
        I => pulser_pulse,
        O => PULSER_PREAMP_TP_SEL(1),
        OB => PULSER_PREAMP_TP_SEL(0)
    );

    -- pulser_delayed_AND_prescaler_xor_pulser
    -- Delayed Pulser AND (Prescaler XOR Pulser)
    pulser_delayed_AND_prescaler_xor_pulser_out1 : obufds
    port map (
        I => pulser_delayed_AND_prescaler_xor_pulser,
        O => LOGIC_PREAMP_TP_SEL(1),
        OB => LOGIC_PREAMP_TP_SEL(0)
    );

    pulser_delayed_AND_prescaler_xor_pulser_out2 : obufds
    port map (
        I => pulser_delayed_AND_prescaler_xor_pulser,
        O => LOGIC_DRS4_CH4(1),
        OB => LOGIC_DRS4_CH4(0)
    );

    -- handshake output
    handshake_out1 : obufds
    port map (
        I => trigger_1_int,
--        I => handshake_out,
        O => CAEN_DIG(1),
        OB => CAEN_DIG(0)
    );

    handshake_out2 : obufds
    port map (
        I => trigger_2_int,
--        I => handshake_out,
        O => DRS4_TRIG_IN_CH2(1),
        OB => DRS4_TRIG_IN_CH2(0)
    );

    handshake_out3 : obufds
    port map (
		I => trigger_3_int,
--        I => handshake_out,
        O => PSI46_ATB_DTB(1),
        OB => PSI46_ATB_DTB(0)
    );
    dleayed_trig_out1 : obuf
    port map (
		I => trigger_1_int,
        O => TRIG_1    );
	dleayed_trig_out2 : obuf
	port map (
		I => trigger_2_int,
		O => TRIG_2    );
	dleayed_trig_out3 : obuf
	port map (
		I => trigger_3_int,
		O => TRIG_3    );
    ---------------------------------
    --        Prescaler            --
    ---------------------------------
    per1: prescaler
	Port map( clk => clk,
		   reset => reset_counters,
		   coincidence => coincidence_out,
		   pwidth => pwidth,
		   scaler => prescaler_value,
		   CNT => prescaler_cnt,
		   q => prescaler_out);


    
    prescaler_delay_buffer : one_ch_delay
    Port map ( clk 	  => clk,
               reset  => reset_counters,
               sig_in => prescaler_out, 
               delay  => prescaler_delay,
               sig_out  => prescaler_delayed_out);
    ------------
    -- Pulser --
    ------------


    pulser_0p1_to_10Hz : pulse_gen
    port map (
        clk => clk,
        reset => reset_counters,
        divisor => pulser_divisor,
        duty => pulser_duty,
        q => pulser_pulse
    );
    pulser_delay_buffer :one_ch_delay
    port map (
        clk => clk,
        reset  => reset_counters,
        sig_in => pulser_pulse,
        delay  => pulser_delay,
        sig_out  => pulser_pulse_delayed
    );

    -----------------
    -- Misc. Logic --
    -----------------
    -- Prescaler XOR Pulser
    prescaler_xor_pulser <= prescaler_out XOR pulser_pulse;
    -- (Prescaler XOR Pulser) AND Delayed Prescaler
    prescaler_xor_pulser_AND_prescaler_delayed <= prescaler_xor_pulser AND prescaler_delayed_out;
    -- Delayed Pulser AND (Prescaler XOR Pulser)
    pulser_delayed_AND_prescaler_xor_pulser <= pulser_pulse_delayed AND prescaler_xor_pulser;
    -- (Prescaler XOR Pulser) AND Trigger Enable
    handshake_in <= prescaler_xor_pulser AND trigger_enable;

    ------------------------------
    -- Counters for Misc. Logic --
    ------------------------------
    prescaler_xor_pulser_counter : beam_current_monitor
    Port map (
        beam_current => prescaler_xor_pulser,
        clk => clk,
        rst => reset_counters,
        cnt => prescaler_xor_pulser_cnt
    );

    prescaler_xor_pulser_AND_prescaler_delayed_counter : beam_current_monitor
    Port map (
        beam_current => prescaler_xor_pulser_AND_prescaler_delayed,
        clk => clk,
        rst => reset_counters,
        cnt => prescaler_xor_pulser_AND_prescaler_delayed_cnt
    );

    pulser_delayed_AND_prescaler_xor_pulser_counter : beam_current_monitor
    Port map (
        beam_current => pulser_delayed_AND_prescaler_xor_pulser,
        clk => clk,
        rst => reset_counters,
        cnt => pulser_delayed_AND_prescaler_xor_pulser_cnt
    );

    --------------------
    -- Handshake Unit --
    --------------------
    handshake_unit1 : handshake_unit
    port map (
    	   CLK => clk,
		   reset	=>	reset_counters, -- TODO sould we use tihs reset here?
		   BUSY_IN	=> busy_in_buf,
		   MASK 	=> handshake_mask,
		   DELAY	=> handshake_delay,
		   SIG_IN 	=> handshake_in,
		   SIG_OUT  => handshake_out
    );

    handshake_counter : beam_current_monitor
    Port map (
        beam_current => handshake_out,
        clk => clk,
        rst => reset_counters,
        cnt => handshake_cnt
    );
	prescaler_out_pulse <= prescaler_out;
    trigger_1_d : one_ch_delay
	   Port map ( clk 	  => clk,
	              reset  => reset_counters,
	              sig_in => handshake_out, 
	              delay  => trig_1_delay,
	              sig_out  => trigger_1_int);
    trigger_2_d : one_ch_delay
	   Port map ( clk 	  => clk,
	              reset  => reset_counters,
	              sig_in => handshake_out, 
	              delay  => trig_2_delay,
	              sig_out  => trigger_2_int);
    trigger_3_d : one_ch_delay
	   Port map ( clk 	  => clk,
	              reset  => reset_counters,
	              sig_in => handshake_out, 
	              delay  => trig_3_delay,
	              sig_out  => trigger_3_int);
end Behavioral;