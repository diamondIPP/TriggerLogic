----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/31/2015 11:28:19 AM
-- Design Name: 
-- Module Name: beam_current_monitor - Behavioral
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

entity beam_current_monitor is
    Port ( beam_current : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           cnt : out STD_LOGIC_VECTOR(27 downto 0));
end beam_current_monitor;

architecture Behavioral of beam_current_monitor is
     	component c_counter_binary_1 IS
     	  PORT (
     	    CLK : IN STD_LOGIC;
     	    CE : IN STD_LOGIC;
     	    SCLR : IN STD_LOGIC;
     	    Q : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
     	  );
     	  END component;
     	  signal last_beam_current: STD_LOGIC;
     	  signal beam_current_edge: STD_LOGIC;
begin
	edge: process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				beam_current_edge<= '0';
			else
				if beam_current = '1' and last_beam_current = '0' then
					beam_current_edge <= '1';
				else
					beam_current_edge <= '0';
				end if;
			end if;
			last_beam_current <= beam_current;
		end if;
	end process;
   beam_c: c_counter_binary_1
	  PORT map(
		CLK => clk,
		CE => beam_current_edge,
		SCLR => rst,
		Q => cnt
	  );
end Behavioral;
