library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_pascal_triangle is
end entity tb_pascal_triangle;

architecture sim of tb_pascal_triangle is

    -- Signal Declarations
    signal clk     : std_logic := '0';
    signal rst_n   : std_logic := '1';
    signal start   : std_logic := '0';
    signal n       : unsigned(3 downto 0) := (others => '0');
    signal led     : std_logic_vector(7 downto 0);

    -- Clock period
    constant CLK_PERIOD : time := 20 ns; -- 50 MHz

begin

    -- DUT Instantiation
    uut: entity work.pascal_triangle
        port map (
            clk   => clk,
            rst_n => rst_n,
            start => start,
            n     => n,
            led   => led
        );

    -- Clock Generation
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process clk_process;


    stimulus : process
    begin
        -- 1. Apply Reset
        rst_n <= '0';
        wait for 50 ns;
        rst_n <= '1';
        wait for 100 ns; -- Wait for reset to stabilize

        -- 2. Test for n = 3 
        report "Starting test for n = 3";
        n <= "0011";
        start <= '1';
        wait for 100 ns; -- Hold start for 5 clock cycles to ensure FSM sees it
        start <= '0';
        
        wait for 5_000_000 ns; 

        -- 3. Test for n = 5 
        report "Starting test for n = 5";
        n <= "0101"; 
        start <= '1';
        wait for 100 ns; -- Hold start for 5 clock cycles
        start <= '0';

        wait for 7_000_000 ns;

        -- 4. End of simulation
        report "Simulation completed successfully.";
        assert false
            report "Simulation finished."
            severity failure;
            
    end process stimulus;

end architecture sim;