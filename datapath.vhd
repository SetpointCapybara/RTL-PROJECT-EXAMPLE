LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath is
	port
	(
		clock  		:in std_logic;
		tmp0_ld 	   :in std_logic;
		tmp1_ld	 	:in std_logic;
		tmp2_ld	   :in std_logic;
		tmp3_ld		:in std_logic;
		md_ld			:in std_logic;
		CT 	      :in std_logic_vector(7 downto 0);
		WT		      :in std_logic_vector(7 downto 0);
		md_lt_WT		:out std_logic
	);
end datapath;

architecture hardware of datapath is
	component RegistradorCargaParalela is
	generic(
		m: integer := 8 
	);

	port(
		i       : in std_logic_vector(m-1 downto 0);
		load    : in std_logic;
		clk     : in std_logic;
		result1 : out std_logic_vector(m-1 downto 0)
	);
	end component;
	
	signal zero_to_one  : std_logic_vector(7 downto 0);
	signal one_to_two   : std_logic_vector(7 downto 0);
	signal two_to_three : std_logic_vector(7 downto 0);
	signal four_to_end  : std_logic_vector(7 downto 0);
	signal sum_of_temp  : std_logic_vector(7 downto 0);
	signal average      : std_logic_vector(7 downto 0);
	signal result       : std_logic_vector(7 downto 0);
	
begin
	
	register_tmp0 : RegistradorCargaParalela port map(i=>CT, load=>tmp0_ld, clk=>clock, result1=>zero_to_one);
	register_tmp1 : RegistradorCargaParalela port map(i=>zero_to_one, load=>tmp1_ld, clk=>clock, result1=>one_to_two); 
	register_tmp2 : RegistradorCargaParalela port map(i=>one_to_two, load=>tmp2_ld, clk=>clock, result1=>two_to_three); 
	register_tmp3 : RegistradorCargaParalela port map(i=>two_to_three, load=>tmp3_ld, clk=>clock, result1=>four_to_end); 
	
	sum_of_temp <= std_logic_vector(unsigned(zero_to_one) + unsigned(one_to_two) + unsigned(two_to_three)  + unsigned(four_to_end));
	
	average<=("00" & sum_of_temp(7 downto 2));
	
	register_md : RegistradorCargaParalela port map(i=>average, load=>md_ld, clk=>clock, result1=>result);
	
	
	md_lt_WT <= '0' when (result > WT) else
					'1';
end hardware;