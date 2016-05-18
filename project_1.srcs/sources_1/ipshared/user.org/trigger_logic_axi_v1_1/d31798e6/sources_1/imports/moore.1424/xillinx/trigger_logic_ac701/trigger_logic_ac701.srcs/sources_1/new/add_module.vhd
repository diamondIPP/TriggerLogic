----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/26/2015 04:03:14 PM
-- Design Name: 
-- Module Name: add_module - Behavioral
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
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity add_module is
    GENERIC ( width : integer := 12 );
    Port ( clk : in STD_LOGIC;
     pr_in1 : in STD_LOGIC_VECTOR (width-1 downto 0);
           pr_in2 : in STD_LOGIC_VECTOR (width-1 downto 0);
           pr_out : out STD_LOGIC_VECTOR (width-1 downto 0));
end add_module;

architecture Behavioral of add_module is

begin
    process(clk)
    begin
    if clk='1' and clk'event then
       pr_out <= std_logic_vector(unsigned(pr_in1) + unsigned(pr_in2));
    end if;
    end process;
end Behavioral;
