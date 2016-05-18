----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/22/2015 02:19:19 PM
-- Design Name: 
-- Module Name: clk_gen - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_gen_0 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end clk_gen_0;

architecture Behavioral of clk_gen_0 is
	signal state_0_r : std_logic_vector(3 downto 0);
	signal clk_0_r_int : std_logic;
 
	
		
begin

   clk_out <=  clk_0_r_int;
   c0r: process (clk)
     begin
       if rising_edge(clk) then
         if reset = '1' then
           state_0_r  <= "0000";
         else
			 case state_0_r is
				when "0000" =>
					  clk_0_r_int <= '1';
					  state_0_r <= "0001";
				when "0001" =>
					  clk_0_r_int <= '1';
					  state_0_r <= "0010";
				when "0010" =>
					  clk_0_r_int <= '1';
					  state_0_r <= "0011";
				when "0011" =>
					  clk_0_r_int <= '1';
					  state_0_r <= "0100";
				when "0100" =>
					  clk_0_r_int <= '1';
					  state_0_r <= "0101";
				when "0101" =>
					  clk_0_r_int <= '0';
					  state_0_r <= "0110";
				when "0110" =>
					  clk_0_r_int <= '0';
					  state_0_r <= "0111";
				when "0111" =>
					  clk_0_r_int <= '0';
					  state_0_r <= "1000";
				when "1000" =>
					  clk_0_r_int <= '0';
					  state_0_r <= "1001";
				when "1001" =>
					  clk_0_r_int <= '0';
					  state_0_r <= "0000";
				when others =>
					  clk_0_r_int <= '0';
					  state_0_r <= "0000";
			 end case;
       end if;
      end if;
   end process;
end Behavioral;
