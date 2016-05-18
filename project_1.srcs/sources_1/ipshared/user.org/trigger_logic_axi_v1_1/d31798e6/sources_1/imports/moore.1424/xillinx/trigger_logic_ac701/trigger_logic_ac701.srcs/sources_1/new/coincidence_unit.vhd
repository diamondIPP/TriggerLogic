----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2015 03:23:08 PM
-- Design Name: 
-- Module Name: coincidence_unit - Behavioral
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
--use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library WORK;
use WORK.LIB.ALL;

entity coincidence_unit is
    Generic (
        TRIGGER_N : INTEGER := 10
    );
    Port (
        CLK : in STD_LOGIC;
        RST : in STD_LOGIC;
        Q : in STD_LOGIC_VECTOR(TRIGGER_N-1 downto 0);
        ENABLE : in STD_LOGIC_VECTOR(TRIGGER_N-1 downto 0);
        persist : in STD_LOGIC_VECTOR (4 downto 0); -- riseing edge ambiguity hold
        pwidth : in STD_LOGIC_VECTOR (4 downto 0);  -- how long to hold a quinsidens 
        CNT : out STD_LOGIC_VECTOR(27 downto 0);
        O : out STD_LOGIC
    );
end coincidence_unit;

architecture Behavioral of coincidence_unit is
	component riseing_edge_persist is
        Port ( clk : in STD_LOGIC;
               sig : in STD_LOGIC;
               persist : in STD_LOGIC_VECTOR (4 downto 0);
               reset : in STD_LOGIC;
               q : out STD_LOGIC);
    end component;
    component c_counter_binary_1 IS
      PORT (
        CLK : IN STD_LOGIC;
        CE : IN STD_LOGIC;
        SCLR : IN STD_LOGIC;
        Q : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
      );
    end component;
    signal Q_int : STD_LOGIC_VECTOR(TRIGGER_N-1 downto 0);
--    signal int_cnt : unsigned (15 downto 0):= (others =>'0');
    signal delay_count : unsigned (4 downto 0):= (others =>'0');
    signal coincidence : std_logic := '0';
    signal last_coincidence : std_logic := '0';
    signal coincidence_pulse : std_logic := '0'; -- pusle to tell rate counter to count = state=01
    signal delay_done : std_logic := '0';
    signal state : std_logic_VECTOR (1 downto 0);
    signal count : std_logic;
    signal persist_fanin_int  : STD_LOGIC_VECTOR (4 downto 0); -- buffer the edge persist for timing 
begin
    persist_fan: process(clk) --hack to try and help satify timing
    begin
        if clk'event and clk = '1' then
           persist_fanin_int <= persist; 
        end if;
    end process;
	g1: for I in 0 to TRIGGER_N-1  generate
	rpn: riseing_edge_persist 
        Port map ( clk => clk,
               sig => Q(I),
               persist => persist_fanin_int,
               reset => count, 
               q => q_int(I));
    end generate;
    comparison : process(clk, rst)
    begin
        if clk'event and clk = '1' then
            --for I in 0 to (TRIGGER_N-1) loop
            --    temp := temp and (Q(I) or DISABLE(I));
            --end loop;
            if rst = '1' then
                coincidence <= '0';
            else
                coincidence <= and_reduce(Q_int or not ENABLE);
            end if;
            if coincidence = '1' and last_coincidence = '0' then
                count <= '1';  --enable count
            else 
                count <= '0'; -- disable count
            end if;
            last_coincidence <= coincidence;
        end if;
    end process;
    
    count_coincidence : process(clk, rst)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state <= "00";
           	else
           		case state is
                    when "00" => -- weight for a coincidence
            			if count = '1' then
                			state <= "01";
                		else 
                			state <= "00";
                		end if;
                		O <= '0'; 
                		coincidence_pulse <= '0'; 
                	when "01" => -- have a coincidence set the pulse out high and start delay 
                		state <= "10";
                		O <= '1';  
                		coincidence_pulse <= '1';      
                	when "10" => -- weight for delay_done
                		if delay_done = '1' then
                			state <= "11";
            			else 
            				state <= "10";
            			end if;
            			coincidence_pulse <= '0'; 
            		when "11" =>
            			O <= '0';   
						state <= "00"; 
            			coincidence_pulse <= '0';  
            		when others => 
						O <= '0';   
						state <= "00";
						coincidence_pulse <= '0'; 
				end case;   
            end if;
        end if;
    end process;
--	q_count: process (clk, rst)
--	begin 
--		if rising_edge(clk) then
--	    	if rst = '1' then
--	        	int_cnt <= (others => '0');
--			elsif state = "01" then
--	        	int_cnt <= int_cnt + 1;
--	        end if;
--	    end if;
--	end process;
	  q_count: c_counter_binary_1 
	          PORT map (
	            CLK => clk,
	            CE => coincidence_pulse,
	            SCLR => rst,
	            Q => cnt
	          );
	
	d_count: process(clk, rst)
	begin 
		if rising_edge(clk) then
	    	if rst = '1' then
	    		delay_count <= (others => '0');
	    		delay_done <= '0';
	    	else
	    		if state = "10" then -- counter to hold O high for fixed period
	    			if( std_logic_vector(delay_count) = pwidth ) then 
	    				delay_done <= '1';
	    			else
	    				delay_count <= delay_count +1;
	    				delay_done <= '0';
	    			end if; 
	    		else
	    			 delay_count <= (others=>'0');
	    			 delay_done <= '0';
	    		end if;
	    		
	    	end if;
	    end if;
	end process;
--	cnt <= std_logic_vector(int_cnt);
	
end Behavioral;
