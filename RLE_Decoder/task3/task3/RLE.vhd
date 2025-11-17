library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RLE is
    port (
        clk      : in std_logic;
        reset    : in std_logic;
        start    : in std_logic;
        data_in  : in std_logic_vector(7 downto 0);
        data_out : out std_logic_vector(7 downto 0);
        done     : out std_logic
    );
end entity;

architecture rtl of RLE is
    signal enc_data_out : std_logic_vector(15 downto 0);
    signal enc_done : std_logic;
    signal enc_reduced_length : unsigned(7 downto 0);
    signal dec_data_in : std_logic_vector(15 downto 0);
    signal dec_start : std_logic;
begin
    encoder_inst: entity work.RLE_encoder 
        port map (
            clk => clk,
            reset => reset,
            start => start,
            data_in => data_in,
            data_out => enc_data_out,
            done => enc_done,
            reduced_length => enc_reduced_length
        );
    
    decoder_inst: entity work.RLE_decoder
        port map (
            clk => clk,
            reset => reset,
            data_in => dec_data_in,
            start => dec_start,
            reduced_length => enc_reduced_length,
            data_out => data_out,
            done => done
        );
    
    dec_data_in <= enc_data_out;
    dec_start <= enc_done;
end architecture;