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

-- DATE "10/24/2025 15:13:15"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
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

ENTITY 	UART IS
    PORT (
	i_Clk : IN std_logic;
	i_RX_Serial : IN std_logic;
	rst : IN std_logic;
	o_LED : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END UART;

-- Design Ports Information
-- o_LED[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[4]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Clk	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RX_Serial	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_o_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_clk_div|temp_2Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_clk_div|temp_5MHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \o_LED[0]~output_o\ : std_logic;
SIGNAL \o_LED[1]~output_o\ : std_logic;
SIGNAL \o_LED[2]~output_o\ : std_logic;
SIGNAL \o_LED[3]~output_o\ : std_logic;
SIGNAL \o_LED[4]~output_o\ : std_logic;
SIGNAL \o_LED[5]~output_o\ : std_logic;
SIGNAL \o_LED[6]~output_o\ : std_logic;
SIGNAL \o_LED[7]~output_o\ : std_logic;
SIGNAL \i_Clk~input_o\ : std_logic;
SIGNAL \i_Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \u_clk_div|Add1~0_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~7_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~1\ : std_logic;
SIGNAL \u_clk_div|Add1~2_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~6_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~3\ : std_logic;
SIGNAL \u_clk_div|Add1~4_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~5_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~5\ : std_logic;
SIGNAL \u_clk_div|Add1~6_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~4_combout\ : std_logic;
SIGNAL \u_clk_div|Equal1~1_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~7\ : std_logic;
SIGNAL \u_clk_div|Add1~8_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~2_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~9\ : std_logic;
SIGNAL \u_clk_div|Add1~10_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~3_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~11\ : std_logic;
SIGNAL \u_clk_div|Add1~12_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~1_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~13\ : std_logic;
SIGNAL \u_clk_div|Add1~14_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~0_combout\ : std_logic;
SIGNAL \u_clk_div|Equal1~0_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~15\ : std_logic;
SIGNAL \u_clk_div|Add1~16_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~8_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~17\ : std_logic;
SIGNAL \u_clk_div|Add1~18_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~9_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~19\ : std_logic;
SIGNAL \u_clk_div|Add1~20_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~10_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~21\ : std_logic;
SIGNAL \u_clk_div|Add1~22_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~11_combout\ : std_logic;
SIGNAL \u_clk_div|Equal1~2_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~23\ : std_logic;
SIGNAL \u_clk_div|Add1~24_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~13_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~25\ : std_logic;
SIGNAL \u_clk_div|Add1~26_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~14_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~27\ : std_logic;
SIGNAL \u_clk_div|Add1~28_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~12_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~29\ : std_logic;
SIGNAL \u_clk_div|Add1~30_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~15_combout\ : std_logic;
SIGNAL \u_clk_div|Equal1~3_combout\ : std_logic;
SIGNAL \u_clk_div|Equal1~4_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~31\ : std_logic;
SIGNAL \u_clk_div|Add1~32_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~16_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~33\ : std_logic;
SIGNAL \u_clk_div|Add1~34_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~17_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~35\ : std_logic;
SIGNAL \u_clk_div|Add1~36_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~18_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~37\ : std_logic;
SIGNAL \u_clk_div|Add1~38_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~19_combout\ : std_logic;
SIGNAL \u_clk_div|Equal1~5_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz[1]~20_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~39\ : std_logic;
SIGNAL \u_clk_div|Add1~40_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~22_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~41\ : std_logic;
SIGNAL \u_clk_div|Add1~42_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~23_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~43\ : std_logic;
SIGNAL \u_clk_div|Add1~44_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~21_combout\ : std_logic;
SIGNAL \u_clk_div|Add1~45\ : std_logic;
SIGNAL \u_clk_div|Add1~46_combout\ : std_logic;
SIGNAL \u_clk_div|count_2Hz~24_combout\ : std_logic;
SIGNAL \u_clk_div|Equal1~6_combout\ : std_logic;
SIGNAL \u_clk_div|Equal1~7_combout\ : std_logic;
SIGNAL \u_clk_div|temp_2Hz~0_combout\ : std_logic;
SIGNAL \u_clk_div|temp_2Hz~feeder_combout\ : std_logic;
SIGNAL \u_clk_div|temp_2Hz~q\ : std_logic;
SIGNAL \u_clk_div|temp_2Hz~clkctrl_outclk\ : std_logic;
SIGNAL \u_clk_div|count_5MHz~1_combout\ : std_logic;
SIGNAL \u_clk_div|count_5MHz~2_combout\ : std_logic;
SIGNAL \u_clk_div|Add0~0_combout\ : std_logic;
SIGNAL \u_clk_div|count_5MHz~0_combout\ : std_logic;
SIGNAL \u_clk_div|count_5MHz~3_combout\ : std_logic;
SIGNAL \u_clk_div|count_5MHz~4_combout\ : std_logic;
SIGNAL \u_clk_div|Equal0~0_combout\ : std_logic;
SIGNAL \u_clk_div|temp_5MHz~0_combout\ : std_logic;
SIGNAL \u_clk_div|temp_5MHz~feeder_combout\ : std_logic;
SIGNAL \u_clk_div|temp_5MHz~q\ : std_logic;
SIGNAL \u_clk_div|temp_5MHz~clkctrl_outclk\ : std_logic;
SIGNAL \i_RX_Serial~input_o\ : std_logic;
SIGNAL \r_RX_Data_R~feeder_combout\ : std_logic;
SIGNAL \r_RX_Data_R~q\ : std_logic;
SIGNAL \r_RX_Data~q\ : std_logic;
SIGNAL \r_Clk_Count[0]~10_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Start_Bit~q\ : std_logic;
SIGNAL \r_Clk_Count[7]~30_combout\ : std_logic;
SIGNAL \r_Clk_Count[7]~31_combout\ : std_logic;
SIGNAL \r_Clk_Count[0]~11\ : std_logic;
SIGNAL \r_Clk_Count[1]~12_combout\ : std_logic;
SIGNAL \r_Clk_Count[1]~13\ : std_logic;
SIGNAL \r_Clk_Count[2]~14_combout\ : std_logic;
SIGNAL \r_Clk_Count[2]~15\ : std_logic;
SIGNAL \r_Clk_Count[3]~16_combout\ : std_logic;
SIGNAL \r_Clk_Count[3]~17\ : std_logic;
SIGNAL \r_Clk_Count[4]~18_combout\ : std_logic;
SIGNAL \r_Clk_Count[4]~19\ : std_logic;
SIGNAL \r_Clk_Count[5]~20_combout\ : std_logic;
SIGNAL \r_Clk_Count[5]~21\ : std_logic;
SIGNAL \r_Clk_Count[6]~22_combout\ : std_logic;
SIGNAL \r_Clk_Count[6]~23\ : std_logic;
SIGNAL \r_Clk_Count[7]~24_combout\ : std_logic;
SIGNAL \r_Clk_Count[7]~25\ : std_logic;
SIGNAL \r_Clk_Count[8]~26_combout\ : std_logic;
SIGNAL \r_Clk_Count[8]~27\ : std_logic;
SIGNAL \r_Clk_Count[9]~28_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Data_Bits~q\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Stop_Bit~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Stop_Bit~1_combout\ : std_logic;
SIGNAL \r_SM_Main.s_RX_Stop_Bit~q\ : std_logic;
SIGNAL \r_SM_Main~7_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \r_Clk_Count[7]~32_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \r_RX_Byte[1]~0_combout\ : std_logic;
SIGNAL \mode[1]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \r_RX_Byte[5]~1_combout\ : std_logic;
SIGNAL \mode[5]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \r_RX_Byte[4]~2_combout\ : std_logic;
SIGNAL \mode[4]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \r_RX_Byte[0]~3_combout\ : std_logic;
SIGNAL \r_LED[1]~0_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \r_RX_Byte[7]~7_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \r_RX_Byte[3]~4_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \r_RX_Byte[2]~5_combout\ : std_logic;
SIGNAL \mode[2]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \r_RX_Byte[6]~6_combout\ : std_logic;
SIGNAL \mode[6]~feeder_combout\ : std_logic;
SIGNAL \r_LED[1]~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL r_Clk_Count : std_logic_vector(9 DOWNTO 0);
SIGNAL r_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL mode : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_clk_div|count_2Hz\ : std_logic_vector(23 DOWNTO 0);
SIGNAL r_RX_Byte : std_logic_vector(7 DOWNTO 0);
SIGNAL r_Bit_Index : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_clk_div|count_5MHz\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_r_LED : std_logic_vector(0 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_Clk <= i_Clk;
ww_i_RX_Serial <= i_RX_Serial;
ww_rst <= rst;
o_LED <= ww_o_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\i_Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_Clk~input_o\);

\u_clk_div|temp_2Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_clk_div|temp_2Hz~q\);

\u_clk_div|temp_5MHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_clk_div|temp_5MHz~q\);
ALT_INV_r_LED(0) <= NOT r_LED(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y30_N12
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

-- Location: IOOBUF_X16_Y0_N16
\o_LED[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_r_LED(0),
	devoe => ww_devoe,
	o => \o_LED[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\o_LED[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_LED(1),
	devoe => ww_devoe,
	o => \o_LED[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\o_LED[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_LED(2),
	devoe => ww_devoe,
	o => \o_LED[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\o_LED[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_LED(3),
	devoe => ww_devoe,
	o => \o_LED[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\o_LED[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_LED(4),
	devoe => ww_devoe,
	o => \o_LED[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\o_LED[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_LED(5),
	devoe => ww_devoe,
	o => \o_LED[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\o_LED[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_LED(6),
	devoe => ww_devoe,
	o => \o_LED[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\o_LED[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_LED(7),
	devoe => ww_devoe,
	o => \o_LED[7]~output_o\);

-- Location: IOIBUF_X0_Y13_N15
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

-- Location: IOIBUF_X14_Y0_N1
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X16_Y4_N8
\u_clk_div|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~0_combout\ = \u_clk_div|count_2Hz\(0) $ (GND)
-- \u_clk_div|Add1~1\ = CARRY(!\u_clk_div|count_2Hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|count_2Hz\(0),
	datad => VCC,
	combout => \u_clk_div|Add1~0_combout\,
	cout => \u_clk_div|Add1~1\);

-- Location: LCCOMB_X17_Y4_N2
\u_clk_div|count_2Hz~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~7_combout\ = (!\u_clk_div|Add1~0_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|Add1~0_combout\,
	datac => \rst~input_o\,
	combout => \u_clk_div|count_2Hz~7_combout\);

-- Location: FF_X16_Y4_N17
\u_clk_div|count_2Hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \u_clk_div|count_2Hz~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(0));

-- Location: LCCOMB_X16_Y4_N10
\u_clk_div|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~2_combout\ = (\u_clk_div|count_2Hz\(1) & (!\u_clk_div|Add1~1\)) # (!\u_clk_div|count_2Hz\(1) & ((\u_clk_div|Add1~1\) # (GND)))
-- \u_clk_div|Add1~3\ = CARRY((!\u_clk_div|Add1~1\) # (!\u_clk_div|count_2Hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(1),
	datad => VCC,
	cin => \u_clk_div|Add1~1\,
	combout => \u_clk_div|Add1~2_combout\,
	cout => \u_clk_div|Add1~3\);

-- Location: LCCOMB_X17_Y4_N8
\u_clk_div|count_2Hz~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~6_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~2_combout\ & ((\u_clk_div|Equal1~4_combout\) # (\u_clk_div|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \u_clk_div|Equal1~4_combout\,
	datac => \u_clk_div|Equal1~7_combout\,
	datad => \u_clk_div|Add1~2_combout\,
	combout => \u_clk_div|count_2Hz~6_combout\);

-- Location: FF_X16_Y4_N27
\u_clk_div|count_2Hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \u_clk_div|count_2Hz~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(1));

-- Location: LCCOMB_X16_Y4_N12
\u_clk_div|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~4_combout\ = (\u_clk_div|count_2Hz\(2) & (\u_clk_div|Add1~3\ $ (GND))) # (!\u_clk_div|count_2Hz\(2) & (!\u_clk_div|Add1~3\ & VCC))
-- \u_clk_div|Add1~5\ = CARRY((\u_clk_div|count_2Hz\(2) & !\u_clk_div|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|count_2Hz\(2),
	datad => VCC,
	cin => \u_clk_div|Add1~3\,
	combout => \u_clk_div|Add1~4_combout\,
	cout => \u_clk_div|Add1~5\);

-- Location: LCCOMB_X17_Y4_N14
\u_clk_div|count_2Hz~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~5_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~4_combout\ & ((\u_clk_div|Equal1~4_combout\) # (\u_clk_div|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \u_clk_div|Equal1~4_combout\,
	datac => \u_clk_div|Add1~4_combout\,
	datad => \u_clk_div|Equal1~7_combout\,
	combout => \u_clk_div|count_2Hz~5_combout\);

-- Location: FF_X16_Y4_N21
\u_clk_div|count_2Hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \u_clk_div|count_2Hz~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(2));

-- Location: LCCOMB_X16_Y4_N14
\u_clk_div|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~6_combout\ = (\u_clk_div|count_2Hz\(3) & (!\u_clk_div|Add1~5\)) # (!\u_clk_div|count_2Hz\(3) & ((\u_clk_div|Add1~5\) # (GND)))
-- \u_clk_div|Add1~7\ = CARRY((!\u_clk_div|Add1~5\) # (!\u_clk_div|count_2Hz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(3),
	datad => VCC,
	cin => \u_clk_div|Add1~5\,
	combout => \u_clk_div|Add1~6_combout\,
	cout => \u_clk_div|Add1~7\);

-- Location: LCCOMB_X17_Y4_N0
\u_clk_div|count_2Hz~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~4_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~6_combout\ & ((\u_clk_div|Equal1~4_combout\) # (\u_clk_div|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \u_clk_div|Equal1~4_combout\,
	datac => \u_clk_div|Equal1~7_combout\,
	datad => \u_clk_div|Add1~6_combout\,
	combout => \u_clk_div|count_2Hz~4_combout\);

-- Location: FF_X16_Y4_N23
\u_clk_div|count_2Hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \u_clk_div|count_2Hz~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(3));

-- Location: LCCOMB_X17_Y4_N22
\u_clk_div|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Equal1~1_combout\ = (\u_clk_div|count_2Hz\(1)) # ((\u_clk_div|count_2Hz\(3)) # ((\u_clk_div|count_2Hz\(2)) # (!\u_clk_div|count_2Hz\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(1),
	datab => \u_clk_div|count_2Hz\(3),
	datac => \u_clk_div|count_2Hz\(0),
	datad => \u_clk_div|count_2Hz\(2),
	combout => \u_clk_div|Equal1~1_combout\);

-- Location: LCCOMB_X16_Y4_N16
\u_clk_div|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~8_combout\ = (\u_clk_div|count_2Hz\(4) & (\u_clk_div|Add1~7\ $ (GND))) # (!\u_clk_div|count_2Hz\(4) & (!\u_clk_div|Add1~7\ & VCC))
-- \u_clk_div|Add1~9\ = CARRY((\u_clk_div|count_2Hz\(4) & !\u_clk_div|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(4),
	datad => VCC,
	cin => \u_clk_div|Add1~7\,
	combout => \u_clk_div|Add1~8_combout\,
	cout => \u_clk_div|Add1~9\);

-- Location: LCCOMB_X17_Y4_N10
\u_clk_div|count_2Hz~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~2_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~8_combout\ & ((\u_clk_div|Equal1~4_combout\) # (\u_clk_div|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \u_clk_div|Equal1~4_combout\,
	datac => \u_clk_div|Add1~8_combout\,
	datad => \u_clk_div|Equal1~7_combout\,
	combout => \u_clk_div|count_2Hz~2_combout\);

-- Location: FF_X16_Y4_N11
\u_clk_div|count_2Hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \u_clk_div|count_2Hz~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(4));

-- Location: LCCOMB_X16_Y4_N18
\u_clk_div|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~10_combout\ = (\u_clk_div|count_2Hz\(5) & (!\u_clk_div|Add1~9\)) # (!\u_clk_div|count_2Hz\(5) & ((\u_clk_div|Add1~9\) # (GND)))
-- \u_clk_div|Add1~11\ = CARRY((!\u_clk_div|Add1~9\) # (!\u_clk_div|count_2Hz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|count_2Hz\(5),
	datad => VCC,
	cin => \u_clk_div|Add1~9\,
	combout => \u_clk_div|Add1~10_combout\,
	cout => \u_clk_div|Add1~11\);

-- Location: LCCOMB_X16_Y4_N0
\u_clk_div|count_2Hz~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~3_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~10_combout\ & ((\u_clk_div|Equal1~7_combout\) # (\u_clk_div|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|Equal1~7_combout\,
	datab => \rst~input_o\,
	datac => \u_clk_div|Equal1~4_combout\,
	datad => \u_clk_div|Add1~10_combout\,
	combout => \u_clk_div|count_2Hz~3_combout\);

-- Location: FF_X16_Y4_N1
\u_clk_div|count_2Hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(5));

-- Location: LCCOMB_X16_Y4_N20
\u_clk_div|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~12_combout\ = (\u_clk_div|count_2Hz\(6) & (\u_clk_div|Add1~11\ $ (GND))) # (!\u_clk_div|count_2Hz\(6) & (!\u_clk_div|Add1~11\ & VCC))
-- \u_clk_div|Add1~13\ = CARRY((\u_clk_div|count_2Hz\(6) & !\u_clk_div|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(6),
	datad => VCC,
	cin => \u_clk_div|Add1~11\,
	combout => \u_clk_div|Add1~12_combout\,
	cout => \u_clk_div|Add1~13\);

-- Location: LCCOMB_X17_Y4_N6
\u_clk_div|count_2Hz~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~1_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~12_combout\ & ((\u_clk_div|Equal1~4_combout\) # (\u_clk_div|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \u_clk_div|Equal1~4_combout\,
	datac => \u_clk_div|Equal1~7_combout\,
	datad => \u_clk_div|Add1~12_combout\,
	combout => \u_clk_div|count_2Hz~1_combout\);

-- Location: FF_X17_Y4_N7
\u_clk_div|count_2Hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(6));

-- Location: LCCOMB_X16_Y4_N22
\u_clk_div|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~14_combout\ = (\u_clk_div|count_2Hz\(7) & (!\u_clk_div|Add1~13\)) # (!\u_clk_div|count_2Hz\(7) & ((\u_clk_div|Add1~13\) # (GND)))
-- \u_clk_div|Add1~15\ = CARRY((!\u_clk_div|Add1~13\) # (!\u_clk_div|count_2Hz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|count_2Hz\(7),
	datad => VCC,
	cin => \u_clk_div|Add1~13\,
	combout => \u_clk_div|Add1~14_combout\,
	cout => \u_clk_div|Add1~15\);

-- Location: LCCOMB_X17_Y4_N12
\u_clk_div|count_2Hz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~0_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~14_combout\ & ((\u_clk_div|Equal1~4_combout\) # (\u_clk_div|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \u_clk_div|Equal1~4_combout\,
	datac => \u_clk_div|Equal1~7_combout\,
	datad => \u_clk_div|Add1~14_combout\,
	combout => \u_clk_div|count_2Hz~0_combout\);

-- Location: FF_X17_Y4_N13
\u_clk_div|count_2Hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(7));

-- Location: LCCOMB_X17_Y4_N28
\u_clk_div|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Equal1~0_combout\ = (\u_clk_div|count_2Hz\(6)) # ((\u_clk_div|count_2Hz\(7)) # ((\u_clk_div|count_2Hz\(4)) # (!\u_clk_div|count_2Hz\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(6),
	datab => \u_clk_div|count_2Hz\(7),
	datac => \u_clk_div|count_2Hz\(5),
	datad => \u_clk_div|count_2Hz\(4),
	combout => \u_clk_div|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y4_N24
\u_clk_div|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~16_combout\ = (\u_clk_div|count_2Hz\(8) & (\u_clk_div|Add1~15\ $ (GND))) # (!\u_clk_div|count_2Hz\(8) & (!\u_clk_div|Add1~15\ & VCC))
-- \u_clk_div|Add1~17\ = CARRY((\u_clk_div|count_2Hz\(8) & !\u_clk_div|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(8),
	datad => VCC,
	cin => \u_clk_div|Add1~15\,
	combout => \u_clk_div|Add1~16_combout\,
	cout => \u_clk_div|Add1~17\);

-- Location: LCCOMB_X17_Y4_N4
\u_clk_div|count_2Hz~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~8_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~16_combout\ & ((\u_clk_div|Equal1~4_combout\) # (\u_clk_div|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \u_clk_div|Equal1~4_combout\,
	datac => \u_clk_div|Equal1~7_combout\,
	datad => \u_clk_div|Add1~16_combout\,
	combout => \u_clk_div|count_2Hz~8_combout\);

-- Location: FF_X17_Y4_N5
\u_clk_div|count_2Hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(8));

-- Location: LCCOMB_X16_Y4_N26
\u_clk_div|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~18_combout\ = (\u_clk_div|count_2Hz\(9) & (!\u_clk_div|Add1~17\)) # (!\u_clk_div|count_2Hz\(9) & ((\u_clk_div|Add1~17\) # (GND)))
-- \u_clk_div|Add1~19\ = CARRY((!\u_clk_div|Add1~17\) # (!\u_clk_div|count_2Hz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|count_2Hz\(9),
	datad => VCC,
	cin => \u_clk_div|Add1~17\,
	combout => \u_clk_div|Add1~18_combout\,
	cout => \u_clk_div|Add1~19\);

-- Location: LCCOMB_X16_Y4_N2
\u_clk_div|count_2Hz~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~9_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~18_combout\ & ((\u_clk_div|Equal1~4_combout\) # (\u_clk_div|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|Equal1~4_combout\,
	datab => \rst~input_o\,
	datac => \u_clk_div|Add1~18_combout\,
	datad => \u_clk_div|Equal1~7_combout\,
	combout => \u_clk_div|count_2Hz~9_combout\);

-- Location: FF_X16_Y4_N3
\u_clk_div|count_2Hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(9));

-- Location: LCCOMB_X16_Y4_N28
\u_clk_div|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~20_combout\ = (\u_clk_div|count_2Hz\(10) & (\u_clk_div|Add1~19\ $ (GND))) # (!\u_clk_div|count_2Hz\(10) & (!\u_clk_div|Add1~19\ & VCC))
-- \u_clk_div|Add1~21\ = CARRY((\u_clk_div|count_2Hz\(10) & !\u_clk_div|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|count_2Hz\(10),
	datad => VCC,
	cin => \u_clk_div|Add1~19\,
	combout => \u_clk_div|Add1~20_combout\,
	cout => \u_clk_div|Add1~21\);

-- Location: LCCOMB_X16_Y4_N4
\u_clk_div|count_2Hz~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~10_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~20_combout\ & ((\u_clk_div|Equal1~7_combout\) # (\u_clk_div|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|Equal1~7_combout\,
	datab => \rst~input_o\,
	datac => \u_clk_div|Equal1~4_combout\,
	datad => \u_clk_div|Add1~20_combout\,
	combout => \u_clk_div|count_2Hz~10_combout\);

-- Location: FF_X16_Y4_N5
\u_clk_div|count_2Hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(10));

-- Location: LCCOMB_X16_Y4_N30
\u_clk_div|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~22_combout\ = (\u_clk_div|count_2Hz\(11) & (!\u_clk_div|Add1~21\)) # (!\u_clk_div|count_2Hz\(11) & ((\u_clk_div|Add1~21\) # (GND)))
-- \u_clk_div|Add1~23\ = CARRY((!\u_clk_div|Add1~21\) # (!\u_clk_div|count_2Hz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(11),
	datad => VCC,
	cin => \u_clk_div|Add1~21\,
	combout => \u_clk_div|Add1~22_combout\,
	cout => \u_clk_div|Add1~23\);

-- Location: LCCOMB_X16_Y4_N6
\u_clk_div|count_2Hz~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~11_combout\ = (\u_clk_div|Add1~22_combout\ & (!\rst~input_o\ & ((\u_clk_div|Equal1~4_combout\) # (\u_clk_div|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|Add1~22_combout\,
	datab => \rst~input_o\,
	datac => \u_clk_div|Equal1~4_combout\,
	datad => \u_clk_div|Equal1~7_combout\,
	combout => \u_clk_div|count_2Hz~11_combout\);

-- Location: FF_X16_Y4_N7
\u_clk_div|count_2Hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(11));

-- Location: LCCOMB_X17_Y4_N30
\u_clk_div|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Equal1~2_combout\ = (\u_clk_div|count_2Hz\(9)) # ((\u_clk_div|count_2Hz\(8)) # ((!\u_clk_div|count_2Hz\(10)) # (!\u_clk_div|count_2Hz\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(9),
	datab => \u_clk_div|count_2Hz\(8),
	datac => \u_clk_div|count_2Hz\(11),
	datad => \u_clk_div|count_2Hz\(10),
	combout => \u_clk_div|Equal1~2_combout\);

-- Location: LCCOMB_X16_Y3_N0
\u_clk_div|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~24_combout\ = (\u_clk_div|count_2Hz\(12) & (\u_clk_div|Add1~23\ $ (GND))) # (!\u_clk_div|count_2Hz\(12) & (!\u_clk_div|Add1~23\ & VCC))
-- \u_clk_div|Add1~25\ = CARRY((\u_clk_div|count_2Hz\(12) & !\u_clk_div|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(12),
	datad => VCC,
	cin => \u_clk_div|Add1~23\,
	combout => \u_clk_div|Add1~24_combout\,
	cout => \u_clk_div|Add1~25\);

-- Location: LCCOMB_X16_Y3_N26
\u_clk_div|count_2Hz~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~13_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~24_combout\ & ((\u_clk_div|Equal1~7_combout\) # (\u_clk_div|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|Equal1~7_combout\,
	datab => \rst~input_o\,
	datac => \u_clk_div|Equal1~4_combout\,
	datad => \u_clk_div|Add1~24_combout\,
	combout => \u_clk_div|count_2Hz~13_combout\);

-- Location: FF_X16_Y3_N27
\u_clk_div|count_2Hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(12));

-- Location: LCCOMB_X16_Y3_N2
\u_clk_div|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~26_combout\ = (\u_clk_div|count_2Hz\(13) & (!\u_clk_div|Add1~25\)) # (!\u_clk_div|count_2Hz\(13) & ((\u_clk_div|Add1~25\) # (GND)))
-- \u_clk_div|Add1~27\ = CARRY((!\u_clk_div|Add1~25\) # (!\u_clk_div|count_2Hz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|count_2Hz\(13),
	datad => VCC,
	cin => \u_clk_div|Add1~25\,
	combout => \u_clk_div|Add1~26_combout\,
	cout => \u_clk_div|Add1~27\);

-- Location: LCCOMB_X16_Y3_N28
\u_clk_div|count_2Hz~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~14_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~26_combout\ & ((\u_clk_div|Equal1~7_combout\) # (\u_clk_div|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|Equal1~7_combout\,
	datab => \rst~input_o\,
	datac => \u_clk_div|Equal1~4_combout\,
	datad => \u_clk_div|Add1~26_combout\,
	combout => \u_clk_div|count_2Hz~14_combout\);

-- Location: FF_X16_Y3_N29
\u_clk_div|count_2Hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(13));

-- Location: LCCOMB_X16_Y3_N4
\u_clk_div|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~28_combout\ = (\u_clk_div|count_2Hz\(14) & (\u_clk_div|Add1~27\ $ (GND))) # (!\u_clk_div|count_2Hz\(14) & (!\u_clk_div|Add1~27\ & VCC))
-- \u_clk_div|Add1~29\ = CARRY((\u_clk_div|count_2Hz\(14) & !\u_clk_div|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|count_2Hz\(14),
	datad => VCC,
	cin => \u_clk_div|Add1~27\,
	combout => \u_clk_div|Add1~28_combout\,
	cout => \u_clk_div|Add1~29\);

-- Location: LCCOMB_X16_Y3_N24
\u_clk_div|count_2Hz~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~12_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~28_combout\ & ((\u_clk_div|Equal1~4_combout\) # (\u_clk_div|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|Equal1~4_combout\,
	datab => \rst~input_o\,
	datac => \u_clk_div|Add1~28_combout\,
	datad => \u_clk_div|Equal1~7_combout\,
	combout => \u_clk_div|count_2Hz~12_combout\);

-- Location: FF_X16_Y3_N25
\u_clk_div|count_2Hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(14));

-- Location: LCCOMB_X16_Y3_N6
\u_clk_div|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~30_combout\ = (\u_clk_div|count_2Hz\(15) & (!\u_clk_div|Add1~29\)) # (!\u_clk_div|count_2Hz\(15) & ((\u_clk_div|Add1~29\) # (GND)))
-- \u_clk_div|Add1~31\ = CARRY((!\u_clk_div|Add1~29\) # (!\u_clk_div|count_2Hz\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(15),
	datad => VCC,
	cin => \u_clk_div|Add1~29\,
	combout => \u_clk_div|Add1~30_combout\,
	cout => \u_clk_div|Add1~31\);

-- Location: LCCOMB_X16_Y3_N30
\u_clk_div|count_2Hz~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~15_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~30_combout\ & ((\u_clk_div|Equal1~7_combout\) # (\u_clk_div|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|Equal1~7_combout\,
	datab => \rst~input_o\,
	datac => \u_clk_div|Equal1~4_combout\,
	datad => \u_clk_div|Add1~30_combout\,
	combout => \u_clk_div|count_2Hz~15_combout\);

-- Location: FF_X16_Y3_N31
\u_clk_div|count_2Hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(15));

-- Location: LCCOMB_X17_Y3_N0
\u_clk_div|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Equal1~3_combout\ = ((\u_clk_div|count_2Hz\(14)) # ((!\u_clk_div|count_2Hz\(15)) # (!\u_clk_div|count_2Hz\(13)))) # (!\u_clk_div|count_2Hz\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(12),
	datab => \u_clk_div|count_2Hz\(14),
	datac => \u_clk_div|count_2Hz\(13),
	datad => \u_clk_div|count_2Hz\(15),
	combout => \u_clk_div|Equal1~3_combout\);

-- Location: LCCOMB_X17_Y4_N24
\u_clk_div|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Equal1~4_combout\ = (\u_clk_div|Equal1~1_combout\) # ((\u_clk_div|Equal1~0_combout\) # ((\u_clk_div|Equal1~2_combout\) # (\u_clk_div|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|Equal1~1_combout\,
	datab => \u_clk_div|Equal1~0_combout\,
	datac => \u_clk_div|Equal1~2_combout\,
	datad => \u_clk_div|Equal1~3_combout\,
	combout => \u_clk_div|Equal1~4_combout\);

-- Location: LCCOMB_X16_Y3_N8
\u_clk_div|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~32_combout\ = (\u_clk_div|count_2Hz\(16) & (\u_clk_div|Add1~31\ $ (GND))) # (!\u_clk_div|count_2Hz\(16) & (!\u_clk_div|Add1~31\ & VCC))
-- \u_clk_div|Add1~33\ = CARRY((\u_clk_div|count_2Hz\(16) & !\u_clk_div|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|count_2Hz\(16),
	datad => VCC,
	cin => \u_clk_div|Add1~31\,
	combout => \u_clk_div|Add1~32_combout\,
	cout => \u_clk_div|Add1~33\);

-- Location: LCCOMB_X17_Y3_N14
\u_clk_div|count_2Hz~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~16_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~32_combout\ & ((\u_clk_div|Equal1~4_combout\) # (\u_clk_div|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \u_clk_div|Equal1~4_combout\,
	datac => \u_clk_div|Equal1~7_combout\,
	datad => \u_clk_div|Add1~32_combout\,
	combout => \u_clk_div|count_2Hz~16_combout\);

-- Location: FF_X17_Y3_N15
\u_clk_div|count_2Hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(16));

-- Location: LCCOMB_X16_Y3_N10
\u_clk_div|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~34_combout\ = (\u_clk_div|count_2Hz\(17) & (!\u_clk_div|Add1~33\)) # (!\u_clk_div|count_2Hz\(17) & ((\u_clk_div|Add1~33\) # (GND)))
-- \u_clk_div|Add1~35\ = CARRY((!\u_clk_div|Add1~33\) # (!\u_clk_div|count_2Hz\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|count_2Hz\(17),
	datad => VCC,
	cin => \u_clk_div|Add1~33\,
	combout => \u_clk_div|Add1~34_combout\,
	cout => \u_clk_div|Add1~35\);

-- Location: LCCOMB_X17_Y3_N16
\u_clk_div|count_2Hz~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~17_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~34_combout\ & ((\u_clk_div|Equal1~4_combout\) # (\u_clk_div|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \u_clk_div|Equal1~4_combout\,
	datac => \u_clk_div|Equal1~7_combout\,
	datad => \u_clk_div|Add1~34_combout\,
	combout => \u_clk_div|count_2Hz~17_combout\);

-- Location: FF_X17_Y3_N17
\u_clk_div|count_2Hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(17));

-- Location: LCCOMB_X16_Y3_N12
\u_clk_div|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~36_combout\ = (\u_clk_div|count_2Hz\(18) & (\u_clk_div|Add1~35\ $ (GND))) # (!\u_clk_div|count_2Hz\(18) & (!\u_clk_div|Add1~35\ & VCC))
-- \u_clk_div|Add1~37\ = CARRY((\u_clk_div|count_2Hz\(18) & !\u_clk_div|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(18),
	datad => VCC,
	cin => \u_clk_div|Add1~35\,
	combout => \u_clk_div|Add1~36_combout\,
	cout => \u_clk_div|Add1~37\);

-- Location: LCCOMB_X17_Y3_N20
\u_clk_div|count_2Hz~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~18_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~36_combout\ & ((\u_clk_div|Equal1~4_combout\) # (\u_clk_div|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \u_clk_div|Equal1~4_combout\,
	datac => \u_clk_div|Equal1~7_combout\,
	datad => \u_clk_div|Add1~36_combout\,
	combout => \u_clk_div|count_2Hz~18_combout\);

-- Location: FF_X17_Y3_N21
\u_clk_div|count_2Hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(18));

-- Location: LCCOMB_X16_Y3_N14
\u_clk_div|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~38_combout\ = (\u_clk_div|count_2Hz\(19) & (!\u_clk_div|Add1~37\)) # (!\u_clk_div|count_2Hz\(19) & ((\u_clk_div|Add1~37\) # (GND)))
-- \u_clk_div|Add1~39\ = CARRY((!\u_clk_div|Add1~37\) # (!\u_clk_div|count_2Hz\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(19),
	datad => VCC,
	cin => \u_clk_div|Add1~37\,
	combout => \u_clk_div|Add1~38_combout\,
	cout => \u_clk_div|Add1~39\);

-- Location: LCCOMB_X17_Y3_N6
\u_clk_div|count_2Hz~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~19_combout\ = (!\rst~input_o\ & (\u_clk_div|Add1~38_combout\ & ((\u_clk_div|Equal1~4_combout\) # (\u_clk_div|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \u_clk_div|Equal1~4_combout\,
	datac => \u_clk_div|Equal1~7_combout\,
	datad => \u_clk_div|Add1~38_combout\,
	combout => \u_clk_div|count_2Hz~19_combout\);

-- Location: FF_X17_Y3_N7
\u_clk_div|count_2Hz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(19));

-- Location: LCCOMB_X17_Y3_N28
\u_clk_div|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Equal1~5_combout\ = (((\u_clk_div|count_2Hz\(16)) # (!\u_clk_div|count_2Hz\(17))) # (!\u_clk_div|count_2Hz\(18))) # (!\u_clk_div|count_2Hz\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(19),
	datab => \u_clk_div|count_2Hz\(18),
	datac => \u_clk_div|count_2Hz\(16),
	datad => \u_clk_div|count_2Hz\(17),
	combout => \u_clk_div|Equal1~5_combout\);

-- Location: LCCOMB_X17_Y3_N22
\u_clk_div|count_2Hz[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz[1]~20_combout\ = (!\rst~input_o\ & ((\u_clk_div|Equal1~5_combout\) # ((\u_clk_div|Equal1~6_combout\) # (\u_clk_div|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \u_clk_div|Equal1~5_combout\,
	datac => \u_clk_div|Equal1~6_combout\,
	datad => \u_clk_div|Equal1~4_combout\,
	combout => \u_clk_div|count_2Hz[1]~20_combout\);

-- Location: LCCOMB_X16_Y3_N16
\u_clk_div|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~40_combout\ = (\u_clk_div|count_2Hz\(20) & (\u_clk_div|Add1~39\ $ (GND))) # (!\u_clk_div|count_2Hz\(20) & (!\u_clk_div|Add1~39\ & VCC))
-- \u_clk_div|Add1~41\ = CARRY((\u_clk_div|count_2Hz\(20) & !\u_clk_div|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(20),
	datad => VCC,
	cin => \u_clk_div|Add1~39\,
	combout => \u_clk_div|Add1~40_combout\,
	cout => \u_clk_div|Add1~41\);

-- Location: LCCOMB_X17_Y3_N30
\u_clk_div|count_2Hz~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~22_combout\ = (\u_clk_div|count_2Hz[1]~20_combout\ & \u_clk_div|Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz[1]~20_combout\,
	datad => \u_clk_div|Add1~40_combout\,
	combout => \u_clk_div|count_2Hz~22_combout\);

-- Location: FF_X17_Y3_N31
\u_clk_div|count_2Hz[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(20));

-- Location: LCCOMB_X16_Y3_N18
\u_clk_div|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~42_combout\ = (\u_clk_div|count_2Hz\(21) & (!\u_clk_div|Add1~41\)) # (!\u_clk_div|count_2Hz\(21) & ((\u_clk_div|Add1~41\) # (GND)))
-- \u_clk_div|Add1~43\ = CARRY((!\u_clk_div|Add1~41\) # (!\u_clk_div|count_2Hz\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|count_2Hz\(21),
	datad => VCC,
	cin => \u_clk_div|Add1~41\,
	combout => \u_clk_div|Add1~42_combout\,
	cout => \u_clk_div|Add1~43\);

-- Location: LCCOMB_X17_Y3_N12
\u_clk_div|count_2Hz~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~23_combout\ = (\u_clk_div|count_2Hz[1]~20_combout\ & \u_clk_div|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_clk_div|count_2Hz[1]~20_combout\,
	datad => \u_clk_div|Add1~42_combout\,
	combout => \u_clk_div|count_2Hz~23_combout\);

-- Location: FF_X17_Y3_N13
\u_clk_div|count_2Hz[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(21));

-- Location: LCCOMB_X16_Y3_N20
\u_clk_div|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~44_combout\ = (\u_clk_div|count_2Hz\(22) & (\u_clk_div|Add1~43\ $ (GND))) # (!\u_clk_div|count_2Hz\(22) & (!\u_clk_div|Add1~43\ & VCC))
-- \u_clk_div|Add1~45\ = CARRY((\u_clk_div|count_2Hz\(22) & !\u_clk_div|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|count_2Hz\(22),
	datad => VCC,
	cin => \u_clk_div|Add1~43\,
	combout => \u_clk_div|Add1~44_combout\,
	cout => \u_clk_div|Add1~45\);

-- Location: LCCOMB_X17_Y3_N18
\u_clk_div|count_2Hz~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~21_combout\ = (\u_clk_div|count_2Hz[1]~20_combout\ & \u_clk_div|Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_clk_div|count_2Hz[1]~20_combout\,
	datad => \u_clk_div|Add1~44_combout\,
	combout => \u_clk_div|count_2Hz~21_combout\);

-- Location: FF_X17_Y3_N19
\u_clk_div|count_2Hz[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(22));

-- Location: LCCOMB_X16_Y3_N22
\u_clk_div|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add1~46_combout\ = \u_clk_div|count_2Hz\(23) $ (\u_clk_div|Add1~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|count_2Hz\(23),
	cin => \u_clk_div|Add1~45\,
	combout => \u_clk_div|Add1~46_combout\);

-- Location: LCCOMB_X17_Y3_N10
\u_clk_div|count_2Hz~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_2Hz~24_combout\ = (\u_clk_div|count_2Hz[1]~20_combout\ & \u_clk_div|Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_clk_div|count_2Hz[1]~20_combout\,
	datad => \u_clk_div|Add1~46_combout\,
	combout => \u_clk_div|count_2Hz~24_combout\);

-- Location: FF_X17_Y3_N11
\u_clk_div|count_2Hz[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_2Hz~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_2Hz\(23));

-- Location: LCCOMB_X17_Y3_N26
\u_clk_div|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Equal1~6_combout\ = ((\u_clk_div|count_2Hz\(22)) # ((!\u_clk_div|count_2Hz\(23)) # (!\u_clk_div|count_2Hz\(20)))) # (!\u_clk_div|count_2Hz\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_2Hz\(21),
	datab => \u_clk_div|count_2Hz\(22),
	datac => \u_clk_div|count_2Hz\(20),
	datad => \u_clk_div|count_2Hz\(23),
	combout => \u_clk_div|Equal1~6_combout\);

-- Location: LCCOMB_X17_Y3_N4
\u_clk_div|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Equal1~7_combout\ = (\u_clk_div|Equal1~6_combout\) # (\u_clk_div|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_clk_div|Equal1~6_combout\,
	datad => \u_clk_div|Equal1~5_combout\,
	combout => \u_clk_div|Equal1~7_combout\);

-- Location: LCCOMB_X17_Y3_N24
\u_clk_div|temp_2Hz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|temp_2Hz~0_combout\ = (!\rst~input_o\ & (\u_clk_div|temp_2Hz~q\ $ (((!\u_clk_div|Equal1~7_combout\ & !\u_clk_div|Equal1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \u_clk_div|Equal1~7_combout\,
	datac => \u_clk_div|temp_2Hz~q\,
	datad => \u_clk_div|Equal1~4_combout\,
	combout => \u_clk_div|temp_2Hz~0_combout\);

-- Location: LCCOMB_X17_Y3_N8
\u_clk_div|temp_2Hz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|temp_2Hz~feeder_combout\ = \u_clk_div|temp_2Hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|temp_2Hz~0_combout\,
	combout => \u_clk_div|temp_2Hz~feeder_combout\);

-- Location: FF_X17_Y3_N9
\u_clk_div|temp_2Hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|temp_2Hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|temp_2Hz~q\);

-- Location: CLKCTRL_G19
\u_clk_div|temp_2Hz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_clk_div|temp_2Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_clk_div|temp_2Hz~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y1_N26
\u_clk_div|count_5MHz~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_5MHz~1_combout\ = (!\rst~input_o\ & !\u_clk_div|count_5MHz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \u_clk_div|count_5MHz\(0),
	combout => \u_clk_div|count_5MHz~1_combout\);

-- Location: FF_X25_Y1_N27
\u_clk_div|count_5MHz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_5MHz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_5MHz\(0));

-- Location: LCCOMB_X25_Y1_N16
\u_clk_div|count_5MHz~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_5MHz~2_combout\ = (!\rst~input_o\ & (\u_clk_div|Equal0~0_combout\ & (\u_clk_div|count_5MHz\(0) $ (!\u_clk_div|count_5MHz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \u_clk_div|count_5MHz\(0),
	datac => \u_clk_div|count_5MHz\(1),
	datad => \u_clk_div|Equal0~0_combout\,
	combout => \u_clk_div|count_5MHz~2_combout\);

-- Location: FF_X25_Y1_N17
\u_clk_div|count_5MHz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_5MHz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_5MHz\(1));

-- Location: LCCOMB_X25_Y1_N24
\u_clk_div|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Add0~0_combout\ = \u_clk_div|count_5MHz\(2) $ (((\u_clk_div|count_5MHz\(1) & !\u_clk_div|count_5MHz\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_5MHz\(1),
	datac => \u_clk_div|count_5MHz\(2),
	datad => \u_clk_div|count_5MHz\(0),
	combout => \u_clk_div|Add0~0_combout\);

-- Location: LCCOMB_X25_Y1_N10
\u_clk_div|count_5MHz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_5MHz~0_combout\ = (\u_clk_div|Equal0~0_combout\ & (!\rst~input_o\ & \u_clk_div|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|Equal0~0_combout\,
	datac => \rst~input_o\,
	datad => \u_clk_div|Add0~0_combout\,
	combout => \u_clk_div|count_5MHz~0_combout\);

-- Location: FF_X25_Y1_N11
\u_clk_div|count_5MHz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_5MHz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_5MHz\(2));

-- Location: LCCOMB_X25_Y1_N2
\u_clk_div|count_5MHz~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_5MHz~3_combout\ = (\u_clk_div|count_5MHz\(0) $ (!\u_clk_div|count_5MHz\(2))) # (!\u_clk_div|count_5MHz\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_clk_div|count_5MHz\(0),
	datac => \u_clk_div|count_5MHz\(2),
	datad => \u_clk_div|count_5MHz\(1),
	combout => \u_clk_div|count_5MHz~3_combout\);

-- Location: LCCOMB_X25_Y1_N0
\u_clk_div|count_5MHz~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|count_5MHz~4_combout\ = (!\rst~input_o\ & ((\u_clk_div|count_5MHz\(3) & ((\u_clk_div|count_5MHz~3_combout\))) # (!\u_clk_div|count_5MHz\(3) & (\u_clk_div|count_5MHz\(2) & !\u_clk_div|count_5MHz~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_5MHz\(2),
	datab => \rst~input_o\,
	datac => \u_clk_div|count_5MHz\(3),
	datad => \u_clk_div|count_5MHz~3_combout\,
	combout => \u_clk_div|count_5MHz~4_combout\);

-- Location: FF_X25_Y1_N1
\u_clk_div|count_5MHz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|count_5MHz~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|count_5MHz\(3));

-- Location: LCCOMB_X25_Y1_N18
\u_clk_div|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|Equal0~0_combout\ = (\u_clk_div|count_5MHz\(2)) # (((!\u_clk_div|count_5MHz\(3)) # (!\u_clk_div|count_5MHz\(0))) # (!\u_clk_div|count_5MHz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_clk_div|count_5MHz\(2),
	datab => \u_clk_div|count_5MHz\(1),
	datac => \u_clk_div|count_5MHz\(0),
	datad => \u_clk_div|count_5MHz\(3),
	combout => \u_clk_div|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y1_N6
\u_clk_div|temp_5MHz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|temp_5MHz~0_combout\ = (!\rst~input_o\ & (\u_clk_div|temp_5MHz~q\ $ (!\u_clk_div|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \u_clk_div|temp_5MHz~q\,
	datad => \u_clk_div|Equal0~0_combout\,
	combout => \u_clk_div|temp_5MHz~0_combout\);

-- Location: LCCOMB_X25_Y1_N28
\u_clk_div|temp_5MHz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_clk_div|temp_5MHz~feeder_combout\ = \u_clk_div|temp_5MHz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_clk_div|temp_5MHz~0_combout\,
	combout => \u_clk_div|temp_5MHz~feeder_combout\);

-- Location: FF_X25_Y1_N29
\u_clk_div|temp_5MHz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \u_clk_div|temp_5MHz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_clk_div|temp_5MHz~q\);

-- Location: CLKCTRL_G16
\u_clk_div|temp_5MHz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_clk_div|temp_5MHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_clk_div|temp_5MHz~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y15_N22
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

-- Location: LCCOMB_X19_Y3_N16
\r_RX_Data_R~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Data_R~feeder_combout\ = \i_RX_Serial~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RX_Serial~input_o\,
	combout => \r_RX_Data_R~feeder_combout\);

-- Location: FF_X19_Y3_N17
r_RX_Data_R : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_RX_Data_R~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_Data_R~q\);

-- Location: FF_X20_Y3_N31
r_RX_Data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	asdata => \r_RX_Data_R~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_RX_Data~q\);

-- Location: LCCOMB_X21_Y3_N0
\r_Clk_Count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[0]~10_combout\ = r_Clk_Count(0) $ (VCC)
-- \r_Clk_Count[0]~11\ = CARRY(r_Clk_Count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(0),
	datad => VCC,
	combout => \r_Clk_Count[0]~10_combout\,
	cout => \r_Clk_Count[0]~11\);

-- Location: LCCOMB_X21_Y3_N30
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!r_Clk_Count(1) & (r_Clk_Count(8) & (!r_Clk_Count(9) & !r_Clk_Count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(1),
	datab => r_Clk_Count(8),
	datac => r_Clk_Count(9),
	datad => r_Clk_Count(0),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X21_Y3_N28
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!r_Clk_Count(3) & (!r_Clk_Count(5) & (!r_Clk_Count(4) & !r_Clk_Count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(3),
	datab => r_Clk_Count(5),
	datac => r_Clk_Count(4),
	datad => r_Clk_Count(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X20_Y3_N6
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (r_Clk_Count(2) & (!r_Clk_Count(7) & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(2),
	datab => r_Clk_Count(7),
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X20_Y3_N16
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\r_SM_Main.s_Idle~q\ & (!\Equal0~2_combout\ & (\r_SM_Main.s_RX_Start_Bit~q\))) # (!\r_SM_Main.s_Idle~q\ & (((!\Equal0~2_combout\ & \r_SM_Main.s_RX_Start_Bit~q\)) # (!\r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datab => \Equal0~2_combout\,
	datac => \r_SM_Main.s_RX_Start_Bit~q\,
	datad => \r_RX_Data~q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X20_Y3_N17
\r_SM_Main.s_RX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_RX_Start_Bit~q\);

-- Location: LCCOMB_X21_Y3_N20
\r_Clk_Count[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[7]~30_combout\ = (\LessThan0~0_combout\ & ((\r_SM_Main.s_RX_Data_Bits~q\) # (\r_SM_Main.s_RX_Stop_Bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => \LessThan0~0_combout\,
	datad => \r_SM_Main.s_RX_Stop_Bit~q\,
	combout => \r_Clk_Count[7]~30_combout\);

-- Location: LCCOMB_X21_Y3_N26
\r_Clk_Count[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[7]~31_combout\ = \r_SM_Main.s_Idle~q\ $ (\r_Clk_Count[7]~30_combout\ $ (((!\Equal0~2_combout\) # (!\r_SM_Main.s_RX_Start_Bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datab => \r_SM_Main.s_RX_Start_Bit~q\,
	datac => \Equal0~2_combout\,
	datad => \r_Clk_Count[7]~30_combout\,
	combout => \r_Clk_Count[7]~31_combout\);

-- Location: FF_X21_Y3_N1
\r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_Clk_Count[0]~10_combout\,
	sclr => \r_Clk_Count[7]~31_combout\,
	ena => \r_Clk_Count[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(0));

-- Location: LCCOMB_X21_Y3_N2
\r_Clk_Count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[1]~12_combout\ = (r_Clk_Count(1) & (!\r_Clk_Count[0]~11\)) # (!r_Clk_Count(1) & ((\r_Clk_Count[0]~11\) # (GND)))
-- \r_Clk_Count[1]~13\ = CARRY((!\r_Clk_Count[0]~11\) # (!r_Clk_Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(1),
	datad => VCC,
	cin => \r_Clk_Count[0]~11\,
	combout => \r_Clk_Count[1]~12_combout\,
	cout => \r_Clk_Count[1]~13\);

-- Location: FF_X21_Y3_N3
\r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_Clk_Count[1]~12_combout\,
	sclr => \r_Clk_Count[7]~31_combout\,
	ena => \r_Clk_Count[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(1));

-- Location: LCCOMB_X21_Y3_N4
\r_Clk_Count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[2]~14_combout\ = (r_Clk_Count(2) & (\r_Clk_Count[1]~13\ $ (GND))) # (!r_Clk_Count(2) & (!\r_Clk_Count[1]~13\ & VCC))
-- \r_Clk_Count[2]~15\ = CARRY((r_Clk_Count(2) & !\r_Clk_Count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(2),
	datad => VCC,
	cin => \r_Clk_Count[1]~13\,
	combout => \r_Clk_Count[2]~14_combout\,
	cout => \r_Clk_Count[2]~15\);

-- Location: FF_X21_Y3_N5
\r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_Clk_Count[2]~14_combout\,
	sclr => \r_Clk_Count[7]~31_combout\,
	ena => \r_Clk_Count[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(2));

-- Location: LCCOMB_X21_Y3_N6
\r_Clk_Count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[3]~16_combout\ = (r_Clk_Count(3) & (!\r_Clk_Count[2]~15\)) # (!r_Clk_Count(3) & ((\r_Clk_Count[2]~15\) # (GND)))
-- \r_Clk_Count[3]~17\ = CARRY((!\r_Clk_Count[2]~15\) # (!r_Clk_Count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(3),
	datad => VCC,
	cin => \r_Clk_Count[2]~15\,
	combout => \r_Clk_Count[3]~16_combout\,
	cout => \r_Clk_Count[3]~17\);

-- Location: FF_X21_Y3_N7
\r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_Clk_Count[3]~16_combout\,
	sclr => \r_Clk_Count[7]~31_combout\,
	ena => \r_Clk_Count[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(3));

-- Location: LCCOMB_X21_Y3_N8
\r_Clk_Count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[4]~18_combout\ = (r_Clk_Count(4) & (\r_Clk_Count[3]~17\ $ (GND))) # (!r_Clk_Count(4) & (!\r_Clk_Count[3]~17\ & VCC))
-- \r_Clk_Count[4]~19\ = CARRY((r_Clk_Count(4) & !\r_Clk_Count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(4),
	datad => VCC,
	cin => \r_Clk_Count[3]~17\,
	combout => \r_Clk_Count[4]~18_combout\,
	cout => \r_Clk_Count[4]~19\);

-- Location: FF_X21_Y3_N9
\r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_Clk_Count[4]~18_combout\,
	sclr => \r_Clk_Count[7]~31_combout\,
	ena => \r_Clk_Count[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(4));

-- Location: LCCOMB_X21_Y3_N10
\r_Clk_Count[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[5]~20_combout\ = (r_Clk_Count(5) & (!\r_Clk_Count[4]~19\)) # (!r_Clk_Count(5) & ((\r_Clk_Count[4]~19\) # (GND)))
-- \r_Clk_Count[5]~21\ = CARRY((!\r_Clk_Count[4]~19\) # (!r_Clk_Count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(5),
	datad => VCC,
	cin => \r_Clk_Count[4]~19\,
	combout => \r_Clk_Count[5]~20_combout\,
	cout => \r_Clk_Count[5]~21\);

-- Location: FF_X21_Y3_N11
\r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_Clk_Count[5]~20_combout\,
	sclr => \r_Clk_Count[7]~31_combout\,
	ena => \r_Clk_Count[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(5));

-- Location: LCCOMB_X21_Y3_N12
\r_Clk_Count[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[6]~22_combout\ = (r_Clk_Count(6) & (\r_Clk_Count[5]~21\ $ (GND))) # (!r_Clk_Count(6) & (!\r_Clk_Count[5]~21\ & VCC))
-- \r_Clk_Count[6]~23\ = CARRY((r_Clk_Count(6) & !\r_Clk_Count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(6),
	datad => VCC,
	cin => \r_Clk_Count[5]~21\,
	combout => \r_Clk_Count[6]~22_combout\,
	cout => \r_Clk_Count[6]~23\);

-- Location: FF_X21_Y3_N13
\r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_Clk_Count[6]~22_combout\,
	sclr => \r_Clk_Count[7]~31_combout\,
	ena => \r_Clk_Count[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(6));

-- Location: LCCOMB_X21_Y3_N14
\r_Clk_Count[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[7]~24_combout\ = (r_Clk_Count(7) & (!\r_Clk_Count[6]~23\)) # (!r_Clk_Count(7) & ((\r_Clk_Count[6]~23\) # (GND)))
-- \r_Clk_Count[7]~25\ = CARRY((!\r_Clk_Count[6]~23\) # (!r_Clk_Count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(7),
	datad => VCC,
	cin => \r_Clk_Count[6]~23\,
	combout => \r_Clk_Count[7]~24_combout\,
	cout => \r_Clk_Count[7]~25\);

-- Location: FF_X21_Y3_N15
\r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_Clk_Count[7]~24_combout\,
	sclr => \r_Clk_Count[7]~31_combout\,
	ena => \r_Clk_Count[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(7));

-- Location: LCCOMB_X21_Y3_N16
\r_Clk_Count[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[8]~26_combout\ = (r_Clk_Count(8) & (\r_Clk_Count[7]~25\ $ (GND))) # (!r_Clk_Count(8) & (!\r_Clk_Count[7]~25\ & VCC))
-- \r_Clk_Count[8]~27\ = CARRY((r_Clk_Count(8) & !\r_Clk_Count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_Clk_Count(8),
	datad => VCC,
	cin => \r_Clk_Count[7]~25\,
	combout => \r_Clk_Count[8]~26_combout\,
	cout => \r_Clk_Count[8]~27\);

-- Location: FF_X21_Y3_N17
\r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_Clk_Count[8]~26_combout\,
	sclr => \r_Clk_Count[7]~31_combout\,
	ena => \r_Clk_Count[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(8));

-- Location: LCCOMB_X21_Y3_N18
\r_Clk_Count[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[9]~28_combout\ = r_Clk_Count(9) $ (\r_Clk_Count[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(9),
	cin => \r_Clk_Count[8]~27\,
	combout => \r_Clk_Count[9]~28_combout\);

-- Location: FF_X21_Y3_N19
\r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_Clk_Count[9]~28_combout\,
	sclr => \r_Clk_Count[7]~31_combout\,
	ena => \r_Clk_Count[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Clk_Count(9));

-- Location: LCCOMB_X21_Y3_N22
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (r_Clk_Count(9) & ((r_Clk_Count(8)) # ((r_Clk_Count(7)) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(9),
	datab => r_Clk_Count(8),
	datac => r_Clk_Count(7),
	datad => \Equal0~0_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y3_N18
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (!\r_RX_Data~q\ & (\r_SM_Main.s_RX_Start_Bit~q\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datab => \r_SM_Main.s_RX_Start_Bit~q\,
	datad => \Equal0~2_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X20_Y3_N14
\Selector15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\Selector15~0_combout\) # ((\r_SM_Main.s_RX_Data_Bits~q\ & ((!\LessThan0~0_combout\) # (!\r_SM_Main.s_RX_Stop_Bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Stop_Bit~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => \r_SM_Main.s_RX_Data_Bits~q\,
	datad => \Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: FF_X20_Y3_N15
\r_SM_Main.s_RX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_RX_Data_Bits~q\);

-- Location: LCCOMB_X20_Y3_N22
\Selector11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & (r_Bit_Index(1) $ (((r_Bit_Index(0) & \LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(0),
	datac => \r_SM_Main.s_RX_Data_Bits~q\,
	datad => \LessThan0~0_combout\,
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X20_Y3_N26
\Selector11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~3_combout\ = (\Selector11~2_combout\) # ((\r_SM_Main.s_Idle~q\ & (!\r_SM_Main.s_RX_Data_Bits~q\ & r_Bit_Index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => r_Bit_Index(1),
	datad => \Selector11~2_combout\,
	combout => \Selector11~3_combout\);

-- Location: FF_X20_Y3_N27
\r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \Selector11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(1));

-- Location: LCCOMB_X20_Y3_N30
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\r_SM_Main.s_RX_Data_Bits~q\ & \r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datad => \r_SM_Main.s_Idle~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X20_Y3_N24
\Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (r_Bit_Index(2) & (\r_SM_Main.s_RX_Data_Bits~q\ & ((!\LessThan0~0_combout\) # (!r_Bit_Index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(2),
	datab => r_Bit_Index(0),
	datac => \r_SM_Main.s_RX_Data_Bits~q\,
	datad => \LessThan0~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X21_Y3_N24
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & \LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => \LessThan0~0_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X20_Y3_N10
\Selector10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (r_Bit_Index(0) & (\Decoder0~0_combout\ & (r_Bit_Index(1) $ (r_Bit_Index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_Bit_Index(0),
	datac => r_Bit_Index(2),
	datad => \Decoder0~0_combout\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X20_Y3_N8
\Selector10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~3_combout\ = (\Selector10~1_combout\) # ((\Selector10~2_combout\) # ((\Selector10~0_combout\ & r_Bit_Index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \Selector10~1_combout\,
	datac => r_Bit_Index(2),
	datad => \Selector10~2_combout\,
	combout => \Selector10~3_combout\);

-- Location: FF_X20_Y3_N9
\r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \Selector10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(2));

-- Location: LCCOMB_X19_Y3_N14
\r_SM_Main.s_RX_Stop_Bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_SM_Main.s_RX_Stop_Bit~0_combout\ = (r_Bit_Index(0) & (r_Bit_Index(1) & r_Bit_Index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datac => r_Bit_Index(2),
	combout => \r_SM_Main.s_RX_Stop_Bit~0_combout\);

-- Location: LCCOMB_X20_Y3_N0
\r_SM_Main.s_RX_Stop_Bit~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_SM_Main.s_RX_Stop_Bit~1_combout\ = (\LessThan0~0_combout\ & (\r_SM_Main.s_RX_Stop_Bit~0_combout\ & (\r_SM_Main.s_RX_Data_Bits~q\))) # (!\LessThan0~0_combout\ & (((\r_SM_Main.s_RX_Stop_Bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_RX_Stop_Bit~0_combout\,
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => \r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \LessThan0~0_combout\,
	combout => \r_SM_Main.s_RX_Stop_Bit~1_combout\);

-- Location: FF_X20_Y3_N1
\r_SM_Main.s_RX_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_SM_Main.s_RX_Stop_Bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_RX_Stop_Bit~q\);

-- Location: LCCOMB_X20_Y3_N4
\r_SM_Main~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_SM_Main~7_combout\ = (\r_SM_Main.s_RX_Stop_Bit~q\ & \LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \LessThan0~0_combout\,
	combout => \r_SM_Main~7_combout\);

-- Location: FF_X20_Y3_N5
\r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_SM_Main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Cleanup~q\);

-- Location: LCCOMB_X20_Y3_N28
\r_Clk_Count[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_Clk_Count[7]~32_combout\ = (!\r_SM_Main.s_Cleanup~q\ & (((!\Equal0~2_combout\) # (!\r_RX_Data~q\)) # (!\r_SM_Main.s_RX_Start_Bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Cleanup~q\,
	datab => \r_SM_Main.s_RX_Start_Bit~q\,
	datac => \r_RX_Data~q\,
	datad => \Equal0~2_combout\,
	combout => \r_Clk_Count[7]~32_combout\);

-- Location: LCCOMB_X20_Y3_N2
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\r_Clk_Count[7]~32_combout\ & ((\r_SM_Main.s_Idle~q\) # (!\r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => \r_SM_Main.s_Idle~q\,
	datad => \r_Clk_Count[7]~32_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X20_Y3_N3
\r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Idle~q\);

-- Location: LCCOMB_X20_Y3_N12
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (r_Clk_Count(9) & ((r_Clk_Count(8)) # ((r_Clk_Count(7)) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Clk_Count(9),
	datab => r_Clk_Count(8),
	datac => r_Clk_Count(7),
	datad => \Equal0~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X20_Y3_N20
\Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\r_SM_Main.s_RX_Data_Bits~q\ & ((r_Bit_Index(0) $ (\Selector12~0_combout\)))) # (!\r_SM_Main.s_RX_Data_Bits~q\ & (\r_SM_Main.s_Idle~q\ & (r_Bit_Index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datab => \r_SM_Main.s_RX_Data_Bits~q\,
	datac => r_Bit_Index(0),
	datad => \Selector12~0_combout\,
	combout => \Selector12~1_combout\);

-- Location: FF_X20_Y3_N21
\r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(0));

-- Location: LCCOMB_X22_Y3_N16
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (r_Bit_Index(0) & (!r_Bit_Index(2) & (!r_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X22_Y3_N28
\r_RX_Byte[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[1]~0_combout\ = (\Decoder0~1_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~1_combout\ & ((r_RX_Byte(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(1),
	datad => \Decoder0~1_combout\,
	combout => \r_RX_Byte[1]~0_combout\);

-- Location: FF_X22_Y3_N29
\r_RX_Byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_RX_Byte[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(1));

-- Location: LCCOMB_X22_Y2_N12
\mode[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mode[1]~feeder_combout\ = r_RX_Byte(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_RX_Byte(1),
	combout => \mode[1]~feeder_combout\);

-- Location: FF_X22_Y2_N13
\mode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \mode[1]~feeder_combout\,
	ena => \r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mode(1));

-- Location: LCCOMB_X22_Y3_N18
\Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (r_Bit_Index(0) & (r_Bit_Index(2) & (!r_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X22_Y3_N14
\r_RX_Byte[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[5]~1_combout\ = (\Decoder0~2_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~2_combout\ & ((r_RX_Byte(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(5),
	datad => \Decoder0~2_combout\,
	combout => \r_RX_Byte[5]~1_combout\);

-- Location: FF_X22_Y3_N15
\r_RX_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_RX_Byte[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(5));

-- Location: LCCOMB_X21_Y2_N20
\mode[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mode[5]~feeder_combout\ = r_RX_Byte(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_RX_Byte(5),
	combout => \mode[5]~feeder_combout\);

-- Location: FF_X21_Y2_N21
\mode[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \mode[5]~feeder_combout\,
	ena => \r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mode(5));

-- Location: LCCOMB_X22_Y3_N24
\Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!r_Bit_Index(0) & (r_Bit_Index(2) & (!r_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X22_Y3_N4
\r_RX_Byte[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[4]~2_combout\ = (\Decoder0~3_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~3_combout\ & ((r_RX_Byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(4),
	datad => \Decoder0~3_combout\,
	combout => \r_RX_Byte[4]~2_combout\);

-- Location: FF_X22_Y3_N5
\r_RX_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_RX_Byte[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(4));

-- Location: LCCOMB_X22_Y2_N14
\mode[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mode[4]~feeder_combout\ = r_RX_Byte(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_RX_Byte(4),
	combout => \mode[4]~feeder_combout\);

-- Location: FF_X22_Y2_N15
\mode[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \mode[4]~feeder_combout\,
	ena => \r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mode(4));

-- Location: LCCOMB_X22_Y3_N10
\Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!r_Bit_Index(0) & (!r_Bit_Index(2) & (!r_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X22_Y3_N30
\r_RX_Byte[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[0]~3_combout\ = (\Decoder0~4_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~4_combout\ & ((r_RX_Byte(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(0),
	datad => \Decoder0~4_combout\,
	combout => \r_RX_Byte[0]~3_combout\);

-- Location: FF_X22_Y3_N31
\r_RX_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_RX_Byte[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(0));

-- Location: FF_X22_Y2_N9
\mode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	asdata => r_RX_Byte(0),
	sload => VCC,
	ena => \r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mode(0));

-- Location: LCCOMB_X22_Y2_N10
\r_LED[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_LED[1]~0_combout\ = (mode(5) & (mode(4) & (mode(0) $ (mode(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mode(5),
	datab => mode(4),
	datac => mode(0),
	datad => mode(1),
	combout => \r_LED[1]~0_combout\);

-- Location: LCCOMB_X22_Y3_N2
\Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (r_Bit_Index(0) & (r_Bit_Index(2) & (r_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X22_Y3_N22
\r_RX_Byte[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[7]~7_combout\ = (\Decoder0~8_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~8_combout\ & ((r_RX_Byte(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(7),
	datad => \Decoder0~8_combout\,
	combout => \r_RX_Byte[7]~7_combout\);

-- Location: FF_X22_Y3_N23
\r_RX_Byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_RX_Byte[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(7));

-- Location: FF_X22_Y2_N21
\mode[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	asdata => r_RX_Byte(7),
	sload => VCC,
	ena => \r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mode(7));

-- Location: LCCOMB_X22_Y3_N20
\Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (r_Bit_Index(0) & (!r_Bit_Index(2) & (r_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X22_Y3_N8
\r_RX_Byte[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[3]~4_combout\ = (\Decoder0~5_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~5_combout\ & ((r_RX_Byte(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(3),
	datad => \Decoder0~5_combout\,
	combout => \r_RX_Byte[3]~4_combout\);

-- Location: FF_X22_Y3_N9
\r_RX_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_RX_Byte[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(3));

-- Location: FF_X22_Y2_N5
\mode[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	asdata => r_RX_Byte(3),
	sload => VCC,
	ena => \r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mode(3));

-- Location: LCCOMB_X22_Y3_N6
\Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!r_Bit_Index(0) & (!r_Bit_Index(2) & (r_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X22_Y3_N26
\r_RX_Byte[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[2]~5_combout\ = (\Decoder0~6_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~6_combout\ & ((r_RX_Byte(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(2),
	datad => \Decoder0~6_combout\,
	combout => \r_RX_Byte[2]~5_combout\);

-- Location: FF_X22_Y3_N27
\r_RX_Byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_RX_Byte[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(2));

-- Location: LCCOMB_X22_Y2_N26
\mode[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mode[2]~feeder_combout\ = r_RX_Byte(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_RX_Byte(2),
	combout => \mode[2]~feeder_combout\);

-- Location: FF_X22_Y2_N27
\mode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \mode[2]~feeder_combout\,
	ena => \r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mode(2));

-- Location: LCCOMB_X22_Y3_N12
\Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!r_Bit_Index(0) & (r_Bit_Index(2) & (r_Bit_Index(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(2),
	datac => r_Bit_Index(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X22_Y3_N0
\r_RX_Byte[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_RX_Byte[6]~6_combout\ = (\Decoder0~7_combout\ & (\r_RX_Data~q\)) # (!\Decoder0~7_combout\ & ((r_RX_Byte(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_RX_Data~q\,
	datac => r_RX_Byte(6),
	datad => \Decoder0~7_combout\,
	combout => \r_RX_Byte[6]~6_combout\);

-- Location: FF_X22_Y3_N1
\r_RX_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \r_RX_Byte[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_RX_Byte(6));

-- Location: LCCOMB_X21_Y2_N2
\mode[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mode[6]~feeder_combout\ = r_RX_Byte(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_RX_Byte(6),
	combout => \mode[6]~feeder_combout\);

-- Location: FF_X21_Y2_N3
\mode[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_5MHz~clkctrl_outclk\,
	d => \mode[6]~feeder_combout\,
	ena => \r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mode(6));

-- Location: LCCOMB_X22_Y2_N18
\r_LED[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_LED[1]~1_combout\ = (!mode(7) & (!mode(3) & (!mode(2) & !mode(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mode(7),
	datab => mode(3),
	datac => mode(2),
	datad => mode(6),
	combout => \r_LED[1]~1_combout\);

-- Location: LCCOMB_X22_Y2_N2
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\r_LED[1]~1_combout\ & (\r_LED[1]~0_combout\ & !r_LED(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_LED[1]~1_combout\,
	datac => \r_LED[1]~0_combout\,
	datad => r_LED(0),
	combout => \Mux6~0_combout\);

-- Location: FF_X22_Y2_N3
\r_LED[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_2Hz~clkctrl_outclk\,
	d => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_LED(1));

-- Location: LCCOMB_X22_Y2_N28
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\r_LED[1]~1_combout\ & (\r_LED[1]~0_combout\ & r_LED(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_LED[1]~1_combout\,
	datac => \r_LED[1]~0_combout\,
	datad => r_LED(1),
	combout => \Mux5~0_combout\);

-- Location: FF_X22_Y2_N29
\r_LED[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_2Hz~clkctrl_outclk\,
	d => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_LED(2));

-- Location: LCCOMB_X22_Y2_N30
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\r_LED[1]~1_combout\ & (\r_LED[1]~0_combout\ & r_LED(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_LED[1]~1_combout\,
	datac => \r_LED[1]~0_combout\,
	datad => r_LED(2),
	combout => \Mux4~0_combout\);

-- Location: FF_X22_Y2_N31
\r_LED[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_2Hz~clkctrl_outclk\,
	d => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_LED(3));

-- Location: LCCOMB_X22_Y2_N0
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\r_LED[1]~1_combout\ & (r_LED(3) & \r_LED[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_LED[1]~1_combout\,
	datac => r_LED(3),
	datad => \r_LED[1]~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: FF_X22_Y2_N1
\r_LED[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_2Hz~clkctrl_outclk\,
	d => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_LED(4));

-- Location: LCCOMB_X22_Y2_N22
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\r_LED[1]~1_combout\ & (\r_LED[1]~0_combout\ & r_LED(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_LED[1]~1_combout\,
	datac => \r_LED[1]~0_combout\,
	datad => r_LED(4),
	combout => \Mux2~0_combout\);

-- Location: FF_X22_Y2_N23
\r_LED[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_2Hz~clkctrl_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_LED(5));

-- Location: LCCOMB_X22_Y2_N24
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\r_LED[1]~0_combout\ & (r_LED(5) & \r_LED[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_LED[1]~0_combout\,
	datac => r_LED(5),
	datad => \r_LED[1]~1_combout\,
	combout => \Mux1~0_combout\);

-- Location: FF_X22_Y2_N25
\r_LED[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_2Hz~clkctrl_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_LED(6));

-- Location: LCCOMB_X22_Y2_N6
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\r_LED[1]~1_combout\ & (\r_LED[1]~0_combout\ & r_LED(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_LED[1]~1_combout\,
	datac => \r_LED[1]~0_combout\,
	datad => r_LED(6),
	combout => \Mux0~0_combout\);

-- Location: FF_X22_Y2_N7
\r_LED[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_2Hz~clkctrl_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_LED(7));

-- Location: LCCOMB_X22_Y2_N16
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\r_LED[1]~0_combout\ & (\r_LED[1]~1_combout\ & (mode(1) $ (r_LED(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mode(1),
	datab => \r_LED[1]~0_combout\,
	datac => \r_LED[1]~1_combout\,
	datad => r_LED(7),
	combout => \Mux7~0_combout\);

-- Location: FF_X22_Y2_N17
\r_LED[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_clk_div|temp_2Hz~clkctrl_outclk\,
	d => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_LED(0));

-- Location: UNVM_X0_Y22_N40
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

-- Location: ADCBLOCK_X25_Y34_N0
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

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
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
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_o_LED(0) <= \o_LED[0]~output_o\;

ww_o_LED(1) <= \o_LED[1]~output_o\;

ww_o_LED(2) <= \o_LED[2]~output_o\;

ww_o_LED(3) <= \o_LED[3]~output_o\;

ww_o_LED(4) <= \o_LED[4]~output_o\;

ww_o_LED(5) <= \o_LED[5]~output_o\;

ww_o_LED(6) <= \o_LED[6]~output_o\;

ww_o_LED(7) <= \o_LED[7]~output_o\;
END structure;


