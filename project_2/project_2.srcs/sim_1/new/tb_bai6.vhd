library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_bai6 is
end tb_bai6;

architecture Behavioral of tb_bai6 is

    
    constant CLK_PERIOD : time := 20 ns;

    
    component bai6
        port (
            CLK    : in  std_logic;
            Q      : out std_logic_vector(2 downto 0);
            Q_inv  : out std_logic_vector(2 downto 0);
            y      : out std_logic
        );
    end component;

    
    signal CLK_tb     : std_logic := '0';
    signal Q_tb       : std_logic_vector(2 downto 0);
    signal Q_inv_tb   : std_logic_vector(2 downto 0);
    signal y_tb       : std_logic;

begin

  
    uut: bai6
    port map (
        CLK    => CLK_tb,
        Q      => Q_tb,
        Q_inv  => Q_inv_tb,
        y      => y_tb
    );

   
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