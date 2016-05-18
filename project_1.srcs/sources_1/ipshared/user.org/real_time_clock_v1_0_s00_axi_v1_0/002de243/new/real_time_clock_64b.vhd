----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/07/2015 05:03:19 PM
-- Design Name: 
-- Module Name: real_time_clock_64b - Behavioral
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

entity real_time_clock_64b is
    Port ( clock : in STD_LOGIC;
           load : in STD_LOGIC;
           set_l32w : in STD_LOGIC_VECTOR (31 downto 0);
           set_h32w : in STD_LOGIC_VECTOR (31 downto 0);
           time_now_l32w : out STD_LOGIC_VECTOR (31 downto 0);
           time_now_h32w : out STD_LOGIC_VECTOR (31 downto 0)
           );
end real_time_clock_64b;

architecture Behavioral of real_time_clock_64b is
component real_time_32b_counter_0 IS
  PORT (
    CLK : IN STD_LOGIC;
    CE : IN STD_LOGIC;
    LOAD : IN STD_LOGIC;
    L : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    THRESH0 : OUT STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
    end component;
    --real_time_1ms_from_125MHz_counter_0 to get 1ms counter threshold is 125000-1 
  component real_time_1ms_from_125MHz_counter_0 IS
    PORT (
      CLK : IN STD_LOGIC;
      THRESH0 : OUT STD_LOGIC;
      Q : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
    );
  end component;
	signal over_flow : std_logic;
	signal one_ms_pulse : std_logic;
	signal ce_l32w : std_logic; -- clock enable for the lower 32 bits
	signal ce_h32w : std_logic; -- clock enable for the high 32 bits
begin
	msrtc : real_time_1ms_from_125MHz_counter_0 
	    PORT map (
	      CLK =>clock,
	      THRESH0 => one_ms_pulse,
	      Q => open
	    );
	--ce must be set high wen load occurs 
	ce_l32w <= one_ms_pulse or load;
	ce_h32w <= over_flow or load;
	rtc1: real_time_32b_counter_0 
	PORT map (
		CLK => clock,
		CE => ce_l32w,
		LOAD => load,
		L => set_l32w,
		THRESH0 => over_flow,
		Q => time_now_l32w
	);
	rtc2: real_time_32b_counter_0 
	PORT map(
		CLK => clock,
		CE => ce_h32w,
		LOAD => load,
		L => set_h32w,
		THRESH0 => open ,
		Q => time_now_h32w
	);
end Behavioral;
