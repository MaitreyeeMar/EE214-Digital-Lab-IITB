library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pascal_triangle is
port(
    clk     : in std_logic;
    rst_n   : in std_logic;
    start   : in std_logic;
    n       : in unsigned(3 downto 0);
    led     : out std_logic_vector(7 downto 0)
);
end pascal_triangle;

architecture behav of pascal_triangle is
    type state_type is (A, B, C, D, E);a
    signal state: state_type := A;

    -- State machine signals
    signal curr_row_index: integer range 0 to 16 := 0;
    signal element_index : integer range 0 to 16 := 0;

    -- Delay counter
    constant clk_freq: integer := 50_000_000;

    constant DELAY_2s: integer := 50_000;
    
    signal delay_counter: integer range 0 to DELAY_2s := 0;
	 
    signal led_output: std_logic_vector(7 downto 0) := (others => '0');

begin

-- Combinational assignment to the final 'led' port
led <= led_output;

process(clk, rst_n)
 
    type t_arr is array(0 to 15) of unsigned(7 downto 0);
    variable prev_row, next_row: t_arr := (others => (others => '0'));

begin
    if rst_n = '0' then -- Asynchronous reset
        state           <= A;
        led_output      <= (others => '0');
        delay_counter   <= 0;
        curr_row_index  <= 0;
        element_index   <= 0;
        -- Reset variables using :=
        prev_row        := (others => (others => '0'));
        next_row        := (others => (others => '0'));
        
    elsif rising_edge(clk) then
        
        case state is
            
            when A => -- Idle state
					led_output<=(others =>'0');
                if start = '1' then
                    curr_row_index <= 0;
                    state <= B;
                end if;
                
            when B => -- Initialize Row 0
                prev_row(0) := to_unsigned(1, 8); -- ROW(0) = {1}
                curr_row_index <= 1;
                state <= C;
                
            when C => -- Calculate next row
                if curr_row_index <= to_integer(n) then
                    
                    next_row(0) := to_unsigned(1, 8);
                    for i in 1 to 15 loop
                        next_row(i) := prev_row(i-1) + prev_row(i);
                    end loop;
                    next_row(curr_row_index) := to_unsigned(1, 8);
                    
                    prev_row := next_row; 
                    
                    if curr_row_index = to_integer(n) then
                        element_index <= 0;
                        delay_counter <= 0; -- Reset delay counter
                        state <= D;
                    else
                        curr_row_index <= curr_row_index + 1;
                    end if;
                else
                    state <= E; 
                end if;
                
            when D => -- Display elements with delay
                led_output <= std_logic_vector(prev_row(element_index));
                
                if delay_counter = (DELAY_2s - 1) then -- Wait for full delay
                    delay_counter <= 0;
                    
                    if element_index = curr_row_index then
                        state <= E;
                    else
                        -- Move to next element
                        element_index <= element_index + 1;
                    end if;
                else 
                    -- Wait
                    delay_counter <= delay_counter + 1;
                end if;
                
            when E => 
                state <= A;
                
        end case;
    end if;
end process;

end behav;