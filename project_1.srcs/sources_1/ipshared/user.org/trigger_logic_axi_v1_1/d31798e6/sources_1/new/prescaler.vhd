----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/28/2015 03:30:00 PM
-- Design Name: 
-- Module Name: prescaler - Behavioral
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

entity prescaler is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           coincidence : in STD_LOGIC;  
           pwidth : in STD_LOGIC_VECTOR (4 downto 0);  -- how long to hold a quinsidens 
           scaler : in STD_LOGIC_VECTOR (9 downto 0);
           cnt : out STD_LOGIC_VECTOR (27 downto 0);
           q : out STD_LOGIC);
end prescaler;

architecture Behavioral of prescaler is
	signal count : STD_LOGIC_VECTOR (9 downto 0);
	signal last_coincidence :STD_LOGIC;
	signal coincidence_edge :STD_LOGIC;
	signal reset_count :STD_LOGIC;
	signal prescaler_puls :STD_LOGIC;   
	signal end_count :STD_LOGIC;   
	 signal delay_done : std_logic := '0';
	signal delay_count : unsigned (4 downto 0):= (others =>'0');
	component prescaler_counter_binary_3 IS
	  PORT (
	    CLK : IN STD_LOGIC;
	    CE : IN STD_LOGIC;
	    SCLR : IN STD_LOGIC;
	    Q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	  );
	  end component;
	  ------------------------------------------------------------------------------
	  -- 28 bit binary counter
	  ------------------------------------------------------------------------------
	  component c_counter_binary_1 IS
		PORT (
		  CLK : IN STD_LOGIC;
		  CE : IN STD_LOGIC;
		  SCLR : IN STD_LOGIC;
		  Q : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
		);
		END component;
	  signal state : std_logic_VECTOR(1 DOWNTO 0);
begin

	
 scalestate: process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state <= "00";
                end_count <= '1';
           	else
           		case state is 
    	       		when "00"=> --weight sate 
    	       			if(scaler = count) then
           					end_count <= '1';
           					state <= "01";
           				else
           					end_count <= '0';
           				    state <= "00";
           				end if;
						prescaler_puls <= '0';
           				q<='0';
           			when "01" => 
           				end_count <= '1';
           				q<='1';
           				prescaler_puls <= '1';
           				state <= "10";
           			when "10" => --had n coincidences make ouput pulse as wide as coincidence
           				q<='1';  --DELAY STATE 
           			    prescaler_puls <= '0';
           				if delay_done = '1' then 
           					state <= "11";
           				    end_count <= '1';
           				end if;
           			when "11" => --delay done
           				 prescaler_puls <= '0';
           				 end_count <= '0';
           			     state <= "00";
           				 q<='0';
           			when others =>
           				state <= "00";
           			    end_count <= '0';
           				prescaler_puls <= '0';
         			    
           		end case;
            end if;
        end if;
    end process;
    reset_count <= end_count or reset;
	counterp: prescaler_counter_binary_3  
    	  PORT map (
    	    CLK =>clk,
    	    CE => coincidence_edge,
    	    SCLR =>reset_count,
    	    Q => count
    	  );
   	q_edge:process(clk)
       begin
           if rising_edge(clk) then
               if reset = '1' or scaler = count then
                   coincidence_edge <= '0';
              	else
              		if  coincidence = '1' and last_coincidence = '0' then
              			coincidence_edge <= '1';
              		else
              			coincidence_edge <= '0';
					end if;
				end if;
				last_coincidence <= coincidence;
			end if;
		end process;
	d_count: process(clk, reset)
		begin 
			if rising_edge(clk) then
		    	if reset = '1' then
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
		-- Prescaler scalar read out
	prescaler_counter : c_counter_binary_1
		  PORT map(
			CLK => clk,
			CE => prescaler_puls ,
			SCLR => reset,
			Q => cnt
		  );
end Behavioral;
