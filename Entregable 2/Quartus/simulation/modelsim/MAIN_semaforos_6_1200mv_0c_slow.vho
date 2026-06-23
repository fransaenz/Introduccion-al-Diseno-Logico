-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/22/2026 09:11:40"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MAIN_semaforos IS
    PORT (
	S1r : OUT std_logic;
	Q0 : IN std_logic;
	Q1 : IN std_logic;
	Q2 : IN std_logic;
	Q3 : IN std_logic;
	CLKin : IN std_logic;
	RSTn : IN std_logic;
	S2v : OUT std_logic;
	S2a : OUT std_logic;
	S2r : OUT std_logic;
	S3v : OUT std_logic;
	S3a : OUT std_logic;
	S3r : OUT std_logic;
	S4v : OUT std_logic;
	S4a : OUT std_logic;
	S4r : OUT std_logic;
	P1v : OUT std_logic;
	P1r : OUT std_logic;
	P3v : OUT std_logic;
	P3r : OUT std_logic;
	S1v : OUT std_logic;
	S1a : OUT std_logic
	);
END MAIN_semaforos;

-- Design Ports Information
-- S1r	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2v	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2a	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2r	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3v	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3a	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3r	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4v	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4a	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4r	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P1v	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P1r	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P3v	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P3r	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1v	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1a	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKin	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSTn	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MAIN_semaforos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S1r : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_CLKin : std_logic;
SIGNAL ww_RSTn : std_logic;
SIGNAL ww_S2v : std_logic;
SIGNAL ww_S2a : std_logic;
SIGNAL ww_S2r : std_logic;
SIGNAL ww_S3v : std_logic;
SIGNAL ww_S3a : std_logic;
SIGNAL ww_S3r : std_logic;
SIGNAL ww_S4v : std_logic;
SIGNAL ww_S4a : std_logic;
SIGNAL ww_S4r : std_logic;
SIGNAL ww_P1v : std_logic;
SIGNAL ww_P1r : std_logic;
SIGNAL ww_P3v : std_logic;
SIGNAL ww_P3r : std_logic;
SIGNAL ww_S1v : std_logic;
SIGNAL ww_S1a : std_logic;
SIGNAL \RSTn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLKin~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S1r~output_o\ : std_logic;
SIGNAL \S2v~output_o\ : std_logic;
SIGNAL \S2a~output_o\ : std_logic;
SIGNAL \S2r~output_o\ : std_logic;
SIGNAL \S3v~output_o\ : std_logic;
SIGNAL \S3a~output_o\ : std_logic;
SIGNAL \S3r~output_o\ : std_logic;
SIGNAL \S4v~output_o\ : std_logic;
SIGNAL \S4a~output_o\ : std_logic;
SIGNAL \S4r~output_o\ : std_logic;
SIGNAL \P1v~output_o\ : std_logic;
SIGNAL \P1r~output_o\ : std_logic;
SIGNAL \P3v~output_o\ : std_logic;
SIGNAL \P3r~output_o\ : std_logic;
SIGNAL \S1v~output_o\ : std_logic;
SIGNAL \S1a~output_o\ : std_logic;
SIGNAL \CLKin~input_o\ : std_logic;
SIGNAL \CLKin~inputclkctrl_outclk\ : std_logic;
SIGNAL \Q1~input_o\ : std_logic;
SIGNAL \Q2~input_o\ : std_logic;
SIGNAL \Q3~input_o\ : std_logic;
SIGNAL \Q0~input_o\ : std_logic;
SIGNAL \inst|inst9~0_combout\ : std_logic;
SIGNAL \RSTn~input_o\ : std_logic;
SIGNAL \RSTn~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|D4~q\ : std_logic;
SIGNAL \inst|D7~feeder_combout\ : std_logic;
SIGNAL \inst|D7~q\ : std_logic;
SIGNAL \inst12~0_combout\ : std_logic;
SIGNAL \inst12~1_combout\ : std_logic;
SIGNAL \inst12~2_combout\ : std_logic;
SIGNAL \ALT_INV_inst12~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst12~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_D7~q\ : std_logic;

BEGIN

S1r <= ww_S1r;
ww_Q0 <= Q0;
ww_Q1 <= Q1;
ww_Q2 <= Q2;
ww_Q3 <= Q3;
ww_CLKin <= CLKin;
ww_RSTn <= RSTn;
S2v <= ww_S2v;
S2a <= ww_S2a;
S2r <= ww_S2r;
S3v <= ww_S3v;
S3a <= ww_S3a;
S3r <= ww_S3r;
S4v <= ww_S4v;
S4a <= ww_S4a;
S4r <= ww_S4r;
P1v <= ww_P1v;
P1r <= ww_P1r;
P3v <= ww_P3v;
P3r <= ww_P3r;
S1v <= ww_S1v;
S1a <= ww_S1a;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RSTn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RSTn~input_o\);

