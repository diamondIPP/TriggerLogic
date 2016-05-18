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
-- Description: 40MHz clkg generator with verable phase outputs
-- 
-- Dependencies: clk_0_gen.vhdl
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

entity clk_gen is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           phase_1 : in STD_LOGIC_VECTOR (3 downto 0);
           phase_2 : in STD_LOGIC_VECTOR (3 downto 0);
           clk_0 : out STD_LOGIC;
           clk_1 : out STD_LOGIC;
           clk_2 : out STD_LOGIC);
end clk_gen;

architecture Behavioral of clk_gen is
	signal clk_int: std_logic;
	signal clk_shift :  STD_LOGIC_VECTOR (15 downto 0);
	component clk_gen_0 is
	    Port ( clk : in STD_LOGIC;
	           reset : in STD_LOGIC;
	           clk_out : out STD_LOGIC);
   end component;
begin
ch_rs : process(clk)
begin
	if rising_edge(clk) then 
		clk_shift(15 downto 1 ) <= clk_shift(14 downto 0 );
		clk_shift(0)<= clk_int;
    end if; 
end process;
phase_ctl1 : process(clk)
begin
  if rising_edge(clk) then 
        case phase_1 is
          when "0000" =>
          	clk_1 <= clk_shift(0); 
          when "0001" => 
          	clk_1 <= clk_shift(1);     
		  when "0010" => 
          	clk_1 <= clk_shift(2); 
		  when "0011" => 
          	clk_1 <= clk_shift(3);
		  when "0100" =>
          	clk_1 <= clk_shift(4); 
		  when "0101" =>
			clk_1 <= clk_shift(5);
		  when "0110" =>
			clk_1 <= clk_shift(6); 
		  when "0111" => 
			clk_1 <= clk_shift(7); 
		  when "1000" => 
			clk_1 <= clk_shift(8); 
		  when "1001" => 
			clk_1 <= clk_shift(9); 
		  when "1010" => 
			clk_1 <= clk_shift(10); 
		  when "1011" => 
			clk_1 <= clk_shift(11); 
		  when "1100" =>
			clk_1 <= clk_shift(12);
		  when "1101" =>
			clk_1 <= clk_shift(13);
		  when "1110" =>
			clk_1 <= clk_shift(14);
		  when "1111" =>
			clk_1 <= clk_shift(15);
		  when others =>
			clk_1 <= clk_shift(0);
		end case;
	end if;
	end process;
phase_ctl2 : process(clk)
begin
  if rising_edge(clk) then 
        case phase_2 is
          when "0000" =>
          	clk_2 <= clk_shift(0); 
          when "0001" => 
          	clk_2 <= clk_shift(1);     
		  when "0010" => 
          	clk_2 <= clk_shift(2); 
		  when "0011" => 
          	clk_2 <= clk_shift(3);
		  when "0100" =>
          	clk_2 <= clk_shift(4); 
		  when "0101" =>
			clk_2 <= clk_shift(5);
		  when "0110" =>
			clk_2 <= clk_shift(6); 
		  when "0111" => 
			clk_2 <= clk_shift(7); 
		  when "1000" => 
			clk_2 <= clk_shift(8); 
		  when "1001" => 
			clk_2 <= clk_shift(9); 
		  when "1010" => 
			clk_2 <= clk_shift(10); 
		  when "1011" => 
			clk_2 <= clk_shift(11); 
		  when "1100" =>
			clk_2 <= clk_shift(12);
		  when "1101" =>
			clk_2 <= clk_shift(13);
		  when "1110" =>
			clk_2 <= clk_shift(14);
		  when "1111" =>
			clk_2 <= clk_shift(15);
		  when others =>
			clk_2 <= clk_shift(0);
		end case;
	end if;
	end process;
   cg0: clk_gen_0 
   	    Port map ( clk => clk,
   	           reset => reset,
   	           clk_out =>clk_int);
      
end Behavioral;
