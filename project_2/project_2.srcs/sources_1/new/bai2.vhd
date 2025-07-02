----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/18/2025 09:20:31 AM
-- Design Name: 
-- Module Name: FL - Behavioral
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity FL1 is
    Port ( a :  in std_logic;
           b :  in std_logic;
           c :  in std_logic;
           f : out std_logic);
end FL1;

architecture Behavioral of FL1 is

begin
f<=not (not ((not(a)) or (not((not b) or ( not c)))) or (not (b or c))); 
end Behavioral;