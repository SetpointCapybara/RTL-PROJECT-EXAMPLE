library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
------------------------------------------------

entity BancoRegistradores is
    generic (
        n      	:       integer := 4
    );
    port (
        -----------------Entradas------------------
		  clk     	: in    std_logic;
        clr			: in    std_logic;
        input  	: in    std_logic_vector(n - 1 downto 0);
		  
		  -------------------Saídas------------------
        output 	: out   std_logic_vector(n - 1 downto 0)
    );
end BancoRegistradores;

architecture arch_BancoRegistradores of BancoRegistradores is
signal undivided : std_logic_vector(n - 1 downto 0);
begin
    process(clk, clr) is
        variable var1 : unsigned(n - 1 downto 0);
        variable var2 : unsigned(n - 1 downto 0);
        variable var3 : unsigned(n - 1 downto 0);
        variable var4 : unsigned(n - 1 downto 0);
    begin
        if (clr = '1') then
            var1 := to_unsigned(0,n);
            var2 := to_unsigned(0,n);
            var3 := to_unsigned(0,n);
            var4 := to_unsigned(0,n);
        elsif (rising_edge(clk)) then
				var4 := var3;
				var3 := var2;
				var2 := var1;
            var1 := unsigned(input(n-1 downto 0));
        end if;
 
		  undivided<=std_logic_vector(var1 + var2 + var3 + var4);
		  output<=("00" & undivided(n-1 downto 2));
		  
    end process;
    
end arch_BancoRegistradores;