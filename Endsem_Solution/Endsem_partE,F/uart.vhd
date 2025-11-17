library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart is
  generic (
    g_CLKS_PER_BIT : integer := 5208  -- Set according to your clock/baud
  );
  port (
    i_Clk      : in  std_logic;
    i_RX_Serial: in  std_logic;
    o_TX_Serial: out std_logic
  );
end uart;

architecture rtl of uart is

  -- UART RX signals
  signal rx_dv   : std_logic;
  signal rx_byte : std_logic_vector(7 downto 0);

  -- UART TX signals
  signal tx_dv     : std_logic := '0';
  signal tx_active : std_logic;
  signal tx_done   : std_logic;
  signal tx_byte   : std_logic_vector(7 downto 0);

  -- Shift_Add_Sub signals
  signal A, B, Y : std_logic_vector(7 downto 0);

  -- State machine to track which byte is received
  type t_state is (s_wait_A, s_wait_B, s_calc, s_send);
  signal state : t_state := s_wait_A;

begin

  -- UART RX instance
  uart_rx_inst : entity work.UART_RX
    generic map (g_CLKS_PER_BIT => g_CLKS_PER_BIT)
    port map (
      i_Clk       => i_Clk,
      i_RX_Serial => i_RX_Serial,
      o_RX_DV     => rx_dv,
      o_RX_Byte   => rx_byte
    );

  -- UART TX instance
  uart_tx_inst : entity work.UART_TX
    generic map (g_CLKS_PER_BIT => g_CLKS_PER_BIT)
    port map (
      i_Clk       => i_Clk,
      i_TX_DV     => tx_dv,
      i_TX_Byte   => tx_byte,
      o_TX_Active => tx_active,
      o_TX_Serial => o_TX_Serial,
      o_TX_Done   => tx_done
    );

  -- Shift_Add_Sub instance
  shift_add_sub_inst : entity work.Shift_Add_Sub
    port map (
      A => A,
      B => B,
      Y => Y
    );

  -- Top-level control process
  top_proc : process(i_Clk)
  begin
    if rising_edge(i_Clk) then
      case state is
        -- Wait for first byte
        when s_wait_A =>
          if rx_dv = '1' then
            A <= rx_byte;
            state <= s_wait_B;
          end if;

        -- Wait for second byte
        when s_wait_B =>
          if rx_dv = '1' then
            B <= rx_byte;
            state <= s_calc;
          end if;

        -- Calculation done immediately, move to send
        when s_calc =>
          tx_byte <= Y;   -- Feed Shift_Add_Sub output to UART_TX
          tx_dv   <= '1';
          state   <= s_send;

        -- Wait for transmission to finish
        when s_send =>
          tx_dv <= '0';
          if tx_done = '1' then
            state <= s_wait_A;  -- Ready for next two bytes
          end if;

        when others =>
          state <= s_wait_A;
      end case;
    end if;
  end process;

end rtl;
