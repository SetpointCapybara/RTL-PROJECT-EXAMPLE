LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Final is
end tb_Final;

architecture hardware of tb_Final is

component Final is
	port
	(
		clk_in		:in std_logic;
		clr_in		:in std_logic; --para garantir onde vai começar
		CT_in       :in std_logic_vector(7 downto 0);
		WT_in	      :in std_logic_vector(7 downto 0);
		w_out	   	:out std_logic
	);
end component;

signal tb_clk_in : std_logic;
signal tb_clr_in : std_logic; --para garantir onde vai começar
signal tb_CT_in  : std_logic_vector(7 downto 0);
signal tb_WT_in  : std_logic_vector(7 downto 0);
signal tb_w_out  : std_logic;


begin

	instance_Final : Final port map (clk_in=>tb_clk_in, clr_in=>tb_clr_in, CT_in=>tb_CT_in, WT_in=>tb_WT_in, w_out=>tb_w_out);

relogio: process
begin
	tb_clk_in <= '0';
	wait for 1 ns;
	tb_clk_in <= '1';
	wait for 1 ns;
	
end process relogio;

estimulo: process
begin
	tb_clr_in<='1'; tb_CT_in<="00001111"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='1'; tb_CT_in<="00010000"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='1'; tb_CT_in<="00010001"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='1'; tb_CT_in<="00010010"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='1'; tb_CT_in<="00010100"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='0'; tb_CT_in<="00011000"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='0'; tb_CT_in<="00011001"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='0'; tb_CT_in<="00011011"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='0'; tb_CT_in<="00011100"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='0'; tb_CT_in<="00011101"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='0'; tb_CT_in<="00011110"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='0'; tb_CT_in<="00011111"; tb_WT_in<="00011001";
	
	tb_clr_in<='0'; tb_CT_in<="00011110"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='0'; tb_CT_in<="00011101"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='0'; tb_CT_in<="00011100"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='0'; tb_CT_in<="00011011"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='0'; tb_CT_in<="00011001"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='0'; tb_CT_in<="00011000"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='1'; tb_CT_in<="00010100"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='1'; tb_CT_in<="00010010"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='1'; tb_CT_in<="00010001"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='1'; tb_CT_in<="00010000"; tb_WT_in<="00011001";
	wait for 13 ns;
	tb_clr_in<='1'; tb_CT_in<="00001111"; tb_WT_in<="00011001";
	wait for 13 ns;
	
end process estimulo;
end hardware;
