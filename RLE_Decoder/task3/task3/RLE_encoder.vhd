library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RLE_encoder is
    port (
        clk : in std_logic;
        reset : in std_logic;
        start : in std_logic;
        data_in : in std_logic_vector(7 downto 0);
        data_out : out std_logic_vector(15 downto 0);
        done : out std_logic;
        reduced_length : out unsigned(7 downto 0)
    );
end entity;

architecture arch of RLE_encoder is
    -- Matrix storage
    type mem_t is array (0 to 63) of std_logic_vector(7 downto 0);
    signal mem : mem_t;

    -- Zigzag order (as provided)
    type zigzag_t is array (0 to 63) of integer range 0 to 63;
    constant zigzag_order : zigzag_t := (
        0, 1, 8,
        16, 9, 2,
        3, 10, 17, 24,
        32, 25, 18, 11, 4,
        5, 12, 19, 26, 33, 40,
        48, 41, 34, 27, 20, 13, 6,
        7, 14, 21, 28, 35, 42, 49, 56,
        57, 50, 43, 36, 29, 22, 15,
        23, 30, 37, 44, 51, 58,
        59, 52, 45, 38, 31,
        39, 46, 53, 60,
        61, 54, 47,
        55, 62,
        63
    );

    -- RLE Buffer
    type rle_t is array (0 to 63) of std_logic_vector(15 downto 0);
    signal rle_buffer : rle_t;

    -- FSM states
    type state_fsm is (A, B, C, D);
    signal state : state_fsm;

    -- Counters and pointers
    signal mem_idx      : integer range 0 to 63;
    signal zig_idx      : integer range 0 to 64;
    signal rle_idx      : integer range 0 to 63;
    signal rle_wr       : integer range 0 to 63;

    -- RLE logic registers
    signal curr_symbol  : std_logic_vector(7 downto 0);
    signal count        : unsigned(7 downto 0);

    -- Internal register for reduced_length output
    signal total_runs   : unsigned(7 downto 0);

begin

    process(clk, reset)
        variable next_symbol : std_logic_vector(7 downto 0);
    begin
        if (reset = '1') then
            state        <= A;
            mem_idx      <= 0;
            zig_idx      <= 0;
            rle_idx      <= 0;
            rle_wr       <= 0;
            count        <= (others => '0');
            curr_symbol  <= (others => '0');
            total_runs   <= (others => '0');

        elsif rising_edge(clk) then
            case state is
                when A =>
                    if (start = '1') then
                        mem(0) <= data_in;
                        mem_idx <= 1;
                        zig_idx <= 0;
                        rle_idx <= 0;
                        rle_wr  <= 0;
                        total_runs <= (others => '0');
                        count <= (others => '0');
                        curr_symbol <= (others => '0');
                        state <= B;
                    else
                        state <= A;
                    end if;

                when B =>
                    mem(mem_idx) <= data_in;
                    if (mem_idx = 63) then
                        curr_symbol <= mem(zigzag_order(0));
                        count <= "00000001";
                        rle_idx <= 0;
                        zig_idx <= 1;
                        state <= C;
                    else
                        mem_idx <= mem_idx + 1;
                        state <= B;
                    end if;

                when C =>
                    if (zig_idx = 64) then
                        rle_buffer(rle_idx) <= std_logic_vector(count) & curr_symbol;
                        total_runs <= to_unsigned(rle_idx + 1, 8);
                        rle_wr <= 0;
                        state <= D;
                    else
                        next_symbol := mem(zigzag_order(zig_idx));
                        if (next_symbol = curr_symbol) then
                            count <= count + 1;
                        else
                            rle_buffer(rle_idx) <= std_logic_vector(count) & curr_symbol;
                            curr_symbol <= next_symbol;
                            count <= "00000001";
                            rle_idx <= rle_idx + 1;
                        end if;
                        zig_idx <= zig_idx + 1;
                        state <= C;
                    end if;

                when D =>
                    if (rle_wr = to_integer(total_runs - 1)) then
                        state <= A;
                    else
                        rle_wr <= rle_wr + 1;
                        state <= D;
                    end if;
            end case;
        end if;
    end process;

    done <= '1' when state = D else '0';
    data_out <= rle_buffer(rle_wr) when state = D else (others => '0');
    reduced_length <= total_runs;

end architecture;
