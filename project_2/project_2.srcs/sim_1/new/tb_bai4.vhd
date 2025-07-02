library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_bai4 is
-- Testbench không c?n c?ng vào/ra
end tb_bai4;

architecture Behavioral of tb_bai4 is

    -- Constants
    constant CLK_PERIOD : time := 20 ns;

    -- Component under test
    component bai4
        Port (
            CLK    : in  std_logic;
            Q      : out std_logic_vector(2 downto 0);
            Q_inv  : out std_logic_vector(2 downto 0);
            y      : out std_logic
        );
    end component;

    -- Signals to connect to DUT
    signal CLK_tb    : std_logic := '0';
    signal Q_tb      : std_logic_vector(2 downto 0);
    signal Q_inv_tb  : std_logic_vector(2 downto 0);
    signal y_tb      : std_logic;

begin

    -- Instantiate the DUT
    uut: bai4 port map (
        CLK    => CLK_tb,
        Q      => Q_tb,
        Q_inv  => Q_inv_tb,
        y      => y_tb
    );

    -- Clock generation process
    clk_process: process
    begin
        while true loop
            CLK_tb <= '0';
            wait for CLK_PERIOD / 2;
            CLK_tb <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

end Behavioral;