----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2015 09:12:08 PM
-- Design Name: 
-- Module Name: lib - Behavioral
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

package lib is
    -- Types
    type delay_array is array(natural range <>) of std_logic_vector(11 downto 0);
    type data_array_16b is array(natural range <>) of std_logic_vector(15 downto 0);
    type data_array_28b is array(natural range <>) of std_logic_vector(27 downto 0);

    -- Constants
    -- Functions
    function and_reduce (l  : STD_LOGIC_VECTOR) return STD_ULOGIC;
    function and_reduce (l  : STD_ULOGIC_VECTOR) return STD_ULOGIC;
end lib;

package body lib is
    -------------------------------------------------------------------
    -- and
    -------------------------------------------------------------------
    function and_reduce (l : STD_LOGIC_VECTOR) return STD_ULOGIC is
    begin
        return and_reduce (to_StdULogicVector (l));
    end function and_reduce;
    -------------------------------------------------------------------
    function and_reduce (l : STD_ULOGIC_VECTOR) return STD_ULOGIC is
        variable result : STD_ULOGIC := '1';
    begin
        for i in l'reverse_range loop
            result := (l(i) and result);
        end loop;
        return result;
    end function and_reduce;
end lib;
