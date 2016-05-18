----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/22/2015 02:59:05 PM
-- Design Name: 
-- Module Name: clk_gen_tb - Behavioral
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

entity clk_gen_tb is
--  Port ( );
end clk_gen_tb;

architecture Behavioral of clk_gen_tb is
component clk_gen is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           phase_1 : in STD_LOGIC_VECTOR (3 downto 0);
           phase_2 : in STD_LOGIC_VECTOR (3 downto 0);
           clk_0 : out STD_LOGIC;
           clk_1 : out STD_LOGIC;
           clk_2 : out STD_LOGIC);
end component;
signal clk : std_logic;
signal clk_0 : std_logic;
signal clk_1 : std_logic;
signal clk_2 : std_logic;

signal  phase_1 : STD_LOGIC_VECTOR (3 downto 0);
signal  phase_2 : STD_LOGIC_VECTOR (3 downto 0);
signal reset : std_logic;
begin
cg : process
  begin
    loop
    	clk <= '1';
    	wait for 2.5ns;
		clk <= '0';
    	wait for 2.5ns;
	end loop;
  end process;
rs : process
  begin 
  reset <='1';
  phase_1 <= "0010";
  phase_2  <= "0110";
  wait for 10ns;
  reset <='0';
  wait for 1000ns;
    phase_1 <= "0000";
    phase_2  <= "0010";
  wait for 1000ns;
        phase_1 <= "0001";
        phase_2  <= "0011";
      wait for 2000ns;
end process;
cg0 :  clk_gen 
   Port map ( clk => clk,
          reset => reset, 
          phase_1 => phase_1,
          phase_2  => phase_2,
          clk_0 => clk_0,
          clk_1 => clk_1,
          clk_2 => clk_2);
end Behavioral;
