
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_ff_rst is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           d : in STD_LOGIC;
           d_q : out STD_LOGIC;
           d_q_bar : out STD_LOGIC);
end d_ff_rst;

architecture Behavioral of d_ff_rst is
begin
    --------------------------------------------------------
    -- p_d_ff_rst:
    -- D type flip-flop with a high-active sync reset,
    -- rising-edge clk.
    -- q(n+1) = d
    --------------------------------------------------------
    p_d_ff_rst : process(clk)
    begin
        if rising_edge(clk) then  -- Synchronous process
            d_q_bar <= d;
            
        end if;
    end process p_d_ff_rst;
    d_q     <= s_d_q;
    d_q_bar <= not s_d_q;
end architecture Behavioral;
