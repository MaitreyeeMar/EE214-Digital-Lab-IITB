library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end entity;

architecture Behave of testbench is

  signal clk_50MHz : std_logic := '0';
  signal rst       : std_logic := '1';
  signal UART_RX   : std_logic := '1';
  signal LEDS      : std_logic_vector(7 downto 0);

  constant CLK_PERIOD : time := 20 ns;    -- 50 MHz
  -- Use a reasonable UART baud for simulation; 9600 may be slow, use 100000 for quick tests
  constant BAUD_RATE  : integer := 100000;
  constant BIT_PERIOD : time := 1 sec / BAUD_RATE;

  -- UART send procedure (placed before 'begin')
  procedure send_uart_byte(
    signal rx_line : out std_logic;
    data : std_logic_vector(7 downto 0)
  ) is
  begin
    rx_line <= '0';                  -- start bit
    wait for BIT_PERIOD;
    for i in 0 to 7 loop             -- send data bits LSB first
      rx_line <= data(i);
      wait for BIT_PERIOD;
    end loop;
    rx_line <= '1';                  -- stop bit
    wait for BIT_PERIOD;
  end procedure;

begin

  -- Instantiate the DUT (your UART_CounterTop)
  uut : entity work.UART
    port map (
      clk_50MHz => clk_50MHz,
      rst       => rst,
      UART_RX   => UART_RX,
      LEDS      => LEDS
    );

  -- 50 MHz input clock generation
  clk_process : process
  begin
    while true loop
      clk_50MHz <= '0'; wait for CLK_PERIOD / 2;
      clk_50MHz <= '1'; wait for CLK_PERIOD / 2;
    end loop;
  end process;

  -- Reset generation
  rst_process : process
  begin
    rst <= '1'; wait for 100 ns;
    rst <= '0'; wait;
  end process;

  -- Stimulus: sends UART bytes ('1' and '2') after release of reset
  stim_process : process
  begin
    wait until rst = '0';

    -- Send ASCII '1' : 0x31 -> "00110001"
    send_uart_byte(UART_RX, "00110001");
    wait for 2 ms;

    -- Send ASCII '2' : 0x32 -> "00110010"
    send_uart_byte(UART_RX, "00110010");
    wait for 2 ms;

    -- You can repeat as needed or add more tests
    wait;
  end process;

  -- You may add waveform or output check processes here if desired

end architecture;
