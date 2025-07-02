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
entity FL is
    Port ( a :  in std_logic;
           b :  in std_logic;
           c :  in std_logic;
           f : out std_logic);
end FL;

architecture Behavioral of FL is

begin
f<=not (not ((not(a)) and (not((not b) and ( not c)))) and (not (b and c)));
 
end Behavioral;