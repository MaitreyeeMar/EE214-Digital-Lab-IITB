library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_tb is
end uart_tb;

architecture sim of uart_tb is

  constant c_CLK_PERIOD : time := 20 ns;          -- 50 MHz clock
  constant c_CLKS_PER_BIT : integer := 5208;       -- For 9600 baud at 50 MHz

  -- DUT signals
  signal clk        : std_logic := '0';
  signal rx_serial  : std_logic := '1';  -- idle line
  signal tx_serial  : std_logic;

  -- Baud clock visualization signal
  signal baud_clk   : std_logic := '1';

begin

  --------------------------------------------------------------------
  -- System Clock Generation (50 MHz)
  --------------------------------------------------------------------
  clk_process : process
  begin
    clk <= '0';
    wait for c_CLK_PERIOD/2;
    clk <= '1';
    wait for c_CLK_PERIOD/2;
  end process;

  --------------------------------------------------------------------
  -- Baud Clock Generation (for visualization only)
  --------------------------------------------------------------------
  baud_clk_process : process
  begin
    baud_clk <= '1';
    wait for c_CLK_PERIOD * c_CLKS_PER_BIT / 2;
    baud_clk <= '0';
    wait for c_CLK_PERIOD * c_CLKS_PER_BIT / 2;
  end process;

  --------------------------------------------------------------------
  -- DUT Instance
  --------------------------------------------------------------------
  uut : entity work.uart
    generic map (
      g_CLKS_PER_BIT => c_CLKS_PER_BIT
    )
    port map (
      i_Clk       => clk,
      i_RX_Serial => rx_serial,
      o_TX_Serial => tx_serial
    );

  --------------------------------------------------------------------
  -- Stimulus Process
  --------------------------------------------------------------------
  stim_proc : process
    -- UART bit-bang transmitter
    procedure UART_WRITE_BYTE (
      signal serial_line : out std_logic;
      constant data      : std_logic_vector(7 downto 0)
    ) is
    begin
      -- Start bit
      serial_line <= '0';
      wait for c_CLK_PERIOD * c_CLKS_PER_BIT;

      -- Data bits LSB first
      for i in 0 to 7 loop
        serial_line <= data(i);
        wait for c_CLK_PERIOD * c_CLKS_PER_BIT;
      end loop;

      -- Stop bit
      serial_line <= '1';
      wait for c_CLK_PERIOD * c_CLKS_PER_BIT;
    end procedure;

  begin
    -- Wait some setup time
    wait for 200 ns;

    -- Send first byte A = 0x06
    report "Sending A = 0x06";
    UART_WRITE_BYTE(rx_serial, x"06");

    -- Wait between bytes
    wait for c_CLK_PERIOD * c_CLKS_PER_BIT * 2;

    -- Send second byte B = 0x05
    report "Sending B = 0x05";
    UART_WRITE_BYTE(rx_serial, x"05");

    -- Wait for the result to be transmitted back
    wait for c_CLK_PERIOD * c_CLKS_PER_BIT * 12;

    assert false report "Simulation finished." severity failure;

  end process;

end architecture;
