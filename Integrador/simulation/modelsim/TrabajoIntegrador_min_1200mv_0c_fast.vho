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

-- DATE "07/28/2026 16:34:29"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SUM4_FLAGS IS
    PORT (
	V : OUT std_logic;
	Carry_in : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	C : OUT std_logic;
	N : OUT std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0);
	Z : OUT std_logic
	);
END SUM4_FLAGS;

-- Design Ports Information
-- V	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carry_in	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SUM4_FLAGS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_Carry_in : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \N~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst7|inst~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Carry_in~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst|inst~1_combout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst6|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst~1_combout\ : std_logic;
SIGNAL \inst8|inst~0_combout\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst8|inst4~combout\ : std_logic;
SIGNAL \inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst6|inst4~combout\ : std_logic;
SIGNAL \inst|inst4~0_combout\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \ALT_INV_inst5~combout\ : std_logic;

BEGIN

V <= ww_V;
ww_Carry_in <= Carry_in;
ww_A <= A;
ww_B <= B;
C <= ww_C;
N <= ww_N;
S <= ww_S;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst5~combout\ <= NOT \inst5~combout\;

-- Location: IOOBUF_X24_Y0_N9
\V~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~combout\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\C~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst~0_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\N~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst4~combout\,
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\S[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst4~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\S[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst4~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\S[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst4~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\S[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\Z~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst5~combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X31_Y0_N1
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X23_Y16_N16
\inst7|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|inst~0_combout\ = (\B[2]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst7|inst~0_combout\);

-- Location: IOIBUF_X24_Y0_N1
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\Carry_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Carry_in,
	o => \Carry_in~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X23_Y16_N12
\inst|inst~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst~1_combout\ = (\Carry_in~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Carry_in~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|inst~1_combout\);

-- Location: LCCOMB_X23_Y16_N2
\inst|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = (\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|inst~0_combout\);

-- Location: IOIBUF_X33_Y14_N8
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X23_Y16_N30
\inst6|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst~0_combout\ = (\B[1]~input_o\ & ((\inst|inst~1_combout\) # ((\inst|inst~0_combout\) # (\A[1]~input_o\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & ((\inst|inst~1_combout\) # (\inst|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~1_combout\,
	datab => \inst|inst~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst6|inst~0_combout\);

-- Location: LCCOMB_X23_Y16_N0
\inst7|inst~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|inst~1_combout\ = (\inst6|inst~0_combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \inst6|inst~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst7|inst~1_combout\);

-- Location: LCCOMB_X23_Y16_N26
\inst8|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8|inst~0_combout\ = (\A[3]~input_o\ & ((\inst7|inst~0_combout\) # ((\B[3]~input_o\) # (\inst7|inst~1_combout\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\inst7|inst~0_combout\) # (\inst7|inst~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \inst7|inst~0_combout\,
	datac => \B[3]~input_o\,
	datad => \inst7|inst~1_combout\,
	combout => \inst8|inst~0_combout\);

-- Location: LCCOMB_X23_Y16_N6
inst4 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~combout\ = \inst8|inst~0_combout\ $ (((\B[2]~input_o\ & ((\inst6|inst~0_combout\) # (\A[2]~input_o\))) # (!\B[2]~input_o\ & (\inst6|inst~0_combout\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst~0_combout\,
	datab => \B[2]~input_o\,
	datac => \inst6|inst~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst4~combout\);

-- Location: LCCOMB_X23_Y16_N4
\inst8|inst4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8|inst4~combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (((\inst7|inst~0_combout\) # (\inst7|inst~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \inst7|inst~0_combout\,
	datac => \B[3]~input_o\,
	datad => \inst7|inst~1_combout\,
	combout => \inst8|inst4~combout\);

-- Location: LCCOMB_X23_Y16_N22
\inst7|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|inst4~0_combout\ = \B[2]~input_o\ $ (\inst6|inst~0_combout\ $ (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \inst6|inst~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst7|inst4~0_combout\);

-- Location: LCCOMB_X23_Y16_N24
\inst6|inst4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst4~combout\ = \B[1]~input_o\ $ (\A[1]~input_o\ $ (((\inst|inst~1_combout\) # (\inst|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~1_combout\,
	datab => \inst|inst~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst6|inst4~combout\);

-- Location: LCCOMB_X23_Y16_N18
\inst|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst4~0_combout\ = \Carry_in~input_o\ $ (\B[0]~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Carry_in~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|inst4~0_combout\);

-- Location: LCCOMB_X23_Y16_N20
inst5 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~combout\ = (\inst7|inst4~0_combout\) # ((\inst|inst4~0_combout\) # ((\inst6|inst4~combout\) # (\inst8|inst4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4~0_combout\,
	datab => \inst|inst4~0_combout\,
	datac => \inst6|inst4~combout\,
	datad => \inst8|inst4~combout\,
	combout => \inst5~combout\);

ww_V <= \V~output_o\;

ww_C <= \C~output_o\;

ww_N <= \N~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_Z <= \Z~output_o\;
END structure;


