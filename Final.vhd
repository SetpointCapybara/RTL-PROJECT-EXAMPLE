LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Final is
	port
	(
		clk_in		:in std_logic;
		clr_in		:in std_logic; --para garantir onde vai começar
		CT_in       :in std_logic_vector(7 downto 0);
		WT_in	      :in std_logic_vector(7 downto 0);
		w_out	   	:out std_logic
	);
end Final;
	

architecture arch_FINAL of Final is
	
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
	
	component datapath is
	port
	(
		clock			:in std_logic;
		tmp0_ld 	   :in std_logic;
		tmp1_ld	 	:in std_logic;
		tmp2_ld	   :in std_logic;
		tmp3_ld		:in std_logic;
		md_ld			:in std_logic;
		CT 	      :in std_logic_vector(7 downto 0);
		WT		      :in std_logic_vector(7 downto 0);
		md_lt_WT		:out std_logic
	);
	end component;	
	
   signal to_tmp0_ld    : std_logic;
	signal to_tmp1_ld    : std_logic;
	signal to_tmp2_ld    : std_logic;
	signal to_tmp3_ld    : std_logic;
	signal from_md_lt_WT : std_logic;
	signal to_md_ld      : std_logic;
	
begin 
	
	controller_connections : FSM port map (clk      => clk_in,
														clr      => clr_in, 
														md_lt_WT => from_md_lt_WT,
														w        => w_out,
														tmp0_ld  => to_tmp0_ld,
														tmp1_ld  => to_tmp1_ld,
														tmp2_ld  => to_tmp2_ld,
														tmp3_ld  => to_tmp3_ld, 
														md_ld    => to_md_ld);
														
	Datapath_connections   : datapath port map (clock    => clk_in, 
															  tmp0_ld  => to_tmp0_ld, 
															  tmp1_ld  => to_tmp1_ld,
															  tmp2_ld  => to_tmp2_ld, 
															  tmp3_ld  => to_tmp3_ld, 
															  md_ld    => to_md_ld,
															  CT       => CT_in, 
															  WT       => WT_in, 
															  md_lt_WT => from_md_lt_WT);

	
end arch_FINAL;

