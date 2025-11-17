-- word_detection_new.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity word_detection_new is
  port (
    inp   : in  std_logic_vector(4 downto 0); -- 5-bit code (0=space, 1=a ... 26=z, 27=2)
    reset : in  std_logic;                    -- synchronous reset (active '1')
    clock : in  std_logic;
    outp  : out std_logic
  );
end word_detection_new;

architecture bhv of word_detection_new is

  -- lengths
  constant L_COME2 : integer := 5;
  constant L_DARK  : integer := 4;
  constant L_SIDE  : integer := 4;

  -- helper: convert input to integer (0..31)
  function code_to_int(x: std_logic_vector(4 downto 0)) return integer is
  begin
    return to_integer(unsigned((x)));
  end function;

  -- letter codes
  -- come2 -> c o m e 2 : 3,15,13,5,27
  constant COME2_0 : integer := 3;
  constant COME2_1 : integer := 15;
  constant COME2_2 : integer := 13;
  constant COME2_3 : integer := 5;
  constant COME2_4 : integer := 29;

  -- dark -> d a r k : 4,1,18,11
  constant DARK_0 : integer := 4;
  constant DARK_1 : integer := 1;
  constant DARK_2 : integer := 18;
  constant DARK_3 : integer := 11;

  -- side -> s i d e : 19,9,4,5
  constant SIDE_0 : integer := 19;
  constant SIDE_1 : integer := 9;
  constant SIDE_2 : integer := 4;
  constant SIDE_3 : integer := 5;

  -- progress counters for each word
  signal prog_c2 : integer range 0 to L_COME2 := 0;
  signal prog_d  : integer range 0 to L_DARK  := 0;
  signal prog_s  : integer range 0 to L_SIDE  := 0;

  -- combinational Mealy output
  signal outp_comb : std_logic := '0';

begin

  -----------------------------------------------------------------------
  -- Combinational process: Mealy output
  -----------------------------------------------------------------------
  output_proc: process(inp, prog_c2, prog_d, prog_s)
    variable in_code : integer;
    variable o       : std_logic := '0';
  begin
    in_code := code_to_int(inp);
    o := '0';

    if ((in_code >= 1 and in_code <= 26)or (in_code <= 29)) then -- letters + '2'

      -- COME2
      if prog_c2 = 0 and in_code = COME2_0 then
        null;
      elsif prog_c2 = 1 and in_code = COME2_1 then
        null;
      elsif prog_c2 = 2 and in_code = COME2_2 then
        null;
      elsif prog_c2 = 3 and in_code = COME2_3 then
        null;
      elsif prog_c2 = 4 and in_code = COME2_4 then
        o := '1';
			end if;

      -- DARK
      if o = '0' then
        if prog_d = 0 and in_code = DARK_0 then
          null;
        elsif prog_d = 1 and in_code = DARK_1 then
          null;
        elsif prog_d = 2 and in_code = DARK_2 then
          null;
        elsif prog_d = 3 and in_code = DARK_3 then
          o := '1';
        end if;
      end if;

      -- SIDE
      if o = '0' then
        if prog_s = 0 and in_code = SIDE_0 then
          null;
        elsif prog_s = 1 and in_code = SIDE_1 then
          null;
        elsif prog_s = 2 and in_code = SIDE_2 then
          null;
        elsif prog_s = 3 and in_code = SIDE_3 then
          o := '1';
        end if;
      end if;

    end if;

    outp_comb <= o;
  end process output_proc;

  -----------------------------------------------------------------------
  -- Clocked process: update progress counters
  -----------------------------------------------------------------------
  clock_proc: process(clock)
    variable in_code : integer;
  begin
    if rising_edge(clock) then
      if reset = '1' then
        prog_c2 <= 0;
        prog_d  <= 0;
        prog_s  <= 0;
      else
        in_code := code_to_int(inp);

        if ((in_code >= 1 and in_code <= 26)or (in_code <= 29)) then

          -- COME2 progress
          if prog_c2 = 0 and in_code = COME2_0 then
            prog_c2 <= 1;
          elsif prog_c2 = 1 and in_code = COME2_1 then
            prog_c2 <= 2;
          elsif prog_c2 = 2 and in_code = COME2_2 then
            prog_c2 <= 3;
          elsif prog_c2 = 3 and in_code = COME2_3 then
            prog_c2 <= 4;
          elsif prog_c2 = 4 and in_code = COME2_4 then
            prog_c2 <= 0;
          else
            prog_c2 <= prog_c2;
          end if;

          -- DARK progress
          if prog_d = 0 and in_code = DARK_0 then
            prog_d <= 1;
          elsif prog_d = 1 and in_code = DARK_1 then
            prog_d <= 2;
          elsif prog_d = 2 and in_code = DARK_2 then
            prog_d <= 3;
          elsif prog_d = 3 and in_code = DARK_3 then
            prog_d <= 0;
          else
            prog_d <= prog_d;
          end if;

          -- SIDE progress
          if prog_s = 0 and in_code = SIDE_0 then
            prog_s <= 1;
          elsif prog_s = 1 and in_code = SIDE_1 then
            prog_s <= 2;
          elsif prog_s = 2 and in_code = SIDE_2 then
            prog_s <= 3;
          elsif prog_s = 3 and in_code = SIDE_3 then
            prog_s <= 0;
          else
            prog_s <= prog_s;
          end if;

        else
          -- non-letter input: keep progress
          prog_c2 <= prog_c2;
          prog_d  <= prog_d;
          prog_s  <= prog_s;
        end if;
      end if;
    end if;
  end process clock_proc;

  -- Mealy output
  outp <= outp_comb;

end architecture bhv;
