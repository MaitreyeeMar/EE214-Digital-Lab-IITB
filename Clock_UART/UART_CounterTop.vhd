library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_CounterTop is
  port (
    clk_50MHz : in  std_logic;
    rst       : in  std_logic;
    UART_RX   : in  std_logic;
    LEDS      : out std_logic_vector(7 downto 0)
  );
end UART_CounterTop;

architecture Behavioral of UART_CounterTop is

  -- Clock divider signals
  signal clk_2Hz : std_logic := '0';

  -- UART RX signals
  signal received_byte : std_logic_vector(7 downto 0) := (others=>'0');
  signal new_byte     : std_logic := '0';  -- pulse when new byte arrives
  signal mode         : std_logic := '0';  -- '0' = Johnson, '1' = Ring

  -- Counter state
  signal johnson : std_logic_vector(7 downto 0) := (others=>'0');
  signal ring    : std_logic_vector(7 downto 0) := (others=>'0');
  signal counter_out : std_logic_vector(7 downto 0);

begin

  -- Instantiate your 2Hz clock divider
  clkdiv_inst: entity work.ClockDivider
    generic map (MAX_COUNT => 12500000)    -- set MAX_COUNT for 2Hz
    port map (
      clk_in  => clk_50MHz,
      rst     => rst,
      clk_out => clk_2Hz
    );

  -- Example UART Receiver instantiation (behavioral or as provided by lab)
  -- This block will assert new_byte for 1 clock cycle and place received byte on received_byte
  uart_rx_inst: entity work.UART_RX
    port map (
      clk      => clk_50MHz,
      rst      => rst,
      rx       => UART_RX,
      rx_byte  => received_byte,
      rx_done  => new_byte
    );

  -- UART command decoding (set counter mode on keypress)
  process(clk_50MHz)
  begin
    if rising_edge(clk_50MHz) then
      if rst = '1' then
        mode <= '0'; -- Default to Johnson
      elsif new_byte = '1' then
        if received_byte = x"31" then  -- ASCII '1'
          mode <= '0';
        elsif received_byte = x"32" then  -- ASCII '2'
          mode <= '1';
        end if;
      end if;
    end if;
  end process;

  -- Johnson counter
  process(clk_2Hz, rst)
  begin
    if rst = '1' then
      johnson <= "00000001";
    elsif rising_edge(clk_2Hz) then
      johnson <= johnson(6 downto 0) & not johnson(7);  -- standard 8-bit Johnson
    end if;
  end process;

  -- Ring counter
  process(clk_2Hz, rst)
  begin
    if rst = '1' then
      ring <= "10000000";
    elsif rising_edge(clk_2Hz) then
      ring <= ring(6 downto 0) & ring(7);  -- rotate left
    end if;
  end process;

  -- Choose output based on mode
  counter_out <= johnson when mode = '0' else ring;

  LEDS <= counter_out;

end Behavioral;
