library ieee;
use ieee.std_logic_1164.all;
-------------------------------------------------------

entity RegistradorCargaParalela is
	generic(
		m: integer := 8 
	);

	port(
		-----------------Entradas------------------
		i        : in std_logic_vector(m-1 downto 0);
		load     : in std_logic;
		clk     	: in std_logic;
		
		 -------------------Saída------------------
		result1	: out std_logic_vector(m-1 downto 0)
	);
end RegistradorCargaParalela;	

architecture arch_RegistradorCargaParalela of RegistradorCargaParalela is
begin
	process (clk,load)
	begin
		if (load = '1' and rising_edge(clk)) then
			result1 <= i;
		end if;
	end process;
end arch_RegistradorCargaParalela;
			
		
		
	