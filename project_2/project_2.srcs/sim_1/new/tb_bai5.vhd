library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_bai5 is
end tb_bai5;

architecture sim of tb_bai5 is

    -- Component declaration
    component bai5
        Port (
            CLK    : in  std_logic;
            Q      : out std_logic_vector(2 downto 0);
            Q_inv  : out std_logic_vector(2 downto 0);
            y      : out std_logic
        );
    end component;

    -- Signals for testing
    signal CLK_tb    : std_logic := '0';
    signal Q_tb      : std_logic_vector(2 downto 0);
    signal Q_inv_tb  : std_logic_vector(2 downto 0);
    signal y_tb      : std_logic;

    constant CLK_PERIOD : time := 20 ns;

begin

    -- Instantiate the UUT (Unit Under Test)
    uut: bai5 port map (
        CLK    => CLK_tb,
        Q      => Q_tb,
        Q_inv  => Q_inv_tb,
        y      => y_tb
    );

    -- Clock generation process
    clk_process : process
    begin
        while now < 1000 ns loop
            CLK_tb <= '0';
            wait for CLK_PERIOD / 2;
            CLK_tb <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process;

end sim;