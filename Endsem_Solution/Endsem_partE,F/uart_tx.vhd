library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_TX is
  generic (
    g_CLKS_PER_BIT : integer := 5208 -- Depends on you clock and required baud rate
  );
  
  port (
    --==========================================================
    -- Input Ports
    --==========================================================
    i_Clk       : in  std_logic;                     -- System clock signal
    i_TX_DV     : in  std_logic;                     -- Data valid: start transmission when '1'
    i_TX_Byte   : in  std_logic_vector(7 downto 0);  -- 8-bit parallel data to transmit

    --==========================================================
    -- Output Ports
    --==========================================================
    o_TX_Active : out std_logic;                     -- Indicates transmission in progress ('1' = active)
    o_TX_Serial : out std_logic;                     -- Serial output line for UART transmission
    o_TX_Done   : out std_logic                      -- Pulses '1' for one clock cycle when byte is sent
  );
end UART_TX;

architecture rtl of UART_TX is
type t_SM_Main is (s_Idle, s_TX_Start_Bit, s_TX_Data_Bits, s_TX_Stop_Bit, s_Cleanup);
signal r_SM_Main : t_SM_Main := s_Idle;
signal r_Clk_Count : integer range 0 to g_CLKS_PER_BIT-1 := 0;
signal r_Bit_Index : integer range 0 to 7 := 0;
signal r_TX_Data   : std_logic_vector(7 downto 0) := (others => '0');
signal r_TX_Done   : std_logic := '0';
signal r_TX_Active : std_logic := '0';

begin
p_UART_TX : process(i_Clk)
begin
if rising_edge(i_Clk) then
case r_SM_Main is
when s_Idle =>
o_TX_Serial <= '1';  
r_TX_Active <= '0';
r_TX_Done <= '0';
r_Clk_Count <= 0;
r_Bit_Index <= 0;

if i_TX_DV = '1' then
r_TX_Data <= i_TX_Byte;
r_SM_Main <= s_TX_Start_Bit;
r_TX_Active <= '1';
end if;

when s_TX_Start_Bit =>
o_TX_Serial <= '0';   
if r_Clk_Count < g_CLKS_PER_BIT - 1 then
r_Clk_Count <= r_Clk_Count + 1;
else
r_Clk_Count <= 0;
r_SM_Main <= s_TX_Data_Bits;
end if;

when s_TX_Data_Bits =>
o_TX_Serial <= r_TX_Data(r_Bit_Index);
if r_Clk_Count < g_CLKS_PER_BIT - 1 then
r_Clk_Count <= r_Clk_Count + 1;
else
r_Clk_Count <= 0;
if r_Bit_Index < 7 then
r_Bit_Index <= r_Bit_Index + 1;
else
r_Bit_Index <= 0;
r_SM_Main <= s_TX_Stop_Bit;
end if;
end if;

when s_TX_Stop_Bit =>
o_TX_Serial <= '1';  
if r_Clk_Count < g_CLKS_PER_BIT - 1 then
r_Clk_Count <= r_Clk_Count + 1;
else
r_Clk_Count <= 0;
r_TX_Done <= '1';
r_SM_Main <= s_Cleanup;
end if;

when s_Cleanup =>
r_TX_Done <= '0';
r_TX_Active <= '0';
r_SM_Main <= s_Idle;

when others =>
r_SM_Main <= s_Idle;
end case;
end if;
end process;

o_TX_Active <= r_TX_Active;
o_TX_Done <= r_TX_Done;

end rtl;

