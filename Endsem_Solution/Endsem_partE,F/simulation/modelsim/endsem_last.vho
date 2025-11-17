-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/08/2025 10:39:14"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uart IS
    PORT (
	i_Clk : IN std_logic;
	i_RX_Serial : IN std_logic;
	o_TX_Serial : BUFFER std_logic
	);
END uart;

-- Design Ports Information
-- o_TX_Serial	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Clk	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RX_Serial	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_Clk : std_logic;
SIGNAL ww_i_RX_Serial : std_logic;
SIGNAL ww_o_TX_Serial : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \o_TX_Serial~output_o\ : std_logic;
SIGNAL \i_Clk~input_o\ : std_logic;
SIGNAL \i_Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[0]~13_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[10]~34\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[11]~36_combout\ : std_logic;
SIGNAL \uart_tx_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|LessThan1~5_combout\ : std_logic;
SIGNAL \uart_tx_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \uart_tx_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \uart_tx_inst|LessThan1~7_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[11]~37\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[12]~38_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[12]~35_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[0]~14\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[1]~15_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[1]~16\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[2]~17_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[2]~18\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[3]~19_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[3]~20\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[4]~21_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[4]~22\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[5]~23_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[5]~24\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[6]~25_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[6]~26\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[7]~27_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[7]~28\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[8]~29_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[8]~30\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[9]~31_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[9]~32\ : std_logic;
SIGNAL \uart_tx_inst|r_Clk_Count[10]~33_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector18~3_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector18~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector17~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|LessThan1~8_combout\ : std_logic;
SIGNAL \uart_tx_inst|LessThan1~6_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector17~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector17~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector16~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector16~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector16~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector22~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector22~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector22~4_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\ : std_logic;
SIGNAL \uart_tx_inst|Selector20~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_SM_Main.s_TX_Start_Bit~q\ : std_logic;
SIGNAL \uart_tx_inst|Selector23~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector21~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector21~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector23~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[0]~13_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_SM_Main~7_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \i_RX_Serial~input_o\ : std_logic;
SIGNAL \uart_rx_inst|r_RX_Data_R~feeder_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_RX_Data_R~q\ : std_logic;
SIGNAL \uart_rx_inst|r_RX_Data~q\ : std_logic;
SIGNAL \uart_rx_inst|Equal0~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[11]~36\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[12]~37_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[12]~41_combout\ : std_logic;
SIGNAL \uart_rx_inst|Equal0~1_combout\ : std_logic;
SIGNAL \uart_rx_inst|Equal0~2_combout\ : std_logic;
SIGNAL \uart_rx_inst|Equal0~3_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector18~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_SM_Main.s_RX_Start_Bit~q\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[12]~39_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector17~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[12]~40_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[0]~14\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[1]~15_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[1]~16\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[2]~17_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[2]~18\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[3]~19_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[3]~20\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[4]~21_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[4]~22\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[5]~23_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[5]~24\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[6]~25_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[6]~26\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[7]~27_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[7]~28\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[8]~29_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[8]~30\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[9]~31_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[9]~32\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[10]~33_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[10]~34\ : std_logic;
SIGNAL \uart_rx_inst|r_Clk_Count[11]~35_combout\ : std_logic;
SIGNAL \uart_rx_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \uart_rx_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \uart_rx_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \uart_rx_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector15~2_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector15~3_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector14~1_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector14~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector14~2_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector14~3_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector19~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector19~1_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\ : std_logic;
SIGNAL \uart_rx_inst|Selector16~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|LessThan1~5_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector16~1_combout\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_SM_Main.s_RX_Stop_Bit~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_SM_Main.s_RX_Stop_Bit~q\ : std_logic;
SIGNAL \uart_rx_inst|Selector0~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|Selector0~1_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_RX_DV~q\ : std_logic;
SIGNAL \uart_tx_inst|Selector2~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector2~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_TX_Done~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \state.s_calc~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state.s_wait_B~q\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \state.s_send~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.s_wait_A~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \tx_dv~q\ : std_logic;
SIGNAL \uart_tx_inst|Selector19~3_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector19~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \uart_tx_inst|Selector22~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector22~3_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector21~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_RX_Byte[6]~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_RX_Byte[0]~1_combout\ : std_logic;
SIGNAL \A[0]~0_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~0_combout\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_RX_Byte[5]~3_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_RX_Byte[7]~2_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~1_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~2_combout\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~5_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_RX_Byte[4]~4_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~3_combout\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~6_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_RX_Byte[3]~5_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~5_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~4_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~6_combout\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~7_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_RX_Byte[2]~6_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~7_combout\ : std_logic;
SIGNAL \uart_rx_inst|Decoder0~8_combout\ : std_logic;
SIGNAL \uart_rx_inst|r_RX_Byte[1]~7_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~9_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~8_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~11_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~10_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~12_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~13_combout\ : std_logic;
SIGNAL \tx_byte[0]~9\ : std_logic;
SIGNAL \tx_byte[1]~11\ : std_logic;
SIGNAL \tx_byte[2]~13\ : std_logic;
SIGNAL \tx_byte[3]~15\ : std_logic;
SIGNAL \tx_byte[4]~17\ : std_logic;
SIGNAL \tx_byte[5]~19\ : std_logic;
SIGNAL \tx_byte[6]~20_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_TX_Data[6]~feeder_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~14_combout\ : std_logic;
SIGNAL \shift_add_sub_inst|Add0~15_combout\ : std_logic;
SIGNAL \tx_byte[6]~21\ : std_logic;
SIGNAL \tx_byte[7]~22_combout\ : std_logic;
SIGNAL \tx_byte[5]~18_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_TX_Data[5]~feeder_combout\ : std_logic;
SIGNAL \tx_byte[4]~16_combout\ : std_logic;
SIGNAL \uart_tx_inst|Mux0~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Mux0~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector0~0_combout\ : std_logic;
SIGNAL \tx_byte[2]~12_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_TX_Data[2]~feeder_combout\ : std_logic;
SIGNAL \tx_byte[3]~14_combout\ : std_logic;
SIGNAL \tx_byte[1]~10_combout\ : std_logic;
SIGNAL \uart_tx_inst|r_TX_Data[1]~feeder_combout\ : std_logic;
SIGNAL \tx_byte[0]~8_combout\ : std_logic;
SIGNAL \uart_tx_inst|Mux0~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|Mux0~3_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector0~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector0~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|o_TX_Serial~q\ : std_logic;
SIGNAL \uart_rx_inst|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL tx_byte : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_rx_inst|r_RX_Byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_tx_inst|r_Clk_Count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \uart_tx_inst|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_rx_inst|r_Clk_Count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \uart_tx_inst|r_TX_Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL B : std_logic_vector(7 DOWNTO 0);
SIGNAL A : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_Clk <= i_Clk;
ww_i_RX_Serial <= i_RX_Serial;
o_TX_Serial <= ww_o_TX_Serial;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\i_Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_Clk~input_o\);
\uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\ <= NOT \uart_tx_inst|r_SM_Main.s_Cleanup~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y17_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X31_Y1_N2
\o_TX_Serial~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_tx_inst|o_TX_Serial~q\,
	devoe => ww_devoe,
	o => \o_TX_Serial~output_o\);

-- Location: IOIBUF_X0_Y7_N15
\i_Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Clk,
	o => \i_Clk~input_o\);

