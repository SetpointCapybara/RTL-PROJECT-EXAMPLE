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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/30/2019 18:35:13"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Final IS
    PORT (
	clk_in : IN std_logic;
	clr_in : IN std_logic;
	CT_in : IN std_logic_vector(7 DOWNTO 0);
	WT_in : IN std_logic_vector(7 DOWNTO 0);
	w_out : OUT std_logic
	);
END Final;

-- Design Ports Information
-- w_out	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clr_in	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WT_in[6]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WT_in[7]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WT_in[5]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WT_in[4]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WT_in[3]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WT_in[2]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WT_in[1]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WT_in[0]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_in	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CT_in[7]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CT_in[6]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CT_in[5]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CT_in[4]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CT_in[3]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CT_in[2]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CT_in[1]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CT_in[0]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Final IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_clr_in : std_logic;
SIGNAL ww_CT_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_WT_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w_out : std_logic;
SIGNAL \clk_in~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Datapath_connections|Add1~8_combout\ : std_logic;
SIGNAL \Datapath_connections|Add1~10_combout\ : std_logic;
SIGNAL \Datapath_connections|Add0~0_combout\ : std_logic;
SIGNAL \Datapath_connections|Add0~2_combout\ : std_logic;
SIGNAL \Datapath_connections|Add0~4_combout\ : std_logic;
SIGNAL \Datapath_connections|Add0~6_combout\ : std_logic;
SIGNAL \Datapath_connections|Add0~12_combout\ : std_logic;
SIGNAL \Datapath_connections|register_md|result1[0]~10_combout\ : std_logic;
SIGNAL \Datapath_connections|register_md|result1[1]~12_combout\ : std_logic;
SIGNAL \Datapath_connections|register_md|result1[2]~14_combout\ : std_logic;
SIGNAL \clk_in~combout\ : std_logic;
SIGNAL \clk_in~clkctrl_outclk\ : std_logic;
SIGNAL \controller_connections|estado_atual.S0~feeder_combout\ : std_logic;
SIGNAL \clr_in~combout\ : std_logic;
SIGNAL \controller_connections|estado_atual.S0~regout\ : std_logic;
SIGNAL \controller_connections|estado_atual.S1~0_combout\ : std_logic;
SIGNAL \controller_connections|estado_atual.S1~regout\ : std_logic;
SIGNAL \controller_connections|estado_atual.S2~feeder_combout\ : std_logic;
SIGNAL \controller_connections|estado_atual.S2~regout\ : std_logic;
SIGNAL \controller_connections|estado_atual.S3~feeder_combout\ : std_logic;
SIGNAL \controller_connections|estado_atual.S3~regout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp0|result1[7]~feeder_combout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp2|result1[6]~feeder_combout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp2|result1[5]~feeder_combout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp2|result1[4]~feeder_combout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp0|result1[3]~feeder_combout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp1|result1[3]~feeder_combout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp2|result1[3]~feeder_combout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp0|result1[2]~feeder_combout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp2|result1[2]~feeder_combout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp0|result1[1]~feeder_combout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp1|result1[1]~feeder_combout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp2|result1[1]~feeder_combout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp0|result1[0]~feeder_combout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp2|result1[0]~feeder_combout\ : std_logic;
SIGNAL \Datapath_connections|Add1~1\ : std_logic;
SIGNAL \Datapath_connections|Add1~3\ : std_logic;
SIGNAL \Datapath_connections|Add1~5\ : std_logic;
SIGNAL \Datapath_connections|Add1~7\ : std_logic;
SIGNAL \Datapath_connections|Add1~9\ : std_logic;
SIGNAL \Datapath_connections|Add1~11\ : std_logic;
SIGNAL \Datapath_connections|Add1~13\ : std_logic;
SIGNAL \Datapath_connections|Add1~14_combout\ : std_logic;
SIGNAL \Datapath_connections|Add0~1\ : std_logic;
SIGNAL \Datapath_connections|Add0~3\ : std_logic;
SIGNAL \Datapath_connections|Add0~5\ : std_logic;
SIGNAL \Datapath_connections|Add0~7\ : std_logic;
SIGNAL \Datapath_connections|Add0~9\ : std_logic;
SIGNAL \Datapath_connections|Add0~11\ : std_logic;
SIGNAL \Datapath_connections|Add0~13\ : std_logic;
SIGNAL \Datapath_connections|Add0~14_combout\ : std_logic;
SIGNAL \Datapath_connections|Add1~12_combout\ : std_logic;
SIGNAL \Datapath_connections|Add0~10_combout\ : std_logic;
SIGNAL \Datapath_connections|Add0~8_combout\ : std_logic;
SIGNAL \Datapath_connections|Add1~6_combout\ : std_logic;
SIGNAL \Datapath_connections|Add1~4_combout\ : std_logic;
SIGNAL \Datapath_connections|Add1~2_combout\ : std_logic;
SIGNAL \Datapath_connections|Add1~0_combout\ : std_logic;
SIGNAL \Datapath_connections|register_md|result1[0]~7_cout\ : std_logic;
SIGNAL \Datapath_connections|register_md|result1[0]~9_cout\ : std_logic;
SIGNAL \Datapath_connections|register_md|result1[0]~11\ : std_logic;
SIGNAL \Datapath_connections|register_md|result1[1]~13\ : std_logic;
SIGNAL \Datapath_connections|register_md|result1[2]~15\ : std_logic;
SIGNAL \Datapath_connections|register_md|result1[3]~17\ : std_logic;
SIGNAL \Datapath_connections|register_md|result1[4]~19\ : std_logic;
SIGNAL \Datapath_connections|register_md|result1[5]~20_combout\ : std_logic;
SIGNAL \Datapath_connections|register_md|result1[4]~18_combout\ : std_logic;
SIGNAL \Datapath_connections|register_md|result1[3]~16_combout\ : std_logic;
SIGNAL \Datapath_connections|LessThan0~1_cout\ : std_logic;
SIGNAL \Datapath_connections|LessThan0~3_cout\ : std_logic;
SIGNAL \Datapath_connections|LessThan0~5_cout\ : std_logic;
SIGNAL \Datapath_connections|LessThan0~7_cout\ : std_logic;
SIGNAL \Datapath_connections|LessThan0~9_cout\ : std_logic;
SIGNAL \Datapath_connections|LessThan0~10_combout\ : std_logic;
SIGNAL \controller_connections|Selector2~0_combout\ : std_logic;
SIGNAL \controller_connections|Selector2~1_combout\ : std_logic;
SIGNAL \controller_connections|estado_atual.S4~regout\ : std_logic;
SIGNAL \controller_connections|estado_atual.S5~feeder_combout\ : std_logic;
SIGNAL \controller_connections|estado_atual.S5~regout\ : std_logic;
SIGNAL \controller_connections|estado_atual.S6~feeder_combout\ : std_logic;
SIGNAL \controller_connections|estado_atual.S6~regout\ : std_logic;
SIGNAL \controller_connections|proximo_estado.S7~0_combout\ : std_logic;
SIGNAL \controller_connections|estado_atual.S7~regout\ : std_logic;
SIGNAL \controller_connections|Selector0~0_combout\ : std_logic;
SIGNAL \controller_connections|Selector0~1_combout\ : std_logic;
SIGNAL \controller_connections|w~combout\ : std_logic;
SIGNAL \Datapath_connections|register_tmp3|result1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Datapath_connections|register_tmp1|result1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Datapath_connections|register_tmp2|result1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Datapath_connections|register_md|result1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Datapath_connections|register_tmp0|result1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \WT_in~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CT_in~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk_in <= clk_in;
ww_clr_in <= clr_in;
ww_CT_in <= CT_in;
ww_WT_in <= WT_in;
w_out <= ww_w_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_in~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_in~combout\);

-- Location: LCFF_X3_Y6_N13
\Datapath_connections|register_md|result1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~combout\,
	datain => \Datapath_connections|register_md|result1[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_md|result1\(2));

-- Location: LCFF_X3_Y6_N11
\Datapath_connections|register_md|result1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~combout\,
	datain => \Datapath_connections|register_md|result1[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_md|result1\(1));

-- Location: LCFF_X3_Y6_N9
\Datapath_connections|register_md|result1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~combout\,
	datain => \Datapath_connections|register_md|result1[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_md|result1\(0));

-- Location: LCCOMB_X4_Y6_N8
\Datapath_connections|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add1~8_combout\ = ((\Datapath_connections|register_tmp3|result1\(4) $ (\Datapath_connections|register_tmp2|result1\(4) $ (!\Datapath_connections|Add1~7\)))) # (GND)
-- \Datapath_connections|Add1~9\ = CARRY((\Datapath_connections|register_tmp3|result1\(4) & ((\Datapath_connections|register_tmp2|result1\(4)) # (!\Datapath_connections|Add1~7\))) # (!\Datapath_connections|register_tmp3|result1\(4) & 
-- (\Datapath_connections|register_tmp2|result1\(4) & !\Datapath_connections|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp3|result1\(4),
	datab => \Datapath_connections|register_tmp2|result1\(4),
	datad => VCC,
	cin => \Datapath_connections|Add1~7\,
	combout => \Datapath_connections|Add1~8_combout\,
	cout => \Datapath_connections|Add1~9\);

-- Location: LCCOMB_X4_Y6_N10
\Datapath_connections|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add1~10_combout\ = (\Datapath_connections|register_tmp3|result1\(5) & ((\Datapath_connections|register_tmp2|result1\(5) & (\Datapath_connections|Add1~9\ & VCC)) # (!\Datapath_connections|register_tmp2|result1\(5) & 
-- (!\Datapath_connections|Add1~9\)))) # (!\Datapath_connections|register_tmp3|result1\(5) & ((\Datapath_connections|register_tmp2|result1\(5) & (!\Datapath_connections|Add1~9\)) # (!\Datapath_connections|register_tmp2|result1\(5) & 
-- ((\Datapath_connections|Add1~9\) # (GND)))))
-- \Datapath_connections|Add1~11\ = CARRY((\Datapath_connections|register_tmp3|result1\(5) & (!\Datapath_connections|register_tmp2|result1\(5) & !\Datapath_connections|Add1~9\)) # (!\Datapath_connections|register_tmp3|result1\(5) & 
-- ((!\Datapath_connections|Add1~9\) # (!\Datapath_connections|register_tmp2|result1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp3|result1\(5),
	datab => \Datapath_connections|register_tmp2|result1\(5),
	datad => VCC,
	cin => \Datapath_connections|Add1~9\,
	combout => \Datapath_connections|Add1~10_combout\,
	cout => \Datapath_connections|Add1~11\);

-- Location: LCCOMB_X2_Y6_N8
\Datapath_connections|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add0~0_combout\ = (\Datapath_connections|register_tmp0|result1\(0) & (\Datapath_connections|register_tmp1|result1\(0) $ (VCC))) # (!\Datapath_connections|register_tmp0|result1\(0) & (\Datapath_connections|register_tmp1|result1\(0) & 
-- VCC))
-- \Datapath_connections|Add0~1\ = CARRY((\Datapath_connections|register_tmp0|result1\(0) & \Datapath_connections|register_tmp1|result1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp0|result1\(0),
	datab => \Datapath_connections|register_tmp1|result1\(0),
	datad => VCC,
	combout => \Datapath_connections|Add0~0_combout\,
	cout => \Datapath_connections|Add0~1\);

-- Location: LCCOMB_X2_Y6_N10
\Datapath_connections|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add0~2_combout\ = (\Datapath_connections|register_tmp1|result1\(1) & ((\Datapath_connections|register_tmp0|result1\(1) & (\Datapath_connections|Add0~1\ & VCC)) # (!\Datapath_connections|register_tmp0|result1\(1) & 
-- (!\Datapath_connections|Add0~1\)))) # (!\Datapath_connections|register_tmp1|result1\(1) & ((\Datapath_connections|register_tmp0|result1\(1) & (!\Datapath_connections|Add0~1\)) # (!\Datapath_connections|register_tmp0|result1\(1) & 
-- ((\Datapath_connections|Add0~1\) # (GND)))))
-- \Datapath_connections|Add0~3\ = CARRY((\Datapath_connections|register_tmp1|result1\(1) & (!\Datapath_connections|register_tmp0|result1\(1) & !\Datapath_connections|Add0~1\)) # (!\Datapath_connections|register_tmp1|result1\(1) & 
-- ((!\Datapath_connections|Add0~1\) # (!\Datapath_connections|register_tmp0|result1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp1|result1\(1),
	datab => \Datapath_connections|register_tmp0|result1\(1),
	datad => VCC,
	cin => \Datapath_connections|Add0~1\,
	combout => \Datapath_connections|Add0~2_combout\,
	cout => \Datapath_connections|Add0~3\);

-- Location: LCCOMB_X2_Y6_N12
\Datapath_connections|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add0~4_combout\ = ((\Datapath_connections|register_tmp0|result1\(2) $ (\Datapath_connections|register_tmp1|result1\(2) $ (!\Datapath_connections|Add0~3\)))) # (GND)
-- \Datapath_connections|Add0~5\ = CARRY((\Datapath_connections|register_tmp0|result1\(2) & ((\Datapath_connections|register_tmp1|result1\(2)) # (!\Datapath_connections|Add0~3\))) # (!\Datapath_connections|register_tmp0|result1\(2) & 
-- (\Datapath_connections|register_tmp1|result1\(2) & !\Datapath_connections|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp0|result1\(2),
	datab => \Datapath_connections|register_tmp1|result1\(2),
	datad => VCC,
	cin => \Datapath_connections|Add0~3\,
	combout => \Datapath_connections|Add0~4_combout\,
	cout => \Datapath_connections|Add0~5\);

-- Location: LCCOMB_X2_Y6_N14
\Datapath_connections|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add0~6_combout\ = (\Datapath_connections|register_tmp1|result1\(3) & ((\Datapath_connections|register_tmp0|result1\(3) & (\Datapath_connections|Add0~5\ & VCC)) # (!\Datapath_connections|register_tmp0|result1\(3) & 
-- (!\Datapath_connections|Add0~5\)))) # (!\Datapath_connections|register_tmp1|result1\(3) & ((\Datapath_connections|register_tmp0|result1\(3) & (!\Datapath_connections|Add0~5\)) # (!\Datapath_connections|register_tmp0|result1\(3) & 
-- ((\Datapath_connections|Add0~5\) # (GND)))))
-- \Datapath_connections|Add0~7\ = CARRY((\Datapath_connections|register_tmp1|result1\(3) & (!\Datapath_connections|register_tmp0|result1\(3) & !\Datapath_connections|Add0~5\)) # (!\Datapath_connections|register_tmp1|result1\(3) & 
-- ((!\Datapath_connections|Add0~5\) # (!\Datapath_connections|register_tmp0|result1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp1|result1\(3),
	datab => \Datapath_connections|register_tmp0|result1\(3),
	datad => VCC,
	cin => \Datapath_connections|Add0~5\,
	combout => \Datapath_connections|Add0~6_combout\,
	cout => \Datapath_connections|Add0~7\);

-- Location: LCCOMB_X2_Y6_N20
\Datapath_connections|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add0~12_combout\ = ((\Datapath_connections|register_tmp0|result1\(6) $ (\Datapath_connections|register_tmp1|result1\(6) $ (!\Datapath_connections|Add0~11\)))) # (GND)
-- \Datapath_connections|Add0~13\ = CARRY((\Datapath_connections|register_tmp0|result1\(6) & ((\Datapath_connections|register_tmp1|result1\(6)) # (!\Datapath_connections|Add0~11\))) # (!\Datapath_connections|register_tmp0|result1\(6) & 
-- (\Datapath_connections|register_tmp1|result1\(6) & !\Datapath_connections|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp0|result1\(6),
	datab => \Datapath_connections|register_tmp1|result1\(6),
	datad => VCC,
	cin => \Datapath_connections|Add0~11\,
	combout => \Datapath_connections|Add0~12_combout\,
	cout => \Datapath_connections|Add0~13\);

-- Location: LCCOMB_X3_Y6_N8
\Datapath_connections|register_md|result1[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_md|result1[0]~10_combout\ = ((\Datapath_connections|Add0~4_combout\ $ (\Datapath_connections|Add1~4_combout\ $ (!\Datapath_connections|register_md|result1[0]~9_cout\)))) # (GND)
-- \Datapath_connections|register_md|result1[0]~11\ = CARRY((\Datapath_connections|Add0~4_combout\ & ((\Datapath_connections|Add1~4_combout\) # (!\Datapath_connections|register_md|result1[0]~9_cout\))) # (!\Datapath_connections|Add0~4_combout\ & 
-- (\Datapath_connections|Add1~4_combout\ & !\Datapath_connections|register_md|result1[0]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|Add0~4_combout\,
	datab => \Datapath_connections|Add1~4_combout\,
	datad => VCC,
	cin => \Datapath_connections|register_md|result1[0]~9_cout\,
	combout => \Datapath_connections|register_md|result1[0]~10_combout\,
	cout => \Datapath_connections|register_md|result1[0]~11\);

-- Location: LCCOMB_X3_Y6_N10
\Datapath_connections|register_md|result1[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_md|result1[1]~12_combout\ = (\Datapath_connections|Add0~6_combout\ & ((\Datapath_connections|Add1~6_combout\ & (\Datapath_connections|register_md|result1[0]~11\ & VCC)) # (!\Datapath_connections|Add1~6_combout\ & 
-- (!\Datapath_connections|register_md|result1[0]~11\)))) # (!\Datapath_connections|Add0~6_combout\ & ((\Datapath_connections|Add1~6_combout\ & (!\Datapath_connections|register_md|result1[0]~11\)) # (!\Datapath_connections|Add1~6_combout\ & 
-- ((\Datapath_connections|register_md|result1[0]~11\) # (GND)))))
-- \Datapath_connections|register_md|result1[1]~13\ = CARRY((\Datapath_connections|Add0~6_combout\ & (!\Datapath_connections|Add1~6_combout\ & !\Datapath_connections|register_md|result1[0]~11\)) # (!\Datapath_connections|Add0~6_combout\ & 
-- ((!\Datapath_connections|register_md|result1[0]~11\) # (!\Datapath_connections|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|Add0~6_combout\,
	datab => \Datapath_connections|Add1~6_combout\,
	datad => VCC,
	cin => \Datapath_connections|register_md|result1[0]~11\,
	combout => \Datapath_connections|register_md|result1[1]~12_combout\,
	cout => \Datapath_connections|register_md|result1[1]~13\);

-- Location: LCCOMB_X3_Y6_N12
\Datapath_connections|register_md|result1[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_md|result1[2]~14_combout\ = ((\Datapath_connections|Add1~8_combout\ $ (\Datapath_connections|Add0~8_combout\ $ (!\Datapath_connections|register_md|result1[1]~13\)))) # (GND)
-- \Datapath_connections|register_md|result1[2]~15\ = CARRY((\Datapath_connections|Add1~8_combout\ & ((\Datapath_connections|Add0~8_combout\) # (!\Datapath_connections|register_md|result1[1]~13\))) # (!\Datapath_connections|Add1~8_combout\ & 
-- (\Datapath_connections|Add0~8_combout\ & !\Datapath_connections|register_md|result1[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|Add1~8_combout\,
	datab => \Datapath_connections|Add0~8_combout\,
	datad => VCC,
	cin => \Datapath_connections|register_md|result1[1]~13\,
	combout => \Datapath_connections|register_md|result1[2]~14_combout\,
	cout => \Datapath_connections|register_md|result1[2]~15\);

-- Location: LCFF_X4_Y6_N13
\Datapath_connections|register_tmp3|result1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp2|result1\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp3|result1\(6));

-- Location: LCFF_X4_Y6_N11
\Datapath_connections|register_tmp3|result1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp2|result1\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp3|result1\(5));

-- Location: LCFF_X4_Y6_N9
\Datapath_connections|register_tmp3|result1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp2|result1\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp3|result1\(4));

-- Location: LCFF_X4_Y6_N7
\Datapath_connections|register_tmp3|result1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp2|result1\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp3|result1\(3));

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WT_in[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_WT_in(4),
	combout => \WT_in~combout\(4));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WT_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_WT_in(3),
	combout => \WT_in~combout\(3));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk_in,
	combout => \clk_in~combout\);

-- Location: CLKCTRL_G2
\clk_in~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y6_N18
\controller_connections|estado_atual.S0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_connections|estado_atual.S0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \controller_connections|estado_atual.S0~feeder_combout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clr_in,
	combout => \clr_in~combout\);

-- Location: LCFF_X5_Y6_N19
\controller_connections|estado_atual.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~combout\,
	datain => \controller_connections|estado_atual.S0~feeder_combout\,
	aclr => \clr_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_connections|estado_atual.S0~regout\);

-- Location: LCCOMB_X6_Y6_N12
\controller_connections|estado_atual.S1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_connections|estado_atual.S1~0_combout\ = !\controller_connections|estado_atual.S0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller_connections|estado_atual.S0~regout\,
	combout => \controller_connections|estado_atual.S1~0_combout\);

-- Location: LCFF_X6_Y6_N13
\controller_connections|estado_atual.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \controller_connections|estado_atual.S1~0_combout\,
	aclr => \clr_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_connections|estado_atual.S1~regout\);

-- Location: LCCOMB_X6_Y6_N18
\controller_connections|estado_atual.S2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_connections|estado_atual.S2~feeder_combout\ = \controller_connections|estado_atual.S1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller_connections|estado_atual.S1~regout\,
	combout => \controller_connections|estado_atual.S2~feeder_combout\);

-- Location: LCFF_X6_Y6_N19
\controller_connections|estado_atual.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \controller_connections|estado_atual.S2~feeder_combout\,
	aclr => \clr_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_connections|estado_atual.S2~regout\);

-- Location: LCCOMB_X6_Y6_N14
\controller_connections|estado_atual.S3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_connections|estado_atual.S3~feeder_combout\ = \controller_connections|estado_atual.S2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller_connections|estado_atual.S2~regout\,
	combout => \controller_connections|estado_atual.S3~feeder_combout\);

-- Location: LCFF_X6_Y6_N15
\controller_connections|estado_atual.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \controller_connections|estado_atual.S3~feeder_combout\,
	aclr => \clr_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_connections|estado_atual.S3~regout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WT_in[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_WT_in(7),
	combout => \WT_in~combout\(7));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WT_in[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_WT_in(6),
	combout => \WT_in~combout\(6));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CT_in[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CT_in(7),
	combout => \CT_in~combout\(7));

-- Location: LCCOMB_X1_Y6_N20
\Datapath_connections|register_tmp0|result1[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_tmp0|result1[7]~feeder_combout\ = \CT_in~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CT_in~combout\(7),
	combout => \Datapath_connections|register_tmp0|result1[7]~feeder_combout\);

-- Location: LCFF_X1_Y6_N21
\Datapath_connections|register_tmp0|result1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Datapath_connections|register_tmp0|result1[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp0|result1\(7));

-- Location: LCFF_X2_Y6_N9
\Datapath_connections|register_tmp1|result1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp0|result1\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp1|result1\(7));

-- Location: LCFF_X3_Y6_N31
\Datapath_connections|register_tmp2|result1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp1|result1\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp2|result1\(7));

-- Location: LCFF_X4_Y6_N15
\Datapath_connections|register_tmp3|result1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp2|result1\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp3|result1\(7));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CT_in[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CT_in(6),
	combout => \CT_in~combout\(6));

-- Location: LCFF_X2_Y6_N21
\Datapath_connections|register_tmp0|result1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \CT_in~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp0|result1\(6));

-- Location: LCFF_X2_Y6_N23
\Datapath_connections|register_tmp1|result1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp0|result1\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp1|result1\(6));

-- Location: LCCOMB_X4_Y6_N26
\Datapath_connections|register_tmp2|result1[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_tmp2|result1[6]~feeder_combout\ = \Datapath_connections|register_tmp1|result1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Datapath_connections|register_tmp1|result1\(6),
	combout => \Datapath_connections|register_tmp2|result1[6]~feeder_combout\);

-- Location: LCFF_X4_Y6_N27
\Datapath_connections|register_tmp2|result1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Datapath_connections|register_tmp2|result1[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp2|result1\(6));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CT_in[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CT_in(5),
	combout => \CT_in~combout\(5));

-- Location: LCFF_X2_Y6_N19
\Datapath_connections|register_tmp0|result1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \CT_in~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp0|result1\(5));

-- Location: LCFF_X2_Y6_N13
\Datapath_connections|register_tmp1|result1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp0|result1\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp1|result1\(5));

-- Location: LCCOMB_X4_Y6_N28
\Datapath_connections|register_tmp2|result1[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_tmp2|result1[5]~feeder_combout\ = \Datapath_connections|register_tmp1|result1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Datapath_connections|register_tmp1|result1\(5),
	combout => \Datapath_connections|register_tmp2|result1[5]~feeder_combout\);

-- Location: LCFF_X4_Y6_N29
\Datapath_connections|register_tmp2|result1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Datapath_connections|register_tmp2|result1[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp2|result1\(5));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CT_in[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CT_in(4),
	combout => \CT_in~combout\(4));

-- Location: LCFF_X2_Y6_N17
\Datapath_connections|register_tmp0|result1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \CT_in~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp0|result1\(4));

-- Location: LCFF_X2_Y6_N15
\Datapath_connections|register_tmp1|result1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp0|result1\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp1|result1\(4));

-- Location: LCCOMB_X4_Y6_N22
\Datapath_connections|register_tmp2|result1[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_tmp2|result1[4]~feeder_combout\ = \Datapath_connections|register_tmp1|result1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Datapath_connections|register_tmp1|result1\(4),
	combout => \Datapath_connections|register_tmp2|result1[4]~feeder_combout\);

-- Location: LCFF_X4_Y6_N23
\Datapath_connections|register_tmp2|result1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Datapath_connections|register_tmp2|result1[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp2|result1\(4));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CT_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CT_in(3),
	combout => \CT_in~combout\(3));

-- Location: LCCOMB_X2_Y6_N0
\Datapath_connections|register_tmp0|result1[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_tmp0|result1[3]~feeder_combout\ = \CT_in~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CT_in~combout\(3),
	combout => \Datapath_connections|register_tmp0|result1[3]~feeder_combout\);

-- Location: LCFF_X2_Y6_N1
\Datapath_connections|register_tmp0|result1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Datapath_connections|register_tmp0|result1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp0|result1\(3));

-- Location: LCCOMB_X2_Y6_N28
\Datapath_connections|register_tmp1|result1[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_tmp1|result1[3]~feeder_combout\ = \Datapath_connections|register_tmp0|result1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Datapath_connections|register_tmp0|result1\(3),
	combout => \Datapath_connections|register_tmp1|result1[3]~feeder_combout\);

-- Location: LCFF_X2_Y6_N29
\Datapath_connections|register_tmp1|result1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Datapath_connections|register_tmp1|result1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp1|result1\(3));

-- Location: LCCOMB_X4_Y6_N30
\Datapath_connections|register_tmp2|result1[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_tmp2|result1[3]~feeder_combout\ = \Datapath_connections|register_tmp1|result1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Datapath_connections|register_tmp1|result1\(3),
	combout => \Datapath_connections|register_tmp2|result1[3]~feeder_combout\);

-- Location: LCFF_X4_Y6_N31
\Datapath_connections|register_tmp2|result1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Datapath_connections|register_tmp2|result1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp2|result1\(3));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CT_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CT_in(2),
	combout => \CT_in~combout\(2));

-- Location: LCCOMB_X2_Y6_N24
\Datapath_connections|register_tmp0|result1[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_tmp0|result1[2]~feeder_combout\ = \CT_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CT_in~combout\(2),
	combout => \Datapath_connections|register_tmp0|result1[2]~feeder_combout\);

-- Location: LCFF_X2_Y6_N25
\Datapath_connections|register_tmp0|result1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Datapath_connections|register_tmp0|result1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp0|result1\(2));

-- Location: LCFF_X2_Y6_N27
\Datapath_connections|register_tmp1|result1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp0|result1\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp1|result1\(2));

-- Location: LCCOMB_X4_Y6_N24
\Datapath_connections|register_tmp2|result1[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_tmp2|result1[2]~feeder_combout\ = \Datapath_connections|register_tmp1|result1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Datapath_connections|register_tmp1|result1\(2),
	combout => \Datapath_connections|register_tmp2|result1[2]~feeder_combout\);

-- Location: LCFF_X4_Y6_N25
\Datapath_connections|register_tmp2|result1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Datapath_connections|register_tmp2|result1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp2|result1\(2));

-- Location: LCFF_X4_Y6_N5
\Datapath_connections|register_tmp3|result1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp2|result1\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp3|result1\(2));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CT_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CT_in(1),
	combout => \CT_in~combout\(1));

-- Location: LCCOMB_X2_Y6_N4
\Datapath_connections|register_tmp0|result1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_tmp0|result1[1]~feeder_combout\ = \CT_in~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CT_in~combout\(1),
	combout => \Datapath_connections|register_tmp0|result1[1]~feeder_combout\);

-- Location: LCFF_X2_Y6_N5
\Datapath_connections|register_tmp0|result1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Datapath_connections|register_tmp0|result1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp0|result1\(1));

-- Location: LCCOMB_X2_Y6_N2
\Datapath_connections|register_tmp1|result1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_tmp1|result1[1]~feeder_combout\ = \Datapath_connections|register_tmp0|result1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Datapath_connections|register_tmp0|result1\(1),
	combout => \Datapath_connections|register_tmp1|result1[1]~feeder_combout\);

-- Location: LCFF_X2_Y6_N3
\Datapath_connections|register_tmp1|result1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Datapath_connections|register_tmp1|result1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp1|result1\(1));

-- Location: LCCOMB_X4_Y6_N20
\Datapath_connections|register_tmp2|result1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_tmp2|result1[1]~feeder_combout\ = \Datapath_connections|register_tmp1|result1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Datapath_connections|register_tmp1|result1\(1),
	combout => \Datapath_connections|register_tmp2|result1[1]~feeder_combout\);

-- Location: LCFF_X4_Y6_N21
\Datapath_connections|register_tmp2|result1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Datapath_connections|register_tmp2|result1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp2|result1\(1));

-- Location: LCFF_X4_Y6_N3
\Datapath_connections|register_tmp3|result1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp2|result1\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp3|result1\(1));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CT_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CT_in(0),
	combout => \CT_in~combout\(0));

-- Location: LCCOMB_X2_Y6_N6
\Datapath_connections|register_tmp0|result1[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_tmp0|result1[0]~feeder_combout\ = \CT_in~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CT_in~combout\(0),
	combout => \Datapath_connections|register_tmp0|result1[0]~feeder_combout\);

-- Location: LCFF_X2_Y6_N7
\Datapath_connections|register_tmp0|result1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Datapath_connections|register_tmp0|result1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp0|result1\(0));

-- Location: LCFF_X2_Y6_N31
\Datapath_connections|register_tmp1|result1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp0|result1\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp1|result1\(0));

-- Location: LCCOMB_X4_Y6_N16
\Datapath_connections|register_tmp2|result1[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_tmp2|result1[0]~feeder_combout\ = \Datapath_connections|register_tmp1|result1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Datapath_connections|register_tmp1|result1\(0),
	combout => \Datapath_connections|register_tmp2|result1[0]~feeder_combout\);

-- Location: LCFF_X4_Y6_N17
\Datapath_connections|register_tmp2|result1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Datapath_connections|register_tmp2|result1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp2|result1\(0));

-- Location: LCFF_X4_Y6_N1
\Datapath_connections|register_tmp3|result1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	sdata => \Datapath_connections|register_tmp2|result1\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_tmp3|result1\(0));

