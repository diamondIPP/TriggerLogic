----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/08/2015 04:01:40 PM
-- Design Name: 
-- Module Name: pulse_gen - Behavioral
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity pulse_gen is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           divisor : in STD_LOGIC_VECTOR (27 downto 0);
           duty : in STD_LOGIC_VECTOR (27 downto 0);
           q : out STD_LOGIC);
end pulse_gen;

architecture Behavioral of pulse_gen is
	signal fast_count : STD_LOGIC_VECTOR (27 downto 0);
	signal slow_count : STD_LOGIC_VECTOR (27 downto 0);
	signal old_divisor : STD_LOGIC_VECTOR (27 downto 0);  --used to short cycle on rate change
	signal old_duty : STD_LOGIC_VECTOR (27 downto 0);  --used to short cycle on rate change
	signal short_cyle : STD_LOGIC;
	signal reset_states: STD_LOGIC;
	signal c_divide_0: STD_LOGIC;
	signal c_divide_1: STD_LOGIC;
	signal c_divide_2: STD_LOGIC;
	signal c_divide_3: STD_LOGIC;
	signal c_divide_4: STD_LOGIC;
	signal last_c_divide_0: STD_LOGIC;
	signal last_c_divide_1: STD_LOGIC;
	signal last_c_divide_2: STD_LOGIC;
	signal last_c_divide_3: STD_LOGIC;
	signal last_c_divide_4: STD_LOGIC;
	signal pulse : STD_LOGIC;
	signal cycle_end : STD_LOGIC;
	signal slow_count_reset : STD_LOGIC;
	signal fast_count_reset  : STD_LOGIC;
	signal triger_c  : STD_LOGIC;
	signal triger_c_slow  : STD_LOGIC;
	signal triger_c_fast : STD_LOGIC;
	signal state : STD_LOGIC_VECTOR (1 downto 0);
	signal state2 : STD_LOGIC_VECTOR (1 downto 0);
	signal divisor_ch : STD_LOGIC;
	signal duty_ch : STD_LOGIC;
	signal duty_zero : STD_LOGIC;
	component c_counter_binary_2 IS
	  PORT (
	    CLK : IN STD_LOGIC;
	    CE : IN STD_LOGIC;
	    SCLR : IN STD_LOGIC;
	    Q : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
	  );
	  end component;
begin


	
	D2:process(clk)
	begin
		if rising_edge(clk) then
		   if ( reset = '1' ) then
				c_divide_0 <= '0';
				c_divide_1 <= '0';
				c_divide_2 <= '0';
				c_divide_3 <= '0';
				c_divide_4 <= '0';
			else
				c_divide_0 <= not c_divide_0;
				last_c_divide_0 <= c_divide_0;
				if(c_divide_0 ='1' and last_c_divide_0 ='0') then
					c_divide_1 <= not c_divide_1;
				end if;
				last_c_divide_1<=c_divide_1;
				if(c_divide_1 ='1' and last_c_divide_1 ='0') then
					c_divide_2 <= not c_divide_2;
				end if;
				last_c_divide_2<=c_divide_2;
				if(c_divide_2 ='1' and last_c_divide_2 ='0') then
					c_divide_3 <= not c_divide_3;
				end if;
				last_c_divide_3<=c_divide_3;
				if(c_divide_3 ='1' and last_c_divide_3 ='0') then
					c_divide_4 <= not c_divide_4;
				end if;
				last_c_divide_4<=c_divide_4;
				if(c_divide_4 ='1' and last_c_divide_4 ='0') then
					triger_c <= '1';
				else 
					triger_c <= '0';
					
				end if;
			end if;
		 end if;
	end process;
	reset_states <= reset or short_cyle;
	
	--TODO brake  old_divisor /= divisor or old_duty /= duty  or duty = "0000000000000000000000000000" then
	-- into seperate processes	
	s1_cycle:process(clk)  
	begin			
		if rising_edge(clk) then
			if old_divisor /= divisor then
				divisor_ch <= '1';
			else  
				divisor_ch <= '0';
			end if;
		end if;
	end process;
	s2_cycle:process(clk)  
	begin			
		if rising_edge(clk) then
			if old_duty /= duty then
				duty_ch <= '1';
			else  
				duty_ch <= '0';
			end if;
		end if;
	end process;
	s3_cycle:process(clk)  
	begin			
		if rising_edge(clk) then
			if duty = "0000000000000000000000000000" then
				duty_zero <= '1';
			else  
				duty_zero <= '0';
			end if;
		end if;
	end process;
	s_cylel:process(clk) --used for updateing reg reset counter 
		begin			 --so do not halfto weight 2^(27+5) clk cylcles
			if rising_edge(clk) then
				 old_divisor <= divisor;
				 old_duty <= duty;
				 if divisor_ch = '1' or duty_ch = '1' or duty_zero = '1' then
				 	short_cyle <= '1';
				 else
				 	short_cyle <= '0';
				 end if;
			end if;
		end process;
	freq_gen:process(clk)
	begin
		if rising_edge(clk) then  --setting duty =0 makes output 0 
			if  reset_states = '1'  then
				state <= "00";
				cycle_end <= '0';
			else
				case state is
					when "00" => -- start reset all counters
						slow_count_reset <= '1';
						triger_c_slow <= '0';
						state <= "01";
						cycle_end <= '0';
					when "01" => -- start the counters
						slow_count_reset <= '0';
						triger_c_slow <= triger_c;
						state <= "10";
						cycle_end <= '0';
					when "10" => -- weight for slow counter to finish
						triger_c_slow <= triger_c;
						if slow_count = divisor then -- end of cycle
							slow_count_reset <= '1';
							state <= "00";
							triger_c_slow <= '0';
							cycle_end <= '1';
						else 
							slow_count_reset <= '0';
							state <= "10";
							triger_c_slow <= triger_c;
							cycle_end <= '0';
						end if;
					when others => state <="00";
				end case;
			end if;
		end if;
	end process;
	p_gen:process(clk)
	begin
		if rising_edge(clk) then  --setting duty =0 makes output 0 
			if  reset_states = '1'  then
				pulse <= '0';
				state2 <= "00";
			else
				case state2 is
					when "00" => -- weight for end of cycle
						fast_count_reset <= '1';
						triger_c_fast <= '0';
						pulse <= '0';
						if cycle_end = '1' then 
							state2 <= "01";
						else
							state2 <= "00";
						end if;
					when "01" => -- start the counters
						fast_count_reset <= '0';
						triger_c_fast <= '1';
						state2 <= "10";
						pulse <= '1';
						
					when "10" => -- weight for fast counter to finish
						if fast_count = duty then -- end of cycle
							fast_count_reset <= '1';
							state2 <= "00";
							triger_c_fast <= '0';
							pulse <= '1';
						else 
							fast_count_reset <= '0';
							state2 <= "10";
							pulse <= '1';
							triger_c_fast <= '1';
						end if;
					when others =>
							fast_count_reset <= '1';
							state2 <= "00";
							triger_c_fast <= '0';
							pulse <= '0';
				end case;
			end if;
		end if;
	end process;
	q<= pulse;
	c1:c_counter_binary_2
		  PORT MAP (
		    CLK => clk,
		    CE => triger_c_fast,
		    SCLR => fast_count_reset,
		    Q => fast_count
		  );
	c2:c_counter_binary_2
		  PORT MAP (
			CLK => clk,
			CE => triger_c_slow,
			SCLR => slow_count_reset,
			Q => slow_count
		  );


  
end Behavioral;
