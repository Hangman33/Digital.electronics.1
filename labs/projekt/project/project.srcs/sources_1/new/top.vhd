library ieee;
use ieee.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity top is
    Port ( CLK100MHZ      : in  std_logic;
           BTNC           : in  std_logic; 
           reset          : in  std_logic;
           --tx_start       : in  std_logic;
           SW             : in  std_logic_vector (7 downto 0);
           LED            : out std_logic_vector (7 downto 0); 
           rx             : in  std_logic;
           tx             : out std_logic
           );
           
end top;

architecture Behavioral of top is

    signal button_pressed : std_logic;

begin

    transmitter : entity work.UART_tx
        port map (
            clk            => CLK100MHZ,
            reset          => reset,
            tx_start       => button_pressed,
            tx_data_in     => SW,
            tx_data_out    => tx
        );
        
       
    receiver : entity work.UART_rx
        port map (
            clk            => CLK100MHZ,
            reset          => reset,
            rx_data_in     => rx,
            rx_data_out    => LED
        );

    button : entity work.button_debounce
        port map(
            clk            => CLK100MHZ,
            reset          => reset,
            button_in      => BTNC,
            button_out     => button_pressed
            );

end Behavioral;