-- Location: CLKCTRL_G2
\i_Clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X23_Y7_N6
\uart_tx_inst|r_Clk_Count[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_Clk_Count[0]~13_combout\ = \uart_tx_inst|r_Clk_Count\(0) $ (VCC)
-- \uart_tx_inst|r_Clk_Count[0]~14\ = CARRY(\uart_tx_inst|r_Clk_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Clk_Count\(0),
	datad => VCC,
	combout => \uart_tx_inst|r_Clk_Count[0]~13_combout\,
	cout => \uart_tx_inst|r_Clk_Count[0]~14\);

-- Location: LCCOMB_X23_Y7_N26
\uart_tx_inst|r_Clk_Count[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_Clk_Count[10]~33_combout\ = (\uart_tx_inst|r_Clk_Count\(10) & (\uart_tx_inst|r_Clk_Count[9]~32\ $ (GND))) # (!\uart_tx_inst|r_Clk_Count\(10) & (!\uart_tx_inst|r_Clk_Count[9]~32\ & VCC))
-- \uart_tx_inst|r_Clk_Count[10]~34\ = CARRY((\uart_tx_inst|r_Clk_Count\(10) & !\uart_tx_inst|r_Clk_Count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Clk_Count\(10),
	datad => VCC,
	cin => \uart_tx_inst|r_Clk_Count[9]~32\,
	combout => \uart_tx_inst|r_Clk_Count[10]~33_combout\,
	cout => \uart_tx_inst|r_Clk_Count[10]~34\);

-- Location: LCCOMB_X23_Y7_N28
\uart_tx_inst|r_Clk_Count[11]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_Clk_Count[11]~36_combout\ = (\uart_tx_inst|r_Clk_Count\(11) & (!\uart_tx_inst|r_Clk_Count[10]~34\)) # (!\uart_tx_inst|r_Clk_Count\(11) & ((\uart_tx_inst|r_Clk_Count[10]~34\) # (GND)))
-- \uart_tx_inst|r_Clk_Count[11]~37\ = CARRY((!\uart_tx_inst|r_Clk_Count[10]~34\) # (!\uart_tx_inst|r_Clk_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|r_Clk_Count\(11),
	datad => VCC,
	cin => \uart_tx_inst|r_Clk_Count[10]~34\,
	combout => \uart_tx_inst|r_Clk_Count[11]~36_combout\,
	cout => \uart_tx_inst|r_Clk_Count[11]~37\);

-- Location: FF_X23_Y7_N29
\uart_tx_inst|r_Clk_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_Clk_Count[11]~36_combout\,
	sclr => \uart_tx_inst|r_Clk_Count[12]~35_combout\,
	ena => \uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Clk_Count\(11));

-- Location: LCCOMB_X24_Y7_N10
\uart_tx_inst|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|LessThan1~2_combout\ = (!\uart_tx_inst|r_Clk_Count\(10) & !\uart_tx_inst|r_Clk_Count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_inst|r_Clk_Count\(10),
	datad => \uart_tx_inst|r_Clk_Count\(11),
	combout => \uart_tx_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X23_Y7_N2
\uart_tx_inst|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|LessThan1~5_combout\ = (!\uart_tx_inst|r_Clk_Count\(3) & (((!\uart_tx_inst|r_Clk_Count\(2)) # (!\uart_tx_inst|r_Clk_Count\(0))) # (!\uart_tx_inst|r_Clk_Count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Clk_Count\(3),
	datab => \uart_tx_inst|r_Clk_Count\(1),
	datac => \uart_tx_inst|r_Clk_Count\(0),
	datad => \uart_tx_inst|r_Clk_Count\(2),
	combout => \uart_tx_inst|LessThan1~5_combout\);

-- Location: LCCOMB_X23_Y7_N4
\uart_tx_inst|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|LessThan1~4_combout\ = ((!\uart_tx_inst|r_Clk_Count\(4) & !\uart_tx_inst|r_Clk_Count\(5))) # (!\uart_tx_inst|r_Clk_Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|r_Clk_Count\(6),
	datac => \uart_tx_inst|r_Clk_Count\(4),
	datad => \uart_tx_inst|r_Clk_Count\(5),
	combout => \uart_tx_inst|LessThan1~4_combout\);

-- Location: LCCOMB_X24_Y7_N12
\uart_tx_inst|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|LessThan1~3_combout\ = (!\uart_tx_inst|r_Clk_Count\(7) & (!\uart_tx_inst|r_Clk_Count\(11) & (!\uart_tx_inst|r_Clk_Count\(8) & !\uart_tx_inst|r_Clk_Count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Clk_Count\(7),
	datab => \uart_tx_inst|r_Clk_Count\(11),
	datac => \uart_tx_inst|r_Clk_Count\(8),
	datad => \uart_tx_inst|r_Clk_Count\(9),
	combout => \uart_tx_inst|LessThan1~3_combout\);

-- Location: LCCOMB_X24_Y7_N18
\uart_tx_inst|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|LessThan1~7_combout\ = (\uart_tx_inst|LessThan1~3_combout\ & ((\uart_tx_inst|LessThan1~4_combout\) # ((\uart_tx_inst|LessThan1~5_combout\ & !\uart_tx_inst|r_Clk_Count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|LessThan1~5_combout\,
	datab => \uart_tx_inst|r_Clk_Count\(5),
	datac => \uart_tx_inst|LessThan1~4_combout\,
	datad => \uart_tx_inst|LessThan1~3_combout\,
	combout => \uart_tx_inst|LessThan1~7_combout\);

-- Location: LCCOMB_X23_Y7_N30
\uart_tx_inst|r_Clk_Count[12]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_Clk_Count[12]~38_combout\ = \uart_tx_inst|r_Clk_Count\(12) $ (!\uart_tx_inst|r_Clk_Count[11]~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Clk_Count\(12),
	cin => \uart_tx_inst|r_Clk_Count[11]~37\,
	combout => \uart_tx_inst|r_Clk_Count[12]~38_combout\);

-- Location: FF_X23_Y7_N31
\uart_tx_inst|r_Clk_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_Clk_Count[12]~38_combout\,
	sclr => \uart_tx_inst|r_Clk_Count[12]~35_combout\,
	ena => \uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Clk_Count\(12));

-- Location: LCCOMB_X24_Y7_N8
\uart_tx_inst|r_Clk_Count[12]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_Clk_Count[12]~35_combout\ = ((!\uart_tx_inst|LessThan1~2_combout\ & (!\uart_tx_inst|LessThan1~7_combout\ & \uart_tx_inst|r_Clk_Count\(12)))) # (!\uart_tx_inst|r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|LessThan1~2_combout\,
	datab => \uart_tx_inst|r_SM_Main.s_Idle~q\,
	datac => \uart_tx_inst|LessThan1~7_combout\,
	datad => \uart_tx_inst|r_Clk_Count\(12),
	combout => \uart_tx_inst|r_Clk_Count[12]~35_combout\);

-- Location: FF_X23_Y7_N7
\uart_tx_inst|r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_Clk_Count[0]~13_combout\,
	sclr => \uart_tx_inst|r_Clk_Count[12]~35_combout\,
	ena => \uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Clk_Count\(0));

-- Location: LCCOMB_X23_Y7_N8
\uart_tx_inst|r_Clk_Count[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_Clk_Count[1]~15_combout\ = (\uart_tx_inst|r_Clk_Count\(1) & (!\uart_tx_inst|r_Clk_Count[0]~14\)) # (!\uart_tx_inst|r_Clk_Count\(1) & ((\uart_tx_inst|r_Clk_Count[0]~14\) # (GND)))
-- \uart_tx_inst|r_Clk_Count[1]~16\ = CARRY((!\uart_tx_inst|r_Clk_Count[0]~14\) # (!\uart_tx_inst|r_Clk_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Clk_Count\(1),
	datad => VCC,
	cin => \uart_tx_inst|r_Clk_Count[0]~14\,
	combout => \uart_tx_inst|r_Clk_Count[1]~15_combout\,
	cout => \uart_tx_inst|r_Clk_Count[1]~16\);

-- Location: FF_X23_Y7_N9
\uart_tx_inst|r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_Clk_Count[1]~15_combout\,
	sclr => \uart_tx_inst|r_Clk_Count[12]~35_combout\,
	ena => \uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Clk_Count\(1));

-- Location: LCCOMB_X23_Y7_N10
\uart_tx_inst|r_Clk_Count[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_Clk_Count[2]~17_combout\ = (\uart_tx_inst|r_Clk_Count\(2) & (\uart_tx_inst|r_Clk_Count[1]~16\ $ (GND))) # (!\uart_tx_inst|r_Clk_Count\(2) & (!\uart_tx_inst|r_Clk_Count[1]~16\ & VCC))
-- \uart_tx_inst|r_Clk_Count[2]~18\ = CARRY((\uart_tx_inst|r_Clk_Count\(2) & !\uart_tx_inst|r_Clk_Count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Clk_Count\(2),
	datad => VCC,
	cin => \uart_tx_inst|r_Clk_Count[1]~16\,
	combout => \uart_tx_inst|r_Clk_Count[2]~17_combout\,
	cout => \uart_tx_inst|r_Clk_Count[2]~18\);

-- Location: FF_X23_Y7_N11
\uart_tx_inst|r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_Clk_Count[2]~17_combout\,
	sclr => \uart_tx_inst|r_Clk_Count[12]~35_combout\,
	ena => \uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Clk_Count\(2));

-- Location: LCCOMB_X23_Y7_N12
\uart_tx_inst|r_Clk_Count[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_Clk_Count[3]~19_combout\ = (\uart_tx_inst|r_Clk_Count\(3) & (!\uart_tx_inst|r_Clk_Count[2]~18\)) # (!\uart_tx_inst|r_Clk_Count\(3) & ((\uart_tx_inst|r_Clk_Count[2]~18\) # (GND)))
-- \uart_tx_inst|r_Clk_Count[3]~20\ = CARRY((!\uart_tx_inst|r_Clk_Count[2]~18\) # (!\uart_tx_inst|r_Clk_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Clk_Count\(3),
	datad => VCC,
	cin => \uart_tx_inst|r_Clk_Count[2]~18\,
	combout => \uart_tx_inst|r_Clk_Count[3]~19_combout\,
	cout => \uart_tx_inst|r_Clk_Count[3]~20\);

-- Location: FF_X23_Y7_N13
\uart_tx_inst|r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_Clk_Count[3]~19_combout\,
	sclr => \uart_tx_inst|r_Clk_Count[12]~35_combout\,
	ena => \uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Clk_Count\(3));

-- Location: LCCOMB_X23_Y7_N14
\uart_tx_inst|r_Clk_Count[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_Clk_Count[4]~21_combout\ = (\uart_tx_inst|r_Clk_Count\(4) & (\uart_tx_inst|r_Clk_Count[3]~20\ $ (GND))) # (!\uart_tx_inst|r_Clk_Count\(4) & (!\uart_tx_inst|r_Clk_Count[3]~20\ & VCC))
-- \uart_tx_inst|r_Clk_Count[4]~22\ = CARRY((\uart_tx_inst|r_Clk_Count\(4) & !\uart_tx_inst|r_Clk_Count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|r_Clk_Count\(4),
	datad => VCC,
	cin => \uart_tx_inst|r_Clk_Count[3]~20\,
	combout => \uart_tx_inst|r_Clk_Count[4]~21_combout\,
	cout => \uart_tx_inst|r_Clk_Count[4]~22\);

-- Location: FF_X23_Y7_N15
\uart_tx_inst|r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_Clk_Count[4]~21_combout\,
	sclr => \uart_tx_inst|r_Clk_Count[12]~35_combout\,
	ena => \uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Clk_Count\(4));

-- Location: LCCOMB_X23_Y7_N16
\uart_tx_inst|r_Clk_Count[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_Clk_Count[5]~23_combout\ = (\uart_tx_inst|r_Clk_Count\(5) & (!\uart_tx_inst|r_Clk_Count[4]~22\)) # (!\uart_tx_inst|r_Clk_Count\(5) & ((\uart_tx_inst|r_Clk_Count[4]~22\) # (GND)))
-- \uart_tx_inst|r_Clk_Count[5]~24\ = CARRY((!\uart_tx_inst|r_Clk_Count[4]~22\) # (!\uart_tx_inst|r_Clk_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|r_Clk_Count\(5),
	datad => VCC,
	cin => \uart_tx_inst|r_Clk_Count[4]~22\,
	combout => \uart_tx_inst|r_Clk_Count[5]~23_combout\,
	cout => \uart_tx_inst|r_Clk_Count[5]~24\);

-- Location: FF_X23_Y7_N17
\uart_tx_inst|r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_Clk_Count[5]~23_combout\,
	sclr => \uart_tx_inst|r_Clk_Count[12]~35_combout\,
	ena => \uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Clk_Count\(5));

-- Location: LCCOMB_X23_Y7_N18
\uart_tx_inst|r_Clk_Count[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_Clk_Count[6]~25_combout\ = (\uart_tx_inst|r_Clk_Count\(6) & (\uart_tx_inst|r_Clk_Count[5]~24\ $ (GND))) # (!\uart_tx_inst|r_Clk_Count\(6) & (!\uart_tx_inst|r_Clk_Count[5]~24\ & VCC))
-- \uart_tx_inst|r_Clk_Count[6]~26\ = CARRY((\uart_tx_inst|r_Clk_Count\(6) & !\uart_tx_inst|r_Clk_Count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|r_Clk_Count\(6),
	datad => VCC,
	cin => \uart_tx_inst|r_Clk_Count[5]~24\,
	combout => \uart_tx_inst|r_Clk_Count[6]~25_combout\,
	cout => \uart_tx_inst|r_Clk_Count[6]~26\);

-- Location: FF_X23_Y7_N19
\uart_tx_inst|r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_Clk_Count[6]~25_combout\,
	sclr => \uart_tx_inst|r_Clk_Count[12]~35_combout\,
	ena => \uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Clk_Count\(6));

-- Location: LCCOMB_X23_Y7_N20
\uart_tx_inst|r_Clk_Count[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_Clk_Count[7]~27_combout\ = (\uart_tx_inst|r_Clk_Count\(7) & (!\uart_tx_inst|r_Clk_Count[6]~26\)) # (!\uart_tx_inst|r_Clk_Count\(7) & ((\uart_tx_inst|r_Clk_Count[6]~26\) # (GND)))
-- \uart_tx_inst|r_Clk_Count[7]~28\ = CARRY((!\uart_tx_inst|r_Clk_Count[6]~26\) # (!\uart_tx_inst|r_Clk_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|r_Clk_Count\(7),
	datad => VCC,
	cin => \uart_tx_inst|r_Clk_Count[6]~26\,
	combout => \uart_tx_inst|r_Clk_Count[7]~27_combout\,
	cout => \uart_tx_inst|r_Clk_Count[7]~28\);

-- Location: FF_X23_Y7_N21
\uart_tx_inst|r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_Clk_Count[7]~27_combout\,
	sclr => \uart_tx_inst|r_Clk_Count[12]~35_combout\,
	ena => \uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Clk_Count\(7));

-- Location: LCCOMB_X23_Y7_N22
\uart_tx_inst|r_Clk_Count[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_Clk_Count[8]~29_combout\ = (\uart_tx_inst|r_Clk_Count\(8) & (\uart_tx_inst|r_Clk_Count[7]~28\ $ (GND))) # (!\uart_tx_inst|r_Clk_Count\(8) & (!\uart_tx_inst|r_Clk_Count[7]~28\ & VCC))
-- \uart_tx_inst|r_Clk_Count[8]~30\ = CARRY((\uart_tx_inst|r_Clk_Count\(8) & !\uart_tx_inst|r_Clk_Count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Clk_Count\(8),
	datad => VCC,
	cin => \uart_tx_inst|r_Clk_Count[7]~28\,
	combout => \uart_tx_inst|r_Clk_Count[8]~29_combout\,
	cout => \uart_tx_inst|r_Clk_Count[8]~30\);

-- Location: FF_X23_Y7_N23
\uart_tx_inst|r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_Clk_Count[8]~29_combout\,
	sclr => \uart_tx_inst|r_Clk_Count[12]~35_combout\,
	ena => \uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Clk_Count\(8));

-- Location: LCCOMB_X23_Y7_N24
\uart_tx_inst|r_Clk_Count[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_Clk_Count[9]~31_combout\ = (\uart_tx_inst|r_Clk_Count\(9) & (!\uart_tx_inst|r_Clk_Count[8]~30\)) # (!\uart_tx_inst|r_Clk_Count\(9) & ((\uart_tx_inst|r_Clk_Count[8]~30\) # (GND)))
-- \uart_tx_inst|r_Clk_Count[9]~32\ = CARRY((!\uart_tx_inst|r_Clk_Count[8]~30\) # (!\uart_tx_inst|r_Clk_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|r_Clk_Count\(9),
	datad => VCC,
	cin => \uart_tx_inst|r_Clk_Count[8]~30\,
	combout => \uart_tx_inst|r_Clk_Count[9]~31_combout\,
	cout => \uart_tx_inst|r_Clk_Count[9]~32\);

-- Location: FF_X23_Y7_N25
\uart_tx_inst|r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_Clk_Count[9]~31_combout\,
	sclr => \uart_tx_inst|r_Clk_Count[12]~35_combout\,
	ena => \uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Clk_Count\(9));

-- Location: FF_X23_Y7_N27
\uart_tx_inst|r_Clk_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_Clk_Count[10]~33_combout\,
	sclr => \uart_tx_inst|r_Clk_Count[12]~35_combout\,
	ena => \uart_tx_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Clk_Count\(10));

-- Location: LCCOMB_X24_Y7_N26
\uart_tx_inst|Selector18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector18~3_combout\ = (!\uart_tx_inst|LessThan1~7_combout\ & (\uart_tx_inst|r_Clk_Count\(12) & ((\uart_tx_inst|r_Clk_Count\(10)) # (\uart_tx_inst|r_Clk_Count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Clk_Count\(10),
	datab => \uart_tx_inst|r_Clk_Count\(11),
	datac => \uart_tx_inst|LessThan1~7_combout\,
	datad => \uart_tx_inst|r_Clk_Count\(12),
	combout => \uart_tx_inst|Selector18~3_combout\);

-- Location: LCCOMB_X24_Y7_N22
\uart_tx_inst|Selector18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector18~2_combout\ = (\uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\ & (\uart_tx_inst|Selector18~3_combout\ $ ((\uart_tx_inst|r_Bit_Index\(0))))) # (!\uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\ & (((\uart_tx_inst|r_Bit_Index\(0) & 
-- \uart_tx_inst|r_SM_Main.s_Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|Selector18~3_combout\,
	datab => \uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datac => \uart_tx_inst|r_Bit_Index\(0),
	datad => \uart_tx_inst|r_SM_Main.s_Idle~q\,
	combout => \uart_tx_inst|Selector18~2_combout\);

-- Location: FF_X24_Y7_N23
\uart_tx_inst|r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Bit_Index\(0));

-- Location: LCCOMB_X24_Y7_N20
\uart_tx_inst|Selector17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector17~1_combout\ = (!\uart_tx_inst|LessThan1~7_combout\ & (\uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\ & (!\uart_tx_inst|LessThan1~2_combout\ & \uart_tx_inst|r_Clk_Count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|LessThan1~7_combout\,
	datab => \uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datac => \uart_tx_inst|LessThan1~2_combout\,
	datad => \uart_tx_inst|r_Clk_Count\(12),
	combout => \uart_tx_inst|Selector17~1_combout\);

-- Location: LCCOMB_X23_Y7_N0
\uart_tx_inst|LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|LessThan1~8_combout\ = ((!\uart_tx_inst|r_Clk_Count\(5) & ((\uart_tx_inst|LessThan1~5_combout\) # (!\uart_tx_inst|r_Clk_Count\(4))))) # (!\uart_tx_inst|r_Clk_Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Clk_Count\(6),
	datab => \uart_tx_inst|r_Clk_Count\(5),
	datac => \uart_tx_inst|r_Clk_Count\(4),
	datad => \uart_tx_inst|LessThan1~5_combout\,
	combout => \uart_tx_inst|LessThan1~8_combout\);

-- Location: LCCOMB_X24_Y7_N2
\uart_tx_inst|LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|LessThan1~6_combout\ = (\uart_tx_inst|LessThan1~2_combout\) # (((\uart_tx_inst|LessThan1~8_combout\ & \uart_tx_inst|LessThan1~3_combout\)) # (!\uart_tx_inst|r_Clk_Count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|LessThan1~2_combout\,
	datab => \uart_tx_inst|r_Clk_Count\(12),
	datac => \uart_tx_inst|LessThan1~8_combout\,
	datad => \uart_tx_inst|LessThan1~3_combout\,
	combout => \uart_tx_inst|LessThan1~6_combout\);

-- Location: LCCOMB_X24_Y7_N28
\uart_tx_inst|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector17~0_combout\ = (\uart_tx_inst|r_Bit_Index\(1) & ((\uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\ & ((\uart_tx_inst|LessThan1~6_combout\))) # (!\uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\ & (\uart_tx_inst|r_SM_Main.s_Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Bit_Index\(1),
	datab => \uart_tx_inst|r_SM_Main.s_Idle~q\,
	datac => \uart_tx_inst|LessThan1~6_combout\,
	datad => \uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\,
	combout => \uart_tx_inst|Selector17~0_combout\);

-- Location: LCCOMB_X24_Y7_N16
\uart_tx_inst|Selector17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector17~2_combout\ = (\uart_tx_inst|Selector17~0_combout\) # ((\uart_tx_inst|Selector17~1_combout\ & (\uart_tx_inst|r_Bit_Index\(0) $ (\uart_tx_inst|r_Bit_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Bit_Index\(0),
	datab => \uart_tx_inst|Selector17~1_combout\,
	datac => \uart_tx_inst|r_Bit_Index\(1),
	datad => \uart_tx_inst|Selector17~0_combout\,
	combout => \uart_tx_inst|Selector17~2_combout\);

-- Location: FF_X24_Y7_N17
\uart_tx_inst|r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Bit_Index\(1));

-- Location: LCCOMB_X24_Y7_N30
\uart_tx_inst|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector16~0_combout\ = (\uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\ & (((\uart_tx_inst|LessThan1~6_combout\)) # (!\uart_tx_inst|r_Bit_Index\(0)))) # (!\uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\ & (((\uart_tx_inst|r_SM_Main.s_Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Bit_Index\(0),
	datab => \uart_tx_inst|r_SM_Main.s_Idle~q\,
	datac => \uart_tx_inst|LessThan1~6_combout\,
	datad => \uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\,
	combout => \uart_tx_inst|Selector16~0_combout\);

-- Location: LCCOMB_X24_Y7_N0
\uart_tx_inst|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector16~1_combout\ = (\uart_tx_inst|r_Bit_Index\(0) & (\uart_tx_inst|r_Bit_Index\(1) $ (\uart_tx_inst|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|r_Bit_Index\(1),
	datac => \uart_tx_inst|r_Bit_Index\(0),
	datad => \uart_tx_inst|r_Bit_Index\(2),
	combout => \uart_tx_inst|Selector16~1_combout\);

-- Location: LCCOMB_X24_Y7_N24
\uart_tx_inst|Selector16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector16~2_combout\ = (\uart_tx_inst|Selector16~0_combout\ & ((\uart_tx_inst|r_Bit_Index\(2)) # ((\uart_tx_inst|Selector16~1_combout\ & \uart_tx_inst|Selector17~1_combout\)))) # (!\uart_tx_inst|Selector16~0_combout\ & 
-- (\uart_tx_inst|Selector16~1_combout\ & ((\uart_tx_inst|Selector17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|Selector16~0_combout\,
	datab => \uart_tx_inst|Selector16~1_combout\,
	datac => \uart_tx_inst|r_Bit_Index\(2),
	datad => \uart_tx_inst|Selector17~1_combout\,
	combout => \uart_tx_inst|Selector16~2_combout\);

-- Location: FF_X24_Y7_N25
\uart_tx_inst|r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_Bit_Index\(2));

-- Location: LCCOMB_X24_Y7_N4
\uart_tx_inst|Selector22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector22~1_combout\ = (!\uart_tx_inst|r_Bit_Index\(2)) # (!\uart_tx_inst|r_Bit_Index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|r_Bit_Index\(1),
	datad => \uart_tx_inst|r_Bit_Index\(2),
	combout => \uart_tx_inst|Selector22~1_combout\);

-- Location: LCCOMB_X24_Y7_N6
\uart_tx_inst|Selector22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector22~2_combout\ = (((\uart_tx_inst|Selector22~1_combout\) # (\uart_tx_inst|LessThan1~6_combout\)) # (!\uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\)) # (!\uart_tx_inst|r_Bit_Index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Bit_Index\(0),
	datab => \uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datac => \uart_tx_inst|Selector22~1_combout\,
	datad => \uart_tx_inst|LessThan1~6_combout\,
	combout => \uart_tx_inst|Selector22~2_combout\);

-- Location: LCCOMB_X25_Y7_N12
\uart_tx_inst|Selector22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector22~4_combout\ = (\uart_tx_inst|r_SM_Main.s_Cleanup~q\ & (((\uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\ & \uart_tx_inst|Selector22~3_combout\)))) # (!\uart_tx_inst|r_SM_Main.s_Cleanup~q\ & (((\uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\ & 
-- \uart_tx_inst|Selector22~3_combout\)) # (!\uart_tx_inst|Selector22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_SM_Main.s_Cleanup~q\,
	datab => \uart_tx_inst|Selector22~2_combout\,
	datac => \uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\,
	datad => \uart_tx_inst|Selector22~3_combout\,
	combout => \uart_tx_inst|Selector22~4_combout\);

-- Location: FF_X25_Y7_N13
\uart_tx_inst|r_SM_Main.s_TX_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector22~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\);

-- Location: LCCOMB_X25_Y7_N0
\uart_tx_inst|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector20~0_combout\ = (\uart_tx_inst|Selector22~0_combout\ & (((\uart_tx_inst|r_SM_Main.s_TX_Start_Bit~q\ & \uart_tx_inst|Selector22~3_combout\)) # (!\uart_tx_inst|r_SM_Main.s_Cleanup~q\))) # (!\uart_tx_inst|Selector22~0_combout\ & 
-- (((\uart_tx_inst|r_SM_Main.s_TX_Start_Bit~q\ & \uart_tx_inst|Selector22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|Selector22~0_combout\,
	datab => \uart_tx_inst|r_SM_Main.s_Cleanup~q\,
	datac => \uart_tx_inst|r_SM_Main.s_TX_Start_Bit~q\,
	datad => \uart_tx_inst|Selector22~3_combout\,
	combout => \uart_tx_inst|Selector20~0_combout\);

-- Location: FF_X25_Y7_N1
\uart_tx_inst|r_SM_Main.s_TX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_SM_Main.s_TX_Start_Bit~q\);

-- Location: LCCOMB_X25_Y7_N6
\uart_tx_inst|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector23~0_combout\ = (!\uart_tx_inst|LessThan1~6_combout\ & ((\uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\) # (\uart_tx_inst|r_SM_Main.s_TX_Start_Bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\,
	datab => \uart_tx_inst|r_SM_Main.s_TX_Start_Bit~q\,
	datad => \uart_tx_inst|LessThan1~6_combout\,
	combout => \uart_tx_inst|Selector23~0_combout\);

-- Location: LCCOMB_X24_Y7_N14
\uart_tx_inst|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector21~0_combout\ = (!\uart_tx_inst|r_SM_Main.s_Cleanup~q\ & (!\uart_tx_inst|LessThan1~2_combout\ & (\uart_tx_inst|r_Clk_Count\(12) & !\uart_tx_inst|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_SM_Main.s_Cleanup~q\,
	datab => \uart_tx_inst|LessThan1~2_combout\,
	datac => \uart_tx_inst|r_Clk_Count\(12),
	datad => \uart_tx_inst|LessThan1~7_combout\,
	combout => \uart_tx_inst|Selector21~0_combout\);

-- Location: LCCOMB_X25_Y7_N24
\uart_tx_inst|Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector21~1_combout\ = (\uart_tx_inst|Selector21~0_combout\ & ((\uart_tx_inst|Selector23~0_combout\) # ((\uart_tx_inst|Selector22~0_combout\) # (!\uart_tx_inst|Selector22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|Selector23~0_combout\,
	datab => \uart_tx_inst|Selector22~0_combout\,
	datac => \uart_tx_inst|Selector22~2_combout\,
	datad => \uart_tx_inst|Selector21~0_combout\,
	combout => \uart_tx_inst|Selector21~1_combout\);

-- Location: LCCOMB_X25_Y7_N4
\uart_tx_inst|Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector23~1_combout\ = (\uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\ & \uart_tx_inst|Selector21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\,
	datad => \uart_tx_inst|Selector21~1_combout\,
	combout => \uart_tx_inst|Selector23~1_combout\);

-- Location: FF_X25_Y7_N5
\uart_tx_inst|r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_SM_Main.s_Cleanup~q\);

-- Location: LCCOMB_X25_Y10_N2
\uart_rx_inst|r_Clk_Count[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[0]~13_combout\ = \uart_rx_inst|r_Clk_Count\(0) $ (VCC)
-- \uart_rx_inst|r_Clk_Count[0]~14\ = CARRY(\uart_rx_inst|r_Clk_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_Clk_Count\(0),
	datad => VCC,
	combout => \uart_rx_inst|r_Clk_Count[0]~13_combout\,
	cout => \uart_rx_inst|r_Clk_Count[0]~14\);

-- Location: LCCOMB_X24_Y10_N18
\uart_rx_inst|r_SM_Main~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_SM_Main~7_combout\ = (\uart_rx_inst|r_SM_Main.s_RX_Stop_Bit~q\ & \uart_rx_inst|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \uart_rx_inst|LessThan1~4_combout\,
	combout => \uart_rx_inst|r_SM_Main~7_combout\);

-- Location: FF_X24_Y10_N19
\uart_rx_inst|r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_SM_Main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_SM_Main.s_Cleanup~q\);

-- Location: IOIBUF_X31_Y1_N22
\i_RX_Serial~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RX_Serial,
	o => \i_RX_Serial~input_o\);

-- Location: LCCOMB_X27_Y6_N8
\uart_rx_inst|r_RX_Data_R~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_RX_Data_R~feeder_combout\ = \i_RX_Serial~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RX_Serial~input_o\,
	combout => \uart_rx_inst|r_RX_Data_R~feeder_combout\);

-- Location: FF_X27_Y6_N9
\uart_rx_inst|r_RX_Data_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_RX_Data_R~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_RX_Data_R~q\);

-- Location: FF_X24_Y10_N15
\uart_rx_inst|r_RX_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Data_R~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_RX_Data~q\);

-- Location: LCCOMB_X24_Y10_N22
\uart_rx_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Equal0~0_combout\ = (\uart_rx_inst|r_Clk_Count\(1) & (!\uart_rx_inst|r_Clk_Count\(7) & (!\uart_rx_inst|r_Clk_Count\(8) & \uart_rx_inst|r_Clk_Count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Clk_Count\(1),
	datab => \uart_rx_inst|r_Clk_Count\(7),
	datac => \uart_rx_inst|r_Clk_Count\(8),
	datad => \uart_rx_inst|r_Clk_Count\(0),
	combout => \uart_rx_inst|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y10_N24
\uart_rx_inst|r_Clk_Count[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[11]~35_combout\ = (\uart_rx_inst|r_Clk_Count\(11) & (!\uart_rx_inst|r_Clk_Count[10]~34\)) # (!\uart_rx_inst|r_Clk_Count\(11) & ((\uart_rx_inst|r_Clk_Count[10]~34\) # (GND)))
-- \uart_rx_inst|r_Clk_Count[11]~36\ = CARRY((!\uart_rx_inst|r_Clk_Count[10]~34\) # (!\uart_rx_inst|r_Clk_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_Clk_Count\(11),
	datad => VCC,
	cin => \uart_rx_inst|r_Clk_Count[10]~34\,
	combout => \uart_rx_inst|r_Clk_Count[11]~35_combout\,
	cout => \uart_rx_inst|r_Clk_Count[11]~36\);

-- Location: LCCOMB_X25_Y10_N26
\uart_rx_inst|r_Clk_Count[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[12]~37_combout\ = \uart_rx_inst|r_Clk_Count\(12) $ (!\uart_rx_inst|r_Clk_Count[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Clk_Count\(12),
	cin => \uart_rx_inst|r_Clk_Count[11]~36\,
	combout => \uart_rx_inst|r_Clk_Count[12]~37_combout\);

-- Location: LCCOMB_X24_Y10_N14
\uart_rx_inst|r_Clk_Count[12]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[12]~41_combout\ = (!\uart_rx_inst|r_SM_Main.s_Cleanup~q\ & (((!\uart_rx_inst|Equal0~3_combout\) # (!\uart_rx_inst|r_RX_Data~q\)) # (!\uart_rx_inst|r_SM_Main.s_RX_Start_Bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_SM_Main.s_Cleanup~q\,
	datab => \uart_rx_inst|r_SM_Main.s_RX_Start_Bit~q\,
	datac => \uart_rx_inst|r_RX_Data~q\,
	datad => \uart_rx_inst|Equal0~3_combout\,
	combout => \uart_rx_inst|r_Clk_Count[12]~41_combout\);

-- Location: FF_X25_Y10_N27
\uart_rx_inst|r_Clk_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_Clk_Count[12]~37_combout\,
	sclr => \uart_rx_inst|r_Clk_Count[12]~40_combout\,
	ena => \uart_rx_inst|r_Clk_Count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Clk_Count\(12));

-- Location: LCCOMB_X25_Y10_N0
\uart_rx_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Equal0~1_combout\ = (\uart_rx_inst|r_Clk_Count\(5) & (\uart_rx_inst|r_Clk_Count\(3) & (!\uart_rx_inst|r_Clk_Count\(2) & !\uart_rx_inst|r_Clk_Count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Clk_Count\(5),
	datab => \uart_rx_inst|r_Clk_Count\(3),
	datac => \uart_rx_inst|r_Clk_Count\(2),
	datad => \uart_rx_inst|r_Clk_Count\(4),
	combout => \uart_rx_inst|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y10_N28
\uart_rx_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Equal0~2_combout\ = (!\uart_rx_inst|r_Clk_Count\(10) & (\uart_rx_inst|r_Clk_Count\(9) & (!\uart_rx_inst|r_Clk_Count\(6) & \uart_rx_inst|r_Clk_Count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Clk_Count\(10),
	datab => \uart_rx_inst|r_Clk_Count\(9),
	datac => \uart_rx_inst|r_Clk_Count\(6),
	datad => \uart_rx_inst|r_Clk_Count\(11),
	combout => \uart_rx_inst|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y10_N12
\uart_rx_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Equal0~3_combout\ = (\uart_rx_inst|Equal0~0_combout\ & (!\uart_rx_inst|r_Clk_Count\(12) & (\uart_rx_inst|Equal0~1_combout\ & \uart_rx_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Equal0~0_combout\,
	datab => \uart_rx_inst|r_Clk_Count\(12),
	datac => \uart_rx_inst|Equal0~1_combout\,
	datad => \uart_rx_inst|Equal0~2_combout\,
	combout => \uart_rx_inst|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y10_N20
\uart_rx_inst|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector18~0_combout\ = (\uart_rx_inst|Equal0~3_combout\ & (!\uart_rx_inst|r_RX_Data~q\ & ((!\uart_rx_inst|r_SM_Main.s_Idle~q\)))) # (!\uart_rx_inst|Equal0~3_combout\ & ((\uart_rx_inst|r_SM_Main.s_RX_Start_Bit~q\) # 
-- ((!\uart_rx_inst|r_RX_Data~q\ & !\uart_rx_inst|r_SM_Main.s_Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Equal0~3_combout\,
	datab => \uart_rx_inst|r_RX_Data~q\,
	datac => \uart_rx_inst|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \uart_rx_inst|r_SM_Main.s_Idle~q\,
	combout => \uart_rx_inst|Selector18~0_combout\);

-- Location: FF_X24_Y10_N21
\uart_rx_inst|r_SM_Main.s_RX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_SM_Main.s_RX_Start_Bit~q\);

-- Location: LCCOMB_X24_Y10_N10
\uart_rx_inst|r_Clk_Count[12]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[12]~39_combout\ = (\uart_rx_inst|r_SM_Main.s_RX_Start_Bit~q\ & \uart_rx_inst|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \uart_rx_inst|Equal0~3_combout\,
	combout => \uart_rx_inst|r_Clk_Count[12]~39_combout\);

-- Location: LCCOMB_X24_Y10_N2
\uart_rx_inst|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector17~0_combout\ = (!\uart_rx_inst|r_SM_Main.s_Cleanup~q\ & (((\uart_rx_inst|r_SM_Main.s_Idle~q\ & !\uart_rx_inst|r_Clk_Count[12]~39_combout\)) # (!\uart_rx_inst|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_SM_Main.s_Cleanup~q\,
	datab => \uart_rx_inst|r_RX_Data~q\,
	datac => \uart_rx_inst|r_SM_Main.s_Idle~q\,
	datad => \uart_rx_inst|r_Clk_Count[12]~39_combout\,
	combout => \uart_rx_inst|Selector17~0_combout\);

-- Location: FF_X24_Y10_N3
\uart_rx_inst|r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_SM_Main.s_Idle~q\);

-- Location: LCCOMB_X25_Y10_N30
\uart_rx_inst|r_Clk_Count[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[12]~40_combout\ = ((\uart_rx_inst|r_Clk_Count[12]~39_combout\) # ((!\uart_rx_inst|Selector0~0_combout\ & \uart_rx_inst|LessThan1~4_combout\))) # (!\uart_rx_inst|r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_SM_Main.s_Idle~q\,
	datab => \uart_rx_inst|Selector0~0_combout\,
	datac => \uart_rx_inst|LessThan1~4_combout\,
	datad => \uart_rx_inst|r_Clk_Count[12]~39_combout\,
	combout => \uart_rx_inst|r_Clk_Count[12]~40_combout\);

-- Location: FF_X25_Y10_N3
\uart_rx_inst|r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_Clk_Count[0]~13_combout\,
	sclr => \uart_rx_inst|r_Clk_Count[12]~40_combout\,
	ena => \uart_rx_inst|r_Clk_Count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Clk_Count\(0));

-- Location: LCCOMB_X25_Y10_N4
\uart_rx_inst|r_Clk_Count[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[1]~15_combout\ = (\uart_rx_inst|r_Clk_Count\(1) & (!\uart_rx_inst|r_Clk_Count[0]~14\)) # (!\uart_rx_inst|r_Clk_Count\(1) & ((\uart_rx_inst|r_Clk_Count[0]~14\) # (GND)))
-- \uart_rx_inst|r_Clk_Count[1]~16\ = CARRY((!\uart_rx_inst|r_Clk_Count[0]~14\) # (!\uart_rx_inst|r_Clk_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_Clk_Count\(1),
	datad => VCC,
	cin => \uart_rx_inst|r_Clk_Count[0]~14\,
	combout => \uart_rx_inst|r_Clk_Count[1]~15_combout\,
	cout => \uart_rx_inst|r_Clk_Count[1]~16\);

-- Location: FF_X25_Y10_N5
\uart_rx_inst|r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_Clk_Count[1]~15_combout\,
	sclr => \uart_rx_inst|r_Clk_Count[12]~40_combout\,
	ena => \uart_rx_inst|r_Clk_Count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Clk_Count\(1));

-- Location: LCCOMB_X25_Y10_N6
\uart_rx_inst|r_Clk_Count[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[2]~17_combout\ = (\uart_rx_inst|r_Clk_Count\(2) & (\uart_rx_inst|r_Clk_Count[1]~16\ $ (GND))) # (!\uart_rx_inst|r_Clk_Count\(2) & (!\uart_rx_inst|r_Clk_Count[1]~16\ & VCC))
-- \uart_rx_inst|r_Clk_Count[2]~18\ = CARRY((\uart_rx_inst|r_Clk_Count\(2) & !\uart_rx_inst|r_Clk_Count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Clk_Count\(2),
	datad => VCC,
	cin => \uart_rx_inst|r_Clk_Count[1]~16\,
	combout => \uart_rx_inst|r_Clk_Count[2]~17_combout\,
	cout => \uart_rx_inst|r_Clk_Count[2]~18\);

-- Location: FF_X25_Y10_N7
\uart_rx_inst|r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_Clk_Count[2]~17_combout\,
	sclr => \uart_rx_inst|r_Clk_Count[12]~40_combout\,
	ena => \uart_rx_inst|r_Clk_Count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Clk_Count\(2));

-- Location: LCCOMB_X25_Y10_N8
\uart_rx_inst|r_Clk_Count[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[3]~19_combout\ = (\uart_rx_inst|r_Clk_Count\(3) & (!\uart_rx_inst|r_Clk_Count[2]~18\)) # (!\uart_rx_inst|r_Clk_Count\(3) & ((\uart_rx_inst|r_Clk_Count[2]~18\) # (GND)))
-- \uart_rx_inst|r_Clk_Count[3]~20\ = CARRY((!\uart_rx_inst|r_Clk_Count[2]~18\) # (!\uart_rx_inst|r_Clk_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_Clk_Count\(3),
	datad => VCC,
	cin => \uart_rx_inst|r_Clk_Count[2]~18\,
	combout => \uart_rx_inst|r_Clk_Count[3]~19_combout\,
	cout => \uart_rx_inst|r_Clk_Count[3]~20\);

-- Location: FF_X25_Y10_N9
\uart_rx_inst|r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_Clk_Count[3]~19_combout\,
	sclr => \uart_rx_inst|r_Clk_Count[12]~40_combout\,
	ena => \uart_rx_inst|r_Clk_Count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Clk_Count\(3));

-- Location: LCCOMB_X25_Y10_N10
\uart_rx_inst|r_Clk_Count[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[4]~21_combout\ = (\uart_rx_inst|r_Clk_Count\(4) & (\uart_rx_inst|r_Clk_Count[3]~20\ $ (GND))) # (!\uart_rx_inst|r_Clk_Count\(4) & (!\uart_rx_inst|r_Clk_Count[3]~20\ & VCC))
-- \uart_rx_inst|r_Clk_Count[4]~22\ = CARRY((\uart_rx_inst|r_Clk_Count\(4) & !\uart_rx_inst|r_Clk_Count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Clk_Count\(4),
	datad => VCC,
	cin => \uart_rx_inst|r_Clk_Count[3]~20\,
	combout => \uart_rx_inst|r_Clk_Count[4]~21_combout\,
	cout => \uart_rx_inst|r_Clk_Count[4]~22\);

-- Location: FF_X25_Y10_N11
\uart_rx_inst|r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_Clk_Count[4]~21_combout\,
	sclr => \uart_rx_inst|r_Clk_Count[12]~40_combout\,
	ena => \uart_rx_inst|r_Clk_Count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Clk_Count\(4));

-- Location: LCCOMB_X25_Y10_N12
\uart_rx_inst|r_Clk_Count[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[5]~23_combout\ = (\uart_rx_inst|r_Clk_Count\(5) & (!\uart_rx_inst|r_Clk_Count[4]~22\)) # (!\uart_rx_inst|r_Clk_Count\(5) & ((\uart_rx_inst|r_Clk_Count[4]~22\) # (GND)))
-- \uart_rx_inst|r_Clk_Count[5]~24\ = CARRY((!\uart_rx_inst|r_Clk_Count[4]~22\) # (!\uart_rx_inst|r_Clk_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Clk_Count\(5),
	datad => VCC,
	cin => \uart_rx_inst|r_Clk_Count[4]~22\,
	combout => \uart_rx_inst|r_Clk_Count[5]~23_combout\,
	cout => \uart_rx_inst|r_Clk_Count[5]~24\);

-- Location: FF_X25_Y10_N13
\uart_rx_inst|r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_Clk_Count[5]~23_combout\,
	sclr => \uart_rx_inst|r_Clk_Count[12]~40_combout\,
	ena => \uart_rx_inst|r_Clk_Count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Clk_Count\(5));

-- Location: LCCOMB_X25_Y10_N14
\uart_rx_inst|r_Clk_Count[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[6]~25_combout\ = (\uart_rx_inst|r_Clk_Count\(6) & (\uart_rx_inst|r_Clk_Count[5]~24\ $ (GND))) # (!\uart_rx_inst|r_Clk_Count\(6) & (!\uart_rx_inst|r_Clk_Count[5]~24\ & VCC))
-- \uart_rx_inst|r_Clk_Count[6]~26\ = CARRY((\uart_rx_inst|r_Clk_Count\(6) & !\uart_rx_inst|r_Clk_Count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_Clk_Count\(6),
	datad => VCC,
	cin => \uart_rx_inst|r_Clk_Count[5]~24\,
	combout => \uart_rx_inst|r_Clk_Count[6]~25_combout\,
	cout => \uart_rx_inst|r_Clk_Count[6]~26\);

-- Location: FF_X25_Y10_N15
\uart_rx_inst|r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_Clk_Count[6]~25_combout\,
	sclr => \uart_rx_inst|r_Clk_Count[12]~40_combout\,
	ena => \uart_rx_inst|r_Clk_Count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Clk_Count\(6));

-- Location: LCCOMB_X25_Y10_N16
\uart_rx_inst|r_Clk_Count[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[7]~27_combout\ = (\uart_rx_inst|r_Clk_Count\(7) & (!\uart_rx_inst|r_Clk_Count[6]~26\)) # (!\uart_rx_inst|r_Clk_Count\(7) & ((\uart_rx_inst|r_Clk_Count[6]~26\) # (GND)))
-- \uart_rx_inst|r_Clk_Count[7]~28\ = CARRY((!\uart_rx_inst|r_Clk_Count[6]~26\) # (!\uart_rx_inst|r_Clk_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_Clk_Count\(7),
	datad => VCC,
	cin => \uart_rx_inst|r_Clk_Count[6]~26\,
	combout => \uart_rx_inst|r_Clk_Count[7]~27_combout\,
	cout => \uart_rx_inst|r_Clk_Count[7]~28\);

-- Location: FF_X25_Y10_N17
\uart_rx_inst|r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_Clk_Count[7]~27_combout\,
	sclr => \uart_rx_inst|r_Clk_Count[12]~40_combout\,
	ena => \uart_rx_inst|r_Clk_Count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Clk_Count\(7));

-- Location: LCCOMB_X25_Y10_N18
\uart_rx_inst|r_Clk_Count[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[8]~29_combout\ = (\uart_rx_inst|r_Clk_Count\(8) & (\uart_rx_inst|r_Clk_Count[7]~28\ $ (GND))) # (!\uart_rx_inst|r_Clk_Count\(8) & (!\uart_rx_inst|r_Clk_Count[7]~28\ & VCC))
-- \uart_rx_inst|r_Clk_Count[8]~30\ = CARRY((\uart_rx_inst|r_Clk_Count\(8) & !\uart_rx_inst|r_Clk_Count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_Clk_Count\(8),
	datad => VCC,
	cin => \uart_rx_inst|r_Clk_Count[7]~28\,
	combout => \uart_rx_inst|r_Clk_Count[8]~29_combout\,
	cout => \uart_rx_inst|r_Clk_Count[8]~30\);

-- Location: FF_X25_Y10_N19
\uart_rx_inst|r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_Clk_Count[8]~29_combout\,
	sclr => \uart_rx_inst|r_Clk_Count[12]~40_combout\,
	ena => \uart_rx_inst|r_Clk_Count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Clk_Count\(8));

-- Location: LCCOMB_X25_Y10_N20
\uart_rx_inst|r_Clk_Count[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[9]~31_combout\ = (\uart_rx_inst|r_Clk_Count\(9) & (!\uart_rx_inst|r_Clk_Count[8]~30\)) # (!\uart_rx_inst|r_Clk_Count\(9) & ((\uart_rx_inst|r_Clk_Count[8]~30\) # (GND)))
-- \uart_rx_inst|r_Clk_Count[9]~32\ = CARRY((!\uart_rx_inst|r_Clk_Count[8]~30\) # (!\uart_rx_inst|r_Clk_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_Clk_Count\(9),
	datad => VCC,
	cin => \uart_rx_inst|r_Clk_Count[8]~30\,
	combout => \uart_rx_inst|r_Clk_Count[9]~31_combout\,
	cout => \uart_rx_inst|r_Clk_Count[9]~32\);

-- Location: FF_X25_Y10_N21
\uart_rx_inst|r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_Clk_Count[9]~31_combout\,
	sclr => \uart_rx_inst|r_Clk_Count[12]~40_combout\,
	ena => \uart_rx_inst|r_Clk_Count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Clk_Count\(9));

-- Location: LCCOMB_X25_Y10_N22
\uart_rx_inst|r_Clk_Count[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_Clk_Count[10]~33_combout\ = (\uart_rx_inst|r_Clk_Count\(10) & (\uart_rx_inst|r_Clk_Count[9]~32\ $ (GND))) # (!\uart_rx_inst|r_Clk_Count\(10) & (!\uart_rx_inst|r_Clk_Count[9]~32\ & VCC))
-- \uart_rx_inst|r_Clk_Count[10]~34\ = CARRY((\uart_rx_inst|r_Clk_Count\(10) & !\uart_rx_inst|r_Clk_Count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Clk_Count\(10),
	datad => VCC,
	cin => \uart_rx_inst|r_Clk_Count[9]~32\,
	combout => \uart_rx_inst|r_Clk_Count[10]~33_combout\,
	cout => \uart_rx_inst|r_Clk_Count[10]~34\);

-- Location: FF_X25_Y10_N23
\uart_rx_inst|r_Clk_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_Clk_Count[10]~33_combout\,
	sclr => \uart_rx_inst|r_Clk_Count[12]~40_combout\,
	ena => \uart_rx_inst|r_Clk_Count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Clk_Count\(10));

-- Location: FF_X25_Y10_N25
\uart_rx_inst|r_Clk_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_Clk_Count[11]~35_combout\,
	sclr => \uart_rx_inst|r_Clk_Count[12]~40_combout\,
	ena => \uart_rx_inst|r_Clk_Count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Clk_Count\(11));

-- Location: LCCOMB_X24_Y10_N26
\uart_rx_inst|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan1~3_combout\ = (!\uart_rx_inst|r_Clk_Count\(11) & !\uart_rx_inst|r_Clk_Count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_Clk_Count\(11),
	datad => \uart_rx_inst|r_Clk_Count\(10),
	combout => \uart_rx_inst|LessThan1~3_combout\);

-- Location: LCCOMB_X24_Y10_N4
\uart_rx_inst|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan1~2_combout\ = (!\uart_rx_inst|r_Clk_Count\(9) & (!\uart_rx_inst|r_Clk_Count\(11) & (!\uart_rx_inst|r_Clk_Count\(8) & !\uart_rx_inst|r_Clk_Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Clk_Count\(9),
	datab => \uart_rx_inst|r_Clk_Count\(11),
	datac => \uart_rx_inst|r_Clk_Count\(8),
	datad => \uart_rx_inst|r_Clk_Count\(7),
	combout => \uart_rx_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X24_Y10_N0
\uart_rx_inst|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan1~0_combout\ = (!\uart_rx_inst|r_Clk_Count\(3) & (((!\uart_rx_inst|r_Clk_Count\(2)) # (!\uart_rx_inst|r_Clk_Count\(1))) # (!\uart_rx_inst|r_Clk_Count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Clk_Count\(0),
	datab => \uart_rx_inst|r_Clk_Count\(3),
	datac => \uart_rx_inst|r_Clk_Count\(1),
	datad => \uart_rx_inst|r_Clk_Count\(2),
	combout => \uart_rx_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y10_N6
\uart_rx_inst|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan1~1_combout\ = ((!\uart_rx_inst|r_Clk_Count\(5) & ((\uart_rx_inst|LessThan1~0_combout\) # (!\uart_rx_inst|r_Clk_Count\(4))))) # (!\uart_rx_inst|r_Clk_Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Clk_Count\(4),
	datab => \uart_rx_inst|r_Clk_Count\(6),
	datac => \uart_rx_inst|r_Clk_Count\(5),
	datad => \uart_rx_inst|LessThan1~0_combout\,
	combout => \uart_rx_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y10_N16
\uart_rx_inst|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan1~4_combout\ = (!\uart_rx_inst|LessThan1~3_combout\ & (\uart_rx_inst|r_Clk_Count\(12) & ((!\uart_rx_inst|LessThan1~1_combout\) # (!\uart_rx_inst|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|LessThan1~3_combout\,
	datab => \uart_rx_inst|r_Clk_Count\(12),
	datac => \uart_rx_inst|LessThan1~2_combout\,
	datad => \uart_rx_inst|LessThan1~1_combout\,
	combout => \uart_rx_inst|LessThan1~4_combout\);

-- Location: LCCOMB_X23_Y10_N2
\uart_rx_inst|Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector15~2_combout\ = (\uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\ & (\uart_rx_inst|r_Bit_Index\(1) $ (((\uart_rx_inst|r_Bit_Index\(0) & \uart_rx_inst|LessThan1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Bit_Index\(0),
	datab => \uart_rx_inst|r_Bit_Index\(1),
	datac => \uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \uart_rx_inst|LessThan1~4_combout\,
	combout => \uart_rx_inst|Selector15~2_combout\);

-- Location: LCCOMB_X23_Y10_N8
\uart_rx_inst|Selector15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector15~3_combout\ = (\uart_rx_inst|Selector15~2_combout\) # ((!\uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\ & (\uart_rx_inst|r_SM_Main.s_Idle~q\ & \uart_rx_inst|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \uart_rx_inst|r_SM_Main.s_Idle~q\,
	datac => \uart_rx_inst|r_Bit_Index\(1),
	datad => \uart_rx_inst|Selector15~2_combout\,
	combout => \uart_rx_inst|Selector15~3_combout\);

-- Location: FF_X23_Y10_N9
\uart_rx_inst|r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Bit_Index\(1));

-- Location: LCCOMB_X23_Y10_N26
\uart_rx_inst|Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector14~1_combout\ = (\uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\ & (\uart_rx_inst|r_Bit_Index\(2) & ((!\uart_rx_inst|LessThan1~4_combout\) # (!\uart_rx_inst|r_Bit_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Bit_Index\(0),
	datab => \uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \uart_rx_inst|r_Bit_Index\(2),
	datad => \uart_rx_inst|LessThan1~4_combout\,
	combout => \uart_rx_inst|Selector14~1_combout\);

-- Location: LCCOMB_X23_Y10_N4
\uart_rx_inst|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector14~0_combout\ = (\uart_rx_inst|r_SM_Main.s_Idle~q\ & !\uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_inst|r_SM_Main.s_Idle~q\,
	datad => \uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \uart_rx_inst|Selector14~0_combout\);

-- Location: LCCOMB_X23_Y10_N24
\uart_rx_inst|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~0_combout\ = (\uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\ & \uart_rx_inst|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \uart_rx_inst|LessThan1~4_combout\,
	combout => \uart_rx_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X23_Y10_N12
\uart_rx_inst|Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector14~2_combout\ = (\uart_rx_inst|r_Bit_Index\(0) & (\uart_rx_inst|Decoder0~0_combout\ & (\uart_rx_inst|r_Bit_Index\(1) $ (\uart_rx_inst|r_Bit_Index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Bit_Index\(0),
	datab => \uart_rx_inst|r_Bit_Index\(1),
	datac => \uart_rx_inst|r_Bit_Index\(2),
	datad => \uart_rx_inst|Decoder0~0_combout\,
	combout => \uart_rx_inst|Selector14~2_combout\);

-- Location: LCCOMB_X23_Y10_N30
\uart_rx_inst|Selector14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector14~3_combout\ = (\uart_rx_inst|Selector14~1_combout\) # ((\uart_rx_inst|Selector14~2_combout\) # ((\uart_rx_inst|Selector14~0_combout\ & \uart_rx_inst|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Selector14~1_combout\,
	datab => \uart_rx_inst|Selector14~0_combout\,
	datac => \uart_rx_inst|r_Bit_Index\(2),
	datad => \uart_rx_inst|Selector14~2_combout\,
	combout => \uart_rx_inst|Selector14~3_combout\);

-- Location: FF_X23_Y10_N31
\uart_rx_inst|r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Bit_Index\(2));

-- Location: LCCOMB_X23_Y10_N22
\uart_rx_inst|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector19~0_combout\ = (\uart_rx_inst|r_Bit_Index\(0) & (\uart_rx_inst|r_Bit_Index\(1) & (\uart_rx_inst|r_Bit_Index\(2) & \uart_rx_inst|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Bit_Index\(0),
	datab => \uart_rx_inst|r_Bit_Index\(1),
	datac => \uart_rx_inst|r_Bit_Index\(2),
	datad => \uart_rx_inst|LessThan1~4_combout\,
	combout => \uart_rx_inst|Selector19~0_combout\);

-- Location: LCCOMB_X22_Y10_N14
\uart_rx_inst|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector19~1_combout\ = (\uart_rx_inst|r_RX_Data~q\ & (((\uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\ & !\uart_rx_inst|Selector19~0_combout\)))) # (!\uart_rx_inst|r_RX_Data~q\ & ((\uart_rx_inst|r_Clk_Count[12]~39_combout\) # 
-- ((\uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\ & !\uart_rx_inst|Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_RX_Data~q\,
	datab => \uart_rx_inst|r_Clk_Count[12]~39_combout\,
	datac => \uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \uart_rx_inst|Selector19~0_combout\,
	combout => \uart_rx_inst|Selector19~1_combout\);

-- Location: FF_X22_Y10_N15
\uart_rx_inst|r_SM_Main.s_RX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\);

-- Location: LCCOMB_X24_Y10_N28
\uart_rx_inst|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector16~0_combout\ = (\uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\ & ((\uart_rx_inst|r_Clk_Count\(12)))) # (!\uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\ & (\uart_rx_inst|r_SM_Main.s_Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_SM_Main.s_Idle~q\,
	datac => \uart_rx_inst|r_Clk_Count\(12),
	datad => \uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \uart_rx_inst|Selector16~0_combout\);

-- Location: LCCOMB_X24_Y10_N24
\uart_rx_inst|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|LessThan1~5_combout\ = (\uart_rx_inst|LessThan1~1_combout\ & ((\uart_rx_inst|LessThan1~2_combout\) # ((!\uart_rx_inst|r_Clk_Count\(10) & !\uart_rx_inst|r_Clk_Count\(11))))) # (!\uart_rx_inst|LessThan1~1_combout\ & 
-- (!\uart_rx_inst|r_Clk_Count\(10) & ((!\uart_rx_inst|r_Clk_Count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|LessThan1~1_combout\,
	datab => \uart_rx_inst|r_Clk_Count\(10),
	datac => \uart_rx_inst|LessThan1~2_combout\,
	datad => \uart_rx_inst|r_Clk_Count\(11),
	combout => \uart_rx_inst|LessThan1~5_combout\);

-- Location: LCCOMB_X23_Y10_N6
\uart_rx_inst|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector16~1_combout\ = (\uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\ & (\uart_rx_inst|r_Bit_Index\(0) $ (((\uart_rx_inst|Selector16~0_combout\ & !\uart_rx_inst|LessThan1~5_combout\))))) # (!\uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\ & 
-- (\uart_rx_inst|Selector16~0_combout\ & (\uart_rx_inst|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \uart_rx_inst|Selector16~0_combout\,
	datac => \uart_rx_inst|r_Bit_Index\(0),
	datad => \uart_rx_inst|LessThan1~5_combout\,
	combout => \uart_rx_inst|Selector16~1_combout\);

-- Location: FF_X23_Y10_N7
\uart_rx_inst|r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_Bit_Index\(0));

-- Location: LCCOMB_X23_Y10_N0
\uart_rx_inst|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~3_combout\ = (\uart_rx_inst|r_Bit_Index\(0) & (\uart_rx_inst|r_Bit_Index\(1) & (\uart_rx_inst|r_Bit_Index\(2) & \uart_rx_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Bit_Index\(0),
	datab => \uart_rx_inst|r_Bit_Index\(1),
	datac => \uart_rx_inst|r_Bit_Index\(2),
	datad => \uart_rx_inst|Decoder0~0_combout\,
	combout => \uart_rx_inst|Decoder0~3_combout\);

-- Location: LCCOMB_X23_Y10_N18
\uart_rx_inst|r_SM_Main.s_RX_Stop_Bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_SM_Main.s_RX_Stop_Bit~0_combout\ = (\uart_rx_inst|Decoder0~3_combout\) # ((!\uart_rx_inst|LessThan1~4_combout\ & \uart_rx_inst|r_SM_Main.s_RX_Stop_Bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|LessThan1~4_combout\,
	datac => \uart_rx_inst|r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \uart_rx_inst|Decoder0~3_combout\,
	combout => \uart_rx_inst|r_SM_Main.s_RX_Stop_Bit~0_combout\);

-- Location: FF_X23_Y10_N19
\uart_rx_inst|r_SM_Main.s_RX_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_SM_Main.s_RX_Stop_Bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_SM_Main.s_RX_Stop_Bit~q\);

-- Location: LCCOMB_X24_Y10_N30
\uart_rx_inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector0~0_combout\ = (!\uart_rx_inst|r_SM_Main.s_RX_Stop_Bit~q\ & !\uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \uart_rx_inst|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \uart_rx_inst|Selector0~0_combout\);

-- Location: LCCOMB_X24_Y10_N8
\uart_rx_inst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Selector0~1_combout\ = (\uart_rx_inst|r_SM_Main~7_combout\) # ((\uart_rx_inst|r_RX_DV~q\ & ((\uart_rx_inst|r_SM_Main.s_RX_Start_Bit~q\) # (!\uart_rx_inst|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|Selector0~0_combout\,
	datab => \uart_rx_inst|r_SM_Main.s_RX_Start_Bit~q\,
	datac => \uart_rx_inst|r_RX_DV~q\,
	datad => \uart_rx_inst|r_SM_Main~7_combout\,
	combout => \uart_rx_inst|Selector0~1_combout\);

-- Location: FF_X24_Y10_N9
\uart_rx_inst|r_RX_DV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_RX_DV~q\);

-- Location: LCCOMB_X25_Y7_N18
\uart_tx_inst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector2~0_combout\ = (\uart_tx_inst|r_TX_Done~q\ & ((\uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\) # ((\uart_tx_inst|r_SM_Main.s_TX_Start_Bit~q\) # (\uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datab => \uart_tx_inst|r_TX_Done~q\,
	datac => \uart_tx_inst|r_SM_Main.s_TX_Start_Bit~q\,
	datad => \uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\,
	combout => \uart_tx_inst|Selector2~0_combout\);

-- Location: LCCOMB_X25_Y7_N16
\uart_tx_inst|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector2~1_combout\ = (\uart_tx_inst|Selector2~0_combout\) # ((\uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\ & !\uart_tx_inst|LessThan1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\,
	datac => \uart_tx_inst|Selector2~0_combout\,
	datad => \uart_tx_inst|LessThan1~6_combout\,
	combout => \uart_tx_inst|Selector2~1_combout\);

-- Location: FF_X25_Y7_N17
\uart_tx_inst|r_TX_Done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_TX_Done~q\);

-- Location: LCCOMB_X25_Y9_N24
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.s_wait_B~q\ & \uart_rx_inst|r_RX_DV~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_wait_B~q\,
	datad => \uart_rx_inst|r_RX_DV~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X25_Y9_N2
\Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!\Selector2~1_combout\ & (\Selector2~0_combout\ & ((!\uart_tx_inst|r_TX_Done~q\) # (!\state.s_send~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \state.s_send~q\,
	datac => \uart_tx_inst|r_TX_Done~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~2_combout\);

-- Location: FF_X25_Y9_N3
\state.s_calc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_calc~q\);

-- Location: LCCOMB_X25_Y9_N28
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\state.s_calc~q\ & ((\uart_rx_inst|r_RX_DV~q\ & (!\state.s_wait_A~q\ & !\state.s_wait_B~q\)) # (!\uart_rx_inst|r_RX_DV~q\ & ((\state.s_wait_B~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_RX_DV~q\,
	datab => \state.s_wait_A~q\,
	datac => \state.s_wait_B~q\,
	datad => \state.s_calc~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X25_Y9_N4
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\ & ((!\uart_tx_inst|r_TX_Done~q\) # (!\state.s_send~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_send~q\,
	datac => \uart_tx_inst|r_TX_Done~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X25_Y9_N5
\state.s_wait_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_wait_B~q\);

-- Location: LCCOMB_X25_Y9_N10
\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\state.s_calc~q\ & (((\state.s_wait_A~q\ & !\state.s_wait_B~q\)) # (!\uart_rx_inst|r_RX_DV~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_RX_DV~q\,
	datab => \state.s_wait_A~q\,
	datac => \state.s_wait_B~q\,
	datad => \state.s_calc~q\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X25_Y9_N16
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\state.s_send~q\ & (!\uart_tx_inst|r_TX_Done~q\ & ((\Selector2~1_combout\) # (\state.s_calc~q\)))) # (!\state.s_send~q\ & (((\state.s_calc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \uart_tx_inst|r_TX_Done~q\,
	datac => \state.s_send~q\,
	datad => \state.s_calc~q\,
	combout => \Selector3~1_combout\);

-- Location: FF_X25_Y9_N17
\state.s_send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_send~q\);

-- Location: LCCOMB_X25_Y9_N18
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\uart_rx_inst|r_RX_DV~q\ & (((!\state.s_send~q\)) # (!\uart_tx_inst|r_TX_Done~q\))) # (!\uart_rx_inst|r_RX_DV~q\ & (\state.s_wait_A~q\ & ((!\state.s_send~q\) # (!\uart_tx_inst|r_TX_Done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_RX_DV~q\,
	datab => \uart_tx_inst|r_TX_Done~q\,
	datac => \state.s_wait_A~q\,
	datad => \state.s_send~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X25_Y9_N19
\state.s_wait_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_wait_A~q\);

-- Location: LCCOMB_X25_Y9_N12
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.s_calc~q\) # ((\tx_dv~q\ & ((\state.s_wait_B~q\) # (!\state.s_wait_A~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_wait_A~q\,
	datab => \state.s_wait_B~q\,
	datac => \tx_dv~q\,
	datad => \state.s_calc~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X25_Y9_N13
tx_dv : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_dv~q\);

-- Location: LCCOMB_X25_Y7_N20
\uart_tx_inst|Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector19~3_combout\ = (!\uart_tx_inst|r_SM_Main.s_Idle~q\ & (!\tx_dv~q\ & (\uart_tx_inst|Selector22~2_combout\ & !\uart_tx_inst|Selector23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_SM_Main.s_Idle~q\,
	datab => \tx_dv~q\,
	datac => \uart_tx_inst|Selector22~2_combout\,
	datad => \uart_tx_inst|Selector23~0_combout\,
	combout => \uart_tx_inst|Selector19~3_combout\);

-- Location: LCCOMB_X25_Y7_N28
\uart_tx_inst|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector19~2_combout\ = (!\uart_tx_inst|r_SM_Main.s_Cleanup~q\ & !\uart_tx_inst|Selector19~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_inst|r_SM_Main.s_Cleanup~q\,
	datad => \uart_tx_inst|Selector19~3_combout\,
	combout => \uart_tx_inst|Selector19~2_combout\);

-- Location: FF_X25_Y7_N29
\uart_tx_inst|r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_SM_Main.s_Idle~q\);

-- Location: LCCOMB_X25_Y7_N26
\uart_tx_inst|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector22~0_combout\ = (!\uart_tx_inst|r_SM_Main.s_Idle~q\ & \tx_dv~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_inst|r_SM_Main.s_Idle~q\,
	datad => \tx_dv~q\,
	combout => \uart_tx_inst|Selector22~0_combout\);

-- Location: LCCOMB_X25_Y7_N30
\uart_tx_inst|Selector22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector22~3_combout\ = (!\uart_tx_inst|Selector22~0_combout\ & (!\uart_tx_inst|r_SM_Main.s_Cleanup~q\ & (\uart_tx_inst|Selector22~2_combout\ & !\uart_tx_inst|Selector23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|Selector22~0_combout\,
	datab => \uart_tx_inst|r_SM_Main.s_Cleanup~q\,
	datac => \uart_tx_inst|Selector22~2_combout\,
	datad => \uart_tx_inst|Selector23~0_combout\,
	combout => \uart_tx_inst|Selector22~3_combout\);

-- Location: LCCOMB_X25_Y7_N14
\uart_tx_inst|Selector21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector21~2_combout\ = (\uart_tx_inst|Selector22~3_combout\ & ((\uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\) # ((\uart_tx_inst|r_SM_Main.s_TX_Start_Bit~q\ & \uart_tx_inst|Selector21~1_combout\)))) # (!\uart_tx_inst|Selector22~3_combout\ & 
-- (\uart_tx_inst|r_SM_Main.s_TX_Start_Bit~q\ & ((\uart_tx_inst|Selector21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|Selector22~3_combout\,
	datab => \uart_tx_inst|r_SM_Main.s_TX_Start_Bit~q\,
	datac => \uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datad => \uart_tx_inst|Selector21~1_combout\,
	combout => \uart_tx_inst|Selector21~2_combout\);

-- Location: FF_X25_Y7_N15
\uart_tx_inst|r_SM_Main.s_TX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\);

-- Location: LCCOMB_X22_Y10_N20
\uart_rx_inst|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~1_combout\ = (!\uart_rx_inst|r_Bit_Index\(0) & (\uart_rx_inst|r_Bit_Index\(1) & (\uart_rx_inst|r_Bit_Index\(2) & \uart_rx_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Bit_Index\(0),
	datab => \uart_rx_inst|r_Bit_Index\(1),
	datac => \uart_rx_inst|r_Bit_Index\(2),
	datad => \uart_rx_inst|Decoder0~0_combout\,
	combout => \uart_rx_inst|Decoder0~1_combout\);

-- Location: LCCOMB_X22_Y10_N28
\uart_rx_inst|r_RX_Byte[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_RX_Byte[6]~0_combout\ = (\uart_rx_inst|Decoder0~1_combout\ & (\uart_rx_inst|r_RX_Data~q\)) # (!\uart_rx_inst|Decoder0~1_combout\ & ((\uart_rx_inst|r_RX_Byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_RX_Data~q\,
	datac => \uart_rx_inst|r_RX_Byte\(6),
	datad => \uart_rx_inst|Decoder0~1_combout\,
	combout => \uart_rx_inst|r_RX_Byte[6]~0_combout\);

-- Location: FF_X22_Y10_N29
\uart_rx_inst|r_RX_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_RX_Byte[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_RX_Byte\(6));

-- Location: FF_X24_Y9_N25
\B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(6),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(6));

-- Location: LCCOMB_X22_Y10_N6
\uart_rx_inst|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~2_combout\ = (!\uart_rx_inst|r_Bit_Index\(0) & (!\uart_rx_inst|r_Bit_Index\(1) & (!\uart_rx_inst|r_Bit_Index\(2) & \uart_rx_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Bit_Index\(0),
	datab => \uart_rx_inst|r_Bit_Index\(1),
	datac => \uart_rx_inst|r_Bit_Index\(2),
	datad => \uart_rx_inst|Decoder0~0_combout\,
	combout => \uart_rx_inst|Decoder0~2_combout\);

-- Location: LCCOMB_X22_Y10_N22
\uart_rx_inst|r_RX_Byte[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_RX_Byte[0]~1_combout\ = (\uart_rx_inst|Decoder0~2_combout\ & (\uart_rx_inst|r_RX_Data~q\)) # (!\uart_rx_inst|Decoder0~2_combout\ & ((\uart_rx_inst|r_RX_Byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_RX_Data~q\,
	datac => \uart_rx_inst|r_RX_Byte\(0),
	datad => \uart_rx_inst|Decoder0~2_combout\,
	combout => \uart_rx_inst|r_RX_Byte[0]~1_combout\);

-- Location: FF_X22_Y10_N23
\uart_rx_inst|r_RX_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_RX_Byte[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_RX_Byte\(0));

-- Location: LCCOMB_X25_Y9_N22
\A[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A[0]~0_combout\ = (!\state.s_wait_A~q\ & \uart_rx_inst|r_RX_DV~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_wait_A~q\,
	datad => \uart_rx_inst|r_RX_DV~q\,
	combout => \A[0]~0_combout\);

-- Location: FF_X24_Y9_N27
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(0),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

-- Location: LCCOMB_X24_Y9_N24
\shift_add_sub_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~0_combout\ = B(6) $ (A(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => B(6),
	datad => A(0),
	combout => \shift_add_sub_inst|Add0~0_combout\);

-- Location: LCCOMB_X23_Y10_N10
\uart_rx_inst|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~4_combout\ = (\uart_rx_inst|r_Bit_Index\(0) & (!\uart_rx_inst|r_Bit_Index\(1) & (\uart_rx_inst|r_Bit_Index\(2) & \uart_rx_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Bit_Index\(0),
	datab => \uart_rx_inst|r_Bit_Index\(1),
	datac => \uart_rx_inst|r_Bit_Index\(2),
	datad => \uart_rx_inst|Decoder0~0_combout\,
	combout => \uart_rx_inst|Decoder0~4_combout\);

-- Location: LCCOMB_X23_Y10_N14
\uart_rx_inst|r_RX_Byte[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_RX_Byte[5]~3_combout\ = (\uart_rx_inst|Decoder0~4_combout\ & (\uart_rx_inst|r_RX_Data~q\)) # (!\uart_rx_inst|Decoder0~4_combout\ & ((\uart_rx_inst|r_RX_Byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_RX_Data~q\,
	datac => \uart_rx_inst|r_RX_Byte\(5),
	datad => \uart_rx_inst|Decoder0~4_combout\,
	combout => \uart_rx_inst|r_RX_Byte[5]~3_combout\);

-- Location: FF_X23_Y10_N15
\uart_rx_inst|r_RX_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_RX_Byte[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_RX_Byte\(5));

-- Location: FF_X24_Y9_N15
\A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(5),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(5));

-- Location: LCCOMB_X23_Y10_N16
\uart_rx_inst|r_RX_Byte[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_RX_Byte[7]~2_combout\ = (\uart_rx_inst|Decoder0~3_combout\ & (\uart_rx_inst|r_RX_Data~q\)) # (!\uart_rx_inst|Decoder0~3_combout\ & ((\uart_rx_inst|r_RX_Byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_RX_Data~q\,
	datac => \uart_rx_inst|r_RX_Byte\(7),
	datad => \uart_rx_inst|Decoder0~3_combout\,
	combout => \uart_rx_inst|r_RX_Byte[7]~2_combout\);

-- Location: FF_X23_Y10_N17
\uart_rx_inst|r_RX_Byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_RX_Byte[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_RX_Byte\(7));

-- Location: FF_X24_Y9_N17
\A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(7),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(7));

-- Location: LCCOMB_X24_Y9_N16
\shift_add_sub_inst|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~1_combout\ = (A(0) & ((A(7)))) # (!A(0) & (A(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A(5),
	datac => A(7),
	datad => A(0),
	combout => \shift_add_sub_inst|Add0~1_combout\);

-- Location: FF_X24_Y9_N5
\B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(5),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(5));

-- Location: LCCOMB_X24_Y9_N4
\shift_add_sub_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~2_combout\ = B(5) $ (A(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => B(5),
	datad => A(0),
	combout => \shift_add_sub_inst|Add0~2_combout\);

-- Location: FF_X24_Y9_N31
\A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(6),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(6));

-- Location: LCCOMB_X22_Y10_N16
\uart_rx_inst|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~5_combout\ = (!\uart_rx_inst|r_Bit_Index\(0) & (!\uart_rx_inst|r_Bit_Index\(1) & (\uart_rx_inst|r_Bit_Index\(2) & \uart_rx_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Bit_Index\(0),
	datab => \uart_rx_inst|r_Bit_Index\(1),
	datac => \uart_rx_inst|r_Bit_Index\(2),
	datad => \uart_rx_inst|Decoder0~0_combout\,
	combout => \uart_rx_inst|Decoder0~5_combout\);

-- Location: LCCOMB_X22_Y10_N24
\uart_rx_inst|r_RX_Byte[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_RX_Byte[4]~4_combout\ = (\uart_rx_inst|Decoder0~5_combout\ & (\uart_rx_inst|r_RX_Data~q\)) # (!\uart_rx_inst|Decoder0~5_combout\ & ((\uart_rx_inst|r_RX_Byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_RX_Data~q\,
	datac => \uart_rx_inst|r_RX_Byte\(4),
	datad => \uart_rx_inst|Decoder0~5_combout\,
	combout => \uart_rx_inst|r_RX_Byte[4]~4_combout\);

-- Location: FF_X22_Y10_N25
\uart_rx_inst|r_RX_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_RX_Byte[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_RX_Byte\(4));

-- Location: FF_X24_Y9_N13
\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(4),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

-- Location: LCCOMB_X24_Y9_N22
\shift_add_sub_inst|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~3_combout\ = (A(0) & (A(6))) # (!A(0) & ((A(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(6),
	datab => A(0),
	datad => A(4),
	combout => \shift_add_sub_inst|Add0~3_combout\);

-- Location: LCCOMB_X22_Y10_N18
\uart_rx_inst|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~6_combout\ = (\uart_rx_inst|r_Bit_Index\(0) & (\uart_rx_inst|r_Bit_Index\(1) & (!\uart_rx_inst|r_Bit_Index\(2) & \uart_rx_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Bit_Index\(0),
	datab => \uart_rx_inst|r_Bit_Index\(1),
	datac => \uart_rx_inst|r_Bit_Index\(2),
	datad => \uart_rx_inst|Decoder0~0_combout\,
	combout => \uart_rx_inst|Decoder0~6_combout\);

-- Location: LCCOMB_X22_Y10_N2
\uart_rx_inst|r_RX_Byte[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_RX_Byte[3]~5_combout\ = (\uart_rx_inst|Decoder0~6_combout\ & (\uart_rx_inst|r_RX_Data~q\)) # (!\uart_rx_inst|Decoder0~6_combout\ & ((\uart_rx_inst|r_RX_Byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_RX_Data~q\,
	datac => \uart_rx_inst|r_RX_Byte\(3),
	datad => \uart_rx_inst|Decoder0~6_combout\,
	combout => \uart_rx_inst|r_RX_Byte[3]~5_combout\);

-- Location: FF_X22_Y10_N3
\uart_rx_inst|r_RX_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_RX_Byte[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_RX_Byte\(3));

-- Location: FF_X24_Y9_N11
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(3),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: LCCOMB_X24_Y9_N20
\shift_add_sub_inst|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~5_combout\ = (A(0) & ((A(5)))) # (!A(0) & (A(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(3),
	datab => A(5),
	datad => A(0),
	combout => \shift_add_sub_inst|Add0~5_combout\);

-- Location: FF_X24_Y9_N29
\B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(4),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(4));

-- Location: LCCOMB_X24_Y9_N28
\shift_add_sub_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~4_combout\ = B(4) $ (A(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => B(4),
	datad => A(0),
	combout => \shift_add_sub_inst|Add0~4_combout\);

-- Location: FF_X24_Y9_N3
\B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(3),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(3));

-- Location: LCCOMB_X24_Y9_N2
\shift_add_sub_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~6_combout\ = B(3) $ (A(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => B(3),
	datad => A(0),
	combout => \shift_add_sub_inst|Add0~6_combout\);

-- Location: LCCOMB_X22_Y10_N12
\uart_rx_inst|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~7_combout\ = (!\uart_rx_inst|r_Bit_Index\(0) & (\uart_rx_inst|r_Bit_Index\(1) & (!\uart_rx_inst|r_Bit_Index\(2) & \uart_rx_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Bit_Index\(0),
	datab => \uart_rx_inst|r_Bit_Index\(1),
	datac => \uart_rx_inst|r_Bit_Index\(2),
	datad => \uart_rx_inst|Decoder0~0_combout\,
	combout => \uart_rx_inst|Decoder0~7_combout\);

-- Location: LCCOMB_X22_Y10_N0
\uart_rx_inst|r_RX_Byte[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_RX_Byte[2]~6_combout\ = (\uart_rx_inst|Decoder0~7_combout\ & (\uart_rx_inst|r_RX_Data~q\)) # (!\uart_rx_inst|Decoder0~7_combout\ & ((\uart_rx_inst|r_RX_Byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_RX_Data~q\,
	datac => \uart_rx_inst|r_RX_Byte\(2),
	datad => \uart_rx_inst|Decoder0~7_combout\,
	combout => \uart_rx_inst|r_RX_Byte[2]~6_combout\);

-- Location: FF_X22_Y10_N1
\uart_rx_inst|r_RX_Byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_RX_Byte[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_RX_Byte\(2));

-- Location: FF_X24_Y9_N21
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(2),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: LCCOMB_X24_Y9_N12
\shift_add_sub_inst|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~7_combout\ = (A(0) & (A(4))) # (!A(0) & ((A(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(0),
	datac => A(4),
	datad => A(2),
	combout => \shift_add_sub_inst|Add0~7_combout\);

-- Location: LCCOMB_X23_Y10_N28
\uart_rx_inst|Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|Decoder0~8_combout\ = (\uart_rx_inst|r_Bit_Index\(0) & (!\uart_rx_inst|r_Bit_Index\(1) & (!\uart_rx_inst|r_Bit_Index\(2) & \uart_rx_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_inst|r_Bit_Index\(0),
	datab => \uart_rx_inst|r_Bit_Index\(1),
	datac => \uart_rx_inst|r_Bit_Index\(2),
	datad => \uart_rx_inst|Decoder0~0_combout\,
	combout => \uart_rx_inst|Decoder0~8_combout\);

-- Location: LCCOMB_X23_Y10_N20
\uart_rx_inst|r_RX_Byte[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_rx_inst|r_RX_Byte[1]~7_combout\ = (\uart_rx_inst|Decoder0~8_combout\ & (\uart_rx_inst|r_RX_Data~q\)) # (!\uart_rx_inst|Decoder0~8_combout\ & ((\uart_rx_inst|r_RX_Byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_inst|r_RX_Data~q\,
	datac => \uart_rx_inst|r_RX_Byte\(1),
	datad => \uart_rx_inst|Decoder0~8_combout\,
	combout => \uart_rx_inst|r_RX_Byte[1]~7_combout\);

-- Location: FF_X23_Y10_N21
\uart_rx_inst|r_RX_Byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_rx_inst|r_RX_Byte[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_inst|r_RX_Byte\(1));

-- Location: FF_X24_Y9_N19
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(1),
	sload => VCC,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: LCCOMB_X24_Y9_N8
\shift_add_sub_inst|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~9_combout\ = (A(0) & ((A(3)))) # (!A(0) & (A(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(0),
	datab => A(1),
	datad => A(3),
	combout => \shift_add_sub_inst|Add0~9_combout\);

-- Location: FF_X24_Y9_N1
\B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(2),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(2));

-- Location: LCCOMB_X24_Y9_N0
\shift_add_sub_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~8_combout\ = B(2) $ (A(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => B(2),
	datad => A(0),
	combout => \shift_add_sub_inst|Add0~8_combout\);

-- Location: FF_X24_Y9_N7
\B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(1),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(1));

-- Location: LCCOMB_X24_Y9_N6
\shift_add_sub_inst|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~11_combout\ = B(1) $ (A(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => B(1),
	datad => A(0),
	combout => \shift_add_sub_inst|Add0~11_combout\);

-- Location: LCCOMB_X24_Y9_N10
\shift_add_sub_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~10_combout\ = (A(0) & A(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(0),
	datad => A(2),
	combout => \shift_add_sub_inst|Add0~10_combout\);

-- Location: FF_X24_Y9_N23
\B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(0),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(0));

-- Location: LCCOMB_X24_Y9_N30
\shift_add_sub_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~12_combout\ = (B(0)) # (!A(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datad => A(0),
	combout => \shift_add_sub_inst|Add0~12_combout\);

-- Location: LCCOMB_X24_Y9_N14
\shift_add_sub_inst|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~13_combout\ = (A(0) & ((A(1)))) # (!A(0) & (!B(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datab => A(0),
	datad => A(1),
	combout => \shift_add_sub_inst|Add0~13_combout\);

-- Location: LCCOMB_X23_Y9_N10
\tx_byte[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_byte[0]~8_combout\ = (\shift_add_sub_inst|Add0~12_combout\ & (\shift_add_sub_inst|Add0~13_combout\ $ (VCC))) # (!\shift_add_sub_inst|Add0~12_combout\ & (\shift_add_sub_inst|Add0~13_combout\ & VCC))
-- \tx_byte[0]~9\ = CARRY((\shift_add_sub_inst|Add0~12_combout\ & \shift_add_sub_inst|Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift_add_sub_inst|Add0~12_combout\,
	datab => \shift_add_sub_inst|Add0~13_combout\,
	datad => VCC,
	combout => \tx_byte[0]~8_combout\,
	cout => \tx_byte[0]~9\);

-- Location: LCCOMB_X23_Y9_N12
\tx_byte[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_byte[1]~10_combout\ = (\shift_add_sub_inst|Add0~11_combout\ & ((\shift_add_sub_inst|Add0~10_combout\ & (!\tx_byte[0]~9\)) # (!\shift_add_sub_inst|Add0~10_combout\ & ((\tx_byte[0]~9\) # (GND))))) # (!\shift_add_sub_inst|Add0~11_combout\ & 
-- ((\shift_add_sub_inst|Add0~10_combout\ & (\tx_byte[0]~9\ & VCC)) # (!\shift_add_sub_inst|Add0~10_combout\ & (!\tx_byte[0]~9\))))
-- \tx_byte[1]~11\ = CARRY((\shift_add_sub_inst|Add0~11_combout\ & ((!\tx_byte[0]~9\) # (!\shift_add_sub_inst|Add0~10_combout\))) # (!\shift_add_sub_inst|Add0~11_combout\ & (!\shift_add_sub_inst|Add0~10_combout\ & !\tx_byte[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \shift_add_sub_inst|Add0~11_combout\,
	datab => \shift_add_sub_inst|Add0~10_combout\,
	datad => VCC,
	cin => \tx_byte[0]~9\,
	combout => \tx_byte[1]~10_combout\,
	cout => \tx_byte[1]~11\);

-- Location: LCCOMB_X23_Y9_N14
\tx_byte[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_byte[2]~12_combout\ = ((\shift_add_sub_inst|Add0~9_combout\ $ (\shift_add_sub_inst|Add0~8_combout\ $ (\tx_byte[1]~11\)))) # (GND)
-- \tx_byte[2]~13\ = CARRY((\shift_add_sub_inst|Add0~9_combout\ & ((!\tx_byte[1]~11\) # (!\shift_add_sub_inst|Add0~8_combout\))) # (!\shift_add_sub_inst|Add0~9_combout\ & (!\shift_add_sub_inst|Add0~8_combout\ & !\tx_byte[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \shift_add_sub_inst|Add0~9_combout\,
	datab => \shift_add_sub_inst|Add0~8_combout\,
	datad => VCC,
	cin => \tx_byte[1]~11\,
	combout => \tx_byte[2]~12_combout\,
	cout => \tx_byte[2]~13\);

-- Location: LCCOMB_X23_Y9_N16
\tx_byte[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_byte[3]~14_combout\ = (\shift_add_sub_inst|Add0~6_combout\ & ((\shift_add_sub_inst|Add0~7_combout\ & (!\tx_byte[2]~13\)) # (!\shift_add_sub_inst|Add0~7_combout\ & ((\tx_byte[2]~13\) # (GND))))) # (!\shift_add_sub_inst|Add0~6_combout\ & 
-- ((\shift_add_sub_inst|Add0~7_combout\ & (\tx_byte[2]~13\ & VCC)) # (!\shift_add_sub_inst|Add0~7_combout\ & (!\tx_byte[2]~13\))))
-- \tx_byte[3]~15\ = CARRY((\shift_add_sub_inst|Add0~6_combout\ & ((!\tx_byte[2]~13\) # (!\shift_add_sub_inst|Add0~7_combout\))) # (!\shift_add_sub_inst|Add0~6_combout\ & (!\shift_add_sub_inst|Add0~7_combout\ & !\tx_byte[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \shift_add_sub_inst|Add0~6_combout\,
	datab => \shift_add_sub_inst|Add0~7_combout\,
	datad => VCC,
	cin => \tx_byte[2]~13\,
	combout => \tx_byte[3]~14_combout\,
	cout => \tx_byte[3]~15\);

-- Location: LCCOMB_X23_Y9_N18
\tx_byte[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_byte[4]~16_combout\ = ((\shift_add_sub_inst|Add0~5_combout\ $ (\shift_add_sub_inst|Add0~4_combout\ $ (\tx_byte[3]~15\)))) # (GND)
-- \tx_byte[4]~17\ = CARRY((\shift_add_sub_inst|Add0~5_combout\ & ((!\tx_byte[3]~15\) # (!\shift_add_sub_inst|Add0~4_combout\))) # (!\shift_add_sub_inst|Add0~5_combout\ & (!\shift_add_sub_inst|Add0~4_combout\ & !\tx_byte[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \shift_add_sub_inst|Add0~5_combout\,
	datab => \shift_add_sub_inst|Add0~4_combout\,
	datad => VCC,
	cin => \tx_byte[3]~15\,
	combout => \tx_byte[4]~16_combout\,
	cout => \tx_byte[4]~17\);

-- Location: LCCOMB_X23_Y9_N20
\tx_byte[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_byte[5]~18_combout\ = (\shift_add_sub_inst|Add0~2_combout\ & ((\shift_add_sub_inst|Add0~3_combout\ & (!\tx_byte[4]~17\)) # (!\shift_add_sub_inst|Add0~3_combout\ & ((\tx_byte[4]~17\) # (GND))))) # (!\shift_add_sub_inst|Add0~2_combout\ & 
-- ((\shift_add_sub_inst|Add0~3_combout\ & (\tx_byte[4]~17\ & VCC)) # (!\shift_add_sub_inst|Add0~3_combout\ & (!\tx_byte[4]~17\))))
-- \tx_byte[5]~19\ = CARRY((\shift_add_sub_inst|Add0~2_combout\ & ((!\tx_byte[4]~17\) # (!\shift_add_sub_inst|Add0~3_combout\))) # (!\shift_add_sub_inst|Add0~2_combout\ & (!\shift_add_sub_inst|Add0~3_combout\ & !\tx_byte[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \shift_add_sub_inst|Add0~2_combout\,
	datab => \shift_add_sub_inst|Add0~3_combout\,
	datad => VCC,
	cin => \tx_byte[4]~17\,
	combout => \tx_byte[5]~18_combout\,
	cout => \tx_byte[5]~19\);

-- Location: LCCOMB_X23_Y9_N22
\tx_byte[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_byte[6]~20_combout\ = ((\shift_add_sub_inst|Add0~0_combout\ $ (\shift_add_sub_inst|Add0~1_combout\ $ (\tx_byte[5]~19\)))) # (GND)
-- \tx_byte[6]~21\ = CARRY((\shift_add_sub_inst|Add0~0_combout\ & (\shift_add_sub_inst|Add0~1_combout\ & !\tx_byte[5]~19\)) # (!\shift_add_sub_inst|Add0~0_combout\ & ((\shift_add_sub_inst|Add0~1_combout\) # (!\tx_byte[5]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \shift_add_sub_inst|Add0~0_combout\,
	datab => \shift_add_sub_inst|Add0~1_combout\,
	datad => VCC,
	cin => \tx_byte[5]~19\,
	combout => \tx_byte[6]~20_combout\,
	cout => \tx_byte[6]~21\);

-- Location: FF_X23_Y9_N23
\tx_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \tx_byte[6]~20_combout\,
	ena => \state.s_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte(6));

-- Location: LCCOMB_X27_Y7_N28
\uart_tx_inst|r_TX_Data[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_TX_Data[6]~feeder_combout\ = tx_byte(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_byte(6),
	combout => \uart_tx_inst|r_TX_Data[6]~feeder_combout\);

-- Location: FF_X27_Y7_N29
\uart_tx_inst|r_TX_Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_TX_Data[6]~feeder_combout\,
	ena => \uart_tx_inst|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_TX_Data\(6));

-- Location: FF_X24_Y9_N9
\B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \uart_rx_inst|r_RX_Byte\(7),
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(7));

-- Location: LCCOMB_X24_Y9_N18
\shift_add_sub_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~14_combout\ = (B(7)) # (A(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => B(7),
	datad => A(0),
	combout => \shift_add_sub_inst|Add0~14_combout\);

-- Location: LCCOMB_X24_Y9_N26
\shift_add_sub_inst|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_add_sub_inst|Add0~15_combout\ = (A(0) & ((B(7)))) # (!A(0) & (A(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(6),
	datab => B(7),
	datac => A(0),
	combout => \shift_add_sub_inst|Add0~15_combout\);

-- Location: LCCOMB_X23_Y9_N24
\tx_byte[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_byte[7]~22_combout\ = \shift_add_sub_inst|Add0~14_combout\ $ (\tx_byte[6]~21\ $ (!\shift_add_sub_inst|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \shift_add_sub_inst|Add0~14_combout\,
	datad => \shift_add_sub_inst|Add0~15_combout\,
	cin => \tx_byte[6]~21\,
	combout => \tx_byte[7]~22_combout\);

-- Location: FF_X23_Y9_N25
\tx_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \tx_byte[7]~22_combout\,
	ena => \state.s_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte(7));

-- Location: FF_X27_Y7_N11
\uart_tx_inst|r_TX_Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => tx_byte(7),
	sload => VCC,
	ena => \uart_tx_inst|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_TX_Data\(7));

-- Location: FF_X23_Y9_N21
\tx_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \tx_byte[5]~18_combout\,
	ena => \state.s_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte(5));

-- Location: LCCOMB_X27_Y7_N18
\uart_tx_inst|r_TX_Data[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_TX_Data[5]~feeder_combout\ = tx_byte(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_byte(5),
	combout => \uart_tx_inst|r_TX_Data[5]~feeder_combout\);

-- Location: FF_X27_Y7_N19
\uart_tx_inst|r_TX_Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_TX_Data[5]~feeder_combout\,
	ena => \uart_tx_inst|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_TX_Data\(5));

-- Location: FF_X23_Y9_N19
\tx_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \tx_byte[4]~16_combout\,
	ena => \state.s_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte(4));

-- Location: FF_X27_Y7_N21
\uart_tx_inst|r_TX_Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => tx_byte(4),
	sload => VCC,
	ena => \uart_tx_inst|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_TX_Data\(4));

-- Location: LCCOMB_X27_Y7_N20
\uart_tx_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Mux0~0_combout\ = (\uart_tx_inst|r_Bit_Index\(1) & (((\uart_tx_inst|r_Bit_Index\(0))))) # (!\uart_tx_inst|r_Bit_Index\(1) & ((\uart_tx_inst|r_Bit_Index\(0) & (\uart_tx_inst|r_TX_Data\(5))) # (!\uart_tx_inst|r_Bit_Index\(0) & 
-- ((\uart_tx_inst|r_TX_Data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Bit_Index\(1),
	datab => \uart_tx_inst|r_TX_Data\(5),
	datac => \uart_tx_inst|r_TX_Data\(4),
	datad => \uart_tx_inst|r_Bit_Index\(0),
	combout => \uart_tx_inst|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y7_N10
\uart_tx_inst|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Mux0~1_combout\ = (\uart_tx_inst|r_Bit_Index\(1) & ((\uart_tx_inst|Mux0~0_combout\ & ((\uart_tx_inst|r_TX_Data\(7)))) # (!\uart_tx_inst|Mux0~0_combout\ & (\uart_tx_inst|r_TX_Data\(6))))) # (!\uart_tx_inst|r_Bit_Index\(1) & 
-- (((\uart_tx_inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Bit_Index\(1),
	datab => \uart_tx_inst|r_TX_Data\(6),
	datac => \uart_tx_inst|r_TX_Data\(7),
	datad => \uart_tx_inst|Mux0~0_combout\,
	combout => \uart_tx_inst|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y7_N22
\uart_tx_inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector0~0_combout\ = ((\uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\ & (\uart_tx_inst|Mux0~1_combout\ & \uart_tx_inst|r_Bit_Index\(2)))) # (!\uart_tx_inst|r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datab => \uart_tx_inst|r_SM_Main.s_Idle~q\,
	datac => \uart_tx_inst|Mux0~1_combout\,
	datad => \uart_tx_inst|r_Bit_Index\(2),
	combout => \uart_tx_inst|Selector0~0_combout\);

-- Location: FF_X23_Y9_N15
\tx_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \tx_byte[2]~12_combout\,
	ena => \state.s_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte(2));

-- Location: LCCOMB_X27_Y7_N4
\uart_tx_inst|r_TX_Data[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_TX_Data[2]~feeder_combout\ = tx_byte(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_byte(2),
	combout => \uart_tx_inst|r_TX_Data[2]~feeder_combout\);

-- Location: FF_X27_Y7_N5
\uart_tx_inst|r_TX_Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_TX_Data[2]~feeder_combout\,
	ena => \uart_tx_inst|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_TX_Data\(2));

-- Location: FF_X23_Y9_N17
\tx_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \tx_byte[3]~14_combout\,
	ena => \state.s_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte(3));

-- Location: FF_X27_Y7_N15
\uart_tx_inst|r_TX_Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => tx_byte(3),
	sload => VCC,
	ena => \uart_tx_inst|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_TX_Data\(3));

-- Location: FF_X23_Y9_N13
\tx_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \tx_byte[1]~10_combout\,
	ena => \state.s_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte(1));

-- Location: LCCOMB_X27_Y7_N2
\uart_tx_inst|r_TX_Data[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|r_TX_Data[1]~feeder_combout\ = tx_byte(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_byte(1),
	combout => \uart_tx_inst|r_TX_Data[1]~feeder_combout\);

-- Location: FF_X27_Y7_N3
\uart_tx_inst|r_TX_Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|r_TX_Data[1]~feeder_combout\,
	ena => \uart_tx_inst|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_TX_Data\(1));

-- Location: FF_X23_Y9_N11
\tx_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \tx_byte[0]~8_combout\,
	ena => \state.s_calc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte(0));

-- Location: FF_X27_Y7_N13
\uart_tx_inst|r_TX_Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => tx_byte(0),
	sload => VCC,
	ena => \uart_tx_inst|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|r_TX_Data\(0));

-- Location: LCCOMB_X27_Y7_N12
\uart_tx_inst|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Mux0~2_combout\ = (\uart_tx_inst|r_Bit_Index\(1) & (((\uart_tx_inst|r_Bit_Index\(0))))) # (!\uart_tx_inst|r_Bit_Index\(1) & ((\uart_tx_inst|r_Bit_Index\(0) & (\uart_tx_inst|r_TX_Data\(1))) # (!\uart_tx_inst|r_Bit_Index\(0) & 
-- ((\uart_tx_inst|r_TX_Data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Bit_Index\(1),
	datab => \uart_tx_inst|r_TX_Data\(1),
	datac => \uart_tx_inst|r_TX_Data\(0),
	datad => \uart_tx_inst|r_Bit_Index\(0),
	combout => \uart_tx_inst|Mux0~2_combout\);

-- Location: LCCOMB_X27_Y7_N14
\uart_tx_inst|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Mux0~3_combout\ = (\uart_tx_inst|r_Bit_Index\(1) & ((\uart_tx_inst|Mux0~2_combout\ & ((\uart_tx_inst|r_TX_Data\(3)))) # (!\uart_tx_inst|Mux0~2_combout\ & (\uart_tx_inst|r_TX_Data\(2))))) # (!\uart_tx_inst|r_Bit_Index\(1) & 
-- (((\uart_tx_inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_Bit_Index\(1),
	datab => \uart_tx_inst|r_TX_Data\(2),
	datac => \uart_tx_inst|r_TX_Data\(3),
	datad => \uart_tx_inst|Mux0~2_combout\,
	combout => \uart_tx_inst|Mux0~3_combout\);

-- Location: LCCOMB_X25_Y7_N10
\uart_tx_inst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector0~1_combout\ = (\uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\) # ((\uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\ & (\uart_tx_inst|Mux0~3_combout\ & !\uart_tx_inst|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|r_SM_Main.s_TX_Stop_Bit~q\,
	datab => \uart_tx_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datac => \uart_tx_inst|Mux0~3_combout\,
	datad => \uart_tx_inst|r_Bit_Index\(2),
	combout => \uart_tx_inst|Selector0~1_combout\);

-- Location: LCCOMB_X25_Y7_N8
\uart_tx_inst|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector0~2_combout\ = (\uart_tx_inst|Selector0~0_combout\) # ((\uart_tx_inst|Selector0~1_combout\) # ((\uart_tx_inst|r_SM_Main.s_Cleanup~q\ & \uart_tx_inst|o_TX_Serial~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|Selector0~0_combout\,
	datab => \uart_tx_inst|r_SM_Main.s_Cleanup~q\,
	datac => \uart_tx_inst|o_TX_Serial~q\,
	datad => \uart_tx_inst|Selector0~1_combout\,
	combout => \uart_tx_inst|Selector0~2_combout\);

-- Location: FF_X25_Y7_N9
\uart_tx_inst|o_TX_Serial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \uart_tx_inst|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|o_TX_Serial~q\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_o_TX_Serial <= \o_TX_Serial~output_o\;
END structure;


