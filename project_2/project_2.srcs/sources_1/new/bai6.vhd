----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.07.2025 12:44:39
-- Design Name: 
-- Module Name: bai 6 - Behavioral
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

entity bai6 is
   Port (
        CLK    : in  std_logic;
        Q      : out std_logic_vector(2 downto 0);
        Q_inv  : out std_logic_vector(2 downto 0);
        y      : out std_logic  
    );
end bai6;

architecture Behavioral of bai6 is
component JK_FF
        Port (
            J     : in std_logic;
            K     : in std_logic;
            CLK   : in std_logic;
            Q     : buffer std_logic;
            Q_inv : buffer std_logic
        );
    end component;
    -- FF signals
    signal q2 : std_logic := '1';
    signal q1 : std_logic := '1';
    signal q0 : std_logic := '0';
    signal q0_inv, q1_inv, q2_inv : std_logic;
    signal j0, k0, j1, k1, j2, k2 : std_logic; 

begin
    -- tin hieu vao JK
    j0 <= q1 or q2;
    j1 <= not q0;
    k1 <= not q0;
    j2 <=(not q1) and (not q0);
    k2 <=(not q1) and (not q0);
    --FF0: 
    FF0: JK_FF port map(
        J => j0,
        K => '1',
        CLK => CLK,
        Q => q0,
        Q_inv => q0_inv
    );

    -- FF1:
    FF1: JK_FF port map(
        J => j1,
        K => k1,
        CLK => CLK,
        Q => q1,
        Q_inv => q1_inv
    );

    -- FF2: 
    FF2: JK_FF port map(
        J => j2,
        K => k2,
        CLK => CLK,
        Q => q2,
        Q_inv => q2_inv
    );

    -- Output
    Q      <= q2 & q1 & q0;
    Q_inv  <= q2_inv & q1_inv & q0_inv;
    y      <= (not q2) and (not q1) and (not q0);

end Behavioral;