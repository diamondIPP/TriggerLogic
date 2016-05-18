----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/24/2015 02:29:19 PM
-- Design Name: 
-- Module Name: riseing_edge_persist - Behavioral
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

entity riseing_edge_persist is
    Port ( clk : in STD_LOGIC;
           sig : in STD_LOGIC;
           persist : in STD_LOGIC_VECTOR (4 downto 0);
           reset : in STD_LOGIC;
           q : out STD_LOGIC);
end riseing_edge_persist;

architecture Behavioral of riseing_edge_persist is
signal count :  STD_LOGIC_VECTOR (4 downto 0);
signal last_sig: STD_LOGIC;
signal state: STD_LOGIC_VECTOR (1 downto 0);
begin

	rise_edge_cap: process(clk)
	begin
		if rising_edge(clk) then
			last_sig <= sig;
		end if; 
	end process;

	delay_c: process(clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				count <= (others => '0');
				state <="00";
			else
				case state is
					when "00" =>  -- weight for riseing edge 
						if last_sig = '0' and sig = '1' then
							state <= "01";
						else
							state <="00";
						end if;
						count <= (others => '0');
						q <= '0';
					when "01" => -- count up to delay 
						q <= '1';
						if  count = persist then
							state <= "10";
						else 
							count <= std_logic_vector(unsigned(count) + 1); 
							state <="01";
						end if;
					when "10" =>  -- pulse low count done
						q<= '0';
						state<= "00";
					when others => 
						state<= "00";
				end case;
			end if;
		end if; 
	end process;
end Behavioral;
