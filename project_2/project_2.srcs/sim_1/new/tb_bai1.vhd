----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 08:42:34 PM
-- Design Name: 
-- Module Name: tb_FL - Behavioral
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

entity tb_FL is
end tb_FL;

architecture behavior of tb_FL is

 
    component FL
        Port (
            a : in std_logic;
            b : in std_logic;
            c : in std_logic;
            f : out std_logic
        );
    end component;

    -- Signal declaration
    signal a, b, c : std_logic := '0';
    signal f : std_logic;

begin

    uut: FL port map (
        a => a,
        b => b,
        c => c,
        f => f
    );

  
    stim_proc: process
    begin
        a <= '0'; b <= '0'; c <= '0'; wait for 10 ns;
        a <= '0'; b <= '0'; c <= '1'; wait for 10 ns;
        a <= '0'; b <= '1'; c <= '0'; wait for 10 ns;
        a <= '0'; b <= '1'; c <= '1'; wait for 10 ns;
        a <= '1'; b <= '0'; c <= '0'; wait for 10 ns;
        a <= '1'; b <= '0'; c <= '1'; wait for 10 ns;
        a <= '1'; b <= '1'; c <= '0'; wait for 10 ns;
        a <= '1'; b <= '1'; c <= '1'; wait for 10 ns;
        wait; 
    end process;
end behavior;