\CLKin~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLKin~input_o\);
\ALT_INV_inst12~1_combout\ <= NOT \inst12~1_combout\;
\ALT_INV_inst12~0_combout\ <= NOT \inst12~0_combout\;
\inst|ALT_INV_D7~q\ <= NOT \inst|D7~q\;

-- Location: IOOBUF_X31_Y31_N2
\S1r~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S1r~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\S2v~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \S2v~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\S2a~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst12~0_combout\,
	devoe => ww_devoe,
	o => \S2a~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\S2r~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_D7~q\,
	devoe => ww_devoe,
	o => \S2r~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\S3v~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \S3v~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\S3a~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst12~0_combout\,
	devoe => ww_devoe,
	o => \S3a~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\S3r~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_D7~q\,
	devoe => ww_devoe,
	o => \S3r~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\S4v~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \S4v~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\S4a~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst12~0_combout\,
	devoe => ww_devoe,
	o => \S4a~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\S4r~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_D7~q\,
	devoe => ww_devoe,
	o => \S4r~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\P1v~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \P1v~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\P1r~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst12~1_combout\,
	devoe => ww_devoe,
	o => \P1r~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\P3v~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \P3v~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\P3r~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~0_combout\,
	devoe => ww_devoe,
	o => \P3r~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\S1v~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~2_combout\,
	devoe => ww_devoe,
	o => \S1v~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\S1a~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \S1a~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\CLKin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLKin,
	o => \CLKin~input_o\);

-- Location: CLKCTRL_G17
\CLKin~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLKin~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLKin~inputclkctrl_outclk\);

-- Location: IOIBUF_X10_Y31_N1
\Q1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q1,
	o => \Q1~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\Q2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q2,
	o => \Q2~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\Q3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q3,
	o => \Q3~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\Q0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q0,
	o => \Q0~input_o\);

-- Location: LCCOMB_X14_Y20_N0
\inst|inst9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst9~0_combout\ = (!\Q1~input_o\ & (!\Q2~input_o\ & (\Q3~input_o\ & !\Q0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q1~input_o\,
	datab => \Q2~input_o\,
	datac => \Q3~input_o\,
	datad => \Q0~input_o\,
	combout => \inst|inst9~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\RSTn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RSTn,
	o => \RSTn~input_o\);

-- Location: CLKCTRL_G19
\RSTn~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RSTn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RSTn~inputclkctrl_outclk\);

-- Location: FF_X14_Y20_N1
\inst|D4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \inst|inst9~0_combout\,
	clrn => \RSTn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|D4~q\);

-- Location: LCCOMB_X14_Y20_N18
\inst|D7~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|D7~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|D7~feeder_combout\);

-- Location: FF_X14_Y20_N19
\inst|D7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \inst|D7~feeder_combout\,
	clrn => \RSTn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|D7~q\);

-- Location: LCCOMB_X14_Y20_N20
\inst12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12~0_combout\ = (\inst|D4~q\ & \inst|D7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|D4~q\,
	datad => \inst|D7~q\,
	combout => \inst12~0_combout\);

-- Location: LCCOMB_X14_Y20_N6
\inst12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12~1_combout\ = (!\inst|D4~q\ & \inst|D7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|D4~q\,
	datad => \inst|D7~q\,
	combout => \inst12~1_combout\);

-- Location: LCCOMB_X14_Y20_N16
\inst12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12~2_combout\ = (\inst|D4~q\) # (\inst|D7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|D4~q\,
	datad => \inst|D7~q\,
	combout => \inst12~2_combout\);

ww_S1r <= \S1r~output_o\;

ww_S2v <= \S2v~output_o\;

ww_S2a <= \S2a~output_o\;

ww_S2r <= \S2r~output_o\;

ww_S3v <= \S3v~output_o\;

ww_S3a <= \S3a~output_o\;

ww_S3r <= \S3r~output_o\;

ww_S4v <= \S4v~output_o\;

ww_S4a <= \S4a~output_o\;

ww_S4r <= \S4r~output_o\;

ww_P1v <= \P1v~output_o\;

ww_P1r <= \P1r~output_o\;

ww_P3v <= \P3v~output_o\;

ww_P3r <= \P3r~output_o\;

ww_S1v <= \S1v~output_o\;

ww_S1a <= \S1a~output_o\;
END structure;


