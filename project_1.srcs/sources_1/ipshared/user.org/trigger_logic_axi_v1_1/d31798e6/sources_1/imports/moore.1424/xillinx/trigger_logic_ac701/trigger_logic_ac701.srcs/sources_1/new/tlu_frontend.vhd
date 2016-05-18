----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/12/2015 01:35:42 PM
-- Design Name: 
-- Module Name: tlu_frontend - Behavioral
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

entity tlu_frontend is
    Generic (
        DELAY_INPUT_WIDTH : integer := 10;
        TRIGGERS : integer := 10
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
        BEAM_CURRENT_sig                 : in std_logic;
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
end tlu_frontend;



architecture Behavioral of tlu_frontend is
    ------------------------------------------------------------------------------
    -- n bit counter definition
    ------------------------------------------------------------------------------

           	component c_counter_binary_1 IS
     PORT (
       CLK : IN STD_LOGIC;
       CE : IN STD_LOGIC;
       SCLR : IN STD_LOGIC;
       Q : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
     );
   END component;    
    ------------------------------------------------------------------------------
    -- Adjustable delay buffer definition
    ------------------------------------------------------------------------------
    component one_ch_delay is
        Port ( clk 			: in STD_LOGIC;
               reset 		: in STD_LOGIC;
               sig_in 		: in STD_LOGIC;
               delay 		: in STD_LOGIC_VECTOR (11 downto 0);
               sig_out 		: out STD_LOGIC);
    end component;

    ------------------------------------------------------------------------------
    -- Coincidence unit definition
    ------------------------------------------------------------------------------
	component 
     coincidence_unit is
       Generic (
       
           TRIGGER_N : INTEGER := 10
       );
       Port (
           CLK 		 : in STD_LOGIC;
           RST		 : in STD_LOGIC;
           Q 		 : in STD_LOGIC_VECTOR(TRIGGER_N-1 downto 0);
           ENABLE	 : in STD_LOGIC_VECTOR(TRIGGER_N-1 downto 0);
           persist	 : in STD_LOGIC_VECTOR (4 downto 0); -- riseing edge ambiguity hold
           pwidth	 : in STD_LOGIC_VECTOR (4 downto 0);  -- how long to hold a quinsidens 
           CNT		 : out STD_LOGIC_VECTOR(27 downto 0);
           O		 : out STD_LOGIC
       );
    end component;
    ------------------------------------------------------------------------------
    -- Beam current monitor definition
    ------------------------------------------------------------------------------
    component beam_current_monitor is
        Port (
            beam_current                    : in std_logic;
            clk                             : in std_logic;
            rst                             : in std_logic;
            cnt                             : out std_logic_vector(27 downto 0)
       );
    end component;
	   -- signal for edge detect of input pulse
	signal last_buf_in						: std_logic_vector(TRIGGERS-1 downto 0) := (others => '0');
	signal trig_edge 						: std_logic_vector(TRIGGERS-1 downto 0) := (others => '0');
	       						
    -- Adjustable input delays
    signal buf_in                           : std_logic_vector(TRIGGERS-1 downto 0) := (others => '0');
    signal unbuf_in                         : std_logic_vector(TRIGGERS-1 downto 0);
    signal enable_no_sin                    : std_logic_vector(TRIGGERS-1 downto 0) := (others => '0');
    -- Coincidence unit
    signal coincidence_out_copy             : std_logic := '0';
    signal coincidence_no_sin 		        : std_logic := '0';
begin

    ------------------------------------------------------------------------------
    -- Differential trigger inputs
    ------------------------------------------------------------------------------
    scintillator_ibufds : ibufds port map (
        i => SCINTILLATOR_TRIG_IN(1),
        ib => SCINTILLATOR_TRIG_IN(0),
        o => unbuf_in(0)
    );

    gen_input_buf : for I in 1 to (TRIGGERS-2) generate
        uX_ibufds : ibufds port map (
            i => FASTOR_TRIG_IN( (2*I) - 1 ),
            ib => FASTOR_TRIG_IN( (2*I) - 2 ),
            o => unbuf_in(I)
        );
    end generate;

    diamond_ibufds : ibufds port map (
        i => DIAMOND_TRIG_IN(1),
        ib => DIAMOND_TRIG_IN(0),
        o => unbuf_in(TRIGGERS-1)
    );


    ------------------------------------------------------------------------------
    -- Differential trigger outputs
    ------------------------------------------------------------------------------
    coincidence_out <= coincidence_out_copy;

    coincidence_out_buffer : obufds
    port map (
        I => coincidence_no_sin,
        O => DRS4_CH3(1),
        OB => DRS4_CH3(0)
    );

    ------------------------------------------------------------------------------
    -- Trigger Count
    ------------------------------------------------------------------------------

    gen_trig_counters : for I in 0 to (TRIGGERS-1) generate
    	edge_n: process(clk)
    		begin
    			if rising_edge(clk) then
    				if reset_counters = '1' then
    					trig_edge(I)<= '0';
	    			else
    					if buf_in(I) = '1' and last_buf_in(I) = '0' then
    						trig_edge(I) <= '1';
	    				else
    						trig_edge(I) <= '0';
    					end if;
    				end if;
	    			last_buf_in(I) <= buf_in(I);
    			end if;
   	 		end process;
        trig_countn:  c_counter_binary_1
			  Port map( clk => clk,
					 CE => trig_edge(I),
					 SCLR => reset_counters,
					 Q => cnt_triggers(I));
    end generate;
    ------------------------------------------------------------------------------
    -- Adjustable input delays
    ------------------------------------------------------------------------------

    -- Generate the adjustable input delays for the triggers
    gen_input_buffers : for I in 0 to TRIGGERS-1 generate
        inputX :       
         one_ch_delay 
               Port map( clk => clk,
                      reset => reset_counters,
                      sig_in => unbuf_in(I),
                      delay => delay_in(I),
                      sig_out => buf_in(I));
    end generate;

    ------------------------------------------------------------------------------
    -- Beam current counter (measures the beam current)
    ------------------------------------------------------------------------------
    beam_current_counter : beam_current_monitor
    Port map (
        beam_current => beam_current_sig,
        clk => clk,
        rst => reset_counters,
        cnt => beam_current_cnt
    );

    --------------------------------------
    --     Coincidence Unit             --
    --------------------------------------
    u1_coincidence_unit : coincidence_unit
    Port map (
        CLK => clk,
        RST => reset_counters,
        Q => buf_in, -- changed from buf_in
        ENABLE => coin_enable,
        persist => coincidence_edge_hold, -- riseing edge ambiguity hold
        pwidth =>  coincidence_pwidth, -- how long to hold a quinsidens
        CNT => coincidence_cnt,
        O => coincidence_out_copy
    );
    --------------------------------------
    --     Coincidence Unit   wo sinilator   --
    --------------------------------------
    enable_no_sin(TRIGGERS-1 downto 1) <= coin_enable(TRIGGERS-1 downto 1);
    enable_no_sin(0) <= '0';
    u2_coincidence_unit : coincidence_unit
    Port map (
        CLK => clk,
        RST => reset_counters,
        Q => buf_in, -- changed from buf_in
        ENABLE => enable_no_sin,
        persist => coincidence_edge_hold, -- riseing edge ambiguity hold
        pwidth =>  coincidence_pwidth, -- how long to hold a quinsidens
        CNT => coincidence_no_sin_cnt,
        O => coincidence_no_sin
    );
    
    -- test output
    triggers_buf_out <= buf_in;

end Behavioral;
