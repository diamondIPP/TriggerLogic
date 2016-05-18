----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/26/2015 03:14:42 PM
-- Design Name: 
-- Module Name: one_ch_delay - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description:  2 to 2^12 clk cycle delay of one bit  
-- 
-- Dependencies: 
--   blk_mem_gen_1 - 1x4095 bit dule port block ram
--   add_module - n bit asyncronus adder 
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

entity one_ch_delay is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           sig_in : in STD_LOGIC;
           delay : in STD_LOGIC_VECTOR (11 downto 0);
           sig_out : out STD_LOGIC);
           end one_ch_delay;
           
architecture Behavioral of one_ch_delay is
    COMPONENT  blk_mem_gen_1 is
             PORT (
               clka : IN STD_LOGIC;
               ena : IN STD_LOGIC;
               wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
               addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
               dina : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
               clkb : IN STD_LOGIC;
               enb : IN STD_LOGIC;
               addrb : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
               doutb : OUT STD_LOGIC_VECTOR(0 DOWNTO 0));
     end COMPONENT; 
     COMPONENT add_module is
         GENERIC ( width : integer := 12 );
         Port ( clk : in STD_LOGIC;
                pr_in1 : in STD_LOGIC_VECTOR (width-1 downto 0);
                pr_in2 : in STD_LOGIC_VECTOR (width-1 downto 0);
                pr_out : out STD_LOGIC_VECTOR (width-1 downto 0));
     end COMPONENT;
     
  signal out_int : STD_LOGIC_VECTOR(0 DOWNTO 0);
  signal in_int : STD_LOGIC_VECTOR(0 DOWNTO 0);
  signal base_adr:  STD_LOGIC_VECTOR(11 DOWNTO 0);
  signal delay_adr:  STD_LOGIC_VECTOR(11 DOWNTO 0);
begin


-- their are two addresses base_adr and delay_adr. wright incoming 
-- bit stream to delay_adr and read from base_adr. 
-- delay_adr = base_adr + delay

 
   process(clk,reset)
   begin
     if clk = '1' and clk'event then
        if reset = '1' then
           base_adr <= (others => '0');
        else
     	   base_adr <= std_logic_vector(unsigned(base_adr) + 1);
        end if;
      end if;
   end process;
   --mapping from std_loigic to std_logic_vector and visversa
   in_int(0) <= sig_in;
   sig_out <= out_int(0);
   
   --generate delay_adr from base_adr + delay
   adr_add1: add_module 
            GENERIC map ( width => 12 )
            Port map( clk => clk,
                    pr_in1 => base_adr,
                   pr_in2 => delay,
                   pr_out => delay_adr);
                   
    delaymem: blk_mem_gen_1
            PORT MAP (
              clka => clk,
              ena => '1',
              wea => "1",
              addra =>delay_adr,
              dina => in_int,
              clkb => clk,
              enb => '1',
              addrb => base_adr,
              doutb => out_int);
    
end Behavioral;
