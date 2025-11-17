library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ClockDivider is
  port (
    clk_in       : in  std_logic;
    rst          : in  std_logic;
    clk_out_5MHz : out std_logic;
    clk_out_2Hz  : out std_logic
  );
end ClockDivider;

architecture bhv of ClockDivider is
  constant MAX_5MHz : integer := 10;           -- Divides 50MHz to 5MHz
  constant MAX_2Hz  : integer := 12500000;     -- Divides 50MHz to 2Hz
  signal count_5MHz   : integer range 1 to MAX_5MHz := 1;
  signal temp_5MHz    : std_logic := '0';
  signal count_2Hz    : integer range 1 to MAX_2Hz := 1;
  signal temp_2Hz     : std_logic := '0';

begin
  -- Process for 5MHz clock
  proc_5MHz: process(clk_in)
  begin
    if rising_edge(clk_in) then
      if rst = '1' then
        count_5MHz <= 1;
        temp_5MHz <= '0';
      elsif count_5MHz = MAX_5MHz then
        temp_5MHz <= not temp_5MHz;
        count_5MHz <= 1;
      else
        count_5MHz <= count_5MHz + 1;
      end if;
    end if;
  end process;

  -- Process for 2Hz clock
  proc_2Hz: process(clk_in)
  begin
    if rising_edge(clk_in) then
      if rst = '1' then
        count_2Hz <= 1;
        temp_2Hz <= '0';
      elsif count_2Hz = MAX_2Hz then
        temp_2Hz <= not temp_2Hz;
        count_2Hz <= 1;
      else
        count_2Hz <= count_2Hz + 1;
      end if;
    end if;
  end process;

  clk_out_5MHz <= temp_5MHz;
  clk_out_2Hz  <= temp_2Hz;
end architecture;
