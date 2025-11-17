library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end entity;

architecture Behave of testbench is

  signal clk_in       : std_logic := '0';
  signal rst          : std_logic := '1';
  signal clk_out_5MHz : std_logic;
  signal clk_out_2Hz  : std_logic;

  component ClockDivider is
    port(
      clk_in       : in  std_logic;
      rst          : in  std_logic;
      clk_out_5MHz : out std_logic;
      clk_out_2Hz  : out std_logic
    );
  end component;

begin

  -- Instantiate ClockDiv DUT
  uut : ClockDivider
    port map(
      clk_in       => clk_in,
      rst          => rst,
      clk_out_5MHz => clk_out_5MHz,
      clk_out_2Hz  => clk_out_2Hz
    );

  -- Clock generation: 50 MHz clock (20 ns period)
  clk_gen : process
  begin
    while true loop
      clk_in <= '0';
      wait for 10 ns;
      clk_in <= '1';
      wait for 10 ns;
    end loop;
  end process clk_gen;

  -- Reset generation (assert high for 30 ns, then low)
  rst_proc : process
  begin
    rst <= '1';
    wait for 30 ns;
    rst <= '0';
    wait;
  end process rst_proc;

end architecture Behave;
