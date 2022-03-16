library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity t_ff_rst is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           t : in STD_LOGIC;
           t_q : out STD_LOGIC;
           t_q_bar : out STD_LOGIC);
end t_ff_rst;

architecture Behavioral of t_ff_rst is
    -- It must use this local signal instead of output ports
    -- because "out" ports cannot be read within the architecture
    signal s_q : std_logic;
begin
    --------------------------------------------------------
    -- p_t_ff_rst:
    -- T type flip-flop with a high-active synchro reset,
    -- rising-edge clk.
    -- q(n+1) = t./q(n) + /t.q(n)
    -- q(n+1) =  q(n) if t = 0 (no change)
    -- q(n+1) = /q(n) if t = 1 (inversion)
    --------------------------------------------------------
    p_t_ff_rst : process(clk)
    begin
        if rising_edge(clk) then
            if (t = '1') then
                if (t_q = '0') then
                    t_q_bar <= '1';
                else
                    t_q_bar <= '0';
                end if;
            else t_q_bar <= q;
            end if;

        end if;
    end process p_t_ff_rst;

    -- Output ports are permanently connected to local signal
    t_q     <= s_t_q;
    t_q_bar <= not s_t_q;
end architecture Behavioral;
