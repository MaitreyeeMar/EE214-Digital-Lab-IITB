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

-- DATE "11/08/2025 09:19:56"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
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
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Shift_Add_Sub IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Y : OUT std_logic_vector(7 DOWNTO 0)
	);
END Shift_Add_Sub;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Shift_Add_Sub IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \product~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \product~1_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \product~2_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \product~3_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \product~4_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \product~5_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add2~4\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3_combout\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \product~6_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9_combout\ : std_logic;
SIGNAL \Add2~11_combout\ : std_logic;
SIGNAL \Add3~4\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3_combout\ : std_logic;
SIGNAL \Add4~5_combout\ : std_logic;
SIGNAL \product~7_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \product~8_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9_combout\ : std_logic;
SIGNAL \Add3~11_combout\ : std_logic;
SIGNAL \Add4~4\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \product~9_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \product~10_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y20_N24
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

-- Location: IOOBUF_X10_Y19_N2
\Y[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X10_Y20_N9
\Y[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~28_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X17_Y25_N30
\Y[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~2_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X10_Y21_N9
\Y[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~2_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\Y[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~2_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N16
\Y[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add4~2_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X19_Y25_N2
\Y[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product~7_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X10_Y20_N2
\Y[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product~10_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOIBUF_X10_Y20_N22
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X15_Y25_N29
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X14_Y20_N0
\product~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product~0_combout\ = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \product~0_combout\);

-- Location: IOIBUF_X10_Y19_N15
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X14_Y20_N10
\product~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product~1_combout\ = (\B[0]~input_o\ & \A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \product~1_combout\);

-- Location: LCCOMB_X15_Y21_N12
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\A[0]~input_o\ & (\product~1_combout\ $ (VCC))) # (!\A[0]~input_o\ & (\product~1_combout\ & VCC))
-- \Add0~15\ = CARRY((\A[0]~input_o\ & \product~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \product~1_combout\,
	datad => VCC,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: IOIBUF_X10_Y19_N22
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X14_Y20_N4
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\B[1]~input_o\ & (\Add0~14_combout\)) # (!\B[1]~input_o\ & (((\B[0]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Add0~28_combout\);

-- Location: IOIBUF_X10_Y18_N22
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X10_Y17_N1
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X15_Y21_N0
\product~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product~2_combout\ = (\A[2]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \product~2_combout\);

-- Location: LCCOMB_X15_Y21_N14
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\product~2_combout\ & ((\A[1]~input_o\ & (\Add0~15\ & VCC)) # (!\A[1]~input_o\ & (!\Add0~15\)))) # (!\product~2_combout\ & ((\A[1]~input_o\ & (!\Add0~15\)) # (!\A[1]~input_o\ & ((\Add0~15\) # (GND)))))
-- \Add0~17\ = CARRY((\product~2_combout\ & (!\A[1]~input_o\ & !\Add0~15\)) # (!\product~2_combout\ & ((!\Add0~15\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product~2_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X16_Y20_N0
\Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\B[1]~input_o\ & (((\Add0~16_combout\)))) # (!\B[1]~input_o\ & (\A[2]~input_o\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Add0~16_combout\,
	datad => \B[0]~input_o\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X16_Y21_N14
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\A[0]~input_o\ & (\Add0~29_combout\ $ (VCC))) # (!\A[0]~input_o\ & (\Add0~29_combout\ & VCC))
-- \Add1~1\ = CARRY((\A[0]~input_o\ & \Add0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Add0~29_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X16_Y21_N0
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B[2]~input_o\ & (\Add1~0_combout\)) # (!\B[2]~input_o\ & ((\Add0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Add1~0_combout\,
	datad => \Add0~29_combout\,
	combout => \Add1~2_combout\);

-- Location: IOIBUF_X13_Y25_N22
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X15_Y21_N10
\product~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product~3_combout\ = (\A[3]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \product~3_combout\);

-- Location: LCCOMB_X15_Y21_N16
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\product~3_combout\ $ (\A[2]~input_o\ $ (!\Add0~17\)))) # (GND)
-- \Add0~19\ = CARRY((\product~3_combout\ & ((\A[2]~input_o\) # (!\Add0~17\))) # (!\product~3_combout\ & (\A[2]~input_o\ & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product~3_combout\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X16_Y21_N28
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\B[1]~input_o\ & (((\Add0~18_combout\)))) # (!\B[1]~input_o\ & (\A[3]~input_o\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \Add0~18_combout\,
	datad => \B[0]~input_o\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X16_Y21_N16
\Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\A[1]~input_o\ & ((\Add0~30_combout\ & (\Add1~1\ & VCC)) # (!\Add0~30_combout\ & (!\Add1~1\)))) # (!\A[1]~input_o\ & ((\Add0~30_combout\ & (!\Add1~1\)) # (!\Add0~30_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~4\ = CARRY((\A[1]~input_o\ & (!\Add0~30_combout\ & !\Add1~1\)) # (!\A[1]~input_o\ & ((!\Add1~1\) # (!\Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X16_Y21_N2
\Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\B[2]~input_o\ & (\Add1~3_combout\)) # (!\B[2]~input_o\ & ((\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~3_combout\,
	datac => \B[2]~input_o\,
	datad => \Add0~30_combout\,
	combout => \Add1~5_combout\);

-- Location: LCCOMB_X13_Y21_N20
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\A[0]~input_o\ & (\Add1~5_combout\ $ (VCC))) # (!\A[0]~input_o\ & (\Add1~5_combout\ & VCC))
-- \Add2~1\ = CARRY((\A[0]~input_o\ & \Add1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Add1~5_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: IOIBUF_X19_Y25_N8
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X13_Y21_N0
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\B[3]~input_o\ & (\Add2~0_combout\)) # (!\B[3]~input_o\ & ((\Add1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datac => \Add1~5_combout\,
	datad => \B[3]~input_o\,
	combout => \Add2~2_combout\);

-- Location: IOIBUF_X10_Y21_N1
\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X15_Y21_N28
\product~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product~4_combout\ = (\A[4]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \product~4_combout\);

-- Location: LCCOMB_X15_Y21_N18
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\A[3]~input_o\ & ((\product~4_combout\ & (\Add0~19\ & VCC)) # (!\product~4_combout\ & (!\Add0~19\)))) # (!\A[3]~input_o\ & ((\product~4_combout\ & (!\Add0~19\)) # (!\product~4_combout\ & ((\Add0~19\) # (GND)))))
-- \Add0~21\ = CARRY((\A[3]~input_o\ & (!\product~4_combout\ & !\Add0~19\)) # (!\A[3]~input_o\ & ((!\Add0~19\) # (!\product~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \product~4_combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X16_Y21_N10
\Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\B[1]~input_o\ & (\Add0~20_combout\)) # (!\B[1]~input_o\ & (((\A[4]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Add0~20_combout\,
	datac => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add0~31_combout\);

-- Location: LCCOMB_X16_Y21_N18
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = ((\Add0~31_combout\ $ (\A[2]~input_o\ $ (!\Add1~4\)))) # (GND)
-- \Add1~7\ = CARRY((\Add0~31_combout\ & ((\A[2]~input_o\) # (!\Add1~4\))) # (!\Add0~31_combout\ & (\A[2]~input_o\ & !\Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~31_combout\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X16_Y21_N12
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\B[2]~input_o\ & (\Add1~6_combout\)) # (!\B[2]~input_o\ & ((\Add0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datac => \B[2]~input_o\,
	datad => \Add0~31_combout\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X13_Y21_N22
\Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = (\Add1~8_combout\ & ((\A[1]~input_o\ & (\Add2~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add2~1\)))) # (!\Add1~8_combout\ & ((\A[1]~input_o\ & (!\Add2~1\)) # (!\A[1]~input_o\ & ((\Add2~1\) # (GND)))))
-- \Add2~4\ = CARRY((\Add1~8_combout\ & (!\A[1]~input_o\ & !\Add2~1\)) # (!\Add1~8_combout\ & ((!\Add2~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~3_combout\,
	cout => \Add2~4\);

-- Location: LCCOMB_X13_Y21_N18
\Add2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~5_combout\ = (\B[3]~input_o\ & ((\Add2~3_combout\))) # (!\B[3]~input_o\ & (\Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datac => \Add2~3_combout\,
	datad => \B[3]~input_o\,
	combout => \Add2~5_combout\);

-- Location: LCCOMB_X13_Y21_N4
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\A[0]~input_o\ & (\Add2~5_combout\ $ (VCC))) # (!\A[0]~input_o\ & (\Add2~5_combout\ & VCC))
-- \Add3~1\ = CARRY((\A[0]~input_o\ & \Add2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Add2~5_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: IOIBUF_X13_Y25_N1
\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X13_Y21_N12
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\B[4]~input_o\ & (\Add3~0_combout\)) # (!\B[4]~input_o\ & ((\Add2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Add2~5_combout\,
	combout => \Add3~2_combout\);

-- Location: IOIBUF_X10_Y20_N15
\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X15_Y25_N1
\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X15_Y21_N30
\product~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product~5_combout\ = (\A[5]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[0]~input_o\,
	combout => \product~5_combout\);

-- Location: LCCOMB_X15_Y21_N20
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = ((\A[4]~input_o\ $ (\product~5_combout\ $ (!\Add0~21\)))) # (GND)
-- \Add0~23\ = CARRY((\A[4]~input_o\ & ((\product~5_combout\) # (!\Add0~21\))) # (!\A[4]~input_o\ & (\product~5_combout\ & !\Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \product~5_combout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X15_Y21_N2
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\B[1]~input_o\ & (((\Add0~22_combout\)))) # (!\B[1]~input_o\ & (\A[5]~input_o\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Add0~22_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X16_Y21_N20
\Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (\Add0~32_combout\ & ((\A[3]~input_o\ & (\Add1~7\ & VCC)) # (!\A[3]~input_o\ & (!\Add1~7\)))) # (!\Add0~32_combout\ & ((\A[3]~input_o\ & (!\Add1~7\)) # (!\A[3]~input_o\ & ((\Add1~7\) # (GND)))))
-- \Add1~10\ = CARRY((\Add0~32_combout\ & (!\A[3]~input_o\ & !\Add1~7\)) # (!\Add0~32_combout\ & ((!\Add1~7\) # (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X16_Y21_N6
\Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (\B[2]~input_o\ & ((\Add1~9_combout\))) # (!\B[2]~input_o\ & (\Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datac => \B[2]~input_o\,
	datad => \Add1~9_combout\,
	combout => \Add1~11_combout\);

-- Location: LCCOMB_X13_Y21_N24
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = ((\A[2]~input_o\ $ (\Add1~11_combout\ $ (!\Add2~4\)))) # (GND)
-- \Add2~7\ = CARRY((\A[2]~input_o\ & ((\Add1~11_combout\) # (!\Add2~4\))) # (!\A[2]~input_o\ & (\Add1~11_combout\ & !\Add2~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Add1~11_combout\,
	datad => VCC,
	cin => \Add2~4\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X13_Y21_N30
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\B[3]~input_o\ & (\Add2~6_combout\)) # (!\B[3]~input_o\ & ((\Add1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~6_combout\,
	datac => \Add1~11_combout\,
	datad => \B[3]~input_o\,
	combout => \Add2~8_combout\);

-- Location: LCCOMB_X13_Y21_N6
\Add3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~3_combout\ = (\Add2~8_combout\ & ((\A[1]~input_o\ & (\Add3~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add3~1\)))) # (!\Add2~8_combout\ & ((\A[1]~input_o\ & (!\Add3~1\)) # (!\A[1]~input_o\ & ((\Add3~1\) # (GND)))))
-- \Add3~4\ = CARRY((\Add2~8_combout\ & (!\A[1]~input_o\ & !\Add3~1\)) # (!\Add2~8_combout\ & ((!\Add3~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~3_combout\,
	cout => \Add3~4\);

-- Location: LCCOMB_X14_Y20_N28
\Add3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~5_combout\ = (\B[4]~input_o\ & ((\Add3~3_combout\))) # (!\B[4]~input_o\ & (\Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datac => \Add3~3_combout\,
	datad => \B[4]~input_o\,
	combout => \Add3~5_combout\);

-- Location: LCCOMB_X14_Y20_N12
\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\A[0]~input_o\ & (\Add3~5_combout\ $ (VCC))) # (!\A[0]~input_o\ & (\Add3~5_combout\ & VCC))
-- \Add4~1\ = CARRY((\A[0]~input_o\ & \Add3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Add3~5_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X14_Y20_N6
\Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\B[5]~input_o\ & ((\Add4~0_combout\))) # (!\B[5]~input_o\ & (\Add3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Add3~5_combout\,
	datad => \Add4~0_combout\,
	combout => \Add4~2_combout\);

-- Location: IOIBUF_X17_Y25_N15
\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X15_Y25_N22
\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X15_Y21_N8
\product~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product~6_combout\ = (\A[6]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datad => \B[0]~input_o\,
	combout => \product~6_combout\);

-- Location: LCCOMB_X15_Y21_N22
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\A[5]~input_o\ & ((\product~6_combout\ & (\Add0~23\ & VCC)) # (!\product~6_combout\ & (!\Add0~23\)))) # (!\A[5]~input_o\ & ((\product~6_combout\ & (!\Add0~23\)) # (!\product~6_combout\ & ((\Add0~23\) # (GND)))))
-- \Add0~25\ = CARRY((\A[5]~input_o\ & (!\product~6_combout\ & !\Add0~23\)) # (!\A[5]~input_o\ & ((!\Add0~23\) # (!\product~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \product~6_combout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X15_Y21_N4
\Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\B[1]~input_o\ & (((\Add0~24_combout\)))) # (!\B[1]~input_o\ & (\A[6]~input_o\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Add0~24_combout\,
	datad => \B[0]~input_o\,
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X16_Y21_N22
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\A[4]~input_o\ $ (\Add0~33_combout\ $ (!\Add1~10\)))) # (GND)
-- \Add1~13\ = CARRY((\A[4]~input_o\ & ((\Add0~33_combout\) # (!\Add1~10\))) # (!\A[4]~input_o\ & (\Add0~33_combout\ & !\Add1~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \Add0~33_combout\,
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X16_Y21_N8
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\B[2]~input_o\ & ((\Add1~12_combout\))) # (!\B[2]~input_o\ & (\Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Add0~33_combout\,
	datac => \Add1~12_combout\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X13_Y21_N26
\Add2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~9_combout\ = (\Add1~14_combout\ & ((\A[3]~input_o\ & (\Add2~7\ & VCC)) # (!\A[3]~input_o\ & (!\Add2~7\)))) # (!\Add1~14_combout\ & ((\A[3]~input_o\ & (!\Add2~7\)) # (!\A[3]~input_o\ & ((\Add2~7\) # (GND)))))
-- \Add2~10\ = CARRY((\Add1~14_combout\ & (!\A[3]~input_o\ & !\Add2~7\)) # (!\Add1~14_combout\ & ((!\Add2~7\) # (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~9_combout\,
	cout => \Add2~10\);

-- Location: LCCOMB_X13_Y21_N16
\Add2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~11_combout\ = (\B[3]~input_o\ & ((\Add2~9_combout\))) # (!\B[3]~input_o\ & (\Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datac => \Add2~9_combout\,
	datad => \B[3]~input_o\,
	combout => \Add2~11_combout\);

-- Location: LCCOMB_X13_Y21_N8
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = ((\A[2]~input_o\ $ (\Add2~11_combout\ $ (!\Add3~4\)))) # (GND)
-- \Add3~7\ = CARRY((\A[2]~input_o\ & ((\Add2~11_combout\) # (!\Add3~4\))) # (!\A[2]~input_o\ & (\Add2~11_combout\ & !\Add3~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Add2~11_combout\,
	datad => VCC,
	cin => \Add3~4\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X14_Y20_N24
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\B[4]~input_o\ & (\Add3~6_combout\)) # (!\B[4]~input_o\ & ((\Add2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~6_combout\,
	datac => \Add2~11_combout\,
	datad => \B[4]~input_o\,
	combout => \Add3~8_combout\);

-- Location: LCCOMB_X14_Y20_N14
\Add4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~3_combout\ = (\A[1]~input_o\ & ((\Add3~8_combout\ & (\Add4~1\ & VCC)) # (!\Add3~8_combout\ & (!\Add4~1\)))) # (!\A[1]~input_o\ & ((\Add3~8_combout\ & (!\Add4~1\)) # (!\Add3~8_combout\ & ((\Add4~1\) # (GND)))))
-- \Add4~4\ = CARRY((\A[1]~input_o\ & (!\Add3~8_combout\ & !\Add4~1\)) # (!\A[1]~input_o\ & ((!\Add4~1\) # (!\Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~3_combout\,
	cout => \Add4~4\);

-- Location: LCCOMB_X14_Y20_N18
\Add4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~5_combout\ = (\B[5]~input_o\ & (\Add4~3_combout\)) # (!\B[5]~input_o\ & ((\Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \Add4~3_combout\,
	datad => \Add3~8_combout\,
	combout => \Add4~5_combout\);

-- Location: LCCOMB_X14_Y20_N26
\product~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product~7_combout\ = \Add4~5_combout\ $ (((\A[0]~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[6]~input_o\,
	datad => \Add4~5_combout\,
	combout => \product~7_combout\);

-- Location: LCCOMB_X14_Y20_N30
\Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\A[0]~input_o\ & ((\B[5]~input_o\ & (\Add4~3_combout\)) # (!\B[5]~input_o\ & ((\Add3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Add4~3_combout\,
	datad => \Add3~8_combout\,
	combout => \Add5~0_combout\);

-- Location: IOIBUF_X13_Y25_N15
\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X15_Y21_N26
\product~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product~8_combout\ = (\A[7]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => \B[0]~input_o\,
	combout => \product~8_combout\);

-- Location: LCCOMB_X15_Y21_N24
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \product~8_combout\ $ (\Add0~25\ $ (!\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product~8_combout\,
	datad => \A[6]~input_o\,
	cin => \Add0~25\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X15_Y21_N6
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\B[1]~input_o\ & (((\Add0~26_combout\)))) # (!\B[1]~input_o\ & (\A[7]~input_o\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Add0~26_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add0~34_combout\);

-- Location: LCCOMB_X16_Y21_N24
\Add1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = \Add0~34_combout\ $ (\Add1~13\ $ (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~34_combout\,
	datad => \A[5]~input_o\,
	cin => \Add1~13\,
	combout => \Add1~15_combout\);

-- Location: LCCOMB_X16_Y21_N26
\Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (\B[2]~input_o\ & ((\Add1~15_combout\))) # (!\B[2]~input_o\ & (\Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~34_combout\,
	datac => \B[2]~input_o\,
	datad => \Add1~15_combout\,
	combout => \Add1~17_combout\);

-- Location: LCCOMB_X13_Y21_N28
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = \Add1~17_combout\ $ (\A[4]~input_o\ $ (!\Add2~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~17_combout\,
	datab => \A[4]~input_o\,
	cin => \Add2~10\,
	combout => \Add2~12_combout\);

-- Location: LCCOMB_X13_Y21_N2
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\B[3]~input_o\ & (\Add2~12_combout\)) # (!\B[3]~input_o\ & ((\Add1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~12_combout\,
	datac => \Add1~17_combout\,
	datad => \B[3]~input_o\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X13_Y21_N10
\Add3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~9_combout\ = \Add2~14_combout\ $ (\Add3~7\ $ (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~14_combout\,
	datad => \A[3]~input_o\,
	cin => \Add3~7\,
	combout => \Add3~9_combout\);

-- Location: LCCOMB_X13_Y21_N14
\Add3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~11_combout\ = (\B[4]~input_o\ & ((\Add3~9_combout\))) # (!\B[4]~input_o\ & (\Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~14_combout\,
	datac => \B[4]~input_o\,
	datad => \Add3~9_combout\,
	combout => \Add3~11_combout\);

-- Location: LCCOMB_X14_Y20_N16
\Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = \Add3~11_combout\ $ (\A[2]~input_o\ $ (!\Add4~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~11_combout\,
	datab => \A[2]~input_o\,
	cin => \Add4~4\,
	combout => \Add4~6_combout\);

-- Location: LCCOMB_X14_Y20_N20
\Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\B[5]~input_o\ & ((\Add4~6_combout\))) # (!\B[5]~input_o\ & (\Add3~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \Add3~11_combout\,
	datad => \Add4~6_combout\,
	combout => \Add4~8_combout\);

-- Location: LCCOMB_X14_Y20_N8
\product~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product~9_combout\ = \Add4~8_combout\ $ (((\B[6]~input_o\ & (\A[1]~input_o\ $ (\Add5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[6]~input_o\,
	datac => \Add5~0_combout\,
	datad => \Add4~8_combout\,
	combout => \product~9_combout\);

-- Location: IOIBUF_X15_Y25_N15
\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X14_Y20_N2
\product~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product~10_combout\ = \product~9_combout\ $ (((\A[0]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \product~9_combout\,
	datad => \B[7]~input_o\,
	combout => \product~10_combout\);

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

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;
END structure;


