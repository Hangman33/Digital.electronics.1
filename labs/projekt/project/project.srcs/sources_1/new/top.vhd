library ieee;
use ieee.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity top is
    Port ( clk            : in  std_logic;
           tx_enable      : in  std_logic;
    
            
           reset          : in  std_logic;
           tx_start       : in  std_logic;
           data_in        : in  std_logic_vector (7 downto 0);
           data_out       : out std_logic_vector (7 downto 0); 
           rx             : in  std_logic;
           tx             : out std_logic
           );
           
end top;

architecture Behavioral of top is

    signal button_pressed : std_logic;

begin

    tx_uart : entity work.UART_tx
        port map (
            clk            => clk,
            reset          => reset,
            tx_start       => button_pressed,
            tx_data_in     => data_in,
            tx_data_out    => tx
        );
        
       
    rx_uart : entity work.UART_rx
        port map (
            clk            => clk,
            reset          => reset,
            rx_data_in     => rx,
            rx_data_out    => data_out
        );

    button_debounce : entity work.button_debounce
        port map(
            clk            => clk,
            reset          => reset,
            button_in      => tx_enable,
            button_out     => button_pressed
            );

end Behavioral;
