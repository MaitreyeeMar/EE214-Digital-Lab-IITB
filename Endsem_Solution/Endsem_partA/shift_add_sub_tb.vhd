library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_add_sub_tb is
end shift_add_sub_tb;

architecture sim of shift_add_sub_tb is

  signal A : std_logic_vector(7 downto 0);
  signal B : std_logic_vector(7 downto 0);
  signal Y : std_logic_vector(7 downto 0);
  
  -- Track overall result
  --signal all_passed : boolean := true;
  
begin
  -- DUT instance
  uut: entity work.Shift_Add_Sub
    port map (
      A => A,
      B => B,
      Y => Y
    );

  stim_proc : process
  variable all_passed : boolean := true;
  begin
    -- Case 1: A=0x83 (LSB=1) → (A>>1)+B = (0x41)+0x05 = 0x46
    A <= x"83";
    B <= x"05";
    wait for 10 ns;
	 if (Y /= x"46") then
      assert false report "Case 1 failed: Expected 0x46" severity error;
      all_passed := false;
    end if;

    -- Case 2: A=0x10 (LSB=0) → (A<<1)-B = (0x20)-0x03 = 0x1D
    A <= x"10";
    B <= x"03";
    wait for 10 ns;
	 	 if (Y /= x"1D") then
      assert false report "Case 2 failed: Expected 0x1D" severity error;
      all_passed := false;
    end if;

    -- Case 3: A=0xFF (LSB=1) → (A>>1)+B = (0x7F)+0x01 = 0x80
    A <= x"FF";
    B <= x"01";
    wait for 10 ns;
	 	 if (Y /= x"80") then
      assert false report "Case 3 failed: Expected 0x80" severity error;
      all_passed := false;
    end if;

    -- Case 4: A=0x00 (LSB=0) → (A<<1)-B = (0x00)-0x0A = 0xF6
    A <= x"00";
    B <= x"0A";
    wait for 10 ns;
	 	 if (Y /= x"F6") then
      assert false report "Case 4 failed: Expected 0xF6" severity error;
      all_passed := false;
    end if;

    -- Case 5: A=0x06 (LSB=0) → (A<<1)-B = (0x0C)-0x07 = 0x05
    A <= x"06";
    B <= x"07";
    wait for 10 ns;
	 	 if (Y /= x"05") then
      assert false report "Case 5 failed: Expected 0x05" severity error;
      all_passed := false;
    end if;

    -- Case 6: A=0x04 (LSB=0) → (A<<1)-B = (0x08)-0x05 = 0x03
    A <= x"04";
    B <= x"05";
    wait for 10 ns;
	 	 if (Y /= x"03") then
      assert false report "Case 6 failed: Expected 0x03" severity error;
      all_passed := false;
    end if;

    -- Case 7: A=0x01 (LSB=1) → (A>>1)+B = (0x00)+0x02 = 0x02
    A <= x"01";
    B <= x"02";
    wait for 10 ns;
	 	 if (Y /= x"02") then
      assert false report "Case 7 failed: Expected 0x02" severity error;
      all_passed := false;
    end if;

		--------------------------------------------------------------------
    -- Final Summary
    --------------------------------------------------------------------
    if (all_passed) then
      report "All test cases PASSED successfully!" severity failure;
    else
      report "One or more test cases FAILED!" severity failure;
    end if;
	 
--	 assert false report "Simulation finished." severity failure;
--
--    --report "All tests completed successfully." severity failure;
    wait;
  end process;
end sim;
