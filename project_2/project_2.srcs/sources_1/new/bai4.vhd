library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bai4 is
    Port (
        CLK    : in  std_logic;
        Q      : out std_logic_vector(2 downto 0);
        Q_inv  : out std_logic_vector(2 downto 0);
        y      : out std_logic
    );
end bai4;

architecture Behavioral of bai4 is

    component T_FF
        Port (
            T     : in std_logic;
            CLK   : in std_logic;
            Q     : buffer std_logic;
            Q_inv : buffer std_logic
        );
    end component;

    signal q0, q1, q2 : std_logic := '0';
    signal q0_inv, q1_inv, q2_inv : std_logic;

    signal t0, t1, t2 : std_logic;
   

begin
    t2 <= (not q2 and q1 and q0) or (q2 and q1 and not q0);
    t1 <= q0 or (q2 and q1);
    t0 <= q1 nand q2;
    -- FF0:
    FF0: T_FF port map(
        T => t0,
        CLK => CLK,
        Q => q0,
        Q_inv => q0_inv
    );

    -- FF1: 
    FF1: T_FF port map(
        T => t1,
        CLK => CLK,
        Q => q1,
        Q_inv => q1_inv
    );

    -- FF2:
    FF2: T_FF port map(
        T => t2,
        CLK => CLK,
        Q => q2,
        Q_inv => q2_inv
    );

    -- Output
    Q     <= q2 & q1 & q0;
    Q_inv <= q2_inv & q1_inv & q0_inv;
    y     <= q2 and q1 and (not q0);

end Behavioral;