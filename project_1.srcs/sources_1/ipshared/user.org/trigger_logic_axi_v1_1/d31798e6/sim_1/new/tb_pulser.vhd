----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/15/2015 04:38:49 PM
-- Design Name: 
-- Module Name: tb_pulser - Behavioral
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

entity tb_pulser is
--  Port ( );
	
end tb_pulser;

architecture Behavioral of tb_pulser is
    signal clk : std_logic ;
	signal reset : STD_LOGIC;
	signal divisor : std_logic_VECTOR (27 downto 0);
	signal duty :  STD_LOGIC_VECTOR (27 downto 0);
	signal q :  STD_LOGIC;
	component pulse_gen_ripplen is
	    Port ( clk : in STD_LOGIC;
	           reset : in STD_LOGIC;
	           divisor : in STD_LOGIC_VECTOR (27 downto 0);
	           duty : in STD_LOGIC_VECTOR (27 downto 0);
	           q : out STD_LOGIC);
	end component;

begin

    process				 
begin
	clk <= '0';			-- clock cycle is 10 ns
	wait for 2.5 ns;
	clk <= '1';
	wait for 2.5 ns;
end process;
	
tb : process
begin
	wait for 10 ns;
	divisor <= "0000000000000000000000000011";
	duty <= "0000000000000000000000000001";
	reset <='1';
	wait for 20 ns;
	reset <='0';
	wait for 500 ns;
		divisor <= "0000000000000000000000010011";
		duty <= "0000000000000000000000000011";
	wait for 10000 ns;
		divisor <= "0000000000000000000000100011";
		duty <= "0000000000000000000000010001";
		wait for 10000 ns;
			divisor <= "0000000000000000000000100000";
			duty <= "0000000000000000000000000000";
	wait for 10000 ns;
		divisor <= "0000000000000000000000100000";
		duty <= "0000000000000000000000010000";
	wait for 100000 ms;
	
end process;
uut : pulse_gen
	    Port map ( clk => clk,
	           reset => reset,
	           divisor => divisor,
	           duty => duty,
	           q => q);





end Behavioral;
