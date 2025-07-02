library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bai5 is
    Port (
        CLK    : in  std_logic;
        Q      : out std_logic_vector(2 downto 0);
        Q_inv  : out std_logic_vector(2 downto 0);
        y      : out std_logic  
    );
end bai5;

architecture Behavioral of bai5 is

    component T_FF
        Port (
            T     : in std_logic;
            CLK   : in std_logic;
            Q     : buffer std_logic;
            Q_inv : buffer std_logic
        );
    end component;

    
    signal q2 : std_logic := '1';
    signal q1 : std_logic := '0';
    signal q0 : std_logic := '1';

    signal q2_inv, q1_inv, q0_inv : std_logic;
    signal t1, t2 : std_logic;

begin
    t1 <= (not q2 and q1 and not q0) or (q2 and not q1 and not q0);
    t2 <= q1 nor q0;

   
    FF0: T_FF port map(
        T => '1',
        CLK => CLK,
        Q => q0,
        Q_inv => q0_inv
    );

    FF1: T_FF port map(
        T => t1,
        CLK => CLK,
        Q => q1,
        Q_inv => q1_inv
    );

    FF2: T_FF port map(
        T => t2,
        CLK => CLK,
        Q => q2,
        Q_inv => q2_inv
    );

    Q     <= q2 & q1 & q0;
    Q_inv <= q2_inv & q1_inv & q0_inv;
    y <= (not q2) and (not q1) and (not q0);

end Behavioral;