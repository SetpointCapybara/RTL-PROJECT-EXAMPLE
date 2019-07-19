library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
------------------------------------------------

entity Somador is
	port(
		-----------------Entradas------------------
		ent_c, ent_d : in std_logic_vector(15 downto 0);
		
		-------------------Saídas------------------
		soma			 : out std_logic_vector(15 downto 0)
	);
	end Somador;

architecture arch_somador of Somador is
	begin
		soma <= std_logic_vector(unsigned(ent_c) + unsigned(ent_d));

end arch_somador;