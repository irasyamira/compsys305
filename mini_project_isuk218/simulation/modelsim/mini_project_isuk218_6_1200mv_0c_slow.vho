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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "05/09/2017 18:02:27"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mini_project_group09 IS
    PORT (
	red_out : OUT std_logic;
	bt1 : IN std_logic;
	bt2 : IN std_logic;
	clk : IN std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	seg0_dec : OUT std_logic;
	seg1_dec : OUT std_logic
	);
END mini_project_group09;

-- Design Ports Information
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0_dec	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1_dec	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mini_project_group09 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_bt1 : std_logic;
SIGNAL ww_bt2 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_seg0_dec : std_logic;
SIGNAL ww_seg1_dec : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|clock_25Mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|Add4~4_combout\ : std_logic;
SIGNAL \inst|Add4~6_combout\ : std_logic;
SIGNAL \inst|LessThan4~1_cout\ : std_logic;
SIGNAL \inst|LessThan4~3_cout\ : std_logic;
SIGNAL \inst|LessThan4~5_cout\ : std_logic;
SIGNAL \inst|LessThan4~7_cout\ : std_logic;
SIGNAL \inst|LessThan4~9_cout\ : std_logic;
SIGNAL \inst|LessThan4~11_cout\ : std_logic;
SIGNAL \inst|LessThan4~13_cout\ : std_logic;
SIGNAL \inst|LessThan4~15_cout\ : std_logic;
SIGNAL \inst|LessThan4~17_cout\ : std_logic;
SIGNAL \inst|LessThan4~18_combout\ : std_logic;
SIGNAL \inst|Add5~0_combout\ : std_logic;
SIGNAL \inst|Add5~2_combout\ : std_logic;
SIGNAL \inst|Add5~4_combout\ : std_logic;
SIGNAL \inst|Add5~8_combout\ : std_logic;
SIGNAL \inst|Add8~12_combout\ : std_logic;
SIGNAL \inst|Add11~0_combout\ : std_logic;
SIGNAL \inst|Add11~2_combout\ : std_logic;
SIGNAL \inst|Add11~4_combout\ : std_logic;
SIGNAL \inst|Add10~0_combout\ : std_logic;
SIGNAL \inst|Add10~4_combout\ : std_logic;
SIGNAL \inst|Add10~8_combout\ : std_logic;
SIGNAL \inst|Add10~11\ : std_logic;
SIGNAL \inst|Add10~12_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|bullet_Y_pos[8]~24_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~18_combout\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|Add0~22_combout\ : std_logic;
SIGNAL \inst7|Add0~30_combout\ : std_logic;
SIGNAL \inst7|Add0~44_combout\ : std_logic;
SIGNAL \inst7|Add0~53\ : std_logic;
SIGNAL \inst7|Add0~54_combout\ : std_logic;
SIGNAL \inst7|Add0~55\ : std_logic;
SIGNAL \inst7|Add0~56_combout\ : std_logic;
SIGNAL \inst7|Add0~57\ : std_logic;
SIGNAL \inst7|Add0~58_combout\ : std_logic;
SIGNAL \inst7|Add0~59\ : std_logic;
SIGNAL \inst7|Add0~60_combout\ : std_logic;
SIGNAL \inst7|Add0~61\ : std_logic;
SIGNAL \inst7|Add0~62_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[6]~20_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[7]~22_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[0]~10_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[4]~18_combout\ : std_logic;
SIGNAL \inst|SYNC|LessThan7~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|Equal0~9_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~0_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~1_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~7_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~0_combout\ : std_logic;
SIGNAL \inst|tank_X_motion[2]~1_combout\ : std_logic;
SIGNAL \inst|tank_X_motion[2]~2_combout\ : std_logic;
SIGNAL \inst1|send_char~q\ : std_logic;
SIGNAL \inst1|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|send_char~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[0]~30_combout\ : std_logic;
SIGNAL \inst1|cursor_column~13_combout\ : std_logic;
SIGNAL \inst1|cursor_column~17_combout\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst|SYNC|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[5]~feeder_combout\ : std_logic;
SIGNAL \mouse_data~output_o\ : std_logic;
SIGNAL \mouse_clk~output_o\ : std_logic;
SIGNAL \red_out~output_o\ : std_logic;
SIGNAL \green_out~output_o\ : std_logic;
SIGNAL \blue_out~output_o\ : std_logic;
SIGNAL \horiz_sync_out~output_o\ : std_logic;
SIGNAL \vert_sync_out~output_o\ : std_logic;
SIGNAL \seg0_dec~output_o\ : std_logic;
SIGNAL \seg1_dec~output_o\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \inst1|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~feeder_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[1]~10_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[1]~11\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[2]~12_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[2]~13\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[3]~14_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[3]~15\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[4]~17\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[5]~18_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[5]~19\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[6]~21\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[7]~23\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[8]~24_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[8]~25\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[9]~27\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[10]~28_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst1|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst1|INCNT~4_combout\ : std_logic;
SIGNAL \inst1|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst1|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst1|output_ready~0_combout\ : std_logic;
SIGNAL \inst1|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst1|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst1|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|output_ready~feeder_combout\ : std_logic;
SIGNAL \inst1|output_ready~q\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst1|READ_CHAR~q\ : std_logic;
SIGNAL \inst1|INCNT[3]~2_combout\ : std_logic;
SIGNAL \inst1|INCNT~3_combout\ : std_logic;
SIGNAL \inst1|INCNT~1_combout\ : std_logic;
SIGNAL \inst1|INCNT~5_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|iready_set~0_combout\ : std_logic;
SIGNAL \inst1|iready_set~q\ : std_logic;
SIGNAL \inst1|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst1|Selector6~0_combout\ : std_logic;
SIGNAL \inst1|Selector6~1_combout\ : std_logic;
SIGNAL \inst1|send_data~q\ : std_logic;
SIGNAL \inst1|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst1|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst1|WideOr4~combout\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|Add0~1\ : std_logic;
SIGNAL \inst7|Add0~3\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst7|Add0~5\ : std_logic;
SIGNAL \inst7|Add0~7\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst7|Add0~9\ : std_logic;
SIGNAL \inst7|Add0~11\ : std_logic;
SIGNAL \inst7|Add0~13\ : std_logic;
SIGNAL \inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst7|Add0~15\ : std_logic;
SIGNAL \inst7|Add0~16_combout\ : std_logic;
SIGNAL \inst7|Add0~17\ : std_logic;
SIGNAL \inst7|Add0~18_combout\ : std_logic;
SIGNAL \inst7|Add0~19\ : std_logic;
SIGNAL \inst7|Add0~20_combout\ : std_logic;
SIGNAL \inst7|Add0~21\ : std_logic;
SIGNAL \inst7|Add0~23\ : std_logic;
SIGNAL \inst7|Add0~24_combout\ : std_logic;
SIGNAL \inst7|Add0~25\ : std_logic;
SIGNAL \inst7|Add0~27\ : std_logic;
SIGNAL \inst7|Add0~28_combout\ : std_logic;
SIGNAL \inst7|Add0~29\ : std_logic;
SIGNAL \inst7|Add0~31\ : std_logic;
SIGNAL \inst7|Add0~32_combout\ : std_logic;
SIGNAL \inst7|Add0~33\ : std_logic;
SIGNAL \inst7|Add0~34_combout\ : std_logic;
SIGNAL \inst7|Add0~35\ : std_logic;
SIGNAL \inst7|Add0~36_combout\ : std_logic;
SIGNAL \inst7|Add0~37\ : std_logic;
SIGNAL \inst7|Add0~39\ : std_logic;
SIGNAL \inst7|Add0~40_combout\ : std_logic;
SIGNAL \inst7|Add0~41\ : std_logic;
SIGNAL \inst7|Add0~42_combout\ : std_logic;
SIGNAL \inst7|Equal0~6_combout\ : std_logic;
SIGNAL \inst7|Add0~38_combout\ : std_logic;
SIGNAL \inst7|Equal0~5_combout\ : std_logic;
SIGNAL \inst7|Add0~43\ : std_logic;
SIGNAL \inst7|Add0~45\ : std_logic;
SIGNAL \inst7|Add0~46_combout\ : std_logic;
SIGNAL \inst7|Equal0~7_combout\ : std_logic;
SIGNAL \inst7|Add0~47\ : std_logic;
SIGNAL \inst7|Add0~48_combout\ : std_logic;
SIGNAL \inst7|Add0~49\ : std_logic;
SIGNAL \inst7|Add0~50_combout\ : std_logic;
SIGNAL \inst7|Add0~51\ : std_logic;
SIGNAL \inst7|Add0~52_combout\ : std_logic;
SIGNAL \inst7|Equal0~8_combout\ : std_logic;
SIGNAL \inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|Add0~26_combout\ : std_logic;
SIGNAL \inst7|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|i~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~4_combout\ : std_logic;
SIGNAL \inst7|Equal0~10_combout\ : std_logic;
SIGNAL \inst7|clock_25Mhz~feeder_combout\ : std_logic;
SIGNAL \inst7|clock_25Mhz~q\ : std_logic;
SIGNAL \inst7|clock_25Mhz~clkctrl_outclk\ : std_logic;
SIGNAL \inst|SYNC|Add0~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~1\ : std_logic;
SIGNAL \inst|SYNC|Add0~3\ : std_logic;
SIGNAL \inst|SYNC|Add0~5\ : std_logic;
SIGNAL \inst|SYNC|Add0~6_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~7\ : std_logic;
SIGNAL \inst|SYNC|Add0~8_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~9\ : std_logic;
SIGNAL \inst|SYNC|Add0~10_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~2_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~4_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~11\ : std_logic;
SIGNAL \inst|SYNC|Add0~12_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~13\ : std_logic;
SIGNAL \inst|SYNC|Add0~15\ : std_logic;
SIGNAL \inst|SYNC|Add0~17\ : std_logic;
SIGNAL \inst|SYNC|Add0~19\ : std_logic;
SIGNAL \inst|SYNC|Add0~20_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~1_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~16_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~1_combout\ : std_logic;
SIGNAL \inst|SYNC|LessThan6~0_combout\ : std_logic;
SIGNAL \inst|SYNC|video_on_h~q\ : std_logic;
SIGNAL \inst|SYNC|Add1~0_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~10_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~14_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal1~0_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[8]~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~1\ : std_logic;
SIGNAL \inst|SYNC|Add1~3\ : std_logic;
SIGNAL \inst|SYNC|Add1~4_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~8_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~5\ : std_logic;
SIGNAL \inst|SYNC|Add1~7\ : std_logic;
SIGNAL \inst|SYNC|Add1~9\ : std_logic;
SIGNAL \inst|SYNC|Add1~10_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~3_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~11\ : std_logic;
SIGNAL \inst|SYNC|Add1~13\ : std_logic;
SIGNAL \inst|SYNC|Add1~14_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~5_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~15\ : std_logic;
SIGNAL \inst|SYNC|Add1~16_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~6_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~8_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~17\ : std_logic;
SIGNAL \inst|SYNC|Add1~18_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[9]~1_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~9_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~10_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~11_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~12_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~13_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~19\ : std_logic;
SIGNAL \inst|SYNC|Add1~20_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[10]~2_combout\ : std_logic;
SIGNAL \inst|SYNC|LessThan7~1_combout\ : std_logic;
SIGNAL \inst|SYNC|video_on_v~q\ : std_logic;
SIGNAL \inst|SYNC|red_out~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~12_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~4_combout\ : std_logic;
SIGNAL \inst|SYNC|red_out~2_combout\ : std_logic;
SIGNAL \inst|SYNC|red_out~3_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~2_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~9_combout\ : std_logic;
SIGNAL \inst|SYNC|red_out~1_combout\ : std_logic;
SIGNAL \inst|SYNC|red_out~4_combout\ : std_logic;
SIGNAL \inst|player_X_pos[3]~14_combout\ : std_logic;
SIGNAL \inst|LessThan15~1_combout\ : std_logic;
SIGNAL \inst|player_X_pos[7]~23\ : std_logic;
SIGNAL \inst|player_X_pos[8]~24_combout\ : std_logic;
SIGNAL \inst|LessThan15~0_combout\ : std_logic;
SIGNAL \inst|player_X_motion~4_combout\ : std_logic;
SIGNAL \inst|player_X_pos[8]~25\ : std_logic;
SIGNAL \inst|player_X_pos[9]~26_combout\ : std_logic;
SIGNAL \inst|LessThan16~0_combout\ : std_logic;
SIGNAL \inst|player_X_motion~6_combout\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst1|SHIFTIN[0]~2_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[0]~0_combout\ : std_logic;
SIGNAL \inst1|PACKET_COUNT[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[7]~4_combout\ : std_logic;
SIGNAL \inst1|Add3~0_combout\ : std_logic;
SIGNAL \inst1|PACKET_COUNT[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[7]~2_combout\ : std_logic;
SIGNAL \inst1|INCNT[3]~0_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[7]~3_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR2[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[0]~11\ : std_logic;
SIGNAL \inst1|new_cursor_column[1]~12_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[9]~28_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[6]~22_combout\ : std_logic;
SIGNAL \inst1|RECV_UART~2_combout\ : std_logic;
SIGNAL \inst1|RECV_UART~1_combout\ : std_logic;
SIGNAL \inst1|cursor_column[0]~6_combout\ : std_logic;
SIGNAL \inst1|cursor_column[0]~19_combout\ : std_logic;
SIGNAL \inst1|cursor_column~11_combout\ : std_logic;
SIGNAL \inst1|cursor_column[9]~8_combout\ : std_logic;
SIGNAL \inst1|RECV_UART~0_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[8]~27\ : std_logic;
SIGNAL \inst1|new_cursor_column[9]~29_combout\ : std_logic;
SIGNAL \inst1|cursor_column~4_combout\ : std_logic;
SIGNAL \inst1|cursor_column~18_combout\ : std_logic;
SIGNAL \inst1|cursor_column~5_combout\ : std_logic;
SIGNAL \inst1|cursor_column~16_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[1]~13\ : std_logic;
SIGNAL \inst1|new_cursor_column[2]~14_combout\ : std_logic;
SIGNAL \inst1|cursor_column~15_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[2]~15\ : std_logic;
SIGNAL \inst1|new_cursor_column[3]~16_combout\ : std_logic;
SIGNAL \inst1|cursor_column~14_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[3]~17\ : std_logic;
SIGNAL \inst1|new_cursor_column[4]~19\ : std_logic;
SIGNAL \inst1|new_cursor_column[5]~20_combout\ : std_logic;
SIGNAL \inst1|cursor_column~12_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[5]~21\ : std_logic;
SIGNAL \inst1|new_cursor_column[6]~23\ : std_logic;
SIGNAL \inst1|new_cursor_column[7]~24_combout\ : std_logic;
SIGNAL \inst1|cursor_column~9_combout\ : std_logic;
SIGNAL \inst1|new_cursor_column[7]~25\ : std_logic;
SIGNAL \inst1|new_cursor_column[8]~26_combout\ : std_logic;
SIGNAL \inst1|cursor_column~7_combout\ : std_logic;
SIGNAL \inst1|cursor_column~10_combout\ : std_logic;
SIGNAL \inst|LessThan14~0_combout\ : std_logic;
SIGNAL \inst|player_X_pos[1]~11\ : std_logic;
SIGNAL \inst|player_X_pos[2]~12_combout\ : std_logic;
SIGNAL \inst|player_X_pos[2]~13\ : std_logic;
SIGNAL \inst|player_X_pos[3]~15\ : std_logic;
SIGNAL \inst|player_X_pos[4]~17\ : std_logic;
SIGNAL \inst|player_X_pos[5]~18_combout\ : std_logic;
SIGNAL \inst|player_X_pos[5]~19\ : std_logic;
SIGNAL \inst|player_X_pos[6]~20_combout\ : std_logic;
SIGNAL \inst|player_X_pos[6]~21\ : std_logic;
SIGNAL \inst|player_X_pos[7]~22_combout\ : std_logic;
SIGNAL \inst|LessThan16~1_combout\ : std_logic;
SIGNAL \inst|player_X_motion~5_combout\ : std_logic;
SIGNAL \inst|player_X_pos[9]~27\ : std_logic;
SIGNAL \inst|player_X_pos[10]~28_combout\ : std_logic;
SIGNAL \inst|player_X_pos[4]~16_combout\ : std_logic;
SIGNAL \inst|Add5~1\ : std_logic;
SIGNAL \inst|Add5~3\ : std_logic;
SIGNAL \inst|Add5~5\ : std_logic;
SIGNAL \inst|Add5~7\ : std_logic;
SIGNAL \inst|Add5~9\ : std_logic;
SIGNAL \inst|Add5~11\ : std_logic;
SIGNAL \inst|Add5~12_combout\ : std_logic;
SIGNAL \inst|Add4~1\ : std_logic;
SIGNAL \inst|Add4~3\ : std_logic;
SIGNAL \inst|Add4~5\ : std_logic;
SIGNAL \inst|Add4~7\ : std_logic;
SIGNAL \inst|Add4~9\ : std_logic;
SIGNAL \inst|Add4~11\ : std_logic;
SIGNAL \inst|Add4~12_combout\ : std_logic;
SIGNAL \inst|SYNC|red_out~5_combout\ : std_logic;
SIGNAL \inst|Add5~10_combout\ : std_logic;
SIGNAL \inst|Add5~6_combout\ : std_logic;
SIGNAL \inst|player_X_pos[1]~10_combout\ : std_logic;
SIGNAL \inst|LessThan5~1_cout\ : std_logic;
SIGNAL \inst|LessThan5~3_cout\ : std_logic;
SIGNAL \inst|LessThan5~5_cout\ : std_logic;
SIGNAL \inst|LessThan5~7_cout\ : std_logic;
SIGNAL \inst|LessThan5~9_cout\ : std_logic;
SIGNAL \inst|LessThan5~11_cout\ : std_logic;
SIGNAL \inst|LessThan5~13_cout\ : std_logic;
SIGNAL \inst|LessThan5~15_cout\ : std_logic;
SIGNAL \inst|LessThan5~17_cout\ : std_logic;
SIGNAL \inst|LessThan5~18_combout\ : std_logic;
SIGNAL \inst|SYNC|red_out~6_combout\ : std_logic;
SIGNAL \inst|SYNC|pixel_column[0]~feeder_combout\ : std_logic;
SIGNAL \inst|bullet_on~1_combout\ : std_logic;
SIGNAL \inst|bullet_on~2_combout\ : std_logic;
SIGNAL \inst|Add8~1_cout\ : std_logic;
SIGNAL \inst|Add8~3_cout\ : std_logic;
SIGNAL \inst|Add8~5_cout\ : std_logic;
SIGNAL \inst|Add8~7\ : std_logic;
SIGNAL \inst|Add8~8_combout\ : std_logic;
SIGNAL \inst|Add8~6_combout\ : std_logic;
SIGNAL \inst|Add8~9\ : std_logic;
SIGNAL \inst|Add8~10_combout\ : std_logic;
SIGNAL \inst|bullet_on~0_combout\ : std_logic;
SIGNAL \inst|bullet_on~3_combout\ : std_logic;
SIGNAL \inst|bullet_Y_pos[1]~11\ : std_logic;
SIGNAL \inst|bullet_Y_pos[2]~12_combout\ : std_logic;
SIGNAL \inst|bullet_Y_pos[2]~13\ : std_logic;
SIGNAL \inst|bullet_Y_pos[3]~14_combout\ : std_logic;
SIGNAL \inst|bullet_Y_pos[3]~15\ : std_logic;
SIGNAL \inst|bullet_Y_pos[4]~17\ : std_logic;
SIGNAL \inst|bullet_Y_pos[5]~19\ : std_logic;
SIGNAL \inst|bullet_Y_pos[6]~21\ : std_logic;
SIGNAL \inst|bullet_Y_pos[7]~22_combout\ : std_logic;
SIGNAL \inst|bullet_Y_pos[7]~23\ : std_logic;
SIGNAL \inst|bullet_Y_pos[8]~25\ : std_logic;
SIGNAL \inst|bullet_Y_pos[9]~26_combout\ : std_logic;
SIGNAL \inst|bullet_Y_pos[6]~20_combout\ : std_logic;
SIGNAL \inst|bullet_Y_pos[6]~feeder_combout\ : std_logic;
SIGNAL \inst|bullet_Y_pos[4]~16_combout\ : std_logic;
SIGNAL \inst|bullet_Y_pos[4]~feeder_combout\ : std_logic;
SIGNAL \inst|bullet_Y_pos[5]~18_combout\ : std_logic;
SIGNAL \inst|bullet_Y_motion[4]~1_combout\ : std_logic;
SIGNAL \inst|bullet_Y_motion[4]~0_combout\ : std_logic;
SIGNAL \inst|bullet_Y_motion[4]~2_combout\ : std_logic;
SIGNAL \inst|bullet_Y_motion[4]~3_combout\ : std_logic;
SIGNAL \inst|bullet_Y_motion[4]~4_combout\ : std_logic;
SIGNAL \inst|bullet_Y_pos[9]~27\ : std_logic;
SIGNAL \inst|bullet_Y_pos[10]~28_combout\ : std_logic;
SIGNAL \inst|Add11~1\ : std_logic;
SIGNAL \inst|Add11~3\ : std_logic;
SIGNAL \inst|Add11~5\ : std_logic;
SIGNAL \inst|Add11~7\ : std_logic;
SIGNAL \inst|Add11~9\ : std_logic;
SIGNAL \inst|Add11~11\ : std_logic;
SIGNAL \inst|Add11~13\ : std_logic;
SIGNAL \inst|Add11~14_combout\ : std_logic;
SIGNAL \inst|Add8~11\ : std_logic;
SIGNAL \inst|Add8~13\ : std_logic;
SIGNAL \inst|Add8~14_combout\ : std_logic;
SIGNAL \inst|Add10~1\ : std_logic;
SIGNAL \inst|Add10~3\ : std_logic;
SIGNAL \inst|Add10~5\ : std_logic;
SIGNAL \inst|Add10~7\ : std_logic;
SIGNAL \inst|Add10~9\ : std_logic;
SIGNAL \inst|Add10~10_combout\ : std_logic;
SIGNAL \inst|Add10~6_combout\ : std_logic;
SIGNAL \inst|Add10~2_combout\ : std_logic;
SIGNAL \inst|LessThan10~1_cout\ : std_logic;
SIGNAL \inst|LessThan10~3_cout\ : std_logic;
SIGNAL \inst|LessThan10~5_cout\ : std_logic;
SIGNAL \inst|LessThan10~7_cout\ : std_logic;
SIGNAL \inst|LessThan10~9_cout\ : std_logic;
SIGNAL \inst|LessThan10~11_cout\ : std_logic;
SIGNAL \inst|LessThan10~13_cout\ : std_logic;
SIGNAL \inst|LessThan10~15_cout\ : std_logic;
SIGNAL \inst|LessThan10~16_combout\ : std_logic;
SIGNAL \inst|bullet_on~5_combout\ : std_logic;
SIGNAL \inst|Add11~12_combout\ : std_logic;
SIGNAL \inst|Add11~10_combout\ : std_logic;
SIGNAL \inst|Add11~8_combout\ : std_logic;
SIGNAL \inst|Add11~6_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~8_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~11_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~6_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~7_combout\ : std_logic;
SIGNAL \inst|LessThan11~1_cout\ : std_logic;
SIGNAL \inst|LessThan11~3_cout\ : std_logic;
SIGNAL \inst|LessThan11~5_cout\ : std_logic;
SIGNAL \inst|LessThan11~7_cout\ : std_logic;
SIGNAL \inst|LessThan11~9_cout\ : std_logic;
SIGNAL \inst|LessThan11~11_cout\ : std_logic;
SIGNAL \inst|LessThan11~13_cout\ : std_logic;
SIGNAL \inst|LessThan11~15_cout\ : std_logic;
SIGNAL \inst|LessThan11~16_combout\ : std_logic;
SIGNAL \inst|bullet_on~4_combout\ : std_logic;
SIGNAL \inst|bullet_on~6_combout\ : std_logic;
SIGNAL \inst|SYNC|red_out~7_combout\ : std_logic;
SIGNAL \inst|SYNC|red_out~q\ : std_logic;
SIGNAL \inst|SYNC|green_out~1_combout\ : std_logic;
SIGNAL \inst|tank_on~0_combout\ : std_logic;
SIGNAL \inst|tank_on~1_combout\ : std_logic;
SIGNAL \inst|tank_on~2_combout\ : std_logic;
SIGNAL \inst|bullet_Y_pos[1]~10_combout\ : std_logic;
SIGNAL \inst|tank_X_pos[2]~10_cout\ : std_logic;
SIGNAL \inst|tank_X_pos[2]~12\ : std_logic;
SIGNAL \inst|tank_X_pos[3]~14\ : std_logic;
SIGNAL \inst|tank_X_pos[4]~16\ : std_logic;
SIGNAL \inst|tank_X_pos[5]~17_combout\ : std_logic;
SIGNAL \inst|tank_X_pos[5]~18\ : std_logic;
SIGNAL \inst|tank_X_pos[6]~19_combout\ : std_logic;
SIGNAL \inst|tank_X_pos[6]~20\ : std_logic;
SIGNAL \inst|tank_X_pos[7]~21_combout\ : std_logic;
SIGNAL \inst|tank_X_pos[7]~22\ : std_logic;
SIGNAL \inst|tank_X_pos[8]~23_combout\ : std_logic;
SIGNAL \inst|tank_X_pos[2]~11_combout\ : std_logic;
SIGNAL \inst|tank_X_pos[3]~13_combout\ : std_logic;
SIGNAL \inst|tank_X_motion[2]~0_combout\ : std_logic;
SIGNAL \inst|tank_X_motion[2]~3_combout\ : std_logic;
SIGNAL \inst|tank_X_motion[2]~4_combout\ : std_logic;
SIGNAL \inst|tank_X_pos[8]~24\ : std_logic;
SIGNAL \inst|tank_X_pos[9]~26\ : std_logic;
SIGNAL \inst|tank_X_pos[10]~27_combout\ : std_logic;
SIGNAL \inst|tank_X_pos[9]~25_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_cout\ : std_logic;
SIGNAL \inst|LessThan1~3_cout\ : std_logic;
SIGNAL \inst|LessThan1~5_cout\ : std_logic;
SIGNAL \inst|LessThan1~7_cout\ : std_logic;
SIGNAL \inst|LessThan1~9_cout\ : std_logic;
SIGNAL \inst|LessThan1~11_cout\ : std_logic;
SIGNAL \inst|LessThan1~13_cout\ : std_logic;
SIGNAL \inst|LessThan1~15_cout\ : std_logic;
SIGNAL \inst|LessThan1~17_cout\ : std_logic;
SIGNAL \inst|LessThan1~18_combout\ : std_logic;
SIGNAL \inst|Add4~10_combout\ : std_logic;
SIGNAL \inst|Add4~8_combout\ : std_logic;
SIGNAL \inst|Add4~2_combout\ : std_logic;
SIGNAL \inst|tank_X_pos[4]~15_combout\ : std_logic;
SIGNAL \inst|SYNC|pixel_column[1]~feeder_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|LessThan0~15_cout\ : std_logic;
SIGNAL \inst|LessThan0~17_cout\ : std_logic;
SIGNAL \inst|LessThan0~18_combout\ : std_logic;
SIGNAL \inst|tank_on~3_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~0_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~2_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~q\ : std_logic;
SIGNAL \inst|SYNC|blue_out~0_combout\ : std_logic;
SIGNAL \inst|SYNC|blue_out~q\ : std_logic;
SIGNAL \inst|SYNC|process_0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~3_combout\ : std_logic;
SIGNAL \inst|SYNC|horiz_sync~q\ : std_logic;
SIGNAL \inst|SYNC|horiz_sync_out~q\ : std_logic;
SIGNAL \inst|SYNC|process_0~5_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~4_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~6_combout\ : std_logic;
SIGNAL \inst|SYNC|vert_sync~q\ : std_logic;
SIGNAL \inst|SYNC|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[0]~1_combout\ : std_logic;
SIGNAL \inst1|left_button~feeder_combout\ : std_logic;
SIGNAL \inst1|left_button~0_combout\ : std_logic;
SIGNAL \inst1|left_button~q\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|right_button~feeder_combout\ : std_logic;
SIGNAL \inst1|right_button~q\ : std_logic;
SIGNAL \inst1|new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|PACKET_CHAR2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|bullet_Y_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|tank_X_motion\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|SYNC|pixel_row\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|player_X_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst7|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|SYNC|v_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|tank_X_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|player_X_motion\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|SYNC|h_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|SYNC|pixel_column\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|bullet_Y_motion\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;

BEGIN

red_out <= ww_red_out;
ww_bt1 <= bt1;
ww_bt2 <= bt2;
ww_clk <= clk;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
vert_sync_out <= ww_vert_sync_out;
seg0_dec <= ww_seg0_dec;
seg1_dec <= ww_seg1_dec;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|MOUSE_CLK_FILTER~q\);

\inst7|clock_25Mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|clock_25Mhz~q\);

\inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|SYNC|vert_sync_out~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\;
\inst1|ALT_INV_send_data~q\ <= NOT \inst1|send_data~q\;
\inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst1|mouse_state.INHIBIT_TRANS~q\;
\inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst1|mouse_state.WAIT_OUTPUT_READY~q\;

-- Location: LCCOMB_X27_Y18_N18
\inst|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = (\inst|SYNC|pixel_column\(3) & (\inst|SYNC|pixel_column\(4) $ (VCC))) # (!\inst|SYNC|pixel_column\(3) & (\inst|SYNC|pixel_column\(4) & VCC))
-- \inst|Add4~1\ = CARRY((\inst|SYNC|pixel_column\(3) & \inst|SYNC|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(3),
	datab => \inst|SYNC|pixel_column\(4),
	datad => VCC,
	combout => \inst|Add4~0_combout\,
	cout => \inst|Add4~1\);

-- Location: LCCOMB_X27_Y18_N22
\inst|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~4_combout\ = (\inst|SYNC|pixel_column\(6) & (\inst|Add4~3\ $ (GND))) # (!\inst|SYNC|pixel_column\(6) & (!\inst|Add4~3\ & VCC))
-- \inst|Add4~5\ = CARRY((\inst|SYNC|pixel_column\(6) & !\inst|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst|Add4~3\,
	combout => \inst|Add4~4_combout\,
	cout => \inst|Add4~5\);

-- Location: LCCOMB_X27_Y18_N24
\inst|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~6_combout\ = (\inst|SYNC|pixel_column\(7) & (!\inst|Add4~5\)) # (!\inst|SYNC|pixel_column\(7) & ((\inst|Add4~5\) # (GND)))
-- \inst|Add4~7\ = CARRY((!\inst|Add4~5\) # (!\inst|SYNC|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst|Add4~5\,
	combout => \inst|Add4~6_combout\,
	cout => \inst|Add4~7\);

-- Location: LCCOMB_X28_Y18_N0
\inst|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~1_cout\ = CARRY((!\inst|SYNC|pixel_column\(1) & \inst|player_X_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(1),
	datab => \inst|player_X_pos\(1),
	datad => VCC,
	cout => \inst|LessThan4~1_cout\);

-- Location: LCCOMB_X28_Y18_N2
\inst|LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~3_cout\ = CARRY((\inst|SYNC|pixel_column\(2) & ((!\inst|LessThan4~1_cout\) # (!\inst|player_X_pos\(2)))) # (!\inst|SYNC|pixel_column\(2) & (!\inst|player_X_pos\(2) & !\inst|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(2),
	datab => \inst|player_X_pos\(2),
	datad => VCC,
	cin => \inst|LessThan4~1_cout\,
	cout => \inst|LessThan4~3_cout\);

-- Location: LCCOMB_X28_Y18_N4
\inst|LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~5_cout\ = CARRY((\inst|player_X_pos\(3) & ((\inst|SYNC|pixel_column\(3)) # (!\inst|LessThan4~3_cout\))) # (!\inst|player_X_pos\(3) & (\inst|SYNC|pixel_column\(3) & !\inst|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(3),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	cin => \inst|LessThan4~3_cout\,
	cout => \inst|LessThan4~5_cout\);

-- Location: LCCOMB_X28_Y18_N6
\inst|LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~7_cout\ = CARRY((\inst|player_X_pos\(4) & (\inst|Add4~0_combout\ & !\inst|LessThan4~5_cout\)) # (!\inst|player_X_pos\(4) & ((\inst|Add4~0_combout\) # (!\inst|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(4),
	datab => \inst|Add4~0_combout\,
	datad => VCC,
	cin => \inst|LessThan4~5_cout\,
	cout => \inst|LessThan4~7_cout\);

-- Location: LCCOMB_X28_Y18_N8
\inst|LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~9_cout\ = CARRY((\inst|player_X_pos\(5) & ((!\inst|LessThan4~7_cout\) # (!\inst|Add4~2_combout\))) # (!\inst|player_X_pos\(5) & (!\inst|Add4~2_combout\ & !\inst|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(5),
	datab => \inst|Add4~2_combout\,
	datad => VCC,
	cin => \inst|LessThan4~7_cout\,
	cout => \inst|LessThan4~9_cout\);

-- Location: LCCOMB_X28_Y18_N10
\inst|LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~11_cout\ = CARRY((\inst|player_X_pos\(6) & (\inst|Add4~4_combout\ & !\inst|LessThan4~9_cout\)) # (!\inst|player_X_pos\(6) & ((\inst|Add4~4_combout\) # (!\inst|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(6),
	datab => \inst|Add4~4_combout\,
	datad => VCC,
	cin => \inst|LessThan4~9_cout\,
	cout => \inst|LessThan4~11_cout\);

-- Location: LCCOMB_X28_Y18_N12
\inst|LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~13_cout\ = CARRY((\inst|Add4~6_combout\ & (\inst|player_X_pos\(7) & !\inst|LessThan4~11_cout\)) # (!\inst|Add4~6_combout\ & ((\inst|player_X_pos\(7)) # (!\inst|LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~6_combout\,
	datab => \inst|player_X_pos\(7),
	datad => VCC,
	cin => \inst|LessThan4~11_cout\,
	cout => \inst|LessThan4~13_cout\);

-- Location: LCCOMB_X28_Y18_N14
\inst|LessThan4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~15_cout\ = CARRY((\inst|Add4~8_combout\ & ((!\inst|LessThan4~13_cout\) # (!\inst|player_X_pos\(8)))) # (!\inst|Add4~8_combout\ & (!\inst|player_X_pos\(8) & !\inst|LessThan4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~8_combout\,
	datab => \inst|player_X_pos\(8),
	datad => VCC,
	cin => \inst|LessThan4~13_cout\,
	cout => \inst|LessThan4~15_cout\);

-- Location: LCCOMB_X28_Y18_N16
\inst|LessThan4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~17_cout\ = CARRY((\inst|Add4~10_combout\ & (\inst|player_X_pos\(9) & !\inst|LessThan4~15_cout\)) # (!\inst|Add4~10_combout\ & ((\inst|player_X_pos\(9)) # (!\inst|LessThan4~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~10_combout\,
	datab => \inst|player_X_pos\(9),
	datad => VCC,
	cin => \inst|LessThan4~15_cout\,
	cout => \inst|LessThan4~17_cout\);

-- Location: LCCOMB_X28_Y18_N18
\inst|LessThan4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~18_combout\ = (\inst|player_X_pos\(10) & ((\inst|LessThan4~17_cout\) # (!\inst|Add4~12_combout\))) # (!\inst|player_X_pos\(10) & (\inst|LessThan4~17_cout\ & !\inst|Add4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(10),
	datad => \inst|Add4~12_combout\,
	cin => \inst|LessThan4~17_cout\,
	combout => \inst|LessThan4~18_combout\);

-- Location: LCCOMB_X28_Y19_N4
\inst|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~0_combout\ = (\inst|player_X_pos\(3) & (\inst|player_X_pos\(4) $ (VCC))) # (!\inst|player_X_pos\(3) & (\inst|player_X_pos\(4) & VCC))
-- \inst|Add5~1\ = CARRY((\inst|player_X_pos\(3) & \inst|player_X_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(3),
	datab => \inst|player_X_pos\(4),
	datad => VCC,
	combout => \inst|Add5~0_combout\,
	cout => \inst|Add5~1\);

-- Location: LCCOMB_X28_Y19_N6
\inst|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~2_combout\ = (\inst|player_X_pos\(5) & (!\inst|Add5~1\)) # (!\inst|player_X_pos\(5) & ((\inst|Add5~1\) # (GND)))
-- \inst|Add5~3\ = CARRY((!\inst|Add5~1\) # (!\inst|player_X_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|player_X_pos\(5),
	datad => VCC,
	cin => \inst|Add5~1\,
	combout => \inst|Add5~2_combout\,
	cout => \inst|Add5~3\);

-- Location: LCCOMB_X28_Y19_N8
\inst|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~4_combout\ = (\inst|player_X_pos\(6) & (\inst|Add5~3\ $ (GND))) # (!\inst|player_X_pos\(6) & (!\inst|Add5~3\ & VCC))
-- \inst|Add5~5\ = CARRY((\inst|player_X_pos\(6) & !\inst|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|player_X_pos\(6),
	datad => VCC,
	cin => \inst|Add5~3\,
	combout => \inst|Add5~4_combout\,
	cout => \inst|Add5~5\);

-- Location: LCCOMB_X28_Y19_N12
\inst|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~8_combout\ = (\inst|player_X_pos\(8) & (\inst|Add5~7\ $ (GND))) # (!\inst|player_X_pos\(8) & (!\inst|Add5~7\ & VCC))
-- \inst|Add5~9\ = CARRY((\inst|player_X_pos\(8) & !\inst|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(8),
	datad => VCC,
	cin => \inst|Add5~7\,
	combout => \inst|Add5~8_combout\,
	cout => \inst|Add5~9\);

-- Location: LCCOMB_X27_Y18_N12
\inst|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add8~12_combout\ = (\inst|SYNC|pixel_column\(9) & (\inst|Add8~11\ $ (GND))) # (!\inst|SYNC|pixel_column\(9) & (!\inst|Add8~11\ & VCC))
-- \inst|Add8~13\ = CARRY((\inst|SYNC|pixel_column\(9) & !\inst|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(9),
	datad => VCC,
	cin => \inst|Add8~11\,
	combout => \inst|Add8~12_combout\,
	cout => \inst|Add8~13\);

-- Location: FF_X21_Y20_N27
\inst|bullet_Y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|bullet_Y_pos[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bullet_Y_pos\(8));

-- Location: LCCOMB_X22_Y20_N12
\inst|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~0_combout\ = (\inst|bullet_Y_pos\(2) & (\inst|bullet_Y_pos\(3) $ (VCC))) # (!\inst|bullet_Y_pos\(2) & (\inst|bullet_Y_pos\(3) & VCC))
-- \inst|Add11~1\ = CARRY((\inst|bullet_Y_pos\(2) & \inst|bullet_Y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(2),
	datab => \inst|bullet_Y_pos\(3),
	datad => VCC,
	combout => \inst|Add11~0_combout\,
	cout => \inst|Add11~1\);

-- Location: LCCOMB_X22_Y20_N14
\inst|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~2_combout\ = (\inst|bullet_Y_pos\(4) & (!\inst|Add11~1\)) # (!\inst|bullet_Y_pos\(4) & ((\inst|Add11~1\) # (GND)))
-- \inst|Add11~3\ = CARRY((!\inst|Add11~1\) # (!\inst|bullet_Y_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(4),
	datad => VCC,
	cin => \inst|Add11~1\,
	combout => \inst|Add11~2_combout\,
	cout => \inst|Add11~3\);

-- Location: LCCOMB_X22_Y20_N16
\inst|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~4_combout\ = (\inst|bullet_Y_pos\(5) & (\inst|Add11~3\ $ (GND))) # (!\inst|bullet_Y_pos\(5) & (!\inst|Add11~3\ & VCC))
-- \inst|Add11~5\ = CARRY((\inst|bullet_Y_pos\(5) & !\inst|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|bullet_Y_pos\(5),
	datad => VCC,
	cin => \inst|Add11~3\,
	combout => \inst|Add11~4_combout\,
	cout => \inst|Add11~5\);

-- Location: LCCOMB_X24_Y20_N18
\inst|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add10~0_combout\ = (\inst|SYNC|pixel_row\(3) & (\inst|SYNC|pixel_row\(2) $ (VCC))) # (!\inst|SYNC|pixel_row\(3) & (\inst|SYNC|pixel_row\(2) & VCC))
-- \inst|Add10~1\ = CARRY((\inst|SYNC|pixel_row\(3) & \inst|SYNC|pixel_row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|SYNC|pixel_row\(2),
	datad => VCC,
	combout => \inst|Add10~0_combout\,
	cout => \inst|Add10~1\);

-- Location: LCCOMB_X24_Y20_N22
\inst|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add10~4_combout\ = (\inst|SYNC|pixel_row\(5) & (\inst|Add10~3\ $ (GND))) # (!\inst|SYNC|pixel_row\(5) & (!\inst|Add10~3\ & VCC))
-- \inst|Add10~5\ = CARRY((\inst|SYNC|pixel_row\(5) & !\inst|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(5),
	datad => VCC,
	cin => \inst|Add10~3\,
	combout => \inst|Add10~4_combout\,
	cout => \inst|Add10~5\);

-- Location: LCCOMB_X24_Y20_N26
\inst|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add10~8_combout\ = (\inst|SYNC|pixel_row\(7) & (\inst|Add10~7\ $ (GND))) # (!\inst|SYNC|pixel_row\(7) & (!\inst|Add10~7\ & VCC))
-- \inst|Add10~9\ = CARRY((\inst|SYNC|pixel_row\(7) & !\inst|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(7),
	datad => VCC,
	cin => \inst|Add10~7\,
	combout => \inst|Add10~8_combout\,
	cout => \inst|Add10~9\);

-- Location: LCCOMB_X24_Y20_N28
\inst|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add10~10_combout\ = (\inst|SYNC|pixel_row\(8) & (!\inst|Add10~9\)) # (!\inst|SYNC|pixel_row\(8) & ((\inst|Add10~9\) # (GND)))
-- \inst|Add10~11\ = CARRY((!\inst|Add10~9\) # (!\inst|SYNC|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(8),
	datad => VCC,
	cin => \inst|Add10~9\,
	combout => \inst|Add10~10_combout\,
	cout => \inst|Add10~11\);

-- Location: LCCOMB_X24_Y20_N30
\inst|Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add10~12_combout\ = !\inst|Add10~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add10~11\,
	combout => \inst|Add10~12_combout\);

-- Location: LCCOMB_X30_Y20_N0
\inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = (\inst|tank_X_pos\(4) & (\inst|tank_X_pos\(3) $ (VCC))) # (!\inst|tank_X_pos\(4) & (\inst|tank_X_pos\(3) & VCC))
-- \inst|Add1~1\ = CARRY((\inst|tank_X_pos\(4) & \inst|tank_X_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(4),
	datab => \inst|tank_X_pos\(3),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X21_Y20_N26
\inst|bullet_Y_pos[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_pos[8]~24_combout\ = (\inst|bullet_Y_pos\(8) & ((\inst|bullet_Y_motion\(4) & (\inst|bullet_Y_pos[7]~23\ & VCC)) # (!\inst|bullet_Y_motion\(4) & (!\inst|bullet_Y_pos[7]~23\)))) # (!\inst|bullet_Y_pos\(8) & ((\inst|bullet_Y_motion\(4) & 
-- (!\inst|bullet_Y_pos[7]~23\)) # (!\inst|bullet_Y_motion\(4) & ((\inst|bullet_Y_pos[7]~23\) # (GND)))))
-- \inst|bullet_Y_pos[8]~25\ = CARRY((\inst|bullet_Y_pos\(8) & (!\inst|bullet_Y_motion\(4) & !\inst|bullet_Y_pos[7]~23\)) # (!\inst|bullet_Y_pos\(8) & ((!\inst|bullet_Y_pos[7]~23\) # (!\inst|bullet_Y_motion\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(8),
	datab => \inst|bullet_Y_motion\(4),
	datad => VCC,
	cin => \inst|bullet_Y_pos[7]~23\,
	combout => \inst|bullet_Y_pos[8]~24_combout\,
	cout => \inst|bullet_Y_pos[8]~25\);

-- Location: LCCOMB_X24_Y18_N26
\inst|SYNC|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~18_combout\ = (\inst|SYNC|h_count\(9) & (!\inst|SYNC|Add0~17\)) # (!\inst|SYNC|h_count\(9) & ((\inst|SYNC|Add0~17\) # (GND)))
-- \inst|SYNC|Add0~19\ = CARRY((!\inst|SYNC|Add0~17\) # (!\inst|SYNC|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(9),
	datad => VCC,
	cin => \inst|SYNC|Add0~17\,
	combout => \inst|SYNC|Add0~18_combout\,
	cout => \inst|SYNC|Add0~19\);

-- Location: LCCOMB_X39_Y26_N2
\inst7|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = (\inst7|i\(1) & (!\inst7|Add0~1\)) # (!\inst7|i\(1) & ((\inst7|Add0~1\) # (GND)))
-- \inst7|Add0~3\ = CARRY((!\inst7|Add0~1\) # (!\inst7|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(1),
	datad => VCC,
	cin => \inst7|Add0~1\,
	combout => \inst7|Add0~2_combout\,
	cout => \inst7|Add0~3\);

-- Location: LCCOMB_X39_Y26_N10
\inst7|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~10_combout\ = (\inst7|i\(5) & (!\inst7|Add0~9\)) # (!\inst7|i\(5) & ((\inst7|Add0~9\) # (GND)))
-- \inst7|Add0~11\ = CARRY((!\inst7|Add0~9\) # (!\inst7|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(5),
	datad => VCC,
	cin => \inst7|Add0~9\,
	combout => \inst7|Add0~10_combout\,
	cout => \inst7|Add0~11\);

-- Location: LCCOMB_X39_Y26_N22
\inst7|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~22_combout\ = (\inst7|i\(11) & (!\inst7|Add0~21\)) # (!\inst7|i\(11) & ((\inst7|Add0~21\) # (GND)))
-- \inst7|Add0~23\ = CARRY((!\inst7|Add0~21\) # (!\inst7|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(11),
	datad => VCC,
	cin => \inst7|Add0~21\,
	combout => \inst7|Add0~22_combout\,
	cout => \inst7|Add0~23\);

-- Location: LCCOMB_X39_Y26_N30
\inst7|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~30_combout\ = (\inst7|i\(15) & (!\inst7|Add0~29\)) # (!\inst7|i\(15) & ((\inst7|Add0~29\) # (GND)))
-- \inst7|Add0~31\ = CARRY((!\inst7|Add0~29\) # (!\inst7|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(15),
	datad => VCC,
	cin => \inst7|Add0~29\,
	combout => \inst7|Add0~30_combout\,
	cout => \inst7|Add0~31\);

-- Location: LCCOMB_X39_Y25_N12
\inst7|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~44_combout\ = (\inst7|i\(22) & (\inst7|Add0~43\ $ (GND))) # (!\inst7|i\(22) & (!\inst7|Add0~43\ & VCC))
-- \inst7|Add0~45\ = CARRY((\inst7|i\(22) & !\inst7|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(22),
	datad => VCC,
	cin => \inst7|Add0~43\,
	combout => \inst7|Add0~44_combout\,
	cout => \inst7|Add0~45\);

-- Location: LCCOMB_X39_Y25_N20
\inst7|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~52_combout\ = (\inst7|i\(26) & (\inst7|Add0~51\ $ (GND))) # (!\inst7|i\(26) & (!\inst7|Add0~51\ & VCC))
-- \inst7|Add0~53\ = CARRY((\inst7|i\(26) & !\inst7|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(26),
	datad => VCC,
	cin => \inst7|Add0~51\,
	combout => \inst7|Add0~52_combout\,
	cout => \inst7|Add0~53\);

-- Location: LCCOMB_X39_Y25_N22
\inst7|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~54_combout\ = (\inst7|i\(27) & (!\inst7|Add0~53\)) # (!\inst7|i\(27) & ((\inst7|Add0~53\) # (GND)))
-- \inst7|Add0~55\ = CARRY((!\inst7|Add0~53\) # (!\inst7|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(27),
	datad => VCC,
	cin => \inst7|Add0~53\,
	combout => \inst7|Add0~54_combout\,
	cout => \inst7|Add0~55\);

-- Location: LCCOMB_X39_Y25_N24
\inst7|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~56_combout\ = (\inst7|i\(28) & (\inst7|Add0~55\ $ (GND))) # (!\inst7|i\(28) & (!\inst7|Add0~55\ & VCC))
-- \inst7|Add0~57\ = CARRY((\inst7|i\(28) & !\inst7|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(28),
	datad => VCC,
	cin => \inst7|Add0~55\,
	combout => \inst7|Add0~56_combout\,
	cout => \inst7|Add0~57\);

-- Location: LCCOMB_X39_Y25_N26
\inst7|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~58_combout\ = (\inst7|i\(29) & (!\inst7|Add0~57\)) # (!\inst7|i\(29) & ((\inst7|Add0~57\) # (GND)))
-- \inst7|Add0~59\ = CARRY((!\inst7|Add0~57\) # (!\inst7|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(29),
	datad => VCC,
	cin => \inst7|Add0~57\,
	combout => \inst7|Add0~58_combout\,
	cout => \inst7|Add0~59\);

-- Location: LCCOMB_X39_Y25_N28
\inst7|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~60_combout\ = (\inst7|i\(30) & (\inst7|Add0~59\ $ (GND))) # (!\inst7|i\(30) & (!\inst7|Add0~59\ & VCC))
-- \inst7|Add0~61\ = CARRY((\inst7|i\(30) & !\inst7|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(30),
	datad => VCC,
	cin => \inst7|Add0~59\,
	combout => \inst7|Add0~60_combout\,
	cout => \inst7|Add0~61\);

-- Location: LCCOMB_X39_Y25_N30
\inst7|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~62_combout\ = \inst7|i\(31) $ (\inst7|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(31),
	cin => \inst7|Add0~61\,
	combout => \inst7|Add0~62_combout\);

-- Location: FF_X27_Y19_N13
\inst1|new_cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(0));

-- Location: FF_X27_Y19_N21
\inst1|new_cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[4]~18_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(4));

-- Location: FF_X33_Y17_N13
\inst1|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[7]~22_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(7));

-- Location: FF_X33_Y17_N11
\inst1|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[6]~20_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(6));

-- Location: FF_X33_Y17_N7
\inst1|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[4]~16_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(4));

-- Location: LCCOMB_X33_Y17_N6
\inst1|inhibit_wait_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[4]~16_combout\ = (\inst1|inhibit_wait_count\(4) & (!\inst1|inhibit_wait_count[3]~15\)) # (!\inst1|inhibit_wait_count\(4) & ((\inst1|inhibit_wait_count[3]~15\) # (GND)))
-- \inst1|inhibit_wait_count[4]~17\ = CARRY((!\inst1|inhibit_wait_count[3]~15\) # (!\inst1|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[3]~15\,
	combout => \inst1|inhibit_wait_count[4]~16_combout\,
	cout => \inst1|inhibit_wait_count[4]~17\);

-- Location: LCCOMB_X33_Y17_N10
\inst1|inhibit_wait_count[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[6]~20_combout\ = (\inst1|inhibit_wait_count\(6) & (!\inst1|inhibit_wait_count[5]~19\)) # (!\inst1|inhibit_wait_count\(6) & ((\inst1|inhibit_wait_count[5]~19\) # (GND)))
-- \inst1|inhibit_wait_count[6]~21\ = CARRY((!\inst1|inhibit_wait_count[5]~19\) # (!\inst1|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[5]~19\,
	combout => \inst1|inhibit_wait_count[6]~20_combout\,
	cout => \inst1|inhibit_wait_count[6]~21\);

-- Location: LCCOMB_X33_Y17_N12
\inst1|inhibit_wait_count[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[7]~22_combout\ = (\inst1|inhibit_wait_count\(7) & (\inst1|inhibit_wait_count[6]~21\ $ (GND))) # (!\inst1|inhibit_wait_count\(7) & (!\inst1|inhibit_wait_count[6]~21\ & VCC))
-- \inst1|inhibit_wait_count[7]~23\ = CARRY((\inst1|inhibit_wait_count\(7) & !\inst1|inhibit_wait_count[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[6]~21\,
	combout => \inst1|inhibit_wait_count[7]~22_combout\,
	cout => \inst1|inhibit_wait_count[7]~23\);

-- Location: LCCOMB_X27_Y19_N12
\inst1|new_cursor_column[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[0]~10_combout\ = (\inst1|cursor_column\(0) & (\inst1|PACKET_CHAR2\(0) $ (VCC))) # (!\inst1|cursor_column\(0) & (\inst1|PACKET_CHAR2\(0) & VCC))
-- \inst1|new_cursor_column[0]~11\ = CARRY((\inst1|cursor_column\(0) & \inst1|PACKET_CHAR2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(0),
	datab => \inst1|PACKET_CHAR2\(0),
	datad => VCC,
	combout => \inst1|new_cursor_column[0]~10_combout\,
	cout => \inst1|new_cursor_column[0]~11\);

-- Location: LCCOMB_X27_Y19_N20
\inst1|new_cursor_column[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[4]~18_combout\ = ((\inst1|cursor_column\(4) $ (\inst1|PACKET_CHAR2\(4) $ (!\inst1|new_cursor_column[3]~17\)))) # (GND)
-- \inst1|new_cursor_column[4]~19\ = CARRY((\inst1|cursor_column\(4) & ((\inst1|PACKET_CHAR2\(4)) # (!\inst1|new_cursor_column[3]~17\))) # (!\inst1|cursor_column\(4) & (\inst1|PACKET_CHAR2\(4) & !\inst1|new_cursor_column[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(4),
	datab => \inst1|PACKET_CHAR2\(4),
	datad => VCC,
	cin => \inst1|new_cursor_column[3]~17\,
	combout => \inst1|new_cursor_column[4]~18_combout\,
	cout => \inst1|new_cursor_column[4]~19\);

-- Location: LCCOMB_X23_Y19_N12
\inst|SYNC|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|LessThan7~0_combout\ = (\inst|SYNC|v_count\(6) & (\inst|SYNC|v_count\(8) & (\inst|SYNC|v_count\(5) & \inst|SYNC|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(6),
	datab => \inst|SYNC|v_count\(8),
	datac => \inst|SYNC|v_count\(5),
	datad => \inst|SYNC|v_count\(7),
	combout => \inst|SYNC|LessThan7~0_combout\);

-- Location: FF_X39_Y26_N11
\inst7|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(5));

-- Location: FF_X39_Y26_N23
\inst7|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(11));

-- Location: LCCOMB_X40_Y26_N10
\inst7|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~2_combout\ = (!\inst7|i\(11) & (!\inst7|i\(10) & (!\inst7|i\(8) & !\inst7|i\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(11),
	datab => \inst7|i\(10),
	datac => \inst7|i\(8),
	datad => \inst7|i\(9),
	combout => \inst7|Equal0~2_combout\);

-- Location: FF_X39_Y26_N31
\inst7|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(15));

-- Location: FF_X39_Y25_N13
\inst7|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(22));

-- Location: FF_X39_Y25_N23
\inst7|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(27));

-- Location: FF_X39_Y25_N25
\inst7|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(28));

-- Location: FF_X39_Y25_N27
\inst7|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(29));

-- Location: FF_X39_Y25_N29
\inst7|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(30));

-- Location: FF_X39_Y25_N31
\inst7|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(31));

-- Location: LCCOMB_X40_Y25_N16
\inst7|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~9_combout\ = (!\inst7|i\(31) & (!\inst7|i\(30) & (!\inst7|i\(29) & !\inst7|i\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(31),
	datab => \inst7|i\(30),
	datac => \inst7|i\(29),
	datad => \inst7|i\(28),
	combout => \inst7|Equal0~9_combout\);

-- Location: LCCOMB_X23_Y18_N30
\inst|SYNC|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~0_combout\ = ((\inst|SYNC|h_count\(10)) # ((\inst|SYNC|h_count\(8)) # (!\inst|SYNC|h_count\(7)))) # (!\inst|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(9),
	datab => \inst|SYNC|h_count\(10),
	datac => \inst|SYNC|h_count\(8),
	datad => \inst|SYNC|h_count\(7),
	combout => \inst|SYNC|process_0~0_combout\);

-- Location: LCCOMB_X23_Y18_N12
\inst|SYNC|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~1_combout\ = (\inst|SYNC|h_count\(2)) # ((\inst|SYNC|h_count\(0) & (\inst|SYNC|h_count\(1) & !\inst|SYNC|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(2),
	datab => \inst|SYNC|h_count\(0),
	datac => \inst|SYNC|h_count\(1),
	datad => \inst|SYNC|h_count\(5),
	combout => \inst|SYNC|process_0~1_combout\);

-- Location: LCCOMB_X23_Y19_N26
\inst|SYNC|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~7_combout\ = (!\inst|SYNC|v_count\(4) & (!\inst|SYNC|v_count\(5) & ((!\inst|SYNC|v_count\(3)) # (!\inst|SYNC|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(2),
	datab => \inst|SYNC|v_count\(4),
	datac => \inst|SYNC|v_count\(5),
	datad => \inst|SYNC|v_count\(3),
	combout => \inst|SYNC|process_0~7_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst|SYNC|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~0_combout\ = (\inst|SYNC|h_count\(0) & (\inst|SYNC|h_count\(3) & (\inst|SYNC|h_count\(1) & \inst|SYNC|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(0),
	datab => \inst|SYNC|h_count\(3),
	datac => \inst|SYNC|h_count\(1),
	datad => \inst|SYNC|h_count\(4),
	combout => \inst|SYNC|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y20_N28
\inst|tank_X_motion[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_motion[2]~1_combout\ = (\inst|tank_X_pos\(4) & ((\inst|tank_X_motion\(2)) # ((\inst|tank_X_pos\(6) & \inst|tank_X_pos\(3))))) # (!\inst|tank_X_pos\(4) & (\inst|tank_X_pos\(6) & (\inst|tank_X_motion\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(4),
	datab => \inst|tank_X_pos\(6),
	datac => \inst|tank_X_motion\(2),
	datad => \inst|tank_X_pos\(3),
	combout => \inst|tank_X_motion[2]~1_combout\);

-- Location: LCCOMB_X29_Y20_N26
\inst|tank_X_motion[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_motion[2]~2_combout\ = (\inst|tank_X_pos\(7)) # ((\inst|tank_X_motion\(2) & ((\inst|tank_X_pos\(5)) # (\inst|tank_X_motion[2]~1_combout\))) # (!\inst|tank_X_motion\(2) & (\inst|tank_X_pos\(5) & \inst|tank_X_motion[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_motion\(2),
	datab => \inst|tank_X_pos\(7),
	datac => \inst|tank_X_pos\(5),
	datad => \inst|tank_X_motion[2]~1_combout\,
	combout => \inst|tank_X_motion[2]~2_combout\);

-- Location: FF_X31_Y17_N17
\inst1|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|send_char~0_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|send_char~q\);

-- Location: LCCOMB_X32_Y19_N20
\inst1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal3~0_combout\ = (\inst1|PACKET_COUNT\(0)) # (\inst1|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT\(1),
	combout => \inst1|Equal3~0_combout\);

-- Location: LCCOMB_X31_Y17_N16
\inst1|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|send_char~0_combout\ = (\inst1|send_char~q\) # ((\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & \inst1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst1|send_char~q\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|send_char~0_combout\);

-- Location: FF_X33_Y17_N27
\inst1|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(0));

-- Location: FF_X31_Y19_N7
\inst1|PACKET_CHAR2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[5]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(5));

-- Location: FF_X30_Y19_N13
\inst1|cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~13_combout\,
	ena => \inst1|cursor_column[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(4));

-- Location: FF_X31_Y19_N31
\inst1|PACKET_CHAR2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[3]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(3));

-- Location: FF_X31_Y19_N13
\inst1|PACKET_CHAR2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[2]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(2));

-- Location: FF_X31_Y19_N11
\inst1|PACKET_CHAR2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[1]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(1));

-- Location: FF_X30_Y19_N25
\inst1|cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~17_combout\,
	ena => \inst1|cursor_column[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(0));

-- Location: FF_X33_Y19_N27
\inst1|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X33_Y17_N26
\inst1|inhibit_wait_count[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[0]~30_combout\ = \inst1|mouse_state.INHIBIT_TRANS~q\ $ (!\inst1|inhibit_wait_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.INHIBIT_TRANS~q\,
	datac => \inst1|inhibit_wait_count\(0),
	combout => \inst1|inhibit_wait_count[0]~30_combout\);

-- Location: LCCOMB_X30_Y19_N12
\inst1|cursor_column~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~13_combout\ = (\inst1|new_cursor_column\(4) & (\inst1|cursor_column~5_combout\ & \inst1|cursor_column[0]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(4),
	datac => \inst1|cursor_column~5_combout\,
	datad => \inst1|cursor_column[0]~19_combout\,
	combout => \inst1|cursor_column~13_combout\);

-- Location: LCCOMB_X30_Y19_N24
\inst1|cursor_column~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~17_combout\ = (\inst1|new_cursor_column\(0) & (\inst1|cursor_column~5_combout\ & \inst1|cursor_column[0]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(0),
	datac => \inst1|cursor_column~5_combout\,
	datad => \inst1|cursor_column[0]~19_combout\,
	combout => \inst1|cursor_column~17_combout\);

-- Location: LCCOMB_X33_Y19_N26
\inst1|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & ((\inst1|output_ready~q\) # ((!\inst1|iready_set~q\ & \inst1|mouse_state.WAIT_CMD_ACK~q\)))) # (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst1|iready_set~q\ & 
-- (\inst1|mouse_state.WAIT_CMD_ACK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst1|iready_set~q\,
	datac => \inst1|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst1|output_ready~q\,
	combout => \inst1|Selector4~0_combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G8
\inst|SYNC|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|SYNC|vert_sync_out~clkctrl_outclk\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y19_N10
\inst1|PACKET_CHAR2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[1]~feeder_combout\ = \inst1|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(1),
	combout => \inst1|PACKET_CHAR2[1]~feeder_combout\);

-- Location: LCCOMB_X31_Y19_N12
\inst1|PACKET_CHAR2[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[2]~feeder_combout\ = \inst1|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(2),
	combout => \inst1|PACKET_CHAR2[2]~feeder_combout\);

-- Location: LCCOMB_X31_Y19_N30
\inst1|PACKET_CHAR2[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[3]~feeder_combout\ = \inst1|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(3),
	combout => \inst1|PACKET_CHAR2[3]~feeder_combout\);

-- Location: LCCOMB_X31_Y19_N6
\inst1|PACKET_CHAR2[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[5]~feeder_combout\ = \inst1|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(5),
	combout => \inst1|PACKET_CHAR2[5]~feeder_combout\);

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MOUSE_DATA_BUF~q\,
	oe => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => \mouse_data~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst1|WideOr4~combout\,
	devoe => ww_devoe,
	o => \mouse_clk~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|red_out~q\,
	devoe => ww_devoe,
	o => \red_out~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => \green_out~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\blue_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|blue_out~q\,
	devoe => ww_devoe,
	o => \blue_out~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => \horiz_sync_out~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|vert_sync_out~q\,
	devoe => ww_devoe,
	o => \vert_sync_out~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\seg0_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|left_button~q\,
	devoe => ww_devoe,
	o => \seg0_dec~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\seg1_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|right_button~q\,
	devoe => ww_devoe,
	o => \seg1_dec~output_o\);

-- Location: IOIBUF_X41_Y11_N1
\mouse_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_clk,
	o => \mouse_clk~input_o\);

-- Location: LCCOMB_X40_Y15_N4
\inst1|filter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[0]~feeder_combout\ = \mouse_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_clk~input_o\,
	combout => \inst1|filter[0]~feeder_combout\);

-- Location: FF_X40_Y15_N5
\inst1|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(0));

-- Location: LCCOMB_X40_Y15_N26
\inst1|filter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[1]~feeder_combout\ = \inst1|filter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(0),
	combout => \inst1|filter[1]~feeder_combout\);

-- Location: FF_X40_Y15_N27
\inst1|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|filter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(1));

-- Location: LCCOMB_X40_Y15_N18
\inst1|filter[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[2]~feeder_combout\ = \inst1|filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(1),
	combout => \inst1|filter[2]~feeder_combout\);

-- Location: FF_X40_Y15_N19
\inst1|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|filter[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(2));

-- Location: LCCOMB_X40_Y15_N14
\inst1|filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[3]~feeder_combout\ = \inst1|filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|filter\(2),
	combout => \inst1|filter[3]~feeder_combout\);

-- Location: FF_X40_Y15_N15
\inst1|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(3));

-- Location: LCCOMB_X40_Y15_N24
\inst1|filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[4]~feeder_combout\ = \inst1|filter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(3),
	combout => \inst1|filter[4]~feeder_combout\);

-- Location: FF_X40_Y15_N25
\inst1|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(4));

-- Location: LCCOMB_X40_Y15_N10
\inst1|filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[5]~feeder_combout\ = \inst1|filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|filter\(4),
	combout => \inst1|filter[5]~feeder_combout\);

-- Location: FF_X40_Y15_N11
\inst1|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(5));

-- Location: LCCOMB_X40_Y15_N6
\inst1|filter[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[6]~feeder_combout\ = \inst1|filter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|filter\(5),
	combout => \inst1|filter[6]~feeder_combout\);

-- Location: FF_X40_Y15_N7
\inst1|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|filter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(6));

-- Location: LCCOMB_X40_Y15_N16
\inst1|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~2_combout\ = (\inst1|filter\(1) & ((\inst1|MOUSE_CLK_FILTER~q\) # ((\inst1|filter\(0) & \inst1|filter\(6))))) # (!\inst1|filter\(1) & (\inst1|MOUSE_CLK_FILTER~q\ & ((\inst1|filter\(0)) # (\inst1|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|filter\(1),
	datab => \inst1|MOUSE_CLK_FILTER~q\,
	datac => \inst1|filter\(0),
	datad => \inst1|filter\(6),
	combout => \inst1|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X40_Y15_N30
\inst1|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~1_combout\ = (\inst1|filter\(5) & ((\inst1|MOUSE_CLK_FILTER~q\) # ((\inst1|filter\(3) & \inst1|filter\(2))))) # (!\inst1|filter\(5) & (\inst1|MOUSE_CLK_FILTER~q\ & ((\inst1|filter\(3)) # (\inst1|filter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|filter\(5),
	datab => \inst1|MOUSE_CLK_FILTER~q\,
	datac => \inst1|filter\(3),
	datad => \inst1|filter\(2),
	combout => \inst1|MOUSE_CLK_FILTER~1_combout\);

-- Location: FF_X40_Y15_N13
\inst1|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(7));

-- Location: LCCOMB_X40_Y15_N12
\inst1|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~0_combout\ = (\inst1|filter\(4) & ((\inst1|filter\(7)) # (!\inst1|filter\(2)))) # (!\inst1|filter\(4) & (\inst1|filter\(7) & !\inst1|filter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|filter\(4),
	datac => \inst1|filter\(7),
	datad => \inst1|filter\(2),
	combout => \inst1|MOUSE_CLK_FILTER~0_combout\);

-- Location: LCCOMB_X40_Y15_N0
\inst1|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~3_combout\ = (\inst1|MOUSE_CLK_FILTER~q\ & ((\inst1|MOUSE_CLK_FILTER~2_combout\) # ((\inst1|MOUSE_CLK_FILTER~1_combout\) # (\inst1|MOUSE_CLK_FILTER~0_combout\)))) # (!\inst1|MOUSE_CLK_FILTER~q\ & (\inst1|MOUSE_CLK_FILTER~2_combout\ 
-- & (\inst1|MOUSE_CLK_FILTER~1_combout\ & \inst1|MOUSE_CLK_FILTER~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MOUSE_CLK_FILTER~q\,
	datab => \inst1|MOUSE_CLK_FILTER~2_combout\,
	datac => \inst1|MOUSE_CLK_FILTER~1_combout\,
	datad => \inst1|MOUSE_CLK_FILTER~0_combout\,
	combout => \inst1|MOUSE_CLK_FILTER~3_combout\);

-- Location: LCCOMB_X40_Y15_N22
\inst1|MOUSE_CLK_FILTER~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~feeder_combout\ = \inst1|MOUSE_CLK_FILTER~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|MOUSE_CLK_FILTER~3_combout\,
	combout => \inst1|MOUSE_CLK_FILTER~feeder_combout\);

-- Location: FF_X40_Y15_N23
\inst1|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|MOUSE_CLK_FILTER~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G6
\inst1|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y17_N26
\inst1|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X33_Y17_N0
\inst1|inhibit_wait_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[1]~10_combout\ = (\inst1|inhibit_wait_count\(0) & (\inst1|inhibit_wait_count\(1) $ (VCC))) # (!\inst1|inhibit_wait_count\(0) & (\inst1|inhibit_wait_count\(1) & VCC))
-- \inst1|inhibit_wait_count[1]~11\ = CARRY((\inst1|inhibit_wait_count\(0) & \inst1|inhibit_wait_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(0),
	datab => \inst1|inhibit_wait_count\(1),
	datad => VCC,
	combout => \inst1|inhibit_wait_count[1]~10_combout\,
	cout => \inst1|inhibit_wait_count[1]~11\);

-- Location: LCCOMB_X33_Y17_N30
\inst1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (\inst1|mouse_state.INHIBIT_TRANS~q\) # ((\inst1|inhibit_wait_count\(10) & \inst1|inhibit_wait_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(10),
	datac => \inst1|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst1|inhibit_wait_count\(9),
	combout => \inst1|Selector0~0_combout\);

-- Location: FF_X33_Y17_N31
\inst1|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.INHIBIT_TRANS~q\);

-- Location: FF_X33_Y17_N1
\inst1|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[1]~10_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(1));

-- Location: LCCOMB_X33_Y17_N2
\inst1|inhibit_wait_count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[2]~12_combout\ = (\inst1|inhibit_wait_count\(2) & (!\inst1|inhibit_wait_count[1]~11\)) # (!\inst1|inhibit_wait_count\(2) & ((\inst1|inhibit_wait_count[1]~11\) # (GND)))
-- \inst1|inhibit_wait_count[2]~13\ = CARRY((!\inst1|inhibit_wait_count[1]~11\) # (!\inst1|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[1]~11\,
	combout => \inst1|inhibit_wait_count[2]~12_combout\,
	cout => \inst1|inhibit_wait_count[2]~13\);

-- Location: FF_X33_Y17_N3
\inst1|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[2]~12_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(2));

-- Location: LCCOMB_X33_Y17_N4
\inst1|inhibit_wait_count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[3]~14_combout\ = (\inst1|inhibit_wait_count\(3) & (\inst1|inhibit_wait_count[2]~13\ $ (GND))) # (!\inst1|inhibit_wait_count\(3) & (!\inst1|inhibit_wait_count[2]~13\ & VCC))
-- \inst1|inhibit_wait_count[3]~15\ = CARRY((\inst1|inhibit_wait_count\(3) & !\inst1|inhibit_wait_count[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[2]~13\,
	combout => \inst1|inhibit_wait_count[3]~14_combout\,
	cout => \inst1|inhibit_wait_count[3]~15\);

-- Location: FF_X33_Y17_N5
\inst1|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[3]~14_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(3));

-- Location: LCCOMB_X33_Y17_N8
\inst1|inhibit_wait_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[5]~18_combout\ = (\inst1|inhibit_wait_count\(5) & (\inst1|inhibit_wait_count[4]~17\ $ (GND))) # (!\inst1|inhibit_wait_count\(5) & (!\inst1|inhibit_wait_count[4]~17\ & VCC))
-- \inst1|inhibit_wait_count[5]~19\ = CARRY((\inst1|inhibit_wait_count\(5) & !\inst1|inhibit_wait_count[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[4]~17\,
	combout => \inst1|inhibit_wait_count[5]~18_combout\,
	cout => \inst1|inhibit_wait_count[5]~19\);

-- Location: FF_X33_Y17_N9
\inst1|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[5]~18_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(5));

-- Location: LCCOMB_X33_Y17_N14
\inst1|inhibit_wait_count[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[8]~24_combout\ = (\inst1|inhibit_wait_count\(8) & (!\inst1|inhibit_wait_count[7]~23\)) # (!\inst1|inhibit_wait_count\(8) & ((\inst1|inhibit_wait_count[7]~23\) # (GND)))
-- \inst1|inhibit_wait_count[8]~25\ = CARRY((!\inst1|inhibit_wait_count[7]~23\) # (!\inst1|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[7]~23\,
	combout => \inst1|inhibit_wait_count[8]~24_combout\,
	cout => \inst1|inhibit_wait_count[8]~25\);

-- Location: FF_X33_Y17_N15
\inst1|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[8]~24_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(8));

-- Location: LCCOMB_X33_Y17_N16
\inst1|inhibit_wait_count[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[9]~26_combout\ = (\inst1|inhibit_wait_count\(9) & (\inst1|inhibit_wait_count[8]~25\ $ (GND))) # (!\inst1|inhibit_wait_count\(9) & (!\inst1|inhibit_wait_count[8]~25\ & VCC))
-- \inst1|inhibit_wait_count[9]~27\ = CARRY((\inst1|inhibit_wait_count\(9) & !\inst1|inhibit_wait_count[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[8]~25\,
	combout => \inst1|inhibit_wait_count[9]~26_combout\,
	cout => \inst1|inhibit_wait_count[9]~27\);

-- Location: FF_X33_Y17_N17
\inst1|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[9]~26_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(9));

-- Location: LCCOMB_X33_Y17_N18
\inst1|inhibit_wait_count[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[10]~28_combout\ = \inst1|inhibit_wait_count[9]~27\ $ (\inst1|inhibit_wait_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inhibit_wait_count\(10),
	cin => \inst1|inhibit_wait_count[9]~27\,
	combout => \inst1|inhibit_wait_count[10]~28_combout\);

-- Location: FF_X33_Y17_N19
\inst1|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[10]~28_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(10));

-- Location: LCCOMB_X33_Y17_N20
\inst1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (\inst1|inhibit_wait_count\(10) & (!\inst1|mouse_state.INHIBIT_TRANS~q\ & \inst1|inhibit_wait_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(10),
	datac => \inst1|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst1|inhibit_wait_count\(9),
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X33_Y17_N21
\inst1|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.LOAD_COMMAND~q\);

-- Location: FF_X33_Y17_N29
\inst1|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst1|mouse_state.LOAD_COMMAND~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X31_Y19_N8
\inst1|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~4_combout\ = (!\inst1|INCNT\(0) & (((!\inst1|INCNT\(1) & !\inst1|INCNT\(2))) # (!\inst1|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(3),
	datab => \inst1|INCNT\(1),
	datac => \inst1|INCNT\(0),
	datad => \inst1|INCNT\(2),
	combout => \inst1|INCNT~4_combout\);

-- Location: LCCOMB_X33_Y19_N0
\inst1|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|READ_CHAR~0_combout\ = (\inst1|READ_CHAR~q\ & ((\inst1|LessThan1~0_combout\))) # (!\inst1|READ_CHAR~q\ & (!\mouse_data~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datac => \inst1|READ_CHAR~q\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|READ_CHAR~0_combout\);

-- Location: LCCOMB_X32_Y17_N2
\inst1|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~3_combout\ = (!\inst1|OUTCNT\(0) & (((!\inst1|OUTCNT\(2) & !\inst1|OUTCNT\(1))) # (!\inst1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(2),
	datab => \inst1|OUTCNT\(3),
	datac => \inst1|OUTCNT\(0),
	datad => \inst1|OUTCNT\(1),
	combout => \inst1|OUTCNT~3_combout\);

-- Location: LCCOMB_X32_Y17_N8
\inst1|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|output_ready~0_combout\ = (!\inst1|send_char~q\ & \inst1|mouse_state.WAIT_OUTPUT_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|send_char~q\,
	datad => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst1|output_ready~0_combout\);

-- Location: FF_X32_Y17_N3
\inst1|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~3_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(0));

-- Location: LCCOMB_X32_Y17_N24
\inst1|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~0_combout\ = (\inst1|OUTCNT\(2) & (\inst1|OUTCNT\(1) & (!\inst1|OUTCNT\(3) & \inst1|OUTCNT\(0)))) # (!\inst1|OUTCNT\(2) & (!\inst1|OUTCNT\(1) & (\inst1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(2),
	datab => \inst1|OUTCNT\(1),
	datac => \inst1|OUTCNT\(3),
	datad => \inst1|OUTCNT\(0),
	combout => \inst1|OUTCNT~0_combout\);

-- Location: FF_X32_Y17_N25
\inst1|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~0_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(3));

-- Location: LCCOMB_X32_Y17_N28
\inst1|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~2_combout\ = (\inst1|OUTCNT\(3) & (!\inst1|OUTCNT\(2) & (!\inst1|OUTCNT\(1) & \inst1|OUTCNT\(0)))) # (!\inst1|OUTCNT\(3) & ((\inst1|OUTCNT\(1) $ (\inst1|OUTCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(2),
	datab => \inst1|OUTCNT\(3),
	datac => \inst1|OUTCNT\(1),
	datad => \inst1|OUTCNT\(0),
	combout => \inst1|OUTCNT~2_combout\);

-- Location: FF_X32_Y17_N29
\inst1|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~2_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(1));

-- Location: LCCOMB_X32_Y17_N14
\inst1|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~1_combout\ = (!\inst1|OUTCNT\(3) & (\inst1|OUTCNT\(2) $ (((\inst1|OUTCNT\(1) & \inst1|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(3),
	datab => \inst1|OUTCNT\(1),
	datac => \inst1|OUTCNT\(2),
	datad => \inst1|OUTCNT\(0),
	combout => \inst1|OUTCNT~1_combout\);

-- Location: FF_X32_Y17_N15
\inst1|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~1_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(2));

-- Location: LCCOMB_X32_Y17_N6
\inst1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (\inst1|OUTCNT\(3) & ((\inst1|OUTCNT\(2)) # (\inst1|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(3),
	datab => \inst1|OUTCNT\(2),
	datad => \inst1|OUTCNT\(1),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y17_N16
\inst1|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|output_ready~feeder_combout\ = \inst1|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|LessThan0~0_combout\,
	combout => \inst1|output_ready~feeder_combout\);

-- Location: FF_X32_Y17_N17
\inst1|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|output_ready~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|output_ready~q\);

-- Location: LCCOMB_X32_Y19_N18
\inst1|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst1|mouse_state.LOAD_COMMAND2~q\) # ((\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst1|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|output_ready~q\,
	combout => \inst1|Selector3~0_combout\);

-- Location: FF_X32_Y19_N19
\inst1|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: FF_X33_Y19_N1
\inst1|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|READ_CHAR~0_combout\,
	ena => \inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|READ_CHAR~q\);

-- Location: LCCOMB_X31_Y19_N14
\inst1|INCNT[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT[3]~2_combout\ = (\inst1|READ_CHAR~q\ & !\inst1|mouse_state.WAIT_OUTPUT_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|READ_CHAR~q\,
	datad => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst1|INCNT[3]~2_combout\);

-- Location: FF_X31_Y19_N9
\inst1|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~4_combout\,
	ena => \inst1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(0));

-- Location: LCCOMB_X31_Y19_N26
\inst1|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~3_combout\ = (!\inst1|INCNT\(3) & (\inst1|INCNT\(1) $ (\inst1|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(3),
	datac => \inst1|INCNT\(1),
	datad => \inst1|INCNT\(0),
	combout => \inst1|INCNT~3_combout\);

-- Location: FF_X31_Y19_N27
\inst1|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~3_combout\,
	ena => \inst1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(1));

-- Location: LCCOMB_X31_Y19_N28
\inst1|INCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~1_combout\ = (!\inst1|INCNT\(3) & (\inst1|INCNT\(2) $ (((\inst1|INCNT\(1) & \inst1|INCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(3),
	datab => \inst1|INCNT\(1),
	datac => \inst1|INCNT\(2),
	datad => \inst1|INCNT\(0),
	combout => \inst1|INCNT~1_combout\);

-- Location: FF_X31_Y19_N29
\inst1|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~1_combout\,
	ena => \inst1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(2));

-- Location: LCCOMB_X31_Y19_N18
\inst1|INCNT~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~5_combout\ = (\inst1|INCNT\(2) & (\inst1|INCNT\(1) & (!\inst1|INCNT\(3) & \inst1|INCNT\(0)))) # (!\inst1|INCNT\(2) & (!\inst1|INCNT\(1) & (\inst1|INCNT\(3) & !\inst1|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(2),
	datab => \inst1|INCNT\(1),
	datac => \inst1|INCNT\(3),
	datad => \inst1|INCNT\(0),
	combout => \inst1|INCNT~5_combout\);

-- Location: FF_X31_Y19_N19
\inst1|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~5_combout\,
	ena => \inst1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(3));

-- Location: LCCOMB_X31_Y19_N16
\inst1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = ((!\inst1|INCNT\(1) & (!\inst1|INCNT\(2) & !\inst1|INCNT\(0)))) # (!\inst1|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(1),
	datab => \inst1|INCNT\(2),
	datac => \inst1|INCNT\(0),
	datad => \inst1|INCNT\(3),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X33_Y19_N28
\inst1|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|iready_set~0_combout\ = (\inst1|READ_CHAR~q\ & (((!\inst1|LessThan1~0_combout\)))) # (!\inst1|READ_CHAR~q\ & (\mouse_data~input_o\ & ((\inst1|iready_set~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst1|iready_set~q\,
	datad => \inst1|READ_CHAR~q\,
	combout => \inst1|iready_set~0_combout\);

-- Location: FF_X33_Y19_N29
\inst1|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|iready_set~0_combout\,
	ena => \inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iready_set~q\);

-- Location: LCCOMB_X33_Y19_N22
\inst1|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|mouse_state.INPUT_PACKETS~0_combout\ = (\inst1|mouse_state.INPUT_PACKETS~q\) # ((\inst1|mouse_state.WAIT_CMD_ACK~q\ & \inst1|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.WAIT_CMD_ACK~q\,
	datab => \inst1|iready_set~q\,
	datac => \inst1|mouse_state.INPUT_PACKETS~q\,
	combout => \inst1|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: FF_X33_Y19_N23
\inst1|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.INPUT_PACKETS~q\);

-- Location: LCCOMB_X33_Y17_N24
\inst1|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~0_combout\ = (\inst1|send_data~q\ & ((\inst1|mouse_state.INPUT_PACKETS~q\) # (!\inst1|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|send_data~q\,
	datac => \inst1|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst1|mouse_state.INPUT_PACKETS~q\,
	combout => \inst1|Selector6~0_combout\);

-- Location: LCCOMB_X33_Y17_N22
\inst1|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~1_combout\ = (\inst1|mouse_state.LOAD_COMMAND2~q\) # ((\inst1|mouse_state.LOAD_COMMAND~q\) # (\inst1|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst1|mouse_state.LOAD_COMMAND~q\,
	datad => \inst1|Selector6~0_combout\,
	combout => \inst1|Selector6~1_combout\);

-- Location: FF_X33_Y17_N23
\inst1|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst1|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|send_data~q\);

-- Location: LCCOMB_X32_Y17_N22
\inst1|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_DATA_BUF~0_combout\ = (!\inst1|send_char~q\ & (\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|send_char~q\,
	datab => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X32_Y17_N27
\inst1|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(9));

-- Location: LCCOMB_X32_Y17_N12
\inst1|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[8]~3_combout\ = !\inst1|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTOUT\(9),
	combout => \inst1|SHIFTOUT[8]~3_combout\);

-- Location: FF_X32_Y17_N13
\inst1|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[8]~3_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(8));

-- Location: LCCOMB_X32_Y17_N20
\inst1|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[7]~feeder_combout\ = \inst1|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(8),
	combout => \inst1|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X32_Y17_N21
\inst1|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(7));

-- Location: LCCOMB_X32_Y17_N30
\inst1|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[6]~feeder_combout\ = \inst1|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(7),
	combout => \inst1|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X32_Y17_N31
\inst1|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(6));

-- Location: FF_X32_Y17_N9
\inst1|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTOUT\(6),
	clrn => \inst1|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(5));

-- Location: LCCOMB_X32_Y17_N18
\inst1|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[4]~2_combout\ = !\inst1|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(5),
	combout => \inst1|SHIFTOUT[4]~2_combout\);

-- Location: FF_X32_Y17_N19
\inst1|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[4]~2_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(4));

-- Location: LCCOMB_X32_Y17_N10
\inst1|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[3]~1_combout\ = !\inst1|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(4),
	combout => \inst1|SHIFTOUT[3]~1_combout\);

-- Location: FF_X32_Y17_N11
\inst1|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[3]~1_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(3));

-- Location: LCCOMB_X32_Y17_N4
\inst1|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[2]~0_combout\ = !\inst1|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(3),
	combout => \inst1|SHIFTOUT[2]~0_combout\);

-- Location: FF_X32_Y17_N5
\inst1|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[2]~0_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(2));

-- Location: FF_X32_Y17_N23
\inst1|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTOUT\(2),
	clrn => \inst1|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(1));

-- Location: FF_X32_Y17_N7
\inst1|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTOUT\(1),
	clrn => \inst1|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X33_Y17_N28
\inst1|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr4~combout\ = ((\inst1|mouse_state.LOAD_COMMAND2~q\) # (\inst1|mouse_state.LOAD_COMMAND~q\)) # (!\inst1|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.INHIBIT_TRANS~q\,
	datac => \inst1|mouse_state.LOAD_COMMAND2~q\,
	datad => \inst1|mouse_state.LOAD_COMMAND~q\,
	combout => \inst1|WideOr4~combout\);

-- Location: LCCOMB_X39_Y26_N0
\inst7|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~0_combout\ = \inst7|i\(0) $ (VCC)
-- \inst7|Add0~1\ = CARRY(\inst7|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(0),
	datad => VCC,
	combout => \inst7|Add0~0_combout\,
	cout => \inst7|Add0~1\);

-- Location: FF_X39_Y26_N1
\inst7|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(0));

-- Location: LCCOMB_X39_Y26_N4
\inst7|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~4_combout\ = (\inst7|i\(2) & (\inst7|Add0~3\ $ (GND))) # (!\inst7|i\(2) & (!\inst7|Add0~3\ & VCC))
-- \inst7|Add0~5\ = CARRY((\inst7|i\(2) & !\inst7|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(2),
	datad => VCC,
	cin => \inst7|Add0~3\,
	combout => \inst7|Add0~4_combout\,
	cout => \inst7|Add0~5\);

-- Location: FF_X39_Y26_N5
\inst7|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(2));

-- Location: LCCOMB_X39_Y26_N6
\inst7|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~6_combout\ = (\inst7|i\(3) & (!\inst7|Add0~5\)) # (!\inst7|i\(3) & ((\inst7|Add0~5\) # (GND)))
-- \inst7|Add0~7\ = CARRY((!\inst7|Add0~5\) # (!\inst7|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(3),
	datad => VCC,
	cin => \inst7|Add0~5\,
	combout => \inst7|Add0~6_combout\,
	cout => \inst7|Add0~7\);

-- Location: LCCOMB_X39_Y26_N8
\inst7|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~8_combout\ = (\inst7|i\(4) & (\inst7|Add0~7\ $ (GND))) # (!\inst7|i\(4) & (!\inst7|Add0~7\ & VCC))
-- \inst7|Add0~9\ = CARRY((\inst7|i\(4) & !\inst7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(4),
	datad => VCC,
	cin => \inst7|Add0~7\,
	combout => \inst7|Add0~8_combout\,
	cout => \inst7|Add0~9\);

-- Location: FF_X39_Y26_N9
\inst7|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(4));

-- Location: LCCOMB_X39_Y26_N12
\inst7|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~12_combout\ = (\inst7|i\(6) & (\inst7|Add0~11\ $ (GND))) # (!\inst7|i\(6) & (!\inst7|Add0~11\ & VCC))
-- \inst7|Add0~13\ = CARRY((\inst7|i\(6) & !\inst7|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(6),
	datad => VCC,
	cin => \inst7|Add0~11\,
	combout => \inst7|Add0~12_combout\,
	cout => \inst7|Add0~13\);

-- Location: LCCOMB_X39_Y26_N14
\inst7|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~14_combout\ = (\inst7|i\(7) & (!\inst7|Add0~13\)) # (!\inst7|i\(7) & ((\inst7|Add0~13\) # (GND)))
-- \inst7|Add0~15\ = CARRY((!\inst7|Add0~13\) # (!\inst7|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(7),
	datad => VCC,
	cin => \inst7|Add0~13\,
	combout => \inst7|Add0~14_combout\,
	cout => \inst7|Add0~15\);

-- Location: FF_X39_Y26_N15
\inst7|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(7));

-- Location: LCCOMB_X39_Y26_N16
\inst7|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~16_combout\ = (\inst7|i\(8) & (\inst7|Add0~15\ $ (GND))) # (!\inst7|i\(8) & (!\inst7|Add0~15\ & VCC))
-- \inst7|Add0~17\ = CARRY((\inst7|i\(8) & !\inst7|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(8),
	datad => VCC,
	cin => \inst7|Add0~15\,
	combout => \inst7|Add0~16_combout\,
	cout => \inst7|Add0~17\);

-- Location: FF_X39_Y26_N17
\inst7|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(8));

-- Location: LCCOMB_X39_Y26_N18
\inst7|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~18_combout\ = (\inst7|i\(9) & (!\inst7|Add0~17\)) # (!\inst7|i\(9) & ((\inst7|Add0~17\) # (GND)))
-- \inst7|Add0~19\ = CARRY((!\inst7|Add0~17\) # (!\inst7|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(9),
	datad => VCC,
	cin => \inst7|Add0~17\,
	combout => \inst7|Add0~18_combout\,
	cout => \inst7|Add0~19\);

-- Location: FF_X39_Y26_N19
\inst7|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(9));

-- Location: LCCOMB_X39_Y26_N20
\inst7|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~20_combout\ = (\inst7|i\(10) & (\inst7|Add0~19\ $ (GND))) # (!\inst7|i\(10) & (!\inst7|Add0~19\ & VCC))
-- \inst7|Add0~21\ = CARRY((\inst7|i\(10) & !\inst7|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(10),
	datad => VCC,
	cin => \inst7|Add0~19\,
	combout => \inst7|Add0~20_combout\,
	cout => \inst7|Add0~21\);

-- Location: FF_X39_Y26_N21
\inst7|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(10));

-- Location: LCCOMB_X39_Y26_N24
\inst7|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~24_combout\ = (\inst7|i\(12) & (\inst7|Add0~23\ $ (GND))) # (!\inst7|i\(12) & (!\inst7|Add0~23\ & VCC))
-- \inst7|Add0~25\ = CARRY((\inst7|i\(12) & !\inst7|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(12),
	datad => VCC,
	cin => \inst7|Add0~23\,
	combout => \inst7|Add0~24_combout\,
	cout => \inst7|Add0~25\);

-- Location: FF_X39_Y26_N25
\inst7|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(12));

-- Location: LCCOMB_X39_Y26_N26
\inst7|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~26_combout\ = (\inst7|i\(13) & (!\inst7|Add0~25\)) # (!\inst7|i\(13) & ((\inst7|Add0~25\) # (GND)))
-- \inst7|Add0~27\ = CARRY((!\inst7|Add0~25\) # (!\inst7|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(13),
	datad => VCC,
	cin => \inst7|Add0~25\,
	combout => \inst7|Add0~26_combout\,
	cout => \inst7|Add0~27\);

-- Location: LCCOMB_X39_Y26_N28
\inst7|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~28_combout\ = (\inst7|i\(14) & (\inst7|Add0~27\ $ (GND))) # (!\inst7|i\(14) & (!\inst7|Add0~27\ & VCC))
-- \inst7|Add0~29\ = CARRY((\inst7|i\(14) & !\inst7|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(14),
	datad => VCC,
	cin => \inst7|Add0~27\,
	combout => \inst7|Add0~28_combout\,
	cout => \inst7|Add0~29\);

-- Location: FF_X39_Y26_N29
\inst7|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(14));

-- Location: LCCOMB_X39_Y25_N0
\inst7|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~32_combout\ = (\inst7|i\(16) & (\inst7|Add0~31\ $ (GND))) # (!\inst7|i\(16) & (!\inst7|Add0~31\ & VCC))
-- \inst7|Add0~33\ = CARRY((\inst7|i\(16) & !\inst7|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(16),
	datad => VCC,
	cin => \inst7|Add0~31\,
	combout => \inst7|Add0~32_combout\,
	cout => \inst7|Add0~33\);

-- Location: FF_X39_Y25_N1
\inst7|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(16));

-- Location: LCCOMB_X39_Y25_N2
\inst7|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~34_combout\ = (\inst7|i\(17) & (!\inst7|Add0~33\)) # (!\inst7|i\(17) & ((\inst7|Add0~33\) # (GND)))
-- \inst7|Add0~35\ = CARRY((!\inst7|Add0~33\) # (!\inst7|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(17),
	datad => VCC,
	cin => \inst7|Add0~33\,
	combout => \inst7|Add0~34_combout\,
	cout => \inst7|Add0~35\);

-- Location: FF_X39_Y25_N3
\inst7|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(17));

-- Location: LCCOMB_X39_Y25_N4
\inst7|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~36_combout\ = (\inst7|i\(18) & (\inst7|Add0~35\ $ (GND))) # (!\inst7|i\(18) & (!\inst7|Add0~35\ & VCC))
-- \inst7|Add0~37\ = CARRY((\inst7|i\(18) & !\inst7|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(18),
	datad => VCC,
	cin => \inst7|Add0~35\,
	combout => \inst7|Add0~36_combout\,
	cout => \inst7|Add0~37\);

-- Location: FF_X39_Y25_N5
\inst7|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(18));

-- Location: LCCOMB_X39_Y25_N6
\inst7|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~38_combout\ = (\inst7|i\(19) & (!\inst7|Add0~37\)) # (!\inst7|i\(19) & ((\inst7|Add0~37\) # (GND)))
-- \inst7|Add0~39\ = CARRY((!\inst7|Add0~37\) # (!\inst7|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(19),
	datad => VCC,
	cin => \inst7|Add0~37\,
	combout => \inst7|Add0~38_combout\,
	cout => \inst7|Add0~39\);

-- Location: LCCOMB_X39_Y25_N8
\inst7|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~40_combout\ = (\inst7|i\(20) & (\inst7|Add0~39\ $ (GND))) # (!\inst7|i\(20) & (!\inst7|Add0~39\ & VCC))
-- \inst7|Add0~41\ = CARRY((\inst7|i\(20) & !\inst7|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(20),
	datad => VCC,
	cin => \inst7|Add0~39\,
	combout => \inst7|Add0~40_combout\,
	cout => \inst7|Add0~41\);

-- Location: FF_X39_Y25_N9
\inst7|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(20));

-- Location: LCCOMB_X39_Y25_N10
\inst7|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~42_combout\ = (\inst7|i\(21) & (!\inst7|Add0~41\)) # (!\inst7|i\(21) & ((\inst7|Add0~41\) # (GND)))
-- \inst7|Add0~43\ = CARRY((!\inst7|Add0~41\) # (!\inst7|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(21),
	datad => VCC,
	cin => \inst7|Add0~41\,
	combout => \inst7|Add0~42_combout\,
	cout => \inst7|Add0~43\);

-- Location: FF_X39_Y25_N11
\inst7|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(21));

-- Location: LCCOMB_X40_Y25_N2
\inst7|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~6_combout\ = (!\inst7|i\(20) & !\inst7|i\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(20),
	datad => \inst7|i\(21),
	combout => \inst7|Equal0~6_combout\);

-- Location: FF_X39_Y25_N7
\inst7|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(19));

-- Location: LCCOMB_X40_Y25_N4
\inst7|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~5_combout\ = (!\inst7|i\(16) & (!\inst7|i\(19) & (!\inst7|i\(18) & !\inst7|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(16),
	datab => \inst7|i\(19),
	datac => \inst7|i\(18),
	datad => \inst7|i\(17),
	combout => \inst7|Equal0~5_combout\);

-- Location: LCCOMB_X39_Y25_N14
\inst7|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~46_combout\ = (\inst7|i\(23) & (!\inst7|Add0~45\)) # (!\inst7|i\(23) & ((\inst7|Add0~45\) # (GND)))
-- \inst7|Add0~47\ = CARRY((!\inst7|Add0~45\) # (!\inst7|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(23),
	datad => VCC,
	cin => \inst7|Add0~45\,
	combout => \inst7|Add0~46_combout\,
	cout => \inst7|Add0~47\);

-- Location: FF_X39_Y25_N15
\inst7|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(23));

-- Location: LCCOMB_X40_Y25_N0
\inst7|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~7_combout\ = (!\inst7|i\(22) & (\inst7|Equal0~6_combout\ & (\inst7|Equal0~5_combout\ & !\inst7|i\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(22),
	datab => \inst7|Equal0~6_combout\,
	datac => \inst7|Equal0~5_combout\,
	datad => \inst7|i\(23),
	combout => \inst7|Equal0~7_combout\);

-- Location: LCCOMB_X39_Y25_N16
\inst7|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~48_combout\ = (\inst7|i\(24) & (\inst7|Add0~47\ $ (GND))) # (!\inst7|i\(24) & (!\inst7|Add0~47\ & VCC))
-- \inst7|Add0~49\ = CARRY((\inst7|i\(24) & !\inst7|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(24),
	datad => VCC,
	cin => \inst7|Add0~47\,
	combout => \inst7|Add0~48_combout\,
	cout => \inst7|Add0~49\);

-- Location: FF_X39_Y25_N17
\inst7|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(24));

-- Location: LCCOMB_X39_Y25_N18
\inst7|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add0~50_combout\ = (\inst7|i\(25) & (!\inst7|Add0~49\)) # (!\inst7|i\(25) & ((\inst7|Add0~49\) # (GND)))
-- \inst7|Add0~51\ = CARRY((!\inst7|Add0~49\) # (!\inst7|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|i\(25),
	datad => VCC,
	cin => \inst7|Add0~49\,
	combout => \inst7|Add0~50_combout\,
	cout => \inst7|Add0~51\);

-- Location: FF_X39_Y25_N19
\inst7|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(25));

-- Location: FF_X39_Y25_N21
\inst7|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(26));

-- Location: LCCOMB_X40_Y25_N10
\inst7|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~8_combout\ = (!\inst7|i\(27) & (!\inst7|i\(26) & (!\inst7|i\(24) & !\inst7|i\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(27),
	datab => \inst7|i\(26),
	datac => \inst7|i\(24),
	datad => \inst7|i\(25),
	combout => \inst7|Equal0~8_combout\);

-- Location: FF_X39_Y26_N13
\inst7|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(6));

-- Location: LCCOMB_X40_Y26_N20
\inst7|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (!\inst7|i\(5) & (!\inst7|i\(6) & (!\inst7|i\(4) & !\inst7|i\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(5),
	datab => \inst7|i\(6),
	datac => \inst7|i\(4),
	datad => \inst7|i\(7),
	combout => \inst7|Equal0~1_combout\);

-- Location: FF_X39_Y26_N27
\inst7|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(13));

-- Location: LCCOMB_X40_Y26_N22
\inst7|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~3_combout\ = (!\inst7|i\(15) & (!\inst7|i\(12) & (!\inst7|i\(13) & !\inst7|i\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(15),
	datab => \inst7|i\(12),
	datac => \inst7|i\(13),
	datad => \inst7|i\(14),
	combout => \inst7|Equal0~3_combout\);

-- Location: FF_X39_Y26_N7
\inst7|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(3));

-- Location: LCCOMB_X40_Y26_N2
\inst7|i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|i~0_combout\ = (\inst7|Add0~2_combout\ & !\inst7|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~2_combout\,
	datad => \inst7|Equal0~10_combout\,
	combout => \inst7|i~0_combout\);

-- Location: FF_X40_Y26_N3
\inst7|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|i\(1));

-- Location: LCCOMB_X40_Y26_N0
\inst7|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (\inst7|i\(0) & (!\inst7|i\(2) & (!\inst7|i\(3) & !\inst7|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|i\(0),
	datab => \inst7|i\(2),
	datac => \inst7|i\(3),
	datad => \inst7|i\(1),
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y26_N18
\inst7|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~4_combout\ = (\inst7|Equal0~2_combout\ & (\inst7|Equal0~1_combout\ & (\inst7|Equal0~3_combout\ & \inst7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~2_combout\,
	datab => \inst7|Equal0~1_combout\,
	datac => \inst7|Equal0~3_combout\,
	datad => \inst7|Equal0~0_combout\,
	combout => \inst7|Equal0~4_combout\);

-- Location: LCCOMB_X40_Y26_N12
\inst7|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~10_combout\ = (\inst7|Equal0~9_combout\ & (\inst7|Equal0~7_combout\ & (\inst7|Equal0~8_combout\ & \inst7|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~9_combout\,
	datab => \inst7|Equal0~7_combout\,
	datac => \inst7|Equal0~8_combout\,
	datad => \inst7|Equal0~4_combout\,
	combout => \inst7|Equal0~10_combout\);

-- Location: LCCOMB_X40_Y26_N24
\inst7|clock_25Mhz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|clock_25Mhz~feeder_combout\ = \inst7|Equal0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Equal0~10_combout\,
	combout => \inst7|clock_25Mhz~feeder_combout\);

-- Location: FF_X40_Y26_N25
\inst7|clock_25Mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|clock_25Mhz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clock_25Mhz~q\);

-- Location: CLKCTRL_G5
\inst7|clock_25Mhz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|clock_25Mhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|clock_25Mhz~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y18_N8
\inst|SYNC|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~0_combout\ = \inst|SYNC|h_count\(0) $ (VCC)
-- \inst|SYNC|Add0~1\ = CARRY(\inst|SYNC|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(0),
	datad => VCC,
	combout => \inst|SYNC|Add0~0_combout\,
	cout => \inst|SYNC|Add0~1\);

-- Location: FF_X24_Y18_N9
\inst|SYNC|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(0));

-- Location: LCCOMB_X24_Y18_N10
\inst|SYNC|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~2_combout\ = (\inst|SYNC|h_count\(1) & (!\inst|SYNC|Add0~1\)) # (!\inst|SYNC|h_count\(1) & ((\inst|SYNC|Add0~1\) # (GND)))
-- \inst|SYNC|Add0~3\ = CARRY((!\inst|SYNC|Add0~1\) # (!\inst|SYNC|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(1),
	datad => VCC,
	cin => \inst|SYNC|Add0~1\,
	combout => \inst|SYNC|Add0~2_combout\,
	cout => \inst|SYNC|Add0~3\);

-- Location: LCCOMB_X24_Y18_N12
\inst|SYNC|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~4_combout\ = (\inst|SYNC|h_count\(2) & (\inst|SYNC|Add0~3\ $ (GND))) # (!\inst|SYNC|h_count\(2) & (!\inst|SYNC|Add0~3\ & VCC))
-- \inst|SYNC|Add0~5\ = CARRY((\inst|SYNC|h_count\(2) & !\inst|SYNC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(2),
	datad => VCC,
	cin => \inst|SYNC|Add0~3\,
	combout => \inst|SYNC|Add0~4_combout\,
	cout => \inst|SYNC|Add0~5\);

-- Location: LCCOMB_X24_Y18_N14
\inst|SYNC|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~6_combout\ = (\inst|SYNC|h_count\(3) & (!\inst|SYNC|Add0~5\)) # (!\inst|SYNC|h_count\(3) & ((\inst|SYNC|Add0~5\) # (GND)))
-- \inst|SYNC|Add0~7\ = CARRY((!\inst|SYNC|Add0~5\) # (!\inst|SYNC|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(3),
	datad => VCC,
	cin => \inst|SYNC|Add0~5\,
	combout => \inst|SYNC|Add0~6_combout\,
	cout => \inst|SYNC|Add0~7\);

-- Location: FF_X24_Y18_N15
\inst|SYNC|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(3));

-- Location: LCCOMB_X24_Y18_N16
\inst|SYNC|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~8_combout\ = (\inst|SYNC|h_count\(4) & (\inst|SYNC|Add0~7\ $ (GND))) # (!\inst|SYNC|h_count\(4) & (!\inst|SYNC|Add0~7\ & VCC))
-- \inst|SYNC|Add0~9\ = CARRY((\inst|SYNC|h_count\(4) & !\inst|SYNC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(4),
	datad => VCC,
	cin => \inst|SYNC|Add0~7\,
	combout => \inst|SYNC|Add0~8_combout\,
	cout => \inst|SYNC|Add0~9\);

-- Location: FF_X24_Y18_N17
\inst|SYNC|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(4));

-- Location: LCCOMB_X24_Y18_N18
\inst|SYNC|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~10_combout\ = (\inst|SYNC|h_count\(5) & (!\inst|SYNC|Add0~9\)) # (!\inst|SYNC|h_count\(5) & ((\inst|SYNC|Add0~9\) # (GND)))
-- \inst|SYNC|Add0~11\ = CARRY((!\inst|SYNC|Add0~9\) # (!\inst|SYNC|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(5),
	datad => VCC,
	cin => \inst|SYNC|Add0~9\,
	combout => \inst|SYNC|Add0~10_combout\,
	cout => \inst|SYNC|Add0~11\);

-- Location: LCCOMB_X23_Y18_N4
\inst|SYNC|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~2_combout\ = (\inst|SYNC|Add0~10_combout\ & ((!\inst|SYNC|Equal0~2_combout\) # (!\inst|SYNC|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|Equal0~1_combout\,
	datac => \inst|SYNC|Equal0~2_combout\,
	datad => \inst|SYNC|Add0~10_combout\,
	combout => \inst|SYNC|h_count~2_combout\);

-- Location: FF_X23_Y18_N5
\inst|SYNC|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(5));

-- Location: FF_X24_Y18_N13
\inst|SYNC|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(2));

-- Location: LCCOMB_X24_Y18_N30
\inst|SYNC|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~2_combout\ = (!\inst|SYNC|h_count\(7) & (\inst|SYNC|h_count\(8) & (!\inst|SYNC|h_count\(5) & \inst|SYNC|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(7),
	datab => \inst|SYNC|h_count\(8),
	datac => \inst|SYNC|h_count\(5),
	datad => \inst|SYNC|h_count\(2),
	combout => \inst|SYNC|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y18_N4
\inst|SYNC|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~0_combout\ = (\inst|SYNC|Add0~18_combout\ & ((!\inst|SYNC|Equal0~2_combout\) # (!\inst|SYNC|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add0~18_combout\,
	datac => \inst|SYNC|Equal0~1_combout\,
	datad => \inst|SYNC|Equal0~2_combout\,
	combout => \inst|SYNC|h_count~0_combout\);

-- Location: FF_X24_Y18_N5
\inst|SYNC|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(9));

-- Location: LCCOMB_X24_Y18_N20
\inst|SYNC|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~12_combout\ = (\inst|SYNC|h_count\(6) & (\inst|SYNC|Add0~11\ $ (GND))) # (!\inst|SYNC|h_count\(6) & (!\inst|SYNC|Add0~11\ & VCC))
-- \inst|SYNC|Add0~13\ = CARRY((\inst|SYNC|h_count\(6) & !\inst|SYNC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(6),
	datad => VCC,
	cin => \inst|SYNC|Add0~11\,
	combout => \inst|SYNC|Add0~12_combout\,
	cout => \inst|SYNC|Add0~13\);

-- Location: FF_X24_Y18_N21
\inst|SYNC|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(6));

-- Location: LCCOMB_X24_Y18_N22
\inst|SYNC|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~14_combout\ = (\inst|SYNC|h_count\(7) & (!\inst|SYNC|Add0~13\)) # (!\inst|SYNC|h_count\(7) & ((\inst|SYNC|Add0~13\) # (GND)))
-- \inst|SYNC|Add0~15\ = CARRY((!\inst|SYNC|Add0~13\) # (!\inst|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(7),
	datad => VCC,
	cin => \inst|SYNC|Add0~13\,
	combout => \inst|SYNC|Add0~14_combout\,
	cout => \inst|SYNC|Add0~15\);

-- Location: LCCOMB_X24_Y18_N24
\inst|SYNC|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~16_combout\ = (\inst|SYNC|h_count\(8) & (\inst|SYNC|Add0~15\ $ (GND))) # (!\inst|SYNC|h_count\(8) & (!\inst|SYNC|Add0~15\ & VCC))
-- \inst|SYNC|Add0~17\ = CARRY((\inst|SYNC|h_count\(8) & !\inst|SYNC|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(8),
	datad => VCC,
	cin => \inst|SYNC|Add0~15\,
	combout => \inst|SYNC|Add0~16_combout\,
	cout => \inst|SYNC|Add0~17\);

-- Location: LCCOMB_X24_Y18_N28
\inst|SYNC|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~20_combout\ = \inst|SYNC|Add0~19\ $ (!\inst|SYNC|h_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|h_count\(10),
	cin => \inst|SYNC|Add0~19\,
	combout => \inst|SYNC|Add0~20_combout\);

-- Location: FF_X24_Y18_N29
\inst|SYNC|h_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(10));

-- Location: LCCOMB_X23_Y18_N16
\inst|SYNC|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~1_combout\ = (\inst|SYNC|Equal0~0_combout\ & (!\inst|SYNC|h_count\(10) & (!\inst|SYNC|h_count\(6) & \inst|SYNC|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Equal0~0_combout\,
	datab => \inst|SYNC|h_count\(10),
	datac => \inst|SYNC|h_count\(6),
	datad => \inst|SYNC|h_count\(9),
	combout => \inst|SYNC|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y18_N2
\inst|SYNC|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~1_combout\ = (\inst|SYNC|Add0~16_combout\ & ((!\inst|SYNC|Equal0~1_combout\) # (!\inst|SYNC|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Equal0~2_combout\,
	datac => \inst|SYNC|Equal0~1_combout\,
	datad => \inst|SYNC|Add0~16_combout\,
	combout => \inst|SYNC|h_count~1_combout\);

-- Location: FF_X24_Y18_N3
\inst|SYNC|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(8));

-- Location: LCCOMB_X24_Y18_N0
\inst|SYNC|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|LessThan6~0_combout\ = (!\inst|SYNC|h_count\(10) & (((!\inst|SYNC|h_count\(7) & !\inst|SYNC|h_count\(8))) # (!\inst|SYNC|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(7),
	datab => \inst|SYNC|h_count\(8),
	datac => \inst|SYNC|h_count\(9),
	datad => \inst|SYNC|h_count\(10),
	combout => \inst|SYNC|LessThan6~0_combout\);

-- Location: FF_X26_Y20_N27
\inst|SYNC|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|LessThan6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|video_on_h~q\);

-- Location: LCCOMB_X24_Y19_N8
\inst|SYNC|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~0_combout\ = \inst|SYNC|v_count\(0) $ (VCC)
-- \inst|SYNC|Add1~1\ = CARRY(\inst|SYNC|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(0),
	datad => VCC,
	combout => \inst|SYNC|Add1~0_combout\,
	cout => \inst|SYNC|Add1~1\);

-- Location: LCCOMB_X24_Y19_N4
\inst|SYNC|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~10_combout\ = (\inst|SYNC|Add1~0_combout\ & \inst|SYNC|process_0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|Add1~0_combout\,
	datac => \inst|SYNC|process_0~13_combout\,
	combout => \inst|SYNC|v_count~10_combout\);

-- Location: FF_X24_Y18_N23
\inst|SYNC|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(7));

-- Location: LCCOMB_X23_Y18_N8
\inst|SYNC|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal1~0_combout\ = (\inst|SYNC|h_count\(8)) # (((\inst|SYNC|h_count\(2)) # (!\inst|SYNC|h_count\(7))) # (!\inst|SYNC|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(8),
	datab => \inst|SYNC|h_count\(5),
	datac => \inst|SYNC|h_count\(2),
	datad => \inst|SYNC|h_count\(7),
	combout => \inst|SYNC|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y18_N22
\inst|SYNC|v_count[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[8]~0_combout\ = ((\inst|SYNC|Equal0~1_combout\ & !\inst|SYNC|Equal1~0_combout\)) # (!\inst|SYNC|process_0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|Equal0~1_combout\,
	datac => \inst|SYNC|Equal1~0_combout\,
	datad => \inst|SYNC|process_0~13_combout\,
	combout => \inst|SYNC|v_count[8]~0_combout\);

-- Location: FF_X24_Y19_N5
\inst|SYNC|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|v_count~10_combout\,
	ena => \inst|SYNC|v_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(0));

-- Location: LCCOMB_X24_Y19_N10
\inst|SYNC|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~2_combout\ = (\inst|SYNC|v_count\(1) & (!\inst|SYNC|Add1~1\)) # (!\inst|SYNC|v_count\(1) & ((\inst|SYNC|Add1~1\) # (GND)))
-- \inst|SYNC|Add1~3\ = CARRY((!\inst|SYNC|Add1~1\) # (!\inst|SYNC|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(1),
	datad => VCC,
	cin => \inst|SYNC|Add1~1\,
	combout => \inst|SYNC|Add1~2_combout\,
	cout => \inst|SYNC|Add1~3\);

-- Location: LCCOMB_X24_Y19_N12
\inst|SYNC|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~4_combout\ = (\inst|SYNC|v_count\(2) & (\inst|SYNC|Add1~3\ $ (GND))) # (!\inst|SYNC|v_count\(2) & (!\inst|SYNC|Add1~3\ & VCC))
-- \inst|SYNC|Add1~5\ = CARRY((\inst|SYNC|v_count\(2) & !\inst|SYNC|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(2),
	datad => VCC,
	cin => \inst|SYNC|Add1~3\,
	combout => \inst|SYNC|Add1~4_combout\,
	cout => \inst|SYNC|Add1~5\);

-- Location: LCCOMB_X23_Y19_N6
\inst|SYNC|v_count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~8_combout\ = (\inst|SYNC|Add1~4_combout\ & \inst|SYNC|process_0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|Add1~4_combout\,
	datac => \inst|SYNC|process_0~13_combout\,
	combout => \inst|SYNC|v_count~8_combout\);

-- Location: FF_X23_Y19_N7
\inst|SYNC|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|v_count~8_combout\,
	ena => \inst|SYNC|v_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(2));

-- Location: LCCOMB_X24_Y19_N14
\inst|SYNC|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~6_combout\ = (\inst|SYNC|v_count\(3) & (!\inst|SYNC|Add1~5\)) # (!\inst|SYNC|v_count\(3) & ((\inst|SYNC|Add1~5\) # (GND)))
-- \inst|SYNC|Add1~7\ = CARRY((!\inst|SYNC|Add1~5\) # (!\inst|SYNC|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(3),
	datad => VCC,
	cin => \inst|SYNC|Add1~5\,
	combout => \inst|SYNC|Add1~6_combout\,
	cout => \inst|SYNC|Add1~7\);

-- Location: LCCOMB_X24_Y19_N16
\inst|SYNC|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~8_combout\ = (\inst|SYNC|v_count\(4) & (\inst|SYNC|Add1~7\ $ (GND))) # (!\inst|SYNC|v_count\(4) & (!\inst|SYNC|Add1~7\ & VCC))
-- \inst|SYNC|Add1~9\ = CARRY((\inst|SYNC|v_count\(4) & !\inst|SYNC|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(4),
	datad => VCC,
	cin => \inst|SYNC|Add1~7\,
	combout => \inst|SYNC|Add1~8_combout\,
	cout => \inst|SYNC|Add1~9\);

-- Location: LCCOMB_X24_Y19_N18
\inst|SYNC|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~10_combout\ = (\inst|SYNC|v_count\(5) & (!\inst|SYNC|Add1~9\)) # (!\inst|SYNC|v_count\(5) & ((\inst|SYNC|Add1~9\) # (GND)))
-- \inst|SYNC|Add1~11\ = CARRY((!\inst|SYNC|Add1~9\) # (!\inst|SYNC|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(5),
	datad => VCC,
	cin => \inst|SYNC|Add1~9\,
	combout => \inst|SYNC|Add1~10_combout\,
	cout => \inst|SYNC|Add1~11\);

-- Location: LCCOMB_X23_Y19_N4
\inst|SYNC|v_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~3_combout\ = (\inst|SYNC|process_0~13_combout\ & \inst|SYNC|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|process_0~13_combout\,
	datad => \inst|SYNC|Add1~10_combout\,
	combout => \inst|SYNC|v_count~3_combout\);

-- Location: FF_X23_Y19_N5
\inst|SYNC|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|v_count~3_combout\,
	ena => \inst|SYNC|v_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(5));

-- Location: LCCOMB_X24_Y19_N20
\inst|SYNC|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~12_combout\ = (\inst|SYNC|v_count\(6) & (\inst|SYNC|Add1~11\ $ (GND))) # (!\inst|SYNC|v_count\(6) & (!\inst|SYNC|Add1~11\ & VCC))
-- \inst|SYNC|Add1~13\ = CARRY((\inst|SYNC|v_count\(6) & !\inst|SYNC|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(6),
	datad => VCC,
	cin => \inst|SYNC|Add1~11\,
	combout => \inst|SYNC|Add1~12_combout\,
	cout => \inst|SYNC|Add1~13\);

-- Location: LCCOMB_X24_Y19_N22
\inst|SYNC|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~14_combout\ = (\inst|SYNC|v_count\(7) & (!\inst|SYNC|Add1~13\)) # (!\inst|SYNC|v_count\(7) & ((\inst|SYNC|Add1~13\) # (GND)))
-- \inst|SYNC|Add1~15\ = CARRY((!\inst|SYNC|Add1~13\) # (!\inst|SYNC|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(7),
	datad => VCC,
	cin => \inst|SYNC|Add1~13\,
	combout => \inst|SYNC|Add1~14_combout\,
	cout => \inst|SYNC|Add1~15\);

-- Location: LCCOMB_X23_Y19_N20
\inst|SYNC|v_count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~5_combout\ = (\inst|SYNC|process_0~13_combout\ & \inst|SYNC|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|process_0~13_combout\,
	datad => \inst|SYNC|Add1~14_combout\,
	combout => \inst|SYNC|v_count~5_combout\);

-- Location: FF_X23_Y19_N21
\inst|SYNC|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|v_count~5_combout\,
	ena => \inst|SYNC|v_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(7));

-- Location: LCCOMB_X24_Y19_N24
\inst|SYNC|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~16_combout\ = (\inst|SYNC|v_count\(8) & (\inst|SYNC|Add1~15\ $ (GND))) # (!\inst|SYNC|v_count\(8) & (!\inst|SYNC|Add1~15\ & VCC))
-- \inst|SYNC|Add1~17\ = CARRY((\inst|SYNC|v_count\(8) & !\inst|SYNC|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(8),
	datad => VCC,
	cin => \inst|SYNC|Add1~15\,
	combout => \inst|SYNC|Add1~16_combout\,
	cout => \inst|SYNC|Add1~17\);

-- Location: LCCOMB_X23_Y19_N14
\inst|SYNC|v_count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~6_combout\ = (\inst|SYNC|process_0~13_combout\ & \inst|SYNC|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|process_0~13_combout\,
	datad => \inst|SYNC|Add1~16_combout\,
	combout => \inst|SYNC|v_count~6_combout\);

-- Location: FF_X23_Y19_N15
\inst|SYNC|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|v_count~6_combout\,
	ena => \inst|SYNC|v_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(8));

-- Location: LCCOMB_X23_Y19_N8
\inst|SYNC|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~8_combout\ = (!\inst|SYNC|v_count\(6) & (!\inst|SYNC|v_count\(10) & (!\inst|SYNC|v_count\(8) & !\inst|SYNC|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(6),
	datab => \inst|SYNC|v_count\(10),
	datac => \inst|SYNC|v_count\(8),
	datad => \inst|SYNC|v_count\(7),
	combout => \inst|SYNC|process_0~8_combout\);

-- Location: LCCOMB_X24_Y19_N26
\inst|SYNC|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~18_combout\ = (\inst|SYNC|v_count\(9) & (!\inst|SYNC|Add1~17\)) # (!\inst|SYNC|v_count\(9) & ((\inst|SYNC|Add1~17\) # (GND)))
-- \inst|SYNC|Add1~19\ = CARRY((!\inst|SYNC|Add1~17\) # (!\inst|SYNC|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(9),
	datad => VCC,
	cin => \inst|SYNC|Add1~17\,
	combout => \inst|SYNC|Add1~18_combout\,
	cout => \inst|SYNC|Add1~19\);

-- Location: LCCOMB_X23_Y19_N24
\inst|SYNC|v_count[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[9]~1_combout\ = (\inst|SYNC|v_count[8]~0_combout\ & (\inst|SYNC|process_0~13_combout\ & ((\inst|SYNC|Add1~18_combout\)))) # (!\inst|SYNC|v_count[8]~0_combout\ & (((\inst|SYNC|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[8]~0_combout\,
	datab => \inst|SYNC|process_0~13_combout\,
	datac => \inst|SYNC|v_count\(9),
	datad => \inst|SYNC|Add1~18_combout\,
	combout => \inst|SYNC|v_count[9]~1_combout\);

-- Location: FF_X23_Y19_N25
\inst|SYNC|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(9));

-- Location: LCCOMB_X23_Y19_N30
\inst|SYNC|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~9_combout\ = (\inst|SYNC|process_0~7_combout\ & (!\inst|SYNC|process_0~8_combout\ & ((\inst|SYNC|v_count\(10)) # (\inst|SYNC|v_count\(9))))) # (!\inst|SYNC|process_0~7_combout\ & ((\inst|SYNC|v_count\(10)) # 
-- ((\inst|SYNC|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|process_0~7_combout\,
	datab => \inst|SYNC|v_count\(10),
	datac => \inst|SYNC|process_0~8_combout\,
	datad => \inst|SYNC|v_count\(9),
	combout => \inst|SYNC|process_0~9_combout\);

-- Location: FF_X24_Y18_N11
\inst|SYNC|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(1));

-- Location: LCCOMB_X24_Y18_N6
\inst|SYNC|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~10_combout\ = ((!\inst|SYNC|h_count\(2) & ((!\inst|SYNC|h_count\(1)) # (!\inst|SYNC|h_count\(0))))) # (!\inst|SYNC|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(2),
	datab => \inst|SYNC|h_count\(3),
	datac => \inst|SYNC|h_count\(0),
	datad => \inst|SYNC|h_count\(1),
	combout => \inst|SYNC|process_0~10_combout\);

-- Location: LCCOMB_X23_Y18_N18
\inst|SYNC|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~11_combout\ = ((\inst|SYNC|process_0~10_combout\) # (!\inst|SYNC|h_count\(5))) # (!\inst|SYNC|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(4),
	datac => \inst|SYNC|h_count\(5),
	datad => \inst|SYNC|process_0~10_combout\,
	combout => \inst|SYNC|process_0~11_combout\);

-- Location: LCCOMB_X23_Y18_N20
\inst|SYNC|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~12_combout\ = (\inst|SYNC|h_count\(8)) # ((\inst|SYNC|h_count\(7) & ((\inst|SYNC|h_count\(6)) # (!\inst|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(8),
	datab => \inst|SYNC|h_count\(7),
	datac => \inst|SYNC|h_count\(6),
	datad => \inst|SYNC|process_0~11_combout\,
	combout => \inst|SYNC|process_0~12_combout\);

-- Location: LCCOMB_X23_Y18_N10
\inst|SYNC|process_0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~13_combout\ = ((!\inst|SYNC|h_count\(10) & ((!\inst|SYNC|process_0~12_combout\) # (!\inst|SYNC|h_count\(9))))) # (!\inst|SYNC|process_0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(9),
	datab => \inst|SYNC|h_count\(10),
	datac => \inst|SYNC|process_0~9_combout\,
	datad => \inst|SYNC|process_0~12_combout\,
	combout => \inst|SYNC|process_0~13_combout\);

-- Location: LCCOMB_X24_Y19_N28
\inst|SYNC|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~20_combout\ = \inst|SYNC|Add1~19\ $ (!\inst|SYNC|v_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|v_count\(10),
	cin => \inst|SYNC|Add1~19\,
	combout => \inst|SYNC|Add1~20_combout\);

-- Location: LCCOMB_X23_Y19_N2
\inst|SYNC|v_count[10]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[10]~2_combout\ = (\inst|SYNC|v_count[8]~0_combout\ & (\inst|SYNC|process_0~13_combout\ & ((\inst|SYNC|Add1~20_combout\)))) # (!\inst|SYNC|v_count[8]~0_combout\ & (((\inst|SYNC|v_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[8]~0_combout\,
	datab => \inst|SYNC|process_0~13_combout\,
	datac => \inst|SYNC|v_count\(10),
	datad => \inst|SYNC|Add1~20_combout\,
	combout => \inst|SYNC|v_count[10]~2_combout\);

-- Location: FF_X23_Y19_N3
\inst|SYNC|v_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|v_count[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(10));

-- Location: LCCOMB_X23_Y19_N18
\inst|SYNC|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|LessThan7~1_combout\ = (!\inst|SYNC|LessThan7~0_combout\ & (!\inst|SYNC|v_count\(10) & !\inst|SYNC|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|LessThan7~0_combout\,
	datab => \inst|SYNC|v_count\(10),
	datad => \inst|SYNC|v_count\(9),
	combout => \inst|SYNC|LessThan7~1_combout\);

-- Location: FF_X23_Y20_N19
\inst|SYNC|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|video_on_v~q\);

-- Location: LCCOMB_X26_Y20_N26
\inst|SYNC|red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|red_out~0_combout\ = (\inst|SYNC|video_on_h~q\ & \inst|SYNC|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|video_on_h~q\,
	datad => \inst|SYNC|video_on_v~q\,
	combout => \inst|SYNC|red_out~0_combout\);

-- Location: FF_X24_Y20_N23
\inst|SYNC|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(5),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(5));

-- Location: FF_X24_Y20_N29
\inst|SYNC|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(8),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(8));

-- Location: LCCOMB_X23_Y19_N10
\inst|SYNC|v_count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~4_combout\ = (\inst|SYNC|process_0~13_combout\ & \inst|SYNC|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|process_0~13_combout\,
	datac => \inst|SYNC|Add1~12_combout\,
	combout => \inst|SYNC|v_count~4_combout\);

-- Location: FF_X23_Y19_N11
\inst|SYNC|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|v_count~4_combout\,
	ena => \inst|SYNC|v_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(6));

-- Location: FF_X24_Y20_N25
\inst|SYNC|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(6),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(6));

-- Location: LCCOMB_X23_Y20_N4
\inst|SYNC|red_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|red_out~2_combout\ = (\inst|SYNC|pixel_row\(4) & ((\inst|SYNC|pixel_row\(6)) # (!\inst|SYNC|pixel_row\(5)))) # (!\inst|SYNC|pixel_row\(4) & (\inst|SYNC|pixel_row\(6) & !\inst|SYNC|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(4),
	datac => \inst|SYNC|pixel_row\(6),
	datad => \inst|SYNC|pixel_row\(5),
	combout => \inst|SYNC|red_out~2_combout\);

-- Location: LCCOMB_X23_Y20_N26
\inst|SYNC|red_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|red_out~3_combout\ = (\inst|SYNC|pixel_row\(8) & ((\inst|SYNC|pixel_row\(7) & (!\inst|SYNC|red_out~2_combout\ & !\inst|SYNC|pixel_row\(5))) # (!\inst|SYNC|pixel_row\(7) & (\inst|SYNC|red_out~2_combout\ & \inst|SYNC|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(7),
	datab => \inst|SYNC|pixel_row\(8),
	datac => \inst|SYNC|red_out~2_combout\,
	datad => \inst|SYNC|pixel_row\(5),
	combout => \inst|SYNC|red_out~3_combout\);

-- Location: LCCOMB_X24_Y19_N6
\inst|SYNC|v_count~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~9_combout\ = (\inst|SYNC|process_0~13_combout\ & \inst|SYNC|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|process_0~13_combout\,
	datad => \inst|SYNC|Add1~2_combout\,
	combout => \inst|SYNC|v_count~9_combout\);

-- Location: FF_X24_Y19_N7
\inst|SYNC|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|v_count~9_combout\,
	ena => \inst|SYNC|v_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(1));

-- Location: FF_X23_Y20_N29
\inst|SYNC|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(1),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(1));

-- Location: FF_X23_Y20_N31
\inst|SYNC|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(0),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(0));

-- Location: FF_X24_Y20_N19
\inst|SYNC|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(2),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(2));

-- Location: LCCOMB_X23_Y20_N24
\inst|SYNC|red_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|red_out~1_combout\ = (\inst|SYNC|pixel_row\(2) & (((\inst|SYNC|pixel_row\(1)) # (\inst|SYNC|pixel_row\(0))) # (!\inst|SYNC|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(7),
	datab => \inst|SYNC|pixel_row\(1),
	datac => \inst|SYNC|pixel_row\(0),
	datad => \inst|SYNC|pixel_row\(2),
	combout => \inst|SYNC|red_out~1_combout\);

-- Location: LCCOMB_X23_Y20_N0
\inst|SYNC|red_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|red_out~4_combout\ = (\inst|SYNC|pixel_row\(5) $ (((\inst|SYNC|pixel_row\(3)) # (\inst|SYNC|red_out~1_combout\)))) # (!\inst|SYNC|red_out~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|SYNC|pixel_row\(5),
	datac => \inst|SYNC|red_out~3_combout\,
	datad => \inst|SYNC|red_out~1_combout\,
	combout => \inst|SYNC|red_out~4_combout\);

-- Location: LCCOMB_X29_Y19_N10
\inst|player_X_pos[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|player_X_pos[3]~14_combout\ = ((\inst|player_X_pos\(3) $ (\inst|player_X_motion\(10) $ (!\inst|player_X_pos[2]~13\)))) # (GND)
-- \inst|player_X_pos[3]~15\ = CARRY((\inst|player_X_pos\(3) & ((\inst|player_X_motion\(10)) # (!\inst|player_X_pos[2]~13\))) # (!\inst|player_X_pos\(3) & (\inst|player_X_motion\(10) & !\inst|player_X_pos[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(3),
	datab => \inst|player_X_motion\(10),
	datad => VCC,
	cin => \inst|player_X_pos[2]~13\,
	combout => \inst|player_X_pos[3]~14_combout\,
	cout => \inst|player_X_pos[3]~15\);

-- Location: FF_X29_Y19_N11
\inst|player_X_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|player_X_pos[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player_X_pos\(3));

-- Location: LCCOMB_X29_Y19_N4
\inst|LessThan15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan15~1_combout\ = (((!\inst|player_X_pos\(3)) # (!\inst|player_X_pos\(5))) # (!\inst|player_X_pos\(6))) # (!\inst|player_X_pos\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(4),
	datab => \inst|player_X_pos\(6),
	datac => \inst|player_X_pos\(5),
	datad => \inst|player_X_pos\(3),
	combout => \inst|LessThan15~1_combout\);

-- Location: LCCOMB_X29_Y19_N18
\inst|player_X_pos[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|player_X_pos[7]~22_combout\ = ((\inst|player_X_motion\(10) $ (\inst|player_X_pos\(7) $ (!\inst|player_X_pos[6]~21\)))) # (GND)
-- \inst|player_X_pos[7]~23\ = CARRY((\inst|player_X_motion\(10) & ((\inst|player_X_pos\(7)) # (!\inst|player_X_pos[6]~21\))) # (!\inst|player_X_motion\(10) & (\inst|player_X_pos\(7) & !\inst|player_X_pos[6]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_motion\(10),
	datab => \inst|player_X_pos\(7),
	datad => VCC,
	cin => \inst|player_X_pos[6]~21\,
	combout => \inst|player_X_pos[7]~22_combout\,
	cout => \inst|player_X_pos[7]~23\);

-- Location: LCCOMB_X29_Y19_N20
\inst|player_X_pos[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|player_X_pos[8]~24_combout\ = (\inst|player_X_pos\(8) & ((\inst|player_X_motion\(10) & (\inst|player_X_pos[7]~23\ & VCC)) # (!\inst|player_X_motion\(10) & (!\inst|player_X_pos[7]~23\)))) # (!\inst|player_X_pos\(8) & ((\inst|player_X_motion\(10) & 
-- (!\inst|player_X_pos[7]~23\)) # (!\inst|player_X_motion\(10) & ((\inst|player_X_pos[7]~23\) # (GND)))))
-- \inst|player_X_pos[8]~25\ = CARRY((\inst|player_X_pos\(8) & (!\inst|player_X_motion\(10) & !\inst|player_X_pos[7]~23\)) # (!\inst|player_X_pos\(8) & ((!\inst|player_X_pos[7]~23\) # (!\inst|player_X_motion\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(8),
	datab => \inst|player_X_motion\(10),
	datad => VCC,
	cin => \inst|player_X_pos[7]~23\,
	combout => \inst|player_X_pos[8]~24_combout\,
	cout => \inst|player_X_pos[8]~25\);

-- Location: FF_X29_Y19_N21
\inst|player_X_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|player_X_pos[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player_X_pos\(8));

-- Location: LCCOMB_X29_Y19_N30
\inst|LessThan15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan15~0_combout\ = (!\inst|player_X_pos\(8) & !\inst|player_X_pos\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|player_X_pos\(8),
	datad => \inst|player_X_pos\(7),
	combout => \inst|LessThan15~0_combout\);

-- Location: LCCOMB_X29_Y19_N26
\inst|player_X_motion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|player_X_motion~4_combout\ = (!\inst|player_X_pos\(10) & (((\inst|LessThan15~1_combout\ & \inst|LessThan15~0_combout\)) # (!\inst|player_X_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(9),
	datab => \inst|LessThan15~1_combout\,
	datac => \inst|LessThan15~0_combout\,
	datad => \inst|player_X_pos\(10),
	combout => \inst|player_X_motion~4_combout\);

-- Location: LCCOMB_X29_Y19_N22
\inst|player_X_pos[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|player_X_pos[9]~26_combout\ = ((\inst|player_X_pos\(9) $ (\inst|player_X_motion\(10) $ (!\inst|player_X_pos[8]~25\)))) # (GND)
-- \inst|player_X_pos[9]~27\ = CARRY((\inst|player_X_pos\(9) & ((\inst|player_X_motion\(10)) # (!\inst|player_X_pos[8]~25\))) # (!\inst|player_X_pos\(9) & (\inst|player_X_motion\(10) & !\inst|player_X_pos[8]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(9),
	datab => \inst|player_X_motion\(10),
	datad => VCC,
	cin => \inst|player_X_pos[8]~25\,
	combout => \inst|player_X_pos[9]~26_combout\,
	cout => \inst|player_X_pos[9]~27\);

-- Location: FF_X29_Y19_N23
\inst|player_X_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|player_X_pos[9]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player_X_pos\(9));

-- Location: LCCOMB_X28_Y19_N24
\inst|LessThan16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan16~0_combout\ = (\inst|player_X_pos\(9)) # ((\inst|player_X_pos\(3) & ((\inst|player_X_pos\(1)) # (\inst|player_X_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(1),
	datab => \inst|player_X_pos\(3),
	datac => \inst|player_X_pos\(2),
	datad => \inst|player_X_pos\(9),
	combout => \inst|LessThan16~0_combout\);

-- Location: LCCOMB_X29_Y19_N2
\inst|player_X_motion~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|player_X_motion~6_combout\ = ((!\inst|player_X_pos\(6) & (!\inst|LessThan16~1_combout\ & !\inst|LessThan16~0_combout\))) # (!\inst|player_X_motion~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(6),
	datab => \inst|LessThan16~1_combout\,
	datac => \inst|player_X_motion~4_combout\,
	datad => \inst|LessThan16~0_combout\,
	combout => \inst|player_X_motion~6_combout\);

-- Location: IOIBUF_X41_Y12_N22
\mouse_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_data,
	o => \mouse_data~input_o\);

-- Location: LCCOMB_X31_Y19_N2
\inst1|SHIFTIN[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[0]~2_combout\ = (\inst1|LessThan1~0_combout\ & (\inst1|READ_CHAR~q\ & !\inst1|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst1|READ_CHAR~q\,
	datad => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst1|SHIFTIN[0]~2_combout\);

-- Location: FF_X35_Y19_N19
\inst1|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse_data~input_o\,
	sload => VCC,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(8));

-- Location: LCCOMB_X35_Y19_N24
\inst1|SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[7]~feeder_combout\ = \inst1|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(8),
	combout => \inst1|SHIFTIN[7]~feeder_combout\);

-- Location: FF_X35_Y19_N25
\inst1|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[7]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(7));

-- Location: LCCOMB_X35_Y19_N22
\inst1|SHIFTIN[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[6]~feeder_combout\ = \inst1|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(7),
	combout => \inst1|SHIFTIN[6]~feeder_combout\);

-- Location: FF_X35_Y19_N23
\inst1|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[6]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(6));

-- Location: LCCOMB_X31_Y19_N4
\inst1|PACKET_CHAR2[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[6]~feeder_combout\ = \inst1|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTIN\(6),
	combout => \inst1|PACKET_CHAR2[6]~feeder_combout\);

-- Location: LCCOMB_X32_Y19_N28
\inst1|PACKET_CHAR1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[0]~0_combout\ = (\inst1|PACKET_COUNT\(1)) # (!\inst1|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT\(1),
	combout => \inst1|PACKET_CHAR1[0]~0_combout\);

-- Location: LCCOMB_X32_Y19_N30
\inst1|PACKET_COUNT[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_COUNT[0]~feeder_combout\ = \inst1|PACKET_CHAR1[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PACKET_CHAR1[0]~0_combout\,
	combout => \inst1|PACKET_COUNT[0]~feeder_combout\);

-- Location: LCCOMB_X32_Y19_N4
\inst1|PACKET_CHAR2[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[7]~4_combout\ = (!\inst1|LessThan1~0_combout\ & (\inst1|READ_CHAR~q\ & !\inst1|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~0_combout\,
	datab => \inst1|READ_CHAR~q\,
	datac => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst1|PACKET_CHAR2[7]~4_combout\);

-- Location: FF_X32_Y19_N31
\inst1|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_COUNT[0]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_COUNT\(0));

-- Location: LCCOMB_X32_Y19_N26
\inst1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~0_combout\ = \inst1|PACKET_COUNT\(0) $ (\inst1|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT\(1),
	combout => \inst1|Add3~0_combout\);

-- Location: LCCOMB_X32_Y19_N12
\inst1|PACKET_COUNT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_COUNT[1]~feeder_combout\ = \inst1|Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add3~0_combout\,
	combout => \inst1|PACKET_COUNT[1]~feeder_combout\);

-- Location: FF_X32_Y19_N13
\inst1|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_COUNT[1]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_COUNT\(1));

-- Location: LCCOMB_X31_Y19_N22
\inst1|PACKET_CHAR2[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[7]~2_combout\ = (!\inst1|PACKET_COUNT\(0) & \inst1|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_COUNT\(0),
	datab => \inst1|PACKET_COUNT\(1),
	combout => \inst1|PACKET_CHAR2[7]~2_combout\);

-- Location: LCCOMB_X32_Y19_N24
\inst1|INCNT[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT[3]~0_combout\ = (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & ((\mouse_data~input_o\) # (\inst1|READ_CHAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datac => \inst1|READ_CHAR~q\,
	datad => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst1|INCNT[3]~0_combout\);

-- Location: LCCOMB_X31_Y19_N0
\inst1|PACKET_CHAR2[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[7]~3_combout\ = (\inst1|READ_CHAR~q\ & (!\inst1|LessThan1~0_combout\ & (\inst1|PACKET_CHAR2[7]~2_combout\ & \inst1|INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|READ_CHAR~q\,
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst1|PACKET_CHAR2[7]~2_combout\,
	datad => \inst1|INCNT[3]~0_combout\,
	combout => \inst1|PACKET_CHAR2[7]~3_combout\);

-- Location: FF_X31_Y19_N5
\inst1|PACKET_CHAR2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[6]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(6));

-- Location: LCCOMB_X35_Y19_N16
\inst1|SHIFTIN[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[5]~feeder_combout\ = \inst1|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTIN\(6),
	combout => \inst1|SHIFTIN[5]~feeder_combout\);

-- Location: FF_X35_Y19_N17
\inst1|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[5]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(5));

-- Location: LCCOMB_X35_Y19_N10
\inst1|SHIFTIN[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[4]~feeder_combout\ = \inst1|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(5),
	combout => \inst1|SHIFTIN[4]~feeder_combout\);

-- Location: FF_X35_Y19_N11
\inst1|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[4]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(4));

-- Location: LCCOMB_X31_Y19_N20
\inst1|PACKET_CHAR2[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR2[4]~feeder_combout\ = \inst1|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(4),
	combout => \inst1|PACKET_CHAR2[4]~feeder_combout\);

-- Location: FF_X31_Y19_N21
\inst1|PACKET_CHAR2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR2[4]~feeder_combout\,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(4));

-- Location: LCCOMB_X35_Y19_N28
\inst1|SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[3]~feeder_combout\ = \inst1|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(4),
	combout => \inst1|SHIFTIN[3]~feeder_combout\);

-- Location: FF_X35_Y19_N29
\inst1|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[3]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(3));

-- Location: LCCOMB_X35_Y19_N30
\inst1|SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[2]~feeder_combout\ = \inst1|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(3),
	combout => \inst1|SHIFTIN[2]~feeder_combout\);

-- Location: FF_X35_Y19_N31
\inst1|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[2]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(2));

-- Location: LCCOMB_X35_Y19_N20
\inst1|SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[1]~feeder_combout\ = \inst1|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTIN\(2),
	combout => \inst1|SHIFTIN[1]~feeder_combout\);

-- Location: FF_X35_Y19_N21
\inst1|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[1]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(1));

-- Location: LCCOMB_X35_Y19_N12
\inst1|SHIFTIN[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[0]~feeder_combout\ = \inst1|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(1),
	combout => \inst1|SHIFTIN[0]~feeder_combout\);

-- Location: FF_X35_Y19_N13
\inst1|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[0]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(0));

-- Location: FF_X31_Y19_N15
\inst1|PACKET_CHAR2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTIN\(0),
	sload => VCC,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(0));

-- Location: LCCOMB_X27_Y19_N14
\inst1|new_cursor_column[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[1]~12_combout\ = (\inst1|PACKET_CHAR2\(1) & ((\inst1|cursor_column\(1) & (\inst1|new_cursor_column[0]~11\ & VCC)) # (!\inst1|cursor_column\(1) & (!\inst1|new_cursor_column[0]~11\)))) # (!\inst1|PACKET_CHAR2\(1) & 
-- ((\inst1|cursor_column\(1) & (!\inst1|new_cursor_column[0]~11\)) # (!\inst1|cursor_column\(1) & ((\inst1|new_cursor_column[0]~11\) # (GND)))))
-- \inst1|new_cursor_column[1]~13\ = CARRY((\inst1|PACKET_CHAR2\(1) & (!\inst1|cursor_column\(1) & !\inst1|new_cursor_column[0]~11\)) # (!\inst1|PACKET_CHAR2\(1) & ((!\inst1|new_cursor_column[0]~11\) # (!\inst1|cursor_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(1),
	datab => \inst1|cursor_column\(1),
	datad => VCC,
	cin => \inst1|new_cursor_column[0]~11\,
	combout => \inst1|new_cursor_column[1]~12_combout\,
	cout => \inst1|new_cursor_column[1]~13\);

-- Location: LCCOMB_X27_Y19_N2
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X32_Y19_N8
\inst1|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = (!\inst1|PACKET_COUNT\(1)) # (!\inst1|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT\(1),
	combout => \inst1|Equal4~0_combout\);

-- Location: LCCOMB_X32_Y19_N14
\inst1|new_cursor_column[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[9]~28_combout\ = (!\inst1|Add3~0_combout\ & (\inst1|READ_CHAR~q\ & (!\inst1|LessThan1~0_combout\ & \inst1|INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~0_combout\,
	datab => \inst1|READ_CHAR~q\,
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|INCNT[3]~0_combout\,
	combout => \inst1|new_cursor_column[9]~28_combout\);

-- Location: FF_X27_Y19_N15
\inst1|new_cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(1));

-- Location: LCCOMB_X27_Y19_N24
\inst1|new_cursor_column[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[6]~22_combout\ = ((\inst1|cursor_column\(6) $ (\inst1|PACKET_CHAR2\(6) $ (!\inst1|new_cursor_column[5]~21\)))) # (GND)
-- \inst1|new_cursor_column[6]~23\ = CARRY((\inst1|cursor_column\(6) & ((\inst1|PACKET_CHAR2\(6)) # (!\inst1|new_cursor_column[5]~21\))) # (!\inst1|cursor_column\(6) & (\inst1|PACKET_CHAR2\(6) & !\inst1|new_cursor_column[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(6),
	datab => \inst1|PACKET_CHAR2\(6),
	datad => VCC,
	cin => \inst1|new_cursor_column[5]~21\,
	combout => \inst1|new_cursor_column[6]~22_combout\,
	cout => \inst1|new_cursor_column[6]~23\);

-- Location: FF_X27_Y19_N25
\inst1|new_cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[6]~22_combout\,
	asdata => VCC,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(6));

-- Location: LCCOMB_X27_Y19_N8
\inst1|RECV_UART~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|RECV_UART~2_combout\ = (!\inst1|new_cursor_column\(5) & !\inst1|new_cursor_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|new_cursor_column\(5),
	datad => \inst1|new_cursor_column\(6),
	combout => \inst1|RECV_UART~2_combout\);

-- Location: LCCOMB_X27_Y19_N6
\inst1|RECV_UART~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|RECV_UART~1_combout\ = (!\inst1|new_cursor_column\(4) & (!\inst1|new_cursor_column\(3) & (!\inst1|new_cursor_column\(1) & !\inst1|new_cursor_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(4),
	datab => \inst1|new_cursor_column\(3),
	datac => \inst1|new_cursor_column\(1),
	datad => \inst1|new_cursor_column\(2),
	combout => \inst1|RECV_UART~1_combout\);

-- Location: LCCOMB_X27_Y19_N10
\inst1|cursor_column[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column[0]~6_combout\ = (!\inst1|new_cursor_column\(0) & (!\inst1|new_cursor_column\(8) & (\inst1|RECV_UART~2_combout\ & \inst1|RECV_UART~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(0),
	datab => \inst1|new_cursor_column\(8),
	datac => \inst1|RECV_UART~2_combout\,
	datad => \inst1|RECV_UART~1_combout\,
	combout => \inst1|cursor_column[0]~6_combout\);

-- Location: LCCOMB_X30_Y19_N18
\inst1|cursor_column[0]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column[0]~19_combout\ = ((\inst1|cursor_column[0]~6_combout\) # ((!\inst1|new_cursor_column\(7) & !\inst1|new_cursor_column\(8)))) # (!\inst1|new_cursor_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(9),
	datab => \inst1|new_cursor_column\(7),
	datac => \inst1|cursor_column[0]~6_combout\,
	datad => \inst1|new_cursor_column\(8),
	combout => \inst1|cursor_column[0]~19_combout\);

-- Location: LCCOMB_X30_Y19_N30
\inst1|cursor_column~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~11_combout\ = (\inst1|cursor_column~5_combout\ & ((\inst1|new_cursor_column\(9)) # (!\inst1|cursor_column[0]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(9),
	datac => \inst1|cursor_column~5_combout\,
	datad => \inst1|cursor_column[0]~19_combout\,
	combout => \inst1|cursor_column~11_combout\);

-- Location: LCCOMB_X31_Y19_N24
\inst1|cursor_column[9]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column[9]~8_combout\ = (\inst1|READ_CHAR~q\ & (!\inst1|PACKET_COUNT\(1) & (!\inst1|LessThan1~0_combout\ & \inst1|INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|READ_CHAR~q\,
	datab => \inst1|PACKET_COUNT\(1),
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|INCNT[3]~0_combout\,
	combout => \inst1|cursor_column[9]~8_combout\);

-- Location: FF_X30_Y19_N31
\inst1|cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~11_combout\,
	ena => \inst1|cursor_column[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(9));

-- Location: LCCOMB_X30_Y19_N14
\inst1|RECV_UART~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|RECV_UART~0_combout\ = (!\inst1|cursor_column\(9) & (!\inst1|cursor_column\(7) & !\inst1|cursor_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cursor_column\(9),
	datac => \inst1|cursor_column\(7),
	datad => \inst1|cursor_column\(8),
	combout => \inst1|RECV_UART~0_combout\);

-- Location: FF_X31_Y19_N23
\inst1|PACKET_CHAR2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTIN\(7),
	sload => VCC,
	ena => \inst1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR2\(7));

-- Location: LCCOMB_X27_Y19_N28
\inst1|new_cursor_column[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[8]~26_combout\ = ((\inst1|PACKET_CHAR2\(7) $ (\inst1|cursor_column\(8) $ (!\inst1|new_cursor_column[7]~25\)))) # (GND)
-- \inst1|new_cursor_column[8]~27\ = CARRY((\inst1|PACKET_CHAR2\(7) & ((\inst1|cursor_column\(8)) # (!\inst1|new_cursor_column[7]~25\))) # (!\inst1|PACKET_CHAR2\(7) & (\inst1|cursor_column\(8) & !\inst1|new_cursor_column[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(7),
	datab => \inst1|cursor_column\(8),
	datad => VCC,
	cin => \inst1|new_cursor_column[7]~25\,
	combout => \inst1|new_cursor_column[8]~26_combout\,
	cout => \inst1|new_cursor_column[8]~27\);

-- Location: LCCOMB_X27_Y19_N30
\inst1|new_cursor_column[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[9]~29_combout\ = \inst1|cursor_column\(9) $ (\inst1|new_cursor_column[8]~27\ $ (\inst1|PACKET_CHAR2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cursor_column\(9),
	datad => \inst1|PACKET_CHAR2\(7),
	cin => \inst1|new_cursor_column[8]~27\,
	combout => \inst1|new_cursor_column[9]~29_combout\);

-- Location: FF_X27_Y19_N31
\inst1|new_cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[9]~29_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(9));

-- Location: LCCOMB_X27_Y19_N0
\inst1|cursor_column~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~4_combout\ = (\inst1|new_cursor_column\(9)) # ((\inst1|new_cursor_column\(8) & ((\inst1|new_cursor_column\(0)) # (\inst1|new_cursor_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(0),
	datab => \inst1|new_cursor_column\(7),
	datac => \inst1|new_cursor_column\(9),
	datad => \inst1|new_cursor_column\(8),
	combout => \inst1|cursor_column~4_combout\);

-- Location: LCCOMB_X27_Y19_N4
\inst1|cursor_column~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~18_combout\ = (\inst1|new_cursor_column\(8) & (((!\inst1|RECV_UART~1_combout\) # (!\inst1|RECV_UART~2_combout\)))) # (!\inst1|new_cursor_column\(8) & (!\inst1|new_cursor_column\(7) & (\inst1|RECV_UART~2_combout\ & 
-- \inst1|RECV_UART~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|new_cursor_column\(7),
	datab => \inst1|new_cursor_column\(8),
	datac => \inst1|RECV_UART~2_combout\,
	datad => \inst1|RECV_UART~1_combout\,
	combout => \inst1|cursor_column~18_combout\);

-- Location: LCCOMB_X30_Y19_N4
\inst1|cursor_column~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~5_combout\ = (\inst1|Equal3~0_combout\ & (((!\inst1|cursor_column~4_combout\ & !\inst1|cursor_column~18_combout\)) # (!\inst1|RECV_UART~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|RECV_UART~0_combout\,
	datac => \inst1|cursor_column~4_combout\,
	datad => \inst1|cursor_column~18_combout\,
	combout => \inst1|cursor_column~5_combout\);

-- Location: LCCOMB_X30_Y19_N2
\inst1|cursor_column~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~16_combout\ = (\inst1|new_cursor_column\(1) & (\inst1|cursor_column~5_combout\ & \inst1|cursor_column[0]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(1),
	datac => \inst1|cursor_column~5_combout\,
	datad => \inst1|cursor_column[0]~19_combout\,
	combout => \inst1|cursor_column~16_combout\);

-- Location: FF_X30_Y19_N3
\inst1|cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~16_combout\,
	ena => \inst1|cursor_column[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(1));

-- Location: LCCOMB_X27_Y19_N16
\inst1|new_cursor_column[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[2]~14_combout\ = ((\inst1|PACKET_CHAR2\(2) $ (\inst1|cursor_column\(2) $ (!\inst1|new_cursor_column[1]~13\)))) # (GND)
-- \inst1|new_cursor_column[2]~15\ = CARRY((\inst1|PACKET_CHAR2\(2) & ((\inst1|cursor_column\(2)) # (!\inst1|new_cursor_column[1]~13\))) # (!\inst1|PACKET_CHAR2\(2) & (\inst1|cursor_column\(2) & !\inst1|new_cursor_column[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(2),
	datab => \inst1|cursor_column\(2),
	datad => VCC,
	cin => \inst1|new_cursor_column[1]~13\,
	combout => \inst1|new_cursor_column[2]~14_combout\,
	cout => \inst1|new_cursor_column[2]~15\);

-- Location: FF_X27_Y19_N17
\inst1|new_cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(2));

-- Location: LCCOMB_X30_Y19_N0
\inst1|cursor_column~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~15_combout\ = (\inst1|new_cursor_column\(2) & (\inst1|cursor_column~5_combout\ & \inst1|cursor_column[0]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(2),
	datac => \inst1|cursor_column~5_combout\,
	datad => \inst1|cursor_column[0]~19_combout\,
	combout => \inst1|cursor_column~15_combout\);

-- Location: FF_X30_Y19_N1
\inst1|cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~15_combout\,
	ena => \inst1|cursor_column[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(2));

-- Location: LCCOMB_X27_Y19_N18
\inst1|new_cursor_column[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[3]~16_combout\ = (\inst1|PACKET_CHAR2\(3) & ((\inst1|cursor_column\(3) & (\inst1|new_cursor_column[2]~15\ & VCC)) # (!\inst1|cursor_column\(3) & (!\inst1|new_cursor_column[2]~15\)))) # (!\inst1|PACKET_CHAR2\(3) & 
-- ((\inst1|cursor_column\(3) & (!\inst1|new_cursor_column[2]~15\)) # (!\inst1|cursor_column\(3) & ((\inst1|new_cursor_column[2]~15\) # (GND)))))
-- \inst1|new_cursor_column[3]~17\ = CARRY((\inst1|PACKET_CHAR2\(3) & (!\inst1|cursor_column\(3) & !\inst1|new_cursor_column[2]~15\)) # (!\inst1|PACKET_CHAR2\(3) & ((!\inst1|new_cursor_column[2]~15\) # (!\inst1|cursor_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(3),
	datab => \inst1|cursor_column\(3),
	datad => VCC,
	cin => \inst1|new_cursor_column[2]~15\,
	combout => \inst1|new_cursor_column[3]~16_combout\,
	cout => \inst1|new_cursor_column[3]~17\);

-- Location: FF_X27_Y19_N19
\inst1|new_cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(3));

-- Location: LCCOMB_X30_Y19_N22
\inst1|cursor_column~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~14_combout\ = (\inst1|new_cursor_column\(3) & (\inst1|cursor_column~5_combout\ & \inst1|cursor_column[0]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(3),
	datac => \inst1|cursor_column~5_combout\,
	datad => \inst1|cursor_column[0]~19_combout\,
	combout => \inst1|cursor_column~14_combout\);

-- Location: FF_X30_Y19_N23
\inst1|cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~14_combout\,
	ena => \inst1|cursor_column[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(3));

-- Location: LCCOMB_X27_Y19_N22
\inst1|new_cursor_column[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[5]~20_combout\ = (\inst1|PACKET_CHAR2\(5) & ((\inst1|cursor_column\(5) & (\inst1|new_cursor_column[4]~19\ & VCC)) # (!\inst1|cursor_column\(5) & (!\inst1|new_cursor_column[4]~19\)))) # (!\inst1|PACKET_CHAR2\(5) & 
-- ((\inst1|cursor_column\(5) & (!\inst1|new_cursor_column[4]~19\)) # (!\inst1|cursor_column\(5) & ((\inst1|new_cursor_column[4]~19\) # (GND)))))
-- \inst1|new_cursor_column[5]~21\ = CARRY((\inst1|PACKET_CHAR2\(5) & (!\inst1|cursor_column\(5) & !\inst1|new_cursor_column[4]~19\)) # (!\inst1|PACKET_CHAR2\(5) & ((!\inst1|new_cursor_column[4]~19\) # (!\inst1|cursor_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(5),
	datab => \inst1|cursor_column\(5),
	datad => VCC,
	cin => \inst1|new_cursor_column[4]~19\,
	combout => \inst1|new_cursor_column[5]~20_combout\,
	cout => \inst1|new_cursor_column[5]~21\);

-- Location: FF_X27_Y19_N23
\inst1|new_cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[5]~20_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(5));

-- Location: LCCOMB_X30_Y19_N26
\inst1|cursor_column~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~12_combout\ = (\inst1|new_cursor_column\(5) & (\inst1|cursor_column~5_combout\ & \inst1|cursor_column[0]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(5),
	datac => \inst1|cursor_column~5_combout\,
	datad => \inst1|cursor_column[0]~19_combout\,
	combout => \inst1|cursor_column~12_combout\);

-- Location: FF_X30_Y19_N27
\inst1|cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~12_combout\,
	ena => \inst1|cursor_column[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(5));

-- Location: LCCOMB_X27_Y19_N26
\inst1|new_cursor_column[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|new_cursor_column[7]~24_combout\ = (\inst1|PACKET_CHAR2\(7) & ((\inst1|cursor_column\(7) & (\inst1|new_cursor_column[6]~23\ & VCC)) # (!\inst1|cursor_column\(7) & (!\inst1|new_cursor_column[6]~23\)))) # (!\inst1|PACKET_CHAR2\(7) & 
-- ((\inst1|cursor_column\(7) & (!\inst1|new_cursor_column[6]~23\)) # (!\inst1|cursor_column\(7) & ((\inst1|new_cursor_column[6]~23\) # (GND)))))
-- \inst1|new_cursor_column[7]~25\ = CARRY((\inst1|PACKET_CHAR2\(7) & (!\inst1|cursor_column\(7) & !\inst1|new_cursor_column[6]~23\)) # (!\inst1|PACKET_CHAR2\(7) & ((!\inst1|new_cursor_column[6]~23\) # (!\inst1|cursor_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR2\(7),
	datab => \inst1|cursor_column\(7),
	datad => VCC,
	cin => \inst1|new_cursor_column[6]~23\,
	combout => \inst1|new_cursor_column[7]~24_combout\,
	cout => \inst1|new_cursor_column[7]~25\);

-- Location: FF_X27_Y19_N27
\inst1|new_cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[7]~24_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(7));

-- Location: LCCOMB_X30_Y19_N6
\inst1|cursor_column~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~9_combout\ = (\inst1|cursor_column~5_combout\ & ((\inst1|new_cursor_column\(7)) # (!\inst1|cursor_column[0]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|new_cursor_column\(7),
	datac => \inst1|cursor_column~5_combout\,
	datad => \inst1|cursor_column[0]~19_combout\,
	combout => \inst1|cursor_column~9_combout\);

-- Location: FF_X30_Y19_N7
\inst1|cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~9_combout\,
	ena => \inst1|cursor_column[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(7));

-- Location: FF_X27_Y19_N29
\inst1|new_cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|new_cursor_column[8]~26_combout\,
	asdata => VCC,
	sload => \inst1|Equal4~0_combout\,
	ena => \inst1|new_cursor_column[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_cursor_column\(8));

-- Location: LCCOMB_X30_Y19_N8
\inst1|cursor_column~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~7_combout\ = ((\inst1|new_cursor_column\(8) & (\inst1|cursor_column~5_combout\ & \inst1|cursor_column[0]~19_combout\))) # (!\inst1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|new_cursor_column\(8),
	datac => \inst1|cursor_column~5_combout\,
	datad => \inst1|cursor_column[0]~19_combout\,
	combout => \inst1|cursor_column~7_combout\);

-- Location: FF_X30_Y19_N9
\inst1|cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~7_combout\,
	ena => \inst1|cursor_column[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(8));

-- Location: LCCOMB_X30_Y19_N20
\inst1|cursor_column~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cursor_column~10_combout\ = ((\inst1|new_cursor_column\(6) & (\inst1|cursor_column~5_combout\ & \inst1|cursor_column[0]~19_combout\))) # (!\inst1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|new_cursor_column\(6),
	datac => \inst1|cursor_column~5_combout\,
	datad => \inst1|cursor_column[0]~19_combout\,
	combout => \inst1|cursor_column~10_combout\);

-- Location: FF_X30_Y19_N21
\inst1|cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|cursor_column~10_combout\,
	ena => \inst1|cursor_column[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cursor_column\(6));

-- Location: LCCOMB_X30_Y19_N16
\inst|LessThan14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~0_combout\ = (\inst1|cursor_column\(9)) # ((\inst1|cursor_column\(7) & (\inst1|cursor_column\(8) & \inst1|cursor_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cursor_column\(7),
	datab => \inst1|cursor_column\(8),
	datac => \inst1|cursor_column\(9),
	datad => \inst1|cursor_column\(6),
	combout => \inst|LessThan14~0_combout\);

-- Location: FF_X29_Y19_N3
\inst|player_X_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|player_X_motion~6_combout\,
	ena => \inst|LessThan14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player_X_motion\(1));

-- Location: LCCOMB_X29_Y19_N6
\inst|player_X_pos[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|player_X_pos[1]~10_combout\ = (\inst|player_X_pos\(1) & (\inst|player_X_motion\(1) $ (VCC))) # (!\inst|player_X_pos\(1) & (\inst|player_X_motion\(1) & VCC))
-- \inst|player_X_pos[1]~11\ = CARRY((\inst|player_X_pos\(1) & \inst|player_X_motion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(1),
	datab => \inst|player_X_motion\(1),
	datad => VCC,
	combout => \inst|player_X_pos[1]~10_combout\,
	cout => \inst|player_X_pos[1]~11\);

-- Location: LCCOMB_X29_Y19_N8
\inst|player_X_pos[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|player_X_pos[2]~12_combout\ = (\inst|player_X_motion\(10) & ((\inst|player_X_pos\(2) & (\inst|player_X_pos[1]~11\ & VCC)) # (!\inst|player_X_pos\(2) & (!\inst|player_X_pos[1]~11\)))) # (!\inst|player_X_motion\(10) & ((\inst|player_X_pos\(2) & 
-- (!\inst|player_X_pos[1]~11\)) # (!\inst|player_X_pos\(2) & ((\inst|player_X_pos[1]~11\) # (GND)))))
-- \inst|player_X_pos[2]~13\ = CARRY((\inst|player_X_motion\(10) & (!\inst|player_X_pos\(2) & !\inst|player_X_pos[1]~11\)) # (!\inst|player_X_motion\(10) & ((!\inst|player_X_pos[1]~11\) # (!\inst|player_X_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_motion\(10),
	datab => \inst|player_X_pos\(2),
	datad => VCC,
	cin => \inst|player_X_pos[1]~11\,
	combout => \inst|player_X_pos[2]~12_combout\,
	cout => \inst|player_X_pos[2]~13\);

-- Location: FF_X29_Y19_N9
\inst|player_X_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|player_X_pos[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player_X_pos\(2));

-- Location: LCCOMB_X29_Y19_N12
\inst|player_X_pos[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|player_X_pos[4]~16_combout\ = (\inst|player_X_pos\(4) & ((\inst|player_X_motion\(10) & (\inst|player_X_pos[3]~15\ & VCC)) # (!\inst|player_X_motion\(10) & (!\inst|player_X_pos[3]~15\)))) # (!\inst|player_X_pos\(4) & ((\inst|player_X_motion\(10) & 
-- (!\inst|player_X_pos[3]~15\)) # (!\inst|player_X_motion\(10) & ((\inst|player_X_pos[3]~15\) # (GND)))))
-- \inst|player_X_pos[4]~17\ = CARRY((\inst|player_X_pos\(4) & (!\inst|player_X_motion\(10) & !\inst|player_X_pos[3]~15\)) # (!\inst|player_X_pos\(4) & ((!\inst|player_X_pos[3]~15\) # (!\inst|player_X_motion\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(4),
	datab => \inst|player_X_motion\(10),
	datad => VCC,
	cin => \inst|player_X_pos[3]~15\,
	combout => \inst|player_X_pos[4]~16_combout\,
	cout => \inst|player_X_pos[4]~17\);

-- Location: LCCOMB_X29_Y19_N14
\inst|player_X_pos[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|player_X_pos[5]~18_combout\ = ((\inst|player_X_motion\(10) $ (\inst|player_X_pos\(5) $ (!\inst|player_X_pos[4]~17\)))) # (GND)
-- \inst|player_X_pos[5]~19\ = CARRY((\inst|player_X_motion\(10) & ((\inst|player_X_pos\(5)) # (!\inst|player_X_pos[4]~17\))) # (!\inst|player_X_motion\(10) & (\inst|player_X_pos\(5) & !\inst|player_X_pos[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_motion\(10),
	datab => \inst|player_X_pos\(5),
	datad => VCC,
	cin => \inst|player_X_pos[4]~17\,
	combout => \inst|player_X_pos[5]~18_combout\,
	cout => \inst|player_X_pos[5]~19\);

-- Location: FF_X29_Y19_N15
\inst|player_X_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|player_X_pos[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player_X_pos\(5));

-- Location: LCCOMB_X29_Y19_N16
\inst|player_X_pos[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|player_X_pos[6]~20_combout\ = (\inst|player_X_motion\(10) & ((\inst|player_X_pos\(6) & (\inst|player_X_pos[5]~19\ & VCC)) # (!\inst|player_X_pos\(6) & (!\inst|player_X_pos[5]~19\)))) # (!\inst|player_X_motion\(10) & ((\inst|player_X_pos\(6) & 
-- (!\inst|player_X_pos[5]~19\)) # (!\inst|player_X_pos\(6) & ((\inst|player_X_pos[5]~19\) # (GND)))))
-- \inst|player_X_pos[6]~21\ = CARRY((\inst|player_X_motion\(10) & (!\inst|player_X_pos\(6) & !\inst|player_X_pos[5]~19\)) # (!\inst|player_X_motion\(10) & ((!\inst|player_X_pos[5]~19\) # (!\inst|player_X_pos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_motion\(10),
	datab => \inst|player_X_pos\(6),
	datad => VCC,
	cin => \inst|player_X_pos[5]~19\,
	combout => \inst|player_X_pos[6]~20_combout\,
	cout => \inst|player_X_pos[6]~21\);

-- Location: FF_X29_Y19_N17
\inst|player_X_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|player_X_pos[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player_X_pos\(6));

-- Location: FF_X29_Y19_N19
\inst|player_X_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|player_X_pos[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player_X_pos\(7));

-- Location: LCCOMB_X29_Y19_N28
\inst|LessThan16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan16~1_combout\ = (\inst|player_X_pos\(4)) # ((\inst|player_X_pos\(7)) # ((\inst|player_X_pos\(5)) # (\inst|player_X_pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(4),
	datab => \inst|player_X_pos\(7),
	datac => \inst|player_X_pos\(5),
	datad => \inst|player_X_pos\(8),
	combout => \inst|LessThan16~1_combout\);

-- Location: LCCOMB_X29_Y19_N0
\inst|player_X_motion~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|player_X_motion~5_combout\ = (!\inst|player_X_pos\(6) & (!\inst|LessThan16~1_combout\ & (\inst|player_X_motion~4_combout\ & !\inst|LessThan16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(6),
	datab => \inst|LessThan16~1_combout\,
	datac => \inst|player_X_motion~4_combout\,
	datad => \inst|LessThan16~0_combout\,
	combout => \inst|player_X_motion~5_combout\);

-- Location: FF_X29_Y19_N1
\inst|player_X_motion[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|player_X_motion~5_combout\,
	ena => \inst|LessThan14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player_X_motion\(10));

-- Location: LCCOMB_X29_Y19_N24
\inst|player_X_pos[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|player_X_pos[10]~28_combout\ = \inst|player_X_motion\(10) $ (\inst|player_X_pos[9]~27\ $ (\inst|player_X_pos\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|player_X_motion\(10),
	datad => \inst|player_X_pos\(10),
	cin => \inst|player_X_pos[9]~27\,
	combout => \inst|player_X_pos[10]~28_combout\);

-- Location: FF_X29_Y19_N25
\inst|player_X_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|player_X_pos[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player_X_pos\(10));

-- Location: FF_X29_Y19_N13
\inst|player_X_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|player_X_pos[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player_X_pos\(4));

-- Location: LCCOMB_X28_Y19_N10
\inst|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~6_combout\ = (\inst|player_X_pos\(7) & (!\inst|Add5~5\)) # (!\inst|player_X_pos\(7) & ((\inst|Add5~5\) # (GND)))
-- \inst|Add5~7\ = CARRY((!\inst|Add5~5\) # (!\inst|player_X_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|player_X_pos\(7),
	datad => VCC,
	cin => \inst|Add5~5\,
	combout => \inst|Add5~6_combout\,
	cout => \inst|Add5~7\);

-- Location: LCCOMB_X28_Y19_N14
\inst|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~10_combout\ = (\inst|player_X_pos\(9) & (!\inst|Add5~9\)) # (!\inst|player_X_pos\(9) & ((\inst|Add5~9\) # (GND)))
-- \inst|Add5~11\ = CARRY((!\inst|Add5~9\) # (!\inst|player_X_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|player_X_pos\(9),
	datad => VCC,
	cin => \inst|Add5~9\,
	combout => \inst|Add5~10_combout\,
	cout => \inst|Add5~11\);

-- Location: LCCOMB_X28_Y19_N16
\inst|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~12_combout\ = \inst|Add5~11\ $ (!\inst|player_X_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|player_X_pos\(10),
	cin => \inst|Add5~11\,
	combout => \inst|Add5~12_combout\);

-- Location: FF_X27_Y18_N29
\inst|SYNC|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(9),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(9));

-- Location: FF_X27_Y18_N25
\inst|SYNC|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(7),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(7));

-- Location: FF_X27_Y18_N21
\inst|SYNC|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(5),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(5));

-- Location: FF_X27_Y18_N3
\inst|SYNC|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(4),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(4));

-- Location: LCCOMB_X27_Y18_N20
\inst|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~2_combout\ = (\inst|SYNC|pixel_column\(5) & (!\inst|Add4~1\)) # (!\inst|SYNC|pixel_column\(5) & ((\inst|Add4~1\) # (GND)))
-- \inst|Add4~3\ = CARRY((!\inst|Add4~1\) # (!\inst|SYNC|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst|Add4~1\,
	combout => \inst|Add4~2_combout\,
	cout => \inst|Add4~3\);

-- Location: LCCOMB_X27_Y18_N26
\inst|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~8_combout\ = (\inst|SYNC|pixel_column\(8) & (\inst|Add4~7\ $ (GND))) # (!\inst|SYNC|pixel_column\(8) & (!\inst|Add4~7\ & VCC))
-- \inst|Add4~9\ = CARRY((\inst|SYNC|pixel_column\(8) & !\inst|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst|Add4~7\,
	combout => \inst|Add4~8_combout\,
	cout => \inst|Add4~9\);

-- Location: LCCOMB_X27_Y18_N28
\inst|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~10_combout\ = (\inst|SYNC|pixel_column\(9) & (!\inst|Add4~9\)) # (!\inst|SYNC|pixel_column\(9) & ((\inst|Add4~9\) # (GND)))
-- \inst|Add4~11\ = CARRY((!\inst|Add4~9\) # (!\inst|SYNC|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(9),
	datad => VCC,
	cin => \inst|Add4~9\,
	combout => \inst|Add4~10_combout\,
	cout => \inst|Add4~11\);

-- Location: LCCOMB_X27_Y18_N30
\inst|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~12_combout\ = !\inst|Add4~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add4~11\,
	combout => \inst|Add4~12_combout\);

-- Location: LCCOMB_X28_Y20_N26
\inst|SYNC|red_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|red_out~5_combout\ = (\inst|SYNC|red_out~4_combout\) # ((\inst|Add5~12_combout\) # (\inst|Add4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|red_out~4_combout\,
	datac => \inst|Add5~12_combout\,
	datad => \inst|Add4~12_combout\,
	combout => \inst|SYNC|red_out~5_combout\);

-- Location: FF_X27_Y18_N27
\inst|SYNC|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(8),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(8));

-- Location: FF_X27_Y18_N23
\inst|SYNC|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(6),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(6));

-- Location: FF_X27_Y18_N19
\inst|SYNC|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(3),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(3));

-- Location: FF_X29_Y19_N7
\inst|player_X_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|player_X_pos[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player_X_pos\(1));

-- Location: LCCOMB_X28_Y20_N6
\inst|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~1_cout\ = CARRY(\inst|SYNC|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(0),
	datad => VCC,
	cout => \inst|LessThan5~1_cout\);

-- Location: LCCOMB_X28_Y20_N8
\inst|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~3_cout\ = CARRY((\inst|SYNC|pixel_column\(1) & (\inst|player_X_pos\(1) & !\inst|LessThan5~1_cout\)) # (!\inst|SYNC|pixel_column\(1) & ((\inst|player_X_pos\(1)) # (!\inst|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(1),
	datab => \inst|player_X_pos\(1),
	datad => VCC,
	cin => \inst|LessThan5~1_cout\,
	cout => \inst|LessThan5~3_cout\);

-- Location: LCCOMB_X28_Y20_N10
\inst|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~5_cout\ = CARRY((\inst|SYNC|pixel_column\(2) & ((!\inst|LessThan5~3_cout\) # (!\inst|player_X_pos\(2)))) # (!\inst|SYNC|pixel_column\(2) & (!\inst|player_X_pos\(2) & !\inst|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(2),
	datab => \inst|player_X_pos\(2),
	datad => VCC,
	cin => \inst|LessThan5~3_cout\,
	cout => \inst|LessThan5~5_cout\);

-- Location: LCCOMB_X28_Y20_N12
\inst|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~7_cout\ = CARRY((\inst|player_X_pos\(3) & (!\inst|SYNC|pixel_column\(3) & !\inst|LessThan5~5_cout\)) # (!\inst|player_X_pos\(3) & ((!\inst|LessThan5~5_cout\) # (!\inst|SYNC|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player_X_pos\(3),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	cin => \inst|LessThan5~5_cout\,
	cout => \inst|LessThan5~7_cout\);

-- Location: LCCOMB_X28_Y20_N14
\inst|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~9_cout\ = CARRY((\inst|Add5~0_combout\ & (\inst|SYNC|pixel_column\(4) & !\inst|LessThan5~7_cout\)) # (!\inst|Add5~0_combout\ & ((\inst|SYNC|pixel_column\(4)) # (!\inst|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~0_combout\,
	datab => \inst|SYNC|pixel_column\(4),
	datad => VCC,
	cin => \inst|LessThan5~7_cout\,
	cout => \inst|LessThan5~9_cout\);

-- Location: LCCOMB_X28_Y20_N16
\inst|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~11_cout\ = CARRY((\inst|Add5~2_combout\ & ((!\inst|LessThan5~9_cout\) # (!\inst|SYNC|pixel_column\(5)))) # (!\inst|Add5~2_combout\ & (!\inst|SYNC|pixel_column\(5) & !\inst|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~2_combout\,
	datab => \inst|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst|LessThan5~9_cout\,
	cout => \inst|LessThan5~11_cout\);

-- Location: LCCOMB_X28_Y20_N18
\inst|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~13_cout\ = CARRY((\inst|Add5~4_combout\ & (\inst|SYNC|pixel_column\(6) & !\inst|LessThan5~11_cout\)) # (!\inst|Add5~4_combout\ & ((\inst|SYNC|pixel_column\(6)) # (!\inst|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~4_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst|LessThan5~11_cout\,
	cout => \inst|LessThan5~13_cout\);

-- Location: LCCOMB_X28_Y20_N20
\inst|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~15_cout\ = CARRY((\inst|SYNC|pixel_column\(7) & (\inst|Add5~6_combout\ & !\inst|LessThan5~13_cout\)) # (!\inst|SYNC|pixel_column\(7) & ((\inst|Add5~6_combout\) # (!\inst|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datab => \inst|Add5~6_combout\,
	datad => VCC,
	cin => \inst|LessThan5~13_cout\,
	cout => \inst|LessThan5~15_cout\);

-- Location: LCCOMB_X28_Y20_N22
\inst|LessThan5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~17_cout\ = CARRY((\inst|Add5~8_combout\ & (\inst|SYNC|pixel_column\(8) & !\inst|LessThan5~15_cout\)) # (!\inst|Add5~8_combout\ & ((\inst|SYNC|pixel_column\(8)) # (!\inst|LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~8_combout\,
	datab => \inst|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst|LessThan5~15_cout\,
	cout => \inst|LessThan5~17_cout\);

-- Location: LCCOMB_X28_Y20_N24
\inst|LessThan5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~18_combout\ = (\inst|Add5~10_combout\ & (\inst|LessThan5~17_cout\ & \inst|SYNC|pixel_column\(9))) # (!\inst|Add5~10_combout\ & ((\inst|LessThan5~17_cout\) # (\inst|SYNC|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add5~10_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	cin => \inst|LessThan5~17_cout\,
	combout => \inst|LessThan5~18_combout\);

-- Location: LCCOMB_X28_Y20_N0
\inst|SYNC|red_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|red_out~6_combout\ = (\inst|SYNC|red_out~0_combout\ & ((\inst|LessThan4~18_combout\) # ((\inst|SYNC|red_out~5_combout\) # (\inst|LessThan5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan4~18_combout\,
	datab => \inst|SYNC|red_out~0_combout\,
	datac => \inst|SYNC|red_out~5_combout\,
	datad => \inst|LessThan5~18_combout\,
	combout => \inst|SYNC|red_out~6_combout\);

-- Location: FF_X27_Y18_N1
\inst|SYNC|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(2),
	sload => VCC,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(2));

-- Location: LCCOMB_X26_Y20_N0
\inst|SYNC|pixel_column[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|pixel_column[0]~feeder_combout\ = \inst|SYNC|h_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|h_count\(0),
	combout => \inst|SYNC|pixel_column[0]~feeder_combout\);

-- Location: FF_X26_Y20_N1
\inst|SYNC|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|pixel_column[0]~feeder_combout\,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(0));

-- Location: LCCOMB_X28_Y20_N2
\inst|bullet_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_on~1_combout\ = (\inst|SYNC|pixel_column\(3)) # ((\inst|SYNC|pixel_column\(2) & ((\inst|SYNC|pixel_column\(1)) # (\inst|SYNC|pixel_column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(1),
	datab => \inst|SYNC|pixel_column\(3),
	datac => \inst|SYNC|pixel_column\(2),
	datad => \inst|SYNC|pixel_column\(0),
	combout => \inst|bullet_on~1_combout\);

-- Location: LCCOMB_X28_Y20_N4
\inst|bullet_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_on~2_combout\ = (\inst|SYNC|pixel_column\(4)) # ((\inst|SYNC|pixel_column\(5)) # (\inst|bullet_on~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(4),
	datac => \inst|SYNC|pixel_column\(5),
	datad => \inst|bullet_on~1_combout\,
	combout => \inst|bullet_on~2_combout\);

-- Location: LCCOMB_X27_Y18_N0
\inst|Add8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add8~1_cout\ = CARRY((\inst|SYNC|pixel_column\(2) & \inst|SYNC|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(2),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	cout => \inst|Add8~1_cout\);

-- Location: LCCOMB_X27_Y18_N2
\inst|Add8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add8~3_cout\ = CARRY((!\inst|Add8~1_cout\) # (!\inst|SYNC|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(4),
	datad => VCC,
	cin => \inst|Add8~1_cout\,
	cout => \inst|Add8~3_cout\);

-- Location: LCCOMB_X27_Y18_N4
\inst|Add8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add8~5_cout\ = CARRY((\inst|SYNC|pixel_column\(5) & !\inst|Add8~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst|Add8~3_cout\,
	cout => \inst|Add8~5_cout\);

-- Location: LCCOMB_X27_Y18_N6
\inst|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add8~6_combout\ = (\inst|SYNC|pixel_column\(6) & (!\inst|Add8~5_cout\)) # (!\inst|SYNC|pixel_column\(6) & ((\inst|Add8~5_cout\) # (GND)))
-- \inst|Add8~7\ = CARRY((!\inst|Add8~5_cout\) # (!\inst|SYNC|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst|Add8~5_cout\,
	combout => \inst|Add8~6_combout\,
	cout => \inst|Add8~7\);

-- Location: LCCOMB_X27_Y18_N8
\inst|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add8~8_combout\ = (\inst|SYNC|pixel_column\(7) & (\inst|Add8~7\ $ (GND))) # (!\inst|SYNC|pixel_column\(7) & (!\inst|Add8~7\ & VCC))
-- \inst|Add8~9\ = CARRY((\inst|SYNC|pixel_column\(7) & !\inst|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst|Add8~7\,
	combout => \inst|Add8~8_combout\,
	cout => \inst|Add8~9\);

-- Location: LCCOMB_X27_Y18_N10
\inst|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add8~10_combout\ = (\inst|SYNC|pixel_column\(8) & (!\inst|Add8~9\)) # (!\inst|SYNC|pixel_column\(8) & ((\inst|Add8~9\) # (GND)))
-- \inst|Add8~11\ = CARRY((!\inst|Add8~9\) # (!\inst|SYNC|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst|Add8~9\,
	combout => \inst|Add8~10_combout\,
	cout => \inst|Add8~11\);

-- Location: LCCOMB_X27_Y18_N16
\inst|bullet_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_on~0_combout\ = (!\inst|Add8~12_combout\ & (((!\inst|Add8~8_combout\ & !\inst|Add8~6_combout\)) # (!\inst|Add8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add8~12_combout\,
	datab => \inst|Add8~8_combout\,
	datac => \inst|Add8~6_combout\,
	datad => \inst|Add8~10_combout\,
	combout => \inst|bullet_on~0_combout\);

-- Location: LCCOMB_X27_Y20_N0
\inst|bullet_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_on~3_combout\ = (\inst|bullet_on~0_combout\) # ((\inst|SYNC|pixel_column\(6) & (\inst|SYNC|pixel_column\(8) & \inst|bullet_on~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst|bullet_on~2_combout\,
	datad => \inst|bullet_on~0_combout\,
	combout => \inst|bullet_on~3_combout\);

-- Location: LCCOMB_X21_Y20_N12
\inst|bullet_Y_pos[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_pos[1]~10_combout\ = \inst|bullet_Y_pos\(1) $ (VCC)
-- \inst|bullet_Y_pos[1]~11\ = CARRY(\inst|bullet_Y_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(1),
	datad => VCC,
	combout => \inst|bullet_Y_pos[1]~10_combout\,
	cout => \inst|bullet_Y_pos[1]~11\);

-- Location: LCCOMB_X21_Y20_N14
\inst|bullet_Y_pos[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_pos[2]~12_combout\ = (\inst|bullet_Y_motion\(4) & ((\inst|bullet_Y_pos\(2) & (\inst|bullet_Y_pos[1]~11\ & VCC)) # (!\inst|bullet_Y_pos\(2) & (!\inst|bullet_Y_pos[1]~11\)))) # (!\inst|bullet_Y_motion\(4) & ((\inst|bullet_Y_pos\(2) & 
-- (!\inst|bullet_Y_pos[1]~11\)) # (!\inst|bullet_Y_pos\(2) & ((\inst|bullet_Y_pos[1]~11\) # (GND)))))
-- \inst|bullet_Y_pos[2]~13\ = CARRY((\inst|bullet_Y_motion\(4) & (!\inst|bullet_Y_pos\(2) & !\inst|bullet_Y_pos[1]~11\)) # (!\inst|bullet_Y_motion\(4) & ((!\inst|bullet_Y_pos[1]~11\) # (!\inst|bullet_Y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_motion\(4),
	datab => \inst|bullet_Y_pos\(2),
	datad => VCC,
	cin => \inst|bullet_Y_pos[1]~11\,
	combout => \inst|bullet_Y_pos[2]~12_combout\,
	cout => \inst|bullet_Y_pos[2]~13\);

-- Location: FF_X21_Y20_N15
\inst|bullet_Y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|bullet_Y_pos[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bullet_Y_pos\(2));

-- Location: LCCOMB_X21_Y20_N16
\inst|bullet_Y_pos[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_pos[3]~14_combout\ = ((\inst|bullet_Y_motion\(4) $ (\inst|bullet_Y_pos\(3) $ (!\inst|bullet_Y_pos[2]~13\)))) # (GND)
-- \inst|bullet_Y_pos[3]~15\ = CARRY((\inst|bullet_Y_motion\(4) & ((\inst|bullet_Y_pos\(3)) # (!\inst|bullet_Y_pos[2]~13\))) # (!\inst|bullet_Y_motion\(4) & (\inst|bullet_Y_pos\(3) & !\inst|bullet_Y_pos[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_motion\(4),
	datab => \inst|bullet_Y_pos\(3),
	datad => VCC,
	cin => \inst|bullet_Y_pos[2]~13\,
	combout => \inst|bullet_Y_pos[3]~14_combout\,
	cout => \inst|bullet_Y_pos[3]~15\);

-- Location: FF_X21_Y20_N17
\inst|bullet_Y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|bullet_Y_pos[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bullet_Y_pos\(3));

-- Location: LCCOMB_X21_Y20_N18
\inst|bullet_Y_pos[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_pos[4]~16_combout\ = (\inst|bullet_Y_pos\(4) & ((\inst|bullet_Y_motion\(4) & (\inst|bullet_Y_pos[3]~15\ & VCC)) # (!\inst|bullet_Y_motion\(4) & (!\inst|bullet_Y_pos[3]~15\)))) # (!\inst|bullet_Y_pos\(4) & ((\inst|bullet_Y_motion\(4) & 
-- (!\inst|bullet_Y_pos[3]~15\)) # (!\inst|bullet_Y_motion\(4) & ((\inst|bullet_Y_pos[3]~15\) # (GND)))))
-- \inst|bullet_Y_pos[4]~17\ = CARRY((\inst|bullet_Y_pos\(4) & (!\inst|bullet_Y_motion\(4) & !\inst|bullet_Y_pos[3]~15\)) # (!\inst|bullet_Y_pos\(4) & ((!\inst|bullet_Y_pos[3]~15\) # (!\inst|bullet_Y_motion\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(4),
	datab => \inst|bullet_Y_motion\(4),
	datad => VCC,
	cin => \inst|bullet_Y_pos[3]~15\,
	combout => \inst|bullet_Y_pos[4]~16_combout\,
	cout => \inst|bullet_Y_pos[4]~17\);

-- Location: LCCOMB_X21_Y20_N20
\inst|bullet_Y_pos[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_pos[5]~18_combout\ = ((\inst|bullet_Y_pos\(5) $ (\inst|bullet_Y_motion\(4) $ (!\inst|bullet_Y_pos[4]~17\)))) # (GND)
-- \inst|bullet_Y_pos[5]~19\ = CARRY((\inst|bullet_Y_pos\(5) & ((\inst|bullet_Y_motion\(4)) # (!\inst|bullet_Y_pos[4]~17\))) # (!\inst|bullet_Y_pos\(5) & (\inst|bullet_Y_motion\(4) & !\inst|bullet_Y_pos[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(5),
	datab => \inst|bullet_Y_motion\(4),
	datad => VCC,
	cin => \inst|bullet_Y_pos[4]~17\,
	combout => \inst|bullet_Y_pos[5]~18_combout\,
	cout => \inst|bullet_Y_pos[5]~19\);

-- Location: LCCOMB_X21_Y20_N22
\inst|bullet_Y_pos[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_pos[6]~20_combout\ = (\inst|bullet_Y_pos\(6) & ((\inst|bullet_Y_motion\(4) & (\inst|bullet_Y_pos[5]~19\ & VCC)) # (!\inst|bullet_Y_motion\(4) & (!\inst|bullet_Y_pos[5]~19\)))) # (!\inst|bullet_Y_pos\(6) & ((\inst|bullet_Y_motion\(4) & 
-- (!\inst|bullet_Y_pos[5]~19\)) # (!\inst|bullet_Y_motion\(4) & ((\inst|bullet_Y_pos[5]~19\) # (GND)))))
-- \inst|bullet_Y_pos[6]~21\ = CARRY((\inst|bullet_Y_pos\(6) & (!\inst|bullet_Y_motion\(4) & !\inst|bullet_Y_pos[5]~19\)) # (!\inst|bullet_Y_pos\(6) & ((!\inst|bullet_Y_pos[5]~19\) # (!\inst|bullet_Y_motion\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(6),
	datab => \inst|bullet_Y_motion\(4),
	datad => VCC,
	cin => \inst|bullet_Y_pos[5]~19\,
	combout => \inst|bullet_Y_pos[6]~20_combout\,
	cout => \inst|bullet_Y_pos[6]~21\);

-- Location: LCCOMB_X21_Y20_N24
\inst|bullet_Y_pos[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_pos[7]~22_combout\ = ((\inst|bullet_Y_motion\(4) $ (\inst|bullet_Y_pos\(7) $ (!\inst|bullet_Y_pos[6]~21\)))) # (GND)
-- \inst|bullet_Y_pos[7]~23\ = CARRY((\inst|bullet_Y_motion\(4) & ((\inst|bullet_Y_pos\(7)) # (!\inst|bullet_Y_pos[6]~21\))) # (!\inst|bullet_Y_motion\(4) & (\inst|bullet_Y_pos\(7) & !\inst|bullet_Y_pos[6]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_motion\(4),
	datab => \inst|bullet_Y_pos\(7),
	datad => VCC,
	cin => \inst|bullet_Y_pos[6]~21\,
	combout => \inst|bullet_Y_pos[7]~22_combout\,
	cout => \inst|bullet_Y_pos[7]~23\);

-- Location: FF_X21_Y20_N25
\inst|bullet_Y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|bullet_Y_pos[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bullet_Y_pos\(7));

-- Location: LCCOMB_X21_Y20_N28
\inst|bullet_Y_pos[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_pos[9]~26_combout\ = ((\inst|bullet_Y_motion\(4) $ (\inst|bullet_Y_pos\(9) $ (!\inst|bullet_Y_pos[8]~25\)))) # (GND)
-- \inst|bullet_Y_pos[9]~27\ = CARRY((\inst|bullet_Y_motion\(4) & ((\inst|bullet_Y_pos\(9)) # (!\inst|bullet_Y_pos[8]~25\))) # (!\inst|bullet_Y_motion\(4) & (\inst|bullet_Y_pos\(9) & !\inst|bullet_Y_pos[8]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_motion\(4),
	datab => \inst|bullet_Y_pos\(9),
	datad => VCC,
	cin => \inst|bullet_Y_pos[8]~25\,
	combout => \inst|bullet_Y_pos[9]~26_combout\,
	cout => \inst|bullet_Y_pos[9]~27\);

-- Location: FF_X21_Y20_N29
\inst|bullet_Y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|bullet_Y_pos[9]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bullet_Y_pos\(9));

-- Location: LCCOMB_X22_Y20_N28
\inst|bullet_Y_pos[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_pos[6]~feeder_combout\ = \inst|bullet_Y_pos[6]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|bullet_Y_pos[6]~20_combout\,
	combout => \inst|bullet_Y_pos[6]~feeder_combout\);

-- Location: FF_X22_Y20_N29
\inst|bullet_Y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|bullet_Y_pos[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bullet_Y_pos\(6));

-- Location: LCCOMB_X22_Y20_N30
\inst|bullet_Y_pos[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_pos[4]~feeder_combout\ = \inst|bullet_Y_pos[4]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|bullet_Y_pos[4]~16_combout\,
	combout => \inst|bullet_Y_pos[4]~feeder_combout\);

-- Location: FF_X22_Y20_N31
\inst|bullet_Y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|bullet_Y_pos[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bullet_Y_pos\(4));

-- Location: FF_X21_Y20_N21
\inst|bullet_Y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|bullet_Y_pos[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bullet_Y_pos\(5));

-- Location: LCCOMB_X21_Y20_N4
\inst|bullet_Y_motion[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_motion[4]~1_combout\ = (\inst|bullet_Y_pos\(5) & (((\inst|bullet_Y_pos\(3) & \inst|bullet_Y_pos\(4))) # (!\inst|bullet_Y_pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(8),
	datab => \inst|bullet_Y_pos\(3),
	datac => \inst|bullet_Y_pos\(4),
	datad => \inst|bullet_Y_pos\(5),
	combout => \inst|bullet_Y_motion[4]~1_combout\);

-- Location: LCCOMB_X21_Y20_N6
\inst|bullet_Y_motion[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_motion[4]~0_combout\ = (\inst|bullet_Y_pos\(4)) # ((\inst|bullet_Y_pos\(3) & ((\inst|bullet_Y_pos\(1)) # (\inst|bullet_Y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(1),
	datab => \inst|bullet_Y_pos\(2),
	datac => \inst|bullet_Y_pos\(4),
	datad => \inst|bullet_Y_pos\(3),
	combout => \inst|bullet_Y_motion[4]~0_combout\);

-- Location: LCCOMB_X21_Y20_N2
\inst|bullet_Y_motion[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_motion[4]~2_combout\ = (\inst|bullet_Y_pos\(6) & (\inst|bullet_Y_motion[4]~1_combout\ & ((\inst|bullet_Y_pos\(8)) # (\inst|bullet_Y_motion[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(8),
	datab => \inst|bullet_Y_pos\(6),
	datac => \inst|bullet_Y_motion[4]~1_combout\,
	datad => \inst|bullet_Y_motion[4]~0_combout\,
	combout => \inst|bullet_Y_motion[4]~2_combout\);

-- Location: LCCOMB_X21_Y20_N0
\inst|bullet_Y_motion[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_motion[4]~3_combout\ = (\inst|bullet_Y_pos\(8) & ((\inst|bullet_Y_pos\(7)) # ((\inst|bullet_Y_motion\(4)) # (\inst|bullet_Y_motion[4]~2_combout\)))) # (!\inst|bullet_Y_pos\(8) & (\inst|bullet_Y_motion\(4) & ((\inst|bullet_Y_pos\(7)) # 
-- (\inst|bullet_Y_motion[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(8),
	datab => \inst|bullet_Y_pos\(7),
	datac => \inst|bullet_Y_motion\(4),
	datad => \inst|bullet_Y_motion[4]~2_combout\,
	combout => \inst|bullet_Y_motion[4]~3_combout\);

-- Location: LCCOMB_X21_Y20_N8
\inst|bullet_Y_motion[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_motion[4]~4_combout\ = (\inst|bullet_Y_pos\(9)) # ((\inst|bullet_Y_pos\(10)) # (\inst|bullet_Y_motion[4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bullet_Y_pos\(9),
	datac => \inst|bullet_Y_pos\(10),
	datad => \inst|bullet_Y_motion[4]~3_combout\,
	combout => \inst|bullet_Y_motion[4]~4_combout\);

-- Location: FF_X21_Y20_N9
\inst|bullet_Y_motion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|bullet_Y_motion[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bullet_Y_motion\(4));

-- Location: LCCOMB_X21_Y20_N30
\inst|bullet_Y_pos[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_Y_pos[10]~28_combout\ = \inst|bullet_Y_pos\(10) $ (\inst|bullet_Y_motion\(4) $ (\inst|bullet_Y_pos[9]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(10),
	datab => \inst|bullet_Y_motion\(4),
	cin => \inst|bullet_Y_pos[9]~27\,
	combout => \inst|bullet_Y_pos[10]~28_combout\);

-- Location: FF_X21_Y20_N31
\inst|bullet_Y_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|bullet_Y_pos[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bullet_Y_pos\(10));

-- Location: LCCOMB_X22_Y20_N18
\inst|Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~6_combout\ = (\inst|bullet_Y_pos\(6) & (!\inst|Add11~5\)) # (!\inst|bullet_Y_pos\(6) & ((\inst|Add11~5\) # (GND)))
-- \inst|Add11~7\ = CARRY((!\inst|Add11~5\) # (!\inst|bullet_Y_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|bullet_Y_pos\(6),
	datad => VCC,
	cin => \inst|Add11~5\,
	combout => \inst|Add11~6_combout\,
	cout => \inst|Add11~7\);

-- Location: LCCOMB_X22_Y20_N20
\inst|Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~8_combout\ = (\inst|bullet_Y_pos\(7) & (\inst|Add11~7\ $ (GND))) # (!\inst|bullet_Y_pos\(7) & (!\inst|Add11~7\ & VCC))
-- \inst|Add11~9\ = CARRY((\inst|bullet_Y_pos\(7) & !\inst|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|bullet_Y_pos\(7),
	datad => VCC,
	cin => \inst|Add11~7\,
	combout => \inst|Add11~8_combout\,
	cout => \inst|Add11~9\);

-- Location: LCCOMB_X22_Y20_N22
\inst|Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~10_combout\ = (\inst|bullet_Y_pos\(8) & (!\inst|Add11~9\)) # (!\inst|bullet_Y_pos\(8) & ((\inst|Add11~9\) # (GND)))
-- \inst|Add11~11\ = CARRY((!\inst|Add11~9\) # (!\inst|bullet_Y_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(8),
	datad => VCC,
	cin => \inst|Add11~9\,
	combout => \inst|Add11~10_combout\,
	cout => \inst|Add11~11\);

-- Location: LCCOMB_X22_Y20_N24
\inst|Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~12_combout\ = (\inst|bullet_Y_pos\(9) & (\inst|Add11~11\ $ (GND))) # (!\inst|bullet_Y_pos\(9) & (!\inst|Add11~11\ & VCC))
-- \inst|Add11~13\ = CARRY((\inst|bullet_Y_pos\(9) & !\inst|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|bullet_Y_pos\(9),
	datad => VCC,
	cin => \inst|Add11~11\,
	combout => \inst|Add11~12_combout\,
	cout => \inst|Add11~13\);

-- Location: LCCOMB_X22_Y20_N26
\inst|Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~14_combout\ = \inst|Add11~13\ $ (\inst|bullet_Y_pos\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|bullet_Y_pos\(10),
	cin => \inst|Add11~13\,
	combout => \inst|Add11~14_combout\);

-- Location: LCCOMB_X27_Y18_N14
\inst|Add8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add8~14_combout\ = \inst|Add8~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add8~13\,
	combout => \inst|Add8~14_combout\);

-- Location: FF_X24_Y20_N27
\inst|SYNC|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(7),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(7));

-- Location: LCCOMB_X24_Y20_N20
\inst|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add10~2_combout\ = (\inst|SYNC|pixel_row\(4) & (!\inst|Add10~1\)) # (!\inst|SYNC|pixel_row\(4) & ((\inst|Add10~1\) # (GND)))
-- \inst|Add10~3\ = CARRY((!\inst|Add10~1\) # (!\inst|SYNC|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(4),
	datad => VCC,
	cin => \inst|Add10~1\,
	combout => \inst|Add10~2_combout\,
	cout => \inst|Add10~3\);

-- Location: LCCOMB_X24_Y20_N24
\inst|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add10~6_combout\ = (\inst|SYNC|pixel_row\(6) & (!\inst|Add10~5\)) # (!\inst|SYNC|pixel_row\(6) & ((\inst|Add10~5\) # (GND)))
-- \inst|Add10~7\ = CARRY((!\inst|Add10~5\) # (!\inst|SYNC|pixel_row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst|Add10~5\,
	combout => \inst|Add10~6_combout\,
	cout => \inst|Add10~7\);

-- Location: LCCOMB_X24_Y20_N0
\inst|LessThan10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~1_cout\ = CARRY((\inst|bullet_Y_pos\(1) & !\inst|SYNC|pixel_row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(1),
	datab => \inst|SYNC|pixel_row\(1),
	datad => VCC,
	cout => \inst|LessThan10~1_cout\);

-- Location: LCCOMB_X24_Y20_N2
\inst|LessThan10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~3_cout\ = CARRY((\inst|bullet_Y_pos\(2) & (!\inst|SYNC|pixel_row\(2) & !\inst|LessThan10~1_cout\)) # (!\inst|bullet_Y_pos\(2) & ((!\inst|LessThan10~1_cout\) # (!\inst|SYNC|pixel_row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(2),
	datab => \inst|SYNC|pixel_row\(2),
	datad => VCC,
	cin => \inst|LessThan10~1_cout\,
	cout => \inst|LessThan10~3_cout\);

-- Location: LCCOMB_X24_Y20_N4
\inst|LessThan10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~5_cout\ = CARRY((\inst|Add10~0_combout\ & (\inst|bullet_Y_pos\(3) & !\inst|LessThan10~3_cout\)) # (!\inst|Add10~0_combout\ & ((\inst|bullet_Y_pos\(3)) # (!\inst|LessThan10~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add10~0_combout\,
	datab => \inst|bullet_Y_pos\(3),
	datad => VCC,
	cin => \inst|LessThan10~3_cout\,
	cout => \inst|LessThan10~5_cout\);

-- Location: LCCOMB_X24_Y20_N6
\inst|LessThan10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~7_cout\ = CARRY((\inst|bullet_Y_pos\(4) & (\inst|Add10~2_combout\ & !\inst|LessThan10~5_cout\)) # (!\inst|bullet_Y_pos\(4) & ((\inst|Add10~2_combout\) # (!\inst|LessThan10~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(4),
	datab => \inst|Add10~2_combout\,
	datad => VCC,
	cin => \inst|LessThan10~5_cout\,
	cout => \inst|LessThan10~7_cout\);

-- Location: LCCOMB_X24_Y20_N8
\inst|LessThan10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~9_cout\ = CARRY((\inst|Add10~4_combout\ & (\inst|bullet_Y_pos\(5) & !\inst|LessThan10~7_cout\)) # (!\inst|Add10~4_combout\ & ((\inst|bullet_Y_pos\(5)) # (!\inst|LessThan10~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add10~4_combout\,
	datab => \inst|bullet_Y_pos\(5),
	datad => VCC,
	cin => \inst|LessThan10~7_cout\,
	cout => \inst|LessThan10~9_cout\);

-- Location: LCCOMB_X24_Y20_N10
\inst|LessThan10~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~11_cout\ = CARRY((\inst|bullet_Y_pos\(6) & (\inst|Add10~6_combout\ & !\inst|LessThan10~9_cout\)) # (!\inst|bullet_Y_pos\(6) & ((\inst|Add10~6_combout\) # (!\inst|LessThan10~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(6),
	datab => \inst|Add10~6_combout\,
	datad => VCC,
	cin => \inst|LessThan10~9_cout\,
	cout => \inst|LessThan10~11_cout\);

-- Location: LCCOMB_X24_Y20_N12
\inst|LessThan10~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~13_cout\ = CARRY((\inst|Add10~8_combout\ & (\inst|bullet_Y_pos\(7) & !\inst|LessThan10~11_cout\)) # (!\inst|Add10~8_combout\ & ((\inst|bullet_Y_pos\(7)) # (!\inst|LessThan10~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add10~8_combout\,
	datab => \inst|bullet_Y_pos\(7),
	datad => VCC,
	cin => \inst|LessThan10~11_cout\,
	cout => \inst|LessThan10~13_cout\);

-- Location: LCCOMB_X24_Y20_N14
\inst|LessThan10~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~15_cout\ = CARRY((\inst|bullet_Y_pos\(8) & (\inst|Add10~10_combout\ & !\inst|LessThan10~13_cout\)) # (!\inst|bullet_Y_pos\(8) & ((\inst|Add10~10_combout\) # (!\inst|LessThan10~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(8),
	datab => \inst|Add10~10_combout\,
	datad => VCC,
	cin => \inst|LessThan10~13_cout\,
	cout => \inst|LessThan10~15_cout\);

-- Location: LCCOMB_X24_Y20_N16
\inst|LessThan10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~16_combout\ = (\inst|Add10~12_combout\ & (!\inst|LessThan10~15_cout\ & \inst|bullet_Y_pos\(9))) # (!\inst|Add10~12_combout\ & ((\inst|bullet_Y_pos\(9)) # (!\inst|LessThan10~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add10~12_combout\,
	datad => \inst|bullet_Y_pos\(9),
	cin => \inst|LessThan10~15_cout\,
	combout => \inst|LessThan10~16_combout\);

-- Location: LCCOMB_X27_Y20_N30
\inst|bullet_on~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_on~5_combout\ = (\inst|SYNC|pixel_column\(9)) # ((\inst|Add11~14_combout\) # ((\inst|Add8~14_combout\) # (\inst|LessThan10~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datab => \inst|Add11~14_combout\,
	datac => \inst|Add8~14_combout\,
	datad => \inst|LessThan10~16_combout\,
	combout => \inst|bullet_on~5_combout\);

-- Location: LCCOMB_X23_Y19_N0
\inst|SYNC|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~11_combout\ = (\inst|SYNC|process_0~13_combout\ & \inst|SYNC|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|process_0~13_combout\,
	datad => \inst|SYNC|Add1~8_combout\,
	combout => \inst|SYNC|v_count~11_combout\);

-- Location: FF_X23_Y19_N1
\inst|SYNC|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|v_count~11_combout\,
	ena => \inst|SYNC|v_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(4));

-- Location: FF_X24_Y20_N21
\inst|SYNC|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(4),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(4));

-- Location: LCCOMB_X23_Y19_N16
\inst|SYNC|v_count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~7_combout\ = (\inst|SYNC|process_0~13_combout\ & \inst|SYNC|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|process_0~13_combout\,
	datac => \inst|SYNC|Add1~6_combout\,
	combout => \inst|SYNC|v_count~7_combout\);

-- Location: FF_X23_Y19_N17
\inst|SYNC|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|v_count~7_combout\,
	ena => \inst|SYNC|v_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(3));

-- Location: FF_X24_Y20_N7
\inst|SYNC|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(3),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(3));

-- Location: LCCOMB_X23_Y20_N6
\inst|LessThan11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~1_cout\ = CARRY(\inst|SYNC|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst|LessThan11~1_cout\);

-- Location: LCCOMB_X23_Y20_N8
\inst|LessThan11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~3_cout\ = CARRY((\inst|bullet_Y_pos\(1) & ((!\inst|LessThan11~1_cout\) # (!\inst|SYNC|pixel_row\(1)))) # (!\inst|bullet_Y_pos\(1) & (!\inst|SYNC|pixel_row\(1) & !\inst|LessThan11~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(1),
	datab => \inst|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst|LessThan11~1_cout\,
	cout => \inst|LessThan11~3_cout\);

-- Location: LCCOMB_X23_Y20_N10
\inst|LessThan11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~5_cout\ = CARRY((\inst|SYNC|pixel_row\(2) & ((\inst|bullet_Y_pos\(2)) # (!\inst|LessThan11~3_cout\))) # (!\inst|SYNC|pixel_row\(2) & (\inst|bullet_Y_pos\(2) & !\inst|LessThan11~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(2),
	datab => \inst|bullet_Y_pos\(2),
	datad => VCC,
	cin => \inst|LessThan11~3_cout\,
	cout => \inst|LessThan11~5_cout\);

-- Location: LCCOMB_X23_Y20_N12
\inst|LessThan11~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~7_cout\ = CARRY((\inst|Add11~0_combout\ & ((!\inst|LessThan11~5_cout\) # (!\inst|SYNC|pixel_row\(3)))) # (!\inst|Add11~0_combout\ & (!\inst|SYNC|pixel_row\(3) & !\inst|LessThan11~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~0_combout\,
	datab => \inst|SYNC|pixel_row\(3),
	datad => VCC,
	cin => \inst|LessThan11~5_cout\,
	cout => \inst|LessThan11~7_cout\);

-- Location: LCCOMB_X23_Y20_N14
\inst|LessThan11~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~9_cout\ = CARRY((\inst|Add11~2_combout\ & (\inst|SYNC|pixel_row\(4) & !\inst|LessThan11~7_cout\)) # (!\inst|Add11~2_combout\ & ((\inst|SYNC|pixel_row\(4)) # (!\inst|LessThan11~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~2_combout\,
	datab => \inst|SYNC|pixel_row\(4),
	datad => VCC,
	cin => \inst|LessThan11~7_cout\,
	cout => \inst|LessThan11~9_cout\);

-- Location: LCCOMB_X23_Y20_N16
\inst|LessThan11~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~11_cout\ = CARRY((\inst|Add11~4_combout\ & ((!\inst|LessThan11~9_cout\) # (!\inst|SYNC|pixel_row\(5)))) # (!\inst|Add11~4_combout\ & (!\inst|SYNC|pixel_row\(5) & !\inst|LessThan11~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~4_combout\,
	datab => \inst|SYNC|pixel_row\(5),
	datad => VCC,
	cin => \inst|LessThan11~9_cout\,
	cout => \inst|LessThan11~11_cout\);

-- Location: LCCOMB_X23_Y20_N18
\inst|LessThan11~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~13_cout\ = CARRY((\inst|SYNC|pixel_row\(6) & ((!\inst|LessThan11~11_cout\) # (!\inst|Add11~6_combout\))) # (!\inst|SYNC|pixel_row\(6) & (!\inst|Add11~6_combout\ & !\inst|LessThan11~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(6),
	datab => \inst|Add11~6_combout\,
	datad => VCC,
	cin => \inst|LessThan11~11_cout\,
	cout => \inst|LessThan11~13_cout\);

-- Location: LCCOMB_X23_Y20_N20
\inst|LessThan11~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~15_cout\ = CARRY((\inst|SYNC|pixel_row\(7) & (\inst|Add11~8_combout\ & !\inst|LessThan11~13_cout\)) # (!\inst|SYNC|pixel_row\(7) & ((\inst|Add11~8_combout\) # (!\inst|LessThan11~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(7),
	datab => \inst|Add11~8_combout\,
	datad => VCC,
	cin => \inst|LessThan11~13_cout\,
	cout => \inst|LessThan11~15_cout\);

-- Location: LCCOMB_X23_Y20_N22
\inst|LessThan11~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~16_combout\ = (\inst|SYNC|pixel_row\(8) & ((!\inst|Add11~10_combout\) # (!\inst|LessThan11~15_cout\))) # (!\inst|SYNC|pixel_row\(8) & (!\inst|LessThan11~15_cout\ & !\inst|Add11~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(8),
	datad => \inst|Add11~10_combout\,
	cin => \inst|LessThan11~15_cout\,
	combout => \inst|LessThan11~16_combout\);

-- Location: LCCOMB_X26_Y20_N30
\inst|bullet_on~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_on~4_combout\ = (\inst|SYNC|pixel_column\(8) & ((\inst|SYNC|pixel_column\(7)) # ((!\inst|Add11~12_combout\ & \inst|LessThan11~16_combout\)))) # (!\inst|SYNC|pixel_column\(8) & (((!\inst|Add11~12_combout\ & \inst|LessThan11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst|Add11~12_combout\,
	datad => \inst|LessThan11~16_combout\,
	combout => \inst|bullet_on~4_combout\);

-- Location: LCCOMB_X27_Y20_N28
\inst|bullet_on~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bullet_on~6_combout\ = (\inst|bullet_Y_pos\(10)) # ((\inst|bullet_on~3_combout\) # ((\inst|bullet_on~5_combout\) # (\inst|bullet_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(10),
	datab => \inst|bullet_on~3_combout\,
	datac => \inst|bullet_on~5_combout\,
	datad => \inst|bullet_on~4_combout\,
	combout => \inst|bullet_on~6_combout\);

-- Location: LCCOMB_X27_Y20_N4
\inst|SYNC|red_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|red_out~7_combout\ = (\inst|SYNC|red_out~6_combout\ & \inst|bullet_on~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|red_out~6_combout\,
	datad => \inst|bullet_on~6_combout\,
	combout => \inst|SYNC|red_out~7_combout\);

-- Location: FF_X27_Y20_N5
\inst|SYNC|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|red_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|red_out~q\);

-- Location: LCCOMB_X27_Y20_N26
\inst|SYNC|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~1_combout\ = (\inst|bullet_Y_pos\(10)) # (\inst|bullet_on~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|bullet_Y_pos\(10),
	datad => \inst|bullet_on~3_combout\,
	combout => \inst|SYNC|green_out~1_combout\);

-- Location: LCCOMB_X23_Y20_N30
\inst|tank_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_on~0_combout\ = (\inst|SYNC|pixel_row\(2) & (((\inst|SYNC|pixel_row\(0)) # (\inst|SYNC|pixel_row\(1))) # (!\inst|SYNC|pixel_row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(2),
	datab => \inst|SYNC|pixel_row\(5),
	datac => \inst|SYNC|pixel_row\(0),
	datad => \inst|SYNC|pixel_row\(1),
	combout => \inst|tank_on~0_combout\);

-- Location: LCCOMB_X23_Y20_N2
\inst|tank_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_on~1_combout\ = (\inst|SYNC|pixel_row\(4) & (!\inst|SYNC|pixel_row\(5) & (\inst|tank_on~0_combout\ & \inst|SYNC|pixel_row\(3)))) # (!\inst|SYNC|pixel_row\(4) & (\inst|SYNC|pixel_row\(5) & ((!\inst|SYNC|pixel_row\(3)) # 
-- (!\inst|tank_on~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(4),
	datab => \inst|SYNC|pixel_row\(5),
	datac => \inst|tank_on~0_combout\,
	datad => \inst|SYNC|pixel_row\(3),
	combout => \inst|tank_on~1_combout\);

-- Location: LCCOMB_X23_Y20_N28
\inst|tank_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_on~2_combout\ = ((\inst|SYNC|pixel_row\(7)) # (!\inst|tank_on~1_combout\)) # (!\inst|SYNC|pixel_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(6),
	datab => \inst|SYNC|pixel_row\(7),
	datad => \inst|tank_on~1_combout\,
	combout => \inst|tank_on~2_combout\);

-- Location: FF_X21_Y20_N13
\inst|bullet_Y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|bullet_Y_pos[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bullet_Y_pos\(1));

-- Location: LCCOMB_X29_Y20_N6
\inst|tank_X_pos[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_pos[2]~10_cout\ = CARRY(\inst|bullet_Y_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bullet_Y_pos\(1),
	datad => VCC,
	cout => \inst|tank_X_pos[2]~10_cout\);

-- Location: LCCOMB_X29_Y20_N8
\inst|tank_X_pos[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_pos[2]~11_combout\ = (\inst|tank_X_pos\(2) & ((\inst|tank_X_motion\(2) & (\inst|tank_X_pos[2]~10_cout\ & VCC)) # (!\inst|tank_X_motion\(2) & (!\inst|tank_X_pos[2]~10_cout\)))) # (!\inst|tank_X_pos\(2) & ((\inst|tank_X_motion\(2) & 
-- (!\inst|tank_X_pos[2]~10_cout\)) # (!\inst|tank_X_motion\(2) & ((\inst|tank_X_pos[2]~10_cout\) # (GND)))))
-- \inst|tank_X_pos[2]~12\ = CARRY((\inst|tank_X_pos\(2) & (!\inst|tank_X_motion\(2) & !\inst|tank_X_pos[2]~10_cout\)) # (!\inst|tank_X_pos\(2) & ((!\inst|tank_X_pos[2]~10_cout\) # (!\inst|tank_X_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(2),
	datab => \inst|tank_X_motion\(2),
	datad => VCC,
	cin => \inst|tank_X_pos[2]~10_cout\,
	combout => \inst|tank_X_pos[2]~11_combout\,
	cout => \inst|tank_X_pos[2]~12\);

-- Location: LCCOMB_X29_Y20_N10
\inst|tank_X_pos[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_pos[3]~13_combout\ = ((\inst|tank_X_pos\(3) $ (\inst|tank_X_motion\(2) $ (!\inst|tank_X_pos[2]~12\)))) # (GND)
-- \inst|tank_X_pos[3]~14\ = CARRY((\inst|tank_X_pos\(3) & ((\inst|tank_X_motion\(2)) # (!\inst|tank_X_pos[2]~12\))) # (!\inst|tank_X_pos\(3) & (\inst|tank_X_motion\(2) & !\inst|tank_X_pos[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(3),
	datab => \inst|tank_X_motion\(2),
	datad => VCC,
	cin => \inst|tank_X_pos[2]~12\,
	combout => \inst|tank_X_pos[3]~13_combout\,
	cout => \inst|tank_X_pos[3]~14\);

-- Location: LCCOMB_X29_Y20_N12
\inst|tank_X_pos[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_pos[4]~15_combout\ = (\inst|tank_X_pos\(4) & ((\inst|tank_X_motion\(2) & (\inst|tank_X_pos[3]~14\ & VCC)) # (!\inst|tank_X_motion\(2) & (!\inst|tank_X_pos[3]~14\)))) # (!\inst|tank_X_pos\(4) & ((\inst|tank_X_motion\(2) & 
-- (!\inst|tank_X_pos[3]~14\)) # (!\inst|tank_X_motion\(2) & ((\inst|tank_X_pos[3]~14\) # (GND)))))
-- \inst|tank_X_pos[4]~16\ = CARRY((\inst|tank_X_pos\(4) & (!\inst|tank_X_motion\(2) & !\inst|tank_X_pos[3]~14\)) # (!\inst|tank_X_pos\(4) & ((!\inst|tank_X_pos[3]~14\) # (!\inst|tank_X_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(4),
	datab => \inst|tank_X_motion\(2),
	datad => VCC,
	cin => \inst|tank_X_pos[3]~14\,
	combout => \inst|tank_X_pos[4]~15_combout\,
	cout => \inst|tank_X_pos[4]~16\);

-- Location: LCCOMB_X29_Y20_N14
\inst|tank_X_pos[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_pos[5]~17_combout\ = ((\inst|tank_X_motion\(2) $ (\inst|tank_X_pos\(5) $ (!\inst|tank_X_pos[4]~16\)))) # (GND)
-- \inst|tank_X_pos[5]~18\ = CARRY((\inst|tank_X_motion\(2) & ((\inst|tank_X_pos\(5)) # (!\inst|tank_X_pos[4]~16\))) # (!\inst|tank_X_motion\(2) & (\inst|tank_X_pos\(5) & !\inst|tank_X_pos[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_motion\(2),
	datab => \inst|tank_X_pos\(5),
	datad => VCC,
	cin => \inst|tank_X_pos[4]~16\,
	combout => \inst|tank_X_pos[5]~17_combout\,
	cout => \inst|tank_X_pos[5]~18\);

-- Location: FF_X29_Y20_N15
\inst|tank_X_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|tank_X_pos[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tank_X_pos\(5));

-- Location: LCCOMB_X29_Y20_N16
\inst|tank_X_pos[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_pos[6]~19_combout\ = (\inst|tank_X_motion\(2) & ((\inst|tank_X_pos\(6) & (\inst|tank_X_pos[5]~18\ & VCC)) # (!\inst|tank_X_pos\(6) & (!\inst|tank_X_pos[5]~18\)))) # (!\inst|tank_X_motion\(2) & ((\inst|tank_X_pos\(6) & 
-- (!\inst|tank_X_pos[5]~18\)) # (!\inst|tank_X_pos\(6) & ((\inst|tank_X_pos[5]~18\) # (GND)))))
-- \inst|tank_X_pos[6]~20\ = CARRY((\inst|tank_X_motion\(2) & (!\inst|tank_X_pos\(6) & !\inst|tank_X_pos[5]~18\)) # (!\inst|tank_X_motion\(2) & ((!\inst|tank_X_pos[5]~18\) # (!\inst|tank_X_pos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_motion\(2),
	datab => \inst|tank_X_pos\(6),
	datad => VCC,
	cin => \inst|tank_X_pos[5]~18\,
	combout => \inst|tank_X_pos[6]~19_combout\,
	cout => \inst|tank_X_pos[6]~20\);

-- Location: FF_X29_Y20_N17
\inst|tank_X_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|tank_X_pos[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tank_X_pos\(6));

-- Location: LCCOMB_X29_Y20_N18
\inst|tank_X_pos[7]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_pos[7]~21_combout\ = ((\inst|tank_X_motion\(2) $ (\inst|tank_X_pos\(7) $ (!\inst|tank_X_pos[6]~20\)))) # (GND)
-- \inst|tank_X_pos[7]~22\ = CARRY((\inst|tank_X_motion\(2) & ((\inst|tank_X_pos\(7)) # (!\inst|tank_X_pos[6]~20\))) # (!\inst|tank_X_motion\(2) & (\inst|tank_X_pos\(7) & !\inst|tank_X_pos[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_motion\(2),
	datab => \inst|tank_X_pos\(7),
	datad => VCC,
	cin => \inst|tank_X_pos[6]~20\,
	combout => \inst|tank_X_pos[7]~21_combout\,
	cout => \inst|tank_X_pos[7]~22\);

-- Location: FF_X29_Y20_N19
\inst|tank_X_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|tank_X_pos[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tank_X_pos\(7));

-- Location: LCCOMB_X29_Y20_N20
\inst|tank_X_pos[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_pos[8]~23_combout\ = (\inst|tank_X_pos\(8) & ((\inst|tank_X_motion\(2) & (\inst|tank_X_pos[7]~22\ & VCC)) # (!\inst|tank_X_motion\(2) & (!\inst|tank_X_pos[7]~22\)))) # (!\inst|tank_X_pos\(8) & ((\inst|tank_X_motion\(2) & 
-- (!\inst|tank_X_pos[7]~22\)) # (!\inst|tank_X_motion\(2) & ((\inst|tank_X_pos[7]~22\) # (GND)))))
-- \inst|tank_X_pos[8]~24\ = CARRY((\inst|tank_X_pos\(8) & (!\inst|tank_X_motion\(2) & !\inst|tank_X_pos[7]~22\)) # (!\inst|tank_X_pos\(8) & ((!\inst|tank_X_pos[7]~22\) # (!\inst|tank_X_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(8),
	datab => \inst|tank_X_motion\(2),
	datad => VCC,
	cin => \inst|tank_X_pos[7]~22\,
	combout => \inst|tank_X_pos[8]~23_combout\,
	cout => \inst|tank_X_pos[8]~24\);

-- Location: FF_X29_Y20_N21
\inst|tank_X_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|tank_X_pos[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tank_X_pos\(8));

-- Location: FF_X29_Y20_N9
\inst|tank_X_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|tank_X_pos[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tank_X_pos\(2));

-- Location: FF_X29_Y20_N11
\inst|tank_X_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|tank_X_pos[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tank_X_pos\(3));

-- Location: LCCOMB_X29_Y20_N2
\inst|tank_X_motion[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_motion[2]~0_combout\ = (\inst|tank_X_pos\(9)) # ((\inst|tank_X_pos\(3) & ((\inst|tank_X_pos\(2)) # (\inst|bullet_Y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(9),
	datab => \inst|tank_X_pos\(2),
	datac => \inst|bullet_Y_pos\(1),
	datad => \inst|tank_X_pos\(3),
	combout => \inst|tank_X_motion[2]~0_combout\);

-- Location: LCCOMB_X29_Y20_N0
\inst|tank_X_motion[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_motion[2]~3_combout\ = (\inst|tank_X_motion[2]~2_combout\) # ((\inst|tank_X_pos\(8)) # ((\inst|tank_X_motion\(2) & \inst|tank_X_motion[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_motion[2]~2_combout\,
	datab => \inst|tank_X_pos\(8),
	datac => \inst|tank_X_motion\(2),
	datad => \inst|tank_X_motion[2]~0_combout\,
	combout => \inst|tank_X_motion[2]~3_combout\);

-- Location: LCCOMB_X29_Y20_N4
\inst|tank_X_motion[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_motion[2]~4_combout\ = (\inst|tank_X_pos\(10)) # ((\inst|tank_X_motion[2]~3_combout\ & ((\inst|tank_X_pos\(9)) # (\inst|tank_X_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(9),
	datab => \inst|tank_X_pos\(10),
	datac => \inst|tank_X_motion\(2),
	datad => \inst|tank_X_motion[2]~3_combout\,
	combout => \inst|tank_X_motion[2]~4_combout\);

-- Location: FF_X29_Y20_N5
\inst|tank_X_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|tank_X_motion[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tank_X_motion\(2));

-- Location: LCCOMB_X29_Y20_N22
\inst|tank_X_pos[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_pos[9]~25_combout\ = ((\inst|tank_X_pos\(9) $ (\inst|tank_X_motion\(2) $ (!\inst|tank_X_pos[8]~24\)))) # (GND)
-- \inst|tank_X_pos[9]~26\ = CARRY((\inst|tank_X_pos\(9) & ((\inst|tank_X_motion\(2)) # (!\inst|tank_X_pos[8]~24\))) # (!\inst|tank_X_pos\(9) & (\inst|tank_X_motion\(2) & !\inst|tank_X_pos[8]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(9),
	datab => \inst|tank_X_motion\(2),
	datad => VCC,
	cin => \inst|tank_X_pos[8]~24\,
	combout => \inst|tank_X_pos[9]~25_combout\,
	cout => \inst|tank_X_pos[9]~26\);

-- Location: LCCOMB_X29_Y20_N24
\inst|tank_X_pos[10]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_X_pos[10]~27_combout\ = \inst|tank_X_motion\(2) $ (\inst|tank_X_pos[9]~26\ $ (\inst|tank_X_pos\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tank_X_motion\(2),
	datad => \inst|tank_X_pos\(10),
	cin => \inst|tank_X_pos[9]~26\,
	combout => \inst|tank_X_pos[10]~27_combout\);

-- Location: FF_X29_Y20_N25
\inst|tank_X_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|tank_X_pos[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tank_X_pos\(10));

-- Location: FF_X29_Y20_N23
\inst|tank_X_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|tank_X_pos[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tank_X_pos\(9));

-- Location: LCCOMB_X30_Y20_N2
\inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|tank_X_pos\(5) & (!\inst|Add1~1\)) # (!\inst|tank_X_pos\(5) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|tank_X_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(5),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X30_Y20_N4
\inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|tank_X_pos\(6) & (\inst|Add1~3\ $ (GND))) # (!\inst|tank_X_pos\(6) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|tank_X_pos\(6) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(6),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X30_Y20_N6
\inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|tank_X_pos\(7) & (!\inst|Add1~5\)) # (!\inst|tank_X_pos\(7) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|tank_X_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tank_X_pos\(7),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X30_Y20_N8
\inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|tank_X_pos\(8) & (\inst|Add1~7\ $ (GND))) # (!\inst|tank_X_pos\(8) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|tank_X_pos\(8) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tank_X_pos\(8),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X30_Y20_N10
\inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|tank_X_pos\(9) & (!\inst|Add1~9\)) # (!\inst|tank_X_pos\(9) & ((\inst|Add1~9\) # (GND)))
-- \inst|Add1~11\ = CARRY((!\inst|Add1~9\) # (!\inst|tank_X_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tank_X_pos\(9),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X30_Y20_N12
\inst|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = \inst|tank_X_pos\(10) $ (!\inst|Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tank_X_pos\(10),
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\);

-- Location: LCCOMB_X26_Y20_N4
\inst|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_cout\ = CARRY(\inst|SYNC|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(0),
	datad => VCC,
	cout => \inst|LessThan1~1_cout\);

-- Location: LCCOMB_X26_Y20_N6
\inst|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_cout\ = CARRY((\inst|SYNC|pixel_column\(1) & (\inst|bullet_Y_pos\(1) & !\inst|LessThan1~1_cout\)) # (!\inst|SYNC|pixel_column\(1) & ((\inst|bullet_Y_pos\(1)) # (!\inst|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(1),
	datab => \inst|bullet_Y_pos\(1),
	datad => VCC,
	cin => \inst|LessThan1~1_cout\,
	cout => \inst|LessThan1~3_cout\);

-- Location: LCCOMB_X26_Y20_N8
\inst|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_cout\ = CARRY((\inst|SYNC|pixel_column\(2) & ((!\inst|LessThan1~3_cout\) # (!\inst|tank_X_pos\(2)))) # (!\inst|SYNC|pixel_column\(2) & (!\inst|tank_X_pos\(2) & !\inst|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(2),
	datab => \inst|tank_X_pos\(2),
	datad => VCC,
	cin => \inst|LessThan1~3_cout\,
	cout => \inst|LessThan1~5_cout\);

-- Location: LCCOMB_X26_Y20_N10
\inst|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~7_cout\ = CARRY((\inst|tank_X_pos\(3) & (!\inst|SYNC|pixel_column\(3) & !\inst|LessThan1~5_cout\)) # (!\inst|tank_X_pos\(3) & ((!\inst|LessThan1~5_cout\) # (!\inst|SYNC|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(3),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	cin => \inst|LessThan1~5_cout\,
	cout => \inst|LessThan1~7_cout\);

-- Location: LCCOMB_X26_Y20_N12
\inst|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~9_cout\ = CARRY((\inst|Add1~0_combout\ & (\inst|SYNC|pixel_column\(4) & !\inst|LessThan1~7_cout\)) # (!\inst|Add1~0_combout\ & ((\inst|SYNC|pixel_column\(4)) # (!\inst|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datab => \inst|SYNC|pixel_column\(4),
	datad => VCC,
	cin => \inst|LessThan1~7_cout\,
	cout => \inst|LessThan1~9_cout\);

-- Location: LCCOMB_X26_Y20_N14
\inst|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~11_cout\ = CARRY((\inst|SYNC|pixel_column\(5) & (\inst|Add1~2_combout\ & !\inst|LessThan1~9_cout\)) # (!\inst|SYNC|pixel_column\(5) & ((\inst|Add1~2_combout\) # (!\inst|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(5),
	datab => \inst|Add1~2_combout\,
	datad => VCC,
	cin => \inst|LessThan1~9_cout\,
	cout => \inst|LessThan1~11_cout\);

-- Location: LCCOMB_X26_Y20_N16
\inst|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~13_cout\ = CARRY((\inst|SYNC|pixel_column\(6) & ((!\inst|LessThan1~11_cout\) # (!\inst|Add1~4_combout\))) # (!\inst|SYNC|pixel_column\(6) & (!\inst|Add1~4_combout\ & !\inst|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|Add1~4_combout\,
	datad => VCC,
	cin => \inst|LessThan1~11_cout\,
	cout => \inst|LessThan1~13_cout\);

-- Location: LCCOMB_X26_Y20_N18
\inst|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~15_cout\ = CARRY((\inst|SYNC|pixel_column\(7) & (\inst|Add1~6_combout\ & !\inst|LessThan1~13_cout\)) # (!\inst|SYNC|pixel_column\(7) & ((\inst|Add1~6_combout\) # (!\inst|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datab => \inst|Add1~6_combout\,
	datad => VCC,
	cin => \inst|LessThan1~13_cout\,
	cout => \inst|LessThan1~15_cout\);

-- Location: LCCOMB_X26_Y20_N20
\inst|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~17_cout\ = CARRY((\inst|SYNC|pixel_column\(8) & ((!\inst|LessThan1~15_cout\) # (!\inst|Add1~8_combout\))) # (!\inst|SYNC|pixel_column\(8) & (!\inst|Add1~8_combout\ & !\inst|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst|Add1~8_combout\,
	datad => VCC,
	cin => \inst|LessThan1~15_cout\,
	cout => \inst|LessThan1~17_cout\);

-- Location: LCCOMB_X26_Y20_N22
\inst|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~18_combout\ = (\inst|SYNC|pixel_column\(9) & ((\inst|LessThan1~17_cout\) # (!\inst|Add1~10_combout\))) # (!\inst|SYNC|pixel_column\(9) & (\inst|LessThan1~17_cout\ & !\inst|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(9),
	datad => \inst|Add1~10_combout\,
	cin => \inst|LessThan1~17_cout\,
	combout => \inst|LessThan1~18_combout\);

-- Location: FF_X29_Y20_N13
\inst|tank_X_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|tank_X_pos[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tank_X_pos\(4));

-- Location: LCCOMB_X27_Y20_N2
\inst|SYNC|pixel_column[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|pixel_column[1]~feeder_combout\ = \inst|SYNC|h_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|h_count\(1),
	combout => \inst|SYNC|pixel_column[1]~feeder_combout\);

-- Location: FF_X27_Y20_N3
\inst|SYNC|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|pixel_column[1]~feeder_combout\,
	ena => \inst|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(1));

-- Location: LCCOMB_X27_Y20_N6
\inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_cout\ = CARRY((\inst|bullet_Y_pos\(1) & !\inst|SYNC|pixel_column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_Y_pos\(1),
	datab => \inst|SYNC|pixel_column\(1),
	datad => VCC,
	cout => \inst|LessThan0~1_cout\);

-- Location: LCCOMB_X27_Y20_N8
\inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_cout\ = CARRY((\inst|tank_X_pos\(2) & (\inst|SYNC|pixel_column\(2) & !\inst|LessThan0~1_cout\)) # (!\inst|tank_X_pos\(2) & ((\inst|SYNC|pixel_column\(2)) # (!\inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(2),
	datab => \inst|SYNC|pixel_column\(2),
	datad => VCC,
	cin => \inst|LessThan0~1_cout\,
	cout => \inst|LessThan0~3_cout\);

-- Location: LCCOMB_X27_Y20_N10
\inst|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_cout\ = CARRY((\inst|tank_X_pos\(3) & ((\inst|SYNC|pixel_column\(3)) # (!\inst|LessThan0~3_cout\))) # (!\inst|tank_X_pos\(3) & (\inst|SYNC|pixel_column\(3) & !\inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(3),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	cin => \inst|LessThan0~3_cout\,
	cout => \inst|LessThan0~5_cout\);

-- Location: LCCOMB_X27_Y20_N12
\inst|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_cout\ = CARRY((\inst|Add4~0_combout\ & ((!\inst|LessThan0~5_cout\) # (!\inst|tank_X_pos\(4)))) # (!\inst|Add4~0_combout\ & (!\inst|tank_X_pos\(4) & !\inst|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~0_combout\,
	datab => \inst|tank_X_pos\(4),
	datad => VCC,
	cin => \inst|LessThan0~5_cout\,
	cout => \inst|LessThan0~7_cout\);

-- Location: LCCOMB_X27_Y20_N14
\inst|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_cout\ = CARRY((\inst|tank_X_pos\(5) & ((!\inst|LessThan0~7_cout\) # (!\inst|Add4~2_combout\))) # (!\inst|tank_X_pos\(5) & (!\inst|Add4~2_combout\ & !\inst|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(5),
	datab => \inst|Add4~2_combout\,
	datad => VCC,
	cin => \inst|LessThan0~7_cout\,
	cout => \inst|LessThan0~9_cout\);

-- Location: LCCOMB_X27_Y20_N16
\inst|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_cout\ = CARRY((\inst|Add4~4_combout\ & ((!\inst|LessThan0~9_cout\) # (!\inst|tank_X_pos\(6)))) # (!\inst|Add4~4_combout\ & (!\inst|tank_X_pos\(6) & !\inst|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~4_combout\,
	datab => \inst|tank_X_pos\(6),
	datad => VCC,
	cin => \inst|LessThan0~9_cout\,
	cout => \inst|LessThan0~11_cout\);

-- Location: LCCOMB_X27_Y20_N18
\inst|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_cout\ = CARRY((\inst|Add4~6_combout\ & (\inst|tank_X_pos\(7) & !\inst|LessThan0~11_cout\)) # (!\inst|Add4~6_combout\ & ((\inst|tank_X_pos\(7)) # (!\inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~6_combout\,
	datab => \inst|tank_X_pos\(7),
	datad => VCC,
	cin => \inst|LessThan0~11_cout\,
	cout => \inst|LessThan0~13_cout\);

-- Location: LCCOMB_X27_Y20_N20
\inst|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~15_cout\ = CARRY((\inst|tank_X_pos\(8) & (\inst|Add4~8_combout\ & !\inst|LessThan0~13_cout\)) # (!\inst|tank_X_pos\(8) & ((\inst|Add4~8_combout\) # (!\inst|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(8),
	datab => \inst|Add4~8_combout\,
	datad => VCC,
	cin => \inst|LessThan0~13_cout\,
	cout => \inst|LessThan0~15_cout\);

-- Location: LCCOMB_X27_Y20_N22
\inst|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~17_cout\ = CARRY((\inst|tank_X_pos\(9) & ((!\inst|LessThan0~15_cout\) # (!\inst|Add4~10_combout\))) # (!\inst|tank_X_pos\(9) & (!\inst|Add4~10_combout\ & !\inst|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(9),
	datab => \inst|Add4~10_combout\,
	datad => VCC,
	cin => \inst|LessThan0~15_cout\,
	cout => \inst|LessThan0~17_cout\);

-- Location: LCCOMB_X27_Y20_N24
\inst|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~18_combout\ = (\inst|tank_X_pos\(10) & ((\inst|LessThan0~17_cout\) # (!\inst|Add4~12_combout\))) # (!\inst|tank_X_pos\(10) & (\inst|LessThan0~17_cout\ & !\inst|Add4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tank_X_pos\(10),
	datad => \inst|Add4~12_combout\,
	cin => \inst|LessThan0~17_cout\,
	combout => \inst|LessThan0~18_combout\);

-- Location: LCCOMB_X26_Y20_N28
\inst|tank_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tank_on~3_combout\ = (\inst|Add4~12_combout\) # ((\inst|SYNC|pixel_row\(8)) # ((\inst|LessThan1~18_combout\) # (\inst|LessThan0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~12_combout\,
	datab => \inst|SYNC|pixel_row\(8),
	datac => \inst|LessThan1~18_combout\,
	datad => \inst|LessThan0~18_combout\,
	combout => \inst|tank_on~3_combout\);

-- Location: LCCOMB_X26_Y20_N2
\inst|SYNC|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~0_combout\ = (\inst|SYNC|red_out~0_combout\ & ((\inst|tank_on~2_combout\) # ((\inst|Add1~12_combout\) # (\inst|tank_on~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|red_out~0_combout\,
	datab => \inst|tank_on~2_combout\,
	datac => \inst|Add1~12_combout\,
	datad => \inst|tank_on~3_combout\,
	combout => \inst|SYNC|green_out~0_combout\);

-- Location: LCCOMB_X26_Y20_N24
\inst|SYNC|green_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~2_combout\ = (\inst|SYNC|green_out~0_combout\ & ((\inst|bullet_on~4_combout\) # ((\inst|SYNC|green_out~1_combout\) # (\inst|bullet_on~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bullet_on~4_combout\,
	datab => \inst|SYNC|green_out~1_combout\,
	datac => \inst|bullet_on~5_combout\,
	datad => \inst|SYNC|green_out~0_combout\,
	combout => \inst|SYNC|green_out~2_combout\);

-- Location: FF_X26_Y20_N25
\inst|SYNC|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|green_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|green_out~q\);

-- Location: LCCOMB_X28_Y20_N28
\inst|SYNC|blue_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|blue_out~0_combout\ = (\inst|SYNC|red_out~6_combout\ & ((\inst|Add1~12_combout\) # ((\inst|tank_on~2_combout\) # (\inst|tank_on~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~12_combout\,
	datab => \inst|tank_on~2_combout\,
	datac => \inst|tank_on~3_combout\,
	datad => \inst|SYNC|red_out~6_combout\,
	combout => \inst|SYNC|blue_out~0_combout\);

-- Location: FF_X28_Y20_N29
\inst|SYNC|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|blue_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|blue_out~q\);

-- Location: LCCOMB_X23_Y18_N28
\inst|SYNC|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~2_combout\ = (\inst|SYNC|h_count\(4) & ((\inst|SYNC|process_0~1_combout\) # (\inst|SYNC|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|process_0~1_combout\,
	datab => \inst|SYNC|h_count\(3),
	datad => \inst|SYNC|h_count\(4),
	combout => \inst|SYNC|process_0~2_combout\);

-- Location: LCCOMB_X23_Y18_N14
\inst|SYNC|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~3_combout\ = (\inst|SYNC|process_0~0_combout\) # ((\inst|SYNC|h_count\(5) & (\inst|SYNC|h_count\(6) & \inst|SYNC|process_0~2_combout\)) # (!\inst|SYNC|h_count\(5) & (!\inst|SYNC|h_count\(6) & !\inst|SYNC|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|process_0~0_combout\,
	datab => \inst|SYNC|h_count\(5),
	datac => \inst|SYNC|h_count\(6),
	datad => \inst|SYNC|process_0~2_combout\,
	combout => \inst|SYNC|process_0~3_combout\);

-- Location: FF_X23_Y18_N15
\inst|SYNC|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|horiz_sync~q\);

-- Location: FF_X23_Y18_N29
\inst|SYNC|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	asdata => \inst|SYNC|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|horiz_sync_out~q\);

-- Location: LCCOMB_X24_Y19_N30
\inst|SYNC|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~5_combout\ = ((\inst|SYNC|v_count\(4)) # (!\inst|SYNC|v_count\(2))) # (!\inst|SYNC|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(3),
	datab => \inst|SYNC|v_count\(2),
	datac => \inst|SYNC|v_count\(4),
	combout => \inst|SYNC|process_0~5_combout\);

-- Location: LCCOMB_X24_Y19_N2
\inst|SYNC|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~4_combout\ = (\inst|SYNC|v_count\(10)) # ((\inst|SYNC|v_count\(9)) # (\inst|SYNC|v_count\(0) $ (!\inst|SYNC|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(10),
	datab => \inst|SYNC|v_count\(9),
	datac => \inst|SYNC|v_count\(0),
	datad => \inst|SYNC|v_count\(1),
	combout => \inst|SYNC|process_0~4_combout\);

-- Location: LCCOMB_X24_Y19_N0
\inst|SYNC|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~6_combout\ = ((\inst|SYNC|process_0~5_combout\) # (\inst|SYNC|process_0~4_combout\)) # (!\inst|SYNC|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|LessThan7~0_combout\,
	datac => \inst|SYNC|process_0~5_combout\,
	datad => \inst|SYNC|process_0~4_combout\,
	combout => \inst|SYNC|process_0~6_combout\);

-- Location: FF_X24_Y19_N1
\inst|SYNC|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|vert_sync~q\);

-- Location: LCCOMB_X40_Y15_N20
\inst|SYNC|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|vert_sync_out~feeder_combout\ = \inst|SYNC|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|vert_sync~q\,
	combout => \inst|SYNC|vert_sync_out~feeder_combout\);

-- Location: FF_X40_Y15_N21
\inst|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clock_25Mhz~clkctrl_outclk\,
	d => \inst|SYNC|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|vert_sync_out~q\);

-- Location: LCCOMB_X35_Y19_N8
\inst1|PACKET_CHAR1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[0]~feeder_combout\ = \inst1|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(0),
	combout => \inst1|PACKET_CHAR1[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y19_N14
\inst1|PACKET_CHAR1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[0]~1_combout\ = (!\inst1|LessThan1~0_combout\ & (\inst1|READ_CHAR~q\ & (!\inst1|PACKET_CHAR1[0]~0_combout\ & \inst1|INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~0_combout\,
	datab => \inst1|READ_CHAR~q\,
	datac => \inst1|PACKET_CHAR1[0]~0_combout\,
	datad => \inst1|INCNT[3]~0_combout\,
	combout => \inst1|PACKET_CHAR1[0]~1_combout\);

-- Location: FF_X35_Y19_N9
\inst1|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR1[0]~feeder_combout\,
	ena => \inst1|PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR1\(0));

-- Location: LCCOMB_X30_Y19_N28
\inst1|left_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|left_button~feeder_combout\ = \inst1|PACKET_CHAR1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|PACKET_CHAR1\(0),
	combout => \inst1|left_button~feeder_combout\);

-- Location: LCCOMB_X32_Y19_N22
\inst1|left_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|left_button~0_combout\ = (\inst1|READ_CHAR~q\ & (!\inst1|Equal4~0_combout\ & (!\inst1|LessThan1~0_combout\ & \inst1|INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|READ_CHAR~q\,
	datab => \inst1|Equal4~0_combout\,
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|INCNT[3]~0_combout\,
	combout => \inst1|left_button~0_combout\);

-- Location: FF_X30_Y19_N29
\inst1|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|left_button~feeder_combout\,
	ena => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|left_button~q\);

-- Location: LCCOMB_X35_Y19_N26
\inst1|PACKET_CHAR1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[1]~feeder_combout\ = \inst1|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(1),
	combout => \inst1|PACKET_CHAR1[1]~feeder_combout\);

-- Location: FF_X35_Y19_N27
\inst1|PACKET_CHAR1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR1[1]~feeder_combout\,
	ena => \inst1|PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR1\(1));

-- Location: LCCOMB_X30_Y19_N10
\inst1|right_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|right_button~feeder_combout\ = \inst1|PACKET_CHAR1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PACKET_CHAR1\(1),
	combout => \inst1|right_button~feeder_combout\);

-- Location: FF_X30_Y19_N11
\inst1|right_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|right_button~feeder_combout\,
	ena => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|right_button~q\);

-- Location: IOIBUF_X0_Y23_N15
\bt1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt1,
	o => \bt1~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\bt2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt2,
	o => \bt2~input_o\);

ww_red_out <= \red_out~output_o\;

ww_green_out <= \green_out~output_o\;

ww_blue_out <= \blue_out~output_o\;

ww_horiz_sync_out <= \horiz_sync_out~output_o\;

ww_vert_sync_out <= \vert_sync_out~output_o\;

ww_seg0_dec <= \seg0_dec~output_o\;

ww_seg1_dec <= \seg1_dec~output_o\;

mouse_data <= \mouse_data~output_o\;

mouse_clk <= \mouse_clk~output_o\;
END structure;


