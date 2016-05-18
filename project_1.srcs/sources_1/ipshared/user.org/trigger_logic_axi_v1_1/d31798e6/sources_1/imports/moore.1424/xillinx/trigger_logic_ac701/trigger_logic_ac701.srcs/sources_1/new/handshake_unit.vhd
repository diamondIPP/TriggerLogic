----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/05/2015 12:33:33 PM
-- Design Name: 
-- Module Name: handshake_unit - Behavioral
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

library WORK;
use WORK.LIB.ALL;

entity handshake_unit is
    Port ( 
           CLK : in STD_LOGIC;
    	   reset : in STD_LOGIC;
    	   BUSY_IN : in STD_LOGIC_VECTOR (3 downto 0);
           MASK : in STD_LOGIC_VECTOR(3 downto 0);
           DELAY : in STD_LOGIC_VECTOR(31 downto 0);
           SIG_IN : in STD_LOGIC;
           SIG_OUT : out STD_LOGIC);
end handshake_unit;

architecture Behavioral of handshake_unit is
    signal veto : std_logic ;
    signal delay_count : STD_LOGIC_VECTOR(9 downto 0);
    signal state : STD_LOGIC_VECTOR(2 downto 0);
    signal divide_c0 : std_logic ;
    signal divide_c1 : std_logic ;
    signal divide_c2 : std_logic ;
    signal last_divide_c0 : std_logic ;
    signal last_divide_c1 : std_logic ;
    signal last_divide_c2 : std_logic ;
    signal reset_divide_count : std_logic ;
    signal delay_done : std_logic ;
    signal last_b : std_logic;
    signal b : std_logic;
    signal count_triger : std_logic;
    component c_counter_binary_0 IS
          PORT (
            CLK : IN STD_LOGIC;
            LOAD : IN STD_LOGIC;
            L : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            THRESH0 : OUT STD_LOGIC;
            Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
          );
    end component;
begin


	buzy_mask : process(clk)
	begin
   		if (rising_edge(clk)) then
   			b <= (MASK(0) and BUSY_IN(0)) or  (MASK(1) and BUSY_IN(1)) or 
        		 (MASK(2) and BUSY_IN(2)) or  (MASK(3) and BUSY_IN(3));
        end if;
    end process;

   buzy_states : process(clk)
   begin
      if (rising_edge(clk)) then
    	if(reset = '1') then
    		state <= "000";
    	    veto <= '0';
    	else
    		 
      	case state is 
      		when "000" => -- weight for sig in to go high
      			if SIG_IN = '1' then
      				state <= "001";
      			else
      				state <= "000";
      			end if;
      			veto <= '0';
      		when "001" => -- have a valid signal weight for buzy  
				if b = '1' then
					state <= "010";
					veto <= '1';
				else
					state <= "001";
					veto <= '0';
				end if;
			when "010" => -- weight for b =0
				if b = '0' then
					state <= "011";
				else
					state <= "010";
				end if;
				veto <= '1';
      		when "011" => -- end of buzy start delay 
      			state <= "100";
      			veto <= '1';
      		when "100" => --  weight for delay done 
				if delay_done = '1' then  -- we are at the end of the delay 
      		      	veto <= '0';
					state <= "000";
				else 
					veto <= '1';
      		      	state <= "100"; 
				end if;
			when others =>
				state <= "000";
			    veto <= '0'; 
		end case;
		end if;
	end if;
	end process;     			
        
    output_delay : process(clk)
    begin
        if (rising_edge(clk)) then
 			if(reset = '1') then 
 				reset_divide_count <= '1';	 	
 			else
 			 	if state = "100" then -- start counter 
 					reset_divide_count <= '0';
  				else
  					reset_divide_count <= '1';
 				end if;
 			end if;
        end if;
    end process;
    c0: c_counter_binary_0 
	          PORT map(
	            CLK => clk,
	            LOAD => reset_divide_count,
	            L => DELAY,
	            THRESH0 => delay_done, 
	            Q => open
	          );
	
    output : process(clk)
    begin
        if (rising_edge(clk)) then
            -- Output only if ready to receive
            if (veto = '0') then
                SIG_OUT <= SIG_IN;
            else
                SIG_OUT <= '0';
            end if;
        end if;
    end process;
end Behavioral;
