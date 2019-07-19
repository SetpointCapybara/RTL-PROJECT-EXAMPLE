LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_FSM is
end tb_FSM;

architecture hardware of tb_FSM is

component FSM is
port
	(
		clk			:in std_logic;
		clr			:in std_logic; --para garantir onde vai começar
		md_lt_WT		:in std_logic;
		w			   :out std_logic;
		tmp0_ld 	   :out std_logic;
		tmp1_ld	 	:out std_logic;
		tmp2_ld	   :out std_logic;
		tmp3_ld		:out std_logic;
		md_ld			:out std_logic
		
	);
	end component;
	
signal tb_clk		 : std_logic;
signal tb_clr		 : std_logic; --para garantir onde vai começar
signal tb_md_lt_WT : std_logic;
signal tb_w			 : std_logic;
signal tb_tmp0_ld  : std_logic;
signal tb_tmp1_ld	 : std_logic;
signal tb_tmp2_ld	 : std_logic;
signal tb_tmp3_ld	 : std_logic;
signal tb_md_ld	 : std_logic;

begin

	instance_FSM : FSM port map (		clk=>tb_clk,
		clr=>tb_clr,
		md_lt_WT=>tb_md_lt_WT,
		w			 => tb_w  ,
		tmp0_ld 	=> tb_tmp0_ld,
		tmp1_ld	 => tb_tmp1_ld,
		tmp2_ld	  => tb_tmp2_ld,
		tmp3_ld		=> tb_tmp3_ld,
		md_ld		=> tb_md_ld	);

relogio: process
begin
	tb_clk <= '0';
	wait for 1 ns;
	tb_clk <= '1';
	wait for 1 ns;
end process relogio;

estimulo: process
begin
		tb_clr<='1'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='1'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='0';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='1';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='1';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='1';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='1';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='1';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='1';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='1';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='1';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='1';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='1';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='1';
	wait for 13 ns;
		tb_clr<='0'; tb_md_lt_WT<='1';
	wait for 13 ns;


	
end process estimulo;
end hardware;