-- Location: LCCOMB_X4_Y6_N0
\Datapath_connections|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add1~0_combout\ = (\Datapath_connections|register_tmp2|result1\(0) & (\Datapath_connections|register_tmp3|result1\(0) $ (VCC))) # (!\Datapath_connections|register_tmp2|result1\(0) & (\Datapath_connections|register_tmp3|result1\(0) & 
-- VCC))
-- \Datapath_connections|Add1~1\ = CARRY((\Datapath_connections|register_tmp2|result1\(0) & \Datapath_connections|register_tmp3|result1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp2|result1\(0),
	datab => \Datapath_connections|register_tmp3|result1\(0),
	datad => VCC,
	combout => \Datapath_connections|Add1~0_combout\,
	cout => \Datapath_connections|Add1~1\);

-- Location: LCCOMB_X4_Y6_N2
\Datapath_connections|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add1~2_combout\ = (\Datapath_connections|register_tmp2|result1\(1) & ((\Datapath_connections|register_tmp3|result1\(1) & (\Datapath_connections|Add1~1\ & VCC)) # (!\Datapath_connections|register_tmp3|result1\(1) & 
-- (!\Datapath_connections|Add1~1\)))) # (!\Datapath_connections|register_tmp2|result1\(1) & ((\Datapath_connections|register_tmp3|result1\(1) & (!\Datapath_connections|Add1~1\)) # (!\Datapath_connections|register_tmp3|result1\(1) & 
-- ((\Datapath_connections|Add1~1\) # (GND)))))
-- \Datapath_connections|Add1~3\ = CARRY((\Datapath_connections|register_tmp2|result1\(1) & (!\Datapath_connections|register_tmp3|result1\(1) & !\Datapath_connections|Add1~1\)) # (!\Datapath_connections|register_tmp2|result1\(1) & 
-- ((!\Datapath_connections|Add1~1\) # (!\Datapath_connections|register_tmp3|result1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp2|result1\(1),
	datab => \Datapath_connections|register_tmp3|result1\(1),
	datad => VCC,
	cin => \Datapath_connections|Add1~1\,
	combout => \Datapath_connections|Add1~2_combout\,
	cout => \Datapath_connections|Add1~3\);

-- Location: LCCOMB_X4_Y6_N4
\Datapath_connections|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add1~4_combout\ = ((\Datapath_connections|register_tmp2|result1\(2) $ (\Datapath_connections|register_tmp3|result1\(2) $ (!\Datapath_connections|Add1~3\)))) # (GND)
-- \Datapath_connections|Add1~5\ = CARRY((\Datapath_connections|register_tmp2|result1\(2) & ((\Datapath_connections|register_tmp3|result1\(2)) # (!\Datapath_connections|Add1~3\))) # (!\Datapath_connections|register_tmp2|result1\(2) & 
-- (\Datapath_connections|register_tmp3|result1\(2) & !\Datapath_connections|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp2|result1\(2),
	datab => \Datapath_connections|register_tmp3|result1\(2),
	datad => VCC,
	cin => \Datapath_connections|Add1~3\,
	combout => \Datapath_connections|Add1~4_combout\,
	cout => \Datapath_connections|Add1~5\);

-- Location: LCCOMB_X4_Y6_N6
\Datapath_connections|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add1~6_combout\ = (\Datapath_connections|register_tmp3|result1\(3) & ((\Datapath_connections|register_tmp2|result1\(3) & (\Datapath_connections|Add1~5\ & VCC)) # (!\Datapath_connections|register_tmp2|result1\(3) & 
-- (!\Datapath_connections|Add1~5\)))) # (!\Datapath_connections|register_tmp3|result1\(3) & ((\Datapath_connections|register_tmp2|result1\(3) & (!\Datapath_connections|Add1~5\)) # (!\Datapath_connections|register_tmp2|result1\(3) & 
-- ((\Datapath_connections|Add1~5\) # (GND)))))
-- \Datapath_connections|Add1~7\ = CARRY((\Datapath_connections|register_tmp3|result1\(3) & (!\Datapath_connections|register_tmp2|result1\(3) & !\Datapath_connections|Add1~5\)) # (!\Datapath_connections|register_tmp3|result1\(3) & 
-- ((!\Datapath_connections|Add1~5\) # (!\Datapath_connections|register_tmp2|result1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp3|result1\(3),
	datab => \Datapath_connections|register_tmp2|result1\(3),
	datad => VCC,
	cin => \Datapath_connections|Add1~5\,
	combout => \Datapath_connections|Add1~6_combout\,
	cout => \Datapath_connections|Add1~7\);

-- Location: LCCOMB_X4_Y6_N12
\Datapath_connections|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add1~12_combout\ = ((\Datapath_connections|register_tmp3|result1\(6) $ (\Datapath_connections|register_tmp2|result1\(6) $ (!\Datapath_connections|Add1~11\)))) # (GND)
-- \Datapath_connections|Add1~13\ = CARRY((\Datapath_connections|register_tmp3|result1\(6) & ((\Datapath_connections|register_tmp2|result1\(6)) # (!\Datapath_connections|Add1~11\))) # (!\Datapath_connections|register_tmp3|result1\(6) & 
-- (\Datapath_connections|register_tmp2|result1\(6) & !\Datapath_connections|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp3|result1\(6),
	datab => \Datapath_connections|register_tmp2|result1\(6),
	datad => VCC,
	cin => \Datapath_connections|Add1~11\,
	combout => \Datapath_connections|Add1~12_combout\,
	cout => \Datapath_connections|Add1~13\);

-- Location: LCCOMB_X4_Y6_N14
\Datapath_connections|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add1~14_combout\ = \Datapath_connections|register_tmp2|result1\(7) $ (\Datapath_connections|register_tmp3|result1\(7) $ (\Datapath_connections|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp2|result1\(7),
	datab => \Datapath_connections|register_tmp3|result1\(7),
	cin => \Datapath_connections|Add1~13\,
	combout => \Datapath_connections|Add1~14_combout\);

-- Location: LCCOMB_X2_Y6_N16
\Datapath_connections|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add0~8_combout\ = ((\Datapath_connections|register_tmp0|result1\(4) $ (\Datapath_connections|register_tmp1|result1\(4) $ (!\Datapath_connections|Add0~7\)))) # (GND)
-- \Datapath_connections|Add0~9\ = CARRY((\Datapath_connections|register_tmp0|result1\(4) & ((\Datapath_connections|register_tmp1|result1\(4)) # (!\Datapath_connections|Add0~7\))) # (!\Datapath_connections|register_tmp0|result1\(4) & 
-- (\Datapath_connections|register_tmp1|result1\(4) & !\Datapath_connections|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp0|result1\(4),
	datab => \Datapath_connections|register_tmp1|result1\(4),
	datad => VCC,
	cin => \Datapath_connections|Add0~7\,
	combout => \Datapath_connections|Add0~8_combout\,
	cout => \Datapath_connections|Add0~9\);

-- Location: LCCOMB_X2_Y6_N18
\Datapath_connections|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add0~10_combout\ = (\Datapath_connections|register_tmp1|result1\(5) & ((\Datapath_connections|register_tmp0|result1\(5) & (\Datapath_connections|Add0~9\ & VCC)) # (!\Datapath_connections|register_tmp0|result1\(5) & 
-- (!\Datapath_connections|Add0~9\)))) # (!\Datapath_connections|register_tmp1|result1\(5) & ((\Datapath_connections|register_tmp0|result1\(5) & (!\Datapath_connections|Add0~9\)) # (!\Datapath_connections|register_tmp0|result1\(5) & 
-- ((\Datapath_connections|Add0~9\) # (GND)))))
-- \Datapath_connections|Add0~11\ = CARRY((\Datapath_connections|register_tmp1|result1\(5) & (!\Datapath_connections|register_tmp0|result1\(5) & !\Datapath_connections|Add0~9\)) # (!\Datapath_connections|register_tmp1|result1\(5) & 
-- ((!\Datapath_connections|Add0~9\) # (!\Datapath_connections|register_tmp0|result1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp1|result1\(5),
	datab => \Datapath_connections|register_tmp0|result1\(5),
	datad => VCC,
	cin => \Datapath_connections|Add0~9\,
	combout => \Datapath_connections|Add0~10_combout\,
	cout => \Datapath_connections|Add0~11\);

-- Location: LCCOMB_X2_Y6_N22
\Datapath_connections|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|Add0~14_combout\ = \Datapath_connections|register_tmp0|result1\(7) $ (\Datapath_connections|register_tmp1|result1\(7) $ (\Datapath_connections|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_tmp0|result1\(7),
	datab => \Datapath_connections|register_tmp1|result1\(7),
	cin => \Datapath_connections|Add0~13\,
	combout => \Datapath_connections|Add0~14_combout\);

-- Location: LCCOMB_X3_Y6_N4
\Datapath_connections|register_md|result1[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_md|result1[0]~7_cout\ = CARRY((\Datapath_connections|Add0~0_combout\ & \Datapath_connections|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|Add0~0_combout\,
	datab => \Datapath_connections|Add1~0_combout\,
	datad => VCC,
	cout => \Datapath_connections|register_md|result1[0]~7_cout\);

-- Location: LCCOMB_X3_Y6_N6
\Datapath_connections|register_md|result1[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_md|result1[0]~9_cout\ = CARRY((\Datapath_connections|Add0~2_combout\ & (!\Datapath_connections|Add1~2_combout\ & !\Datapath_connections|register_md|result1[0]~7_cout\)) # (!\Datapath_connections|Add0~2_combout\ & 
-- ((!\Datapath_connections|register_md|result1[0]~7_cout\) # (!\Datapath_connections|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|Add0~2_combout\,
	datab => \Datapath_connections|Add1~2_combout\,
	datad => VCC,
	cin => \Datapath_connections|register_md|result1[0]~7_cout\,
	cout => \Datapath_connections|register_md|result1[0]~9_cout\);

-- Location: LCCOMB_X3_Y6_N14
\Datapath_connections|register_md|result1[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_md|result1[3]~16_combout\ = (\Datapath_connections|Add1~10_combout\ & ((\Datapath_connections|Add0~10_combout\ & (\Datapath_connections|register_md|result1[2]~15\ & VCC)) # (!\Datapath_connections|Add0~10_combout\ & 
-- (!\Datapath_connections|register_md|result1[2]~15\)))) # (!\Datapath_connections|Add1~10_combout\ & ((\Datapath_connections|Add0~10_combout\ & (!\Datapath_connections|register_md|result1[2]~15\)) # (!\Datapath_connections|Add0~10_combout\ & 
-- ((\Datapath_connections|register_md|result1[2]~15\) # (GND)))))
-- \Datapath_connections|register_md|result1[3]~17\ = CARRY((\Datapath_connections|Add1~10_combout\ & (!\Datapath_connections|Add0~10_combout\ & !\Datapath_connections|register_md|result1[2]~15\)) # (!\Datapath_connections|Add1~10_combout\ & 
-- ((!\Datapath_connections|register_md|result1[2]~15\) # (!\Datapath_connections|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|Add1~10_combout\,
	datab => \Datapath_connections|Add0~10_combout\,
	datad => VCC,
	cin => \Datapath_connections|register_md|result1[2]~15\,
	combout => \Datapath_connections|register_md|result1[3]~16_combout\,
	cout => \Datapath_connections|register_md|result1[3]~17\);

-- Location: LCCOMB_X3_Y6_N16
\Datapath_connections|register_md|result1[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_md|result1[4]~18_combout\ = ((\Datapath_connections|Add0~12_combout\ $ (\Datapath_connections|Add1~12_combout\ $ (!\Datapath_connections|register_md|result1[3]~17\)))) # (GND)
-- \Datapath_connections|register_md|result1[4]~19\ = CARRY((\Datapath_connections|Add0~12_combout\ & ((\Datapath_connections|Add1~12_combout\) # (!\Datapath_connections|register_md|result1[3]~17\))) # (!\Datapath_connections|Add0~12_combout\ & 
-- (\Datapath_connections|Add1~12_combout\ & !\Datapath_connections|register_md|result1[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|Add0~12_combout\,
	datab => \Datapath_connections|Add1~12_combout\,
	datad => VCC,
	cin => \Datapath_connections|register_md|result1[3]~17\,
	combout => \Datapath_connections|register_md|result1[4]~18_combout\,
	cout => \Datapath_connections|register_md|result1[4]~19\);

-- Location: LCCOMB_X3_Y6_N18
\Datapath_connections|register_md|result1[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|register_md|result1[5]~20_combout\ = \Datapath_connections|Add1~14_combout\ $ (\Datapath_connections|register_md|result1[4]~19\ $ (\Datapath_connections|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Datapath_connections|Add1~14_combout\,
	datad => \Datapath_connections|Add0~14_combout\,
	cin => \Datapath_connections|register_md|result1[4]~19\,
	combout => \Datapath_connections|register_md|result1[5]~20_combout\);

-- Location: LCFF_X3_Y6_N19
\Datapath_connections|register_md|result1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~combout\,
	datain => \Datapath_connections|register_md|result1[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_md|result1\(5));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WT_in[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_WT_in(5),
	combout => \WT_in~combout\(5));

-- Location: LCFF_X3_Y6_N17
\Datapath_connections|register_md|result1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~combout\,
	datain => \Datapath_connections|register_md|result1[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_md|result1\(4));

-- Location: LCFF_X3_Y6_N15
\Datapath_connections|register_md|result1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~combout\,
	datain => \Datapath_connections|register_md|result1[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Datapath_connections|register_md|result1\(3));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WT_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_WT_in(2),
	combout => \WT_in~combout\(2));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WT_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_WT_in(1),
	combout => \WT_in~combout\(1));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WT_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_WT_in(0),
	combout => \WT_in~combout\(0));

-- Location: LCCOMB_X6_Y6_N0
\Datapath_connections|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|LessThan0~1_cout\ = CARRY((\Datapath_connections|register_md|result1\(0) & !\WT_in~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_md|result1\(0),
	datab => \WT_in~combout\(0),
	datad => VCC,
	cout => \Datapath_connections|LessThan0~1_cout\);

-- Location: LCCOMB_X6_Y6_N2
\Datapath_connections|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|LessThan0~3_cout\ = CARRY((\Datapath_connections|register_md|result1\(1) & (\WT_in~combout\(1) & !\Datapath_connections|LessThan0~1_cout\)) # (!\Datapath_connections|register_md|result1\(1) & ((\WT_in~combout\(1)) # 
-- (!\Datapath_connections|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_md|result1\(1),
	datab => \WT_in~combout\(1),
	datad => VCC,
	cin => \Datapath_connections|LessThan0~1_cout\,
	cout => \Datapath_connections|LessThan0~3_cout\);

-- Location: LCCOMB_X6_Y6_N4
\Datapath_connections|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|LessThan0~5_cout\ = CARRY((\Datapath_connections|register_md|result1\(2) & ((!\Datapath_connections|LessThan0~3_cout\) # (!\WT_in~combout\(2)))) # (!\Datapath_connections|register_md|result1\(2) & (!\WT_in~combout\(2) & 
-- !\Datapath_connections|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Datapath_connections|register_md|result1\(2),
	datab => \WT_in~combout\(2),
	datad => VCC,
	cin => \Datapath_connections|LessThan0~3_cout\,
	cout => \Datapath_connections|LessThan0~5_cout\);

-- Location: LCCOMB_X6_Y6_N6
\Datapath_connections|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|LessThan0~7_cout\ = CARRY((\WT_in~combout\(3) & ((!\Datapath_connections|LessThan0~5_cout\) # (!\Datapath_connections|register_md|result1\(3)))) # (!\WT_in~combout\(3) & (!\Datapath_connections|register_md|result1\(3) & 
-- !\Datapath_connections|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WT_in~combout\(3),
	datab => \Datapath_connections|register_md|result1\(3),
	datad => VCC,
	cin => \Datapath_connections|LessThan0~5_cout\,
	cout => \Datapath_connections|LessThan0~7_cout\);

-- Location: LCCOMB_X6_Y6_N8
\Datapath_connections|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|LessThan0~9_cout\ = CARRY((\WT_in~combout\(4) & (\Datapath_connections|register_md|result1\(4) & !\Datapath_connections|LessThan0~7_cout\)) # (!\WT_in~combout\(4) & ((\Datapath_connections|register_md|result1\(4)) # 
-- (!\Datapath_connections|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WT_in~combout\(4),
	datab => \Datapath_connections|register_md|result1\(4),
	datad => VCC,
	cin => \Datapath_connections|LessThan0~7_cout\,
	cout => \Datapath_connections|LessThan0~9_cout\);

-- Location: LCCOMB_X6_Y6_N10
\Datapath_connections|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Datapath_connections|LessThan0~10_combout\ = (\Datapath_connections|register_md|result1\(5) & ((\Datapath_connections|LessThan0~9_cout\) # (!\WT_in~combout\(5)))) # (!\Datapath_connections|register_md|result1\(5) & 
-- (\Datapath_connections|LessThan0~9_cout\ & !\WT_in~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Datapath_connections|register_md|result1\(5),
	datad => \WT_in~combout\(5),
	cin => \Datapath_connections|LessThan0~9_cout\,
	combout => \Datapath_connections|LessThan0~10_combout\);

-- Location: LCCOMB_X6_Y6_N28
\controller_connections|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_connections|Selector2~0_combout\ = (!\clr_in~combout\ & ((\WT_in~combout\(7)) # ((\WT_in~combout\(6)) # (!\Datapath_connections|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_in~combout\,
	datab => \WT_in~combout\(7),
	datac => \WT_in~combout\(6),
	datad => \Datapath_connections|LessThan0~10_combout\,
	combout => \controller_connections|Selector2~0_combout\);

-- Location: LCCOMB_X6_Y6_N22
\controller_connections|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_connections|Selector2~1_combout\ = (\controller_connections|estado_atual.S7~regout\) # ((\controller_connections|estado_atual.S3~regout\) # ((\controller_connections|estado_atual.S6~regout\ & \controller_connections|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_connections|estado_atual.S7~regout\,
	datab => \controller_connections|estado_atual.S6~regout\,
	datac => \controller_connections|estado_atual.S3~regout\,
	datad => \controller_connections|Selector2~0_combout\,
	combout => \controller_connections|Selector2~1_combout\);

-- Location: LCFF_X6_Y6_N23
\controller_connections|estado_atual.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \controller_connections|Selector2~1_combout\,
	aclr => \clr_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_connections|estado_atual.S4~regout\);

-- Location: LCCOMB_X6_Y6_N30
\controller_connections|estado_atual.S5~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_connections|estado_atual.S5~feeder_combout\ = \controller_connections|estado_atual.S4~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller_connections|estado_atual.S4~regout\,
	combout => \controller_connections|estado_atual.S5~feeder_combout\);

-- Location: LCFF_X6_Y6_N31
\controller_connections|estado_atual.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \controller_connections|estado_atual.S5~feeder_combout\,
	aclr => \clr_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_connections|estado_atual.S5~regout\);

-- Location: LCCOMB_X5_Y6_N30
\controller_connections|estado_atual.S6~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_connections|estado_atual.S6~feeder_combout\ = \controller_connections|estado_atual.S5~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller_connections|estado_atual.S5~regout\,
	combout => \controller_connections|estado_atual.S6~feeder_combout\);

-- Location: LCFF_X5_Y6_N31
\controller_connections|estado_atual.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~combout\,
	datain => \controller_connections|estado_atual.S6~feeder_combout\,
	aclr => \clr_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_connections|estado_atual.S6~regout\);

-- Location: LCCOMB_X5_Y6_N14
\controller_connections|proximo_estado.S7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_connections|proximo_estado.S7~0_combout\ = (!\WT_in~combout\(6) & (\controller_connections|estado_atual.S6~regout\ & (\Datapath_connections|LessThan0~10_combout\ & !\WT_in~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WT_in~combout\(6),
	datab => \controller_connections|estado_atual.S6~regout\,
	datac => \Datapath_connections|LessThan0~10_combout\,
	datad => \WT_in~combout\(7),
	combout => \controller_connections|proximo_estado.S7~0_combout\);

-- Location: LCFF_X5_Y6_N15
\controller_connections|estado_atual.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~combout\,
	datain => \controller_connections|proximo_estado.S7~0_combout\,
	aclr => \clr_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_connections|estado_atual.S7~regout\);

-- Location: LCCOMB_X5_Y6_N28
\controller_connections|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_connections|Selector0~0_combout\ = (\clr_in~combout\) # ((!\WT_in~combout\(6) & (!\WT_in~combout\(7) & \Datapath_connections|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WT_in~combout\(6),
	datab => \WT_in~combout\(7),
	datac => \Datapath_connections|LessThan0~10_combout\,
	datad => \clr_in~combout\,
	combout => \controller_connections|Selector0~0_combout\);

-- Location: LCCOMB_X5_Y6_N22
\controller_connections|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_connections|Selector0~1_combout\ = (\controller_connections|estado_atual.S6~regout\ & (((!\controller_connections|Selector0~0_combout\)))) # (!\controller_connections|estado_atual.S6~regout\ & ((\controller_connections|estado_atual.S7~regout\) 
-- # ((!\controller_connections|estado_atual.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_connections|estado_atual.S7~regout\,
	datab => \controller_connections|estado_atual.S0~regout\,
	datac => \controller_connections|estado_atual.S6~regout\,
	datad => \controller_connections|Selector0~0_combout\,
	combout => \controller_connections|Selector0~1_combout\);

-- Location: LCCOMB_X5_Y6_N26
\controller_connections|w\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_connections|w~combout\ = (\controller_connections|Selector0~1_combout\ & ((\controller_connections|estado_atual.S7~regout\))) # (!\controller_connections|Selector0~1_combout\ & (\controller_connections|w~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller_connections|w~combout\,
	datac => \controller_connections|estado_atual.S7~regout\,
	datad => \controller_connections|Selector0~1_combout\,
	combout => \controller_connections|w~combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\w_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller_connections|w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_w_out);
END structure;


