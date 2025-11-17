library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Shift_Add_Sub is
  port (
    --------------------------------------------------------------
    -- Input Ports
    --------------------------------------------------------------
    A : in  std_logic_vector(7 downto 0);  -- First 8-bit operand
    B : in  std_logic_vector(7 downto 0);  -- Second 8-bit operand

    --------------------------------------------------------------
    -- Output Port
    --------------------------------------------------------------
    Y : out std_logic_vector(7 downto 0)   -- 8-bit result after shift-add/subtract operation
  );
end Shift_Add_Sub;
architecture behavioral of Shift_Add_Sub is
begin
  process(A, B)
    variable product : unsigned(7 downto 0);
    variable a_val   : unsigned(7 downto 0);
    variable b_val   : unsigned(7 downto 0);
    variable shift_a : unsigned(15 downto 0);
  begin
    a_val := unsigned(A);
    b_val := unsigned(B);
    product := (others => '0');
    shift_a := "00000000" & a_val;
    
    -- Shift-Add Multiplication 
      if a_val(0) = '1' then
        product := b_val+shift_right(a_val,1); 
		elsif a_val(0) = '0' then
		product := shift_left(a_val,1)-b_val;
      end if;       
    
    Y <= std_logic_vector(product(7 downto 0));
  end process;
end behavioral;



