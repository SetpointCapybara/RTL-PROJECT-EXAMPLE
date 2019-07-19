LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
------------------------------------------------

entity Deslocador is
	port (
			-----------------Entrada------------------
			ent_e 	: in  std_logic_vector(15 downto 0);
			
			-------------------Saída------------------
			result   : out std_logic_vector(15 downto 0)
	);
end Deslocador;

architecture arch_deslocador of Deslocador is
begin
		result <= std_logic_vector(shift_right(unsigned(ent_e),2));
end arch_deslocador;