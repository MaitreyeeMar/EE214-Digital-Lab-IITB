library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity myALU is
  port (
    S : in std_logic_vector(1 downto 0);
    A : in std_logic_vector(3 downto 0);
    B : in std_logic_vector(3 downto 0);
    Y : out std_logic_vector(7 downto 0)
  );
end entity;

architecture arch of myALU is

  function Shift(A, B : std_logic_vector(3 downto 0)) return std_logic_vector is
    variable A_extended : std_logic_vector(7 downto 0) := (others => '0'); -- extend A to 8 bits
    variable shift_amount : integer := to_integer(unsigned(B(2 downto 0))); -- define shift amount
    variable result : std_logic_vector(7 downto 0); -- return result
  begin
    A_extended(3 downto 0) := A;
    if B(3) = '0' then
      result := std_logic_vector(shift_left(unsigned(A_extended), shift_amount));
    else
      result := std_logic_vector(shift_right(unsigned(A_extended), shift_amount));
    end if;
    return result;
  end function;

begin

  process(A, B, S)
    variable temp : std_logic_vector(7 downto 0);
    variable mult_result : std_logic_vector(7 downto 0);
  begin
    if S = "00" then
      temp := Shift(A, B);
    elsif S = "01" then
      temp := not (A & B); -- 8 bits: A(3:0) & B(3:0)
    elsif S = "10" then
      temp := (others => '0');
      temp(3 downto 0) := std_logic_vector(unsigned(A) + unsigned(B)); -- lower 4 bits
    elsif S = "11" then
      mult_result := std_logic_vector(to_unsigned(to_integer(unsigned(A)) * to_integer(unsigned(B)), 8));
      temp := mult_result;
    else
      temp := (others => '0');
    end if;
    Y <= temp;
  end process;

end architecture;

