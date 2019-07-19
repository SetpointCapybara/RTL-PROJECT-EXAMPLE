library IEEE;
use IEEE.std_logic_1164.all;
------------------------------------------------

entity FSM is
	port
	(
		-----------------Entradas------------------
		clk			:in std_logic;
		clr			:in std_logic; --para garantir onde vai começar
		md_lt_WT		:in std_logic;
		
		-------------------Saídas------------------
		w			   :out std_logic;
		tmp0_ld 	   :out std_logic;
		tmp1_ld	 	:out std_logic;
		tmp2_ld	   :out std_logic;
		tmp3_ld		:out std_logic;
		md_ld			:out std_logic
		
	);
	end FSM;

architecture arch_FSM of FSM is
	type estado is (S0, S1, S2, S3, S4, S5, S6, S7, S8);
	signal estado_atual, proximo_estado: estado;
begin
	sequencial:
	process(clk,clr) is
		
	begin
			if (clr = '1') then
				-- Sentença sequencial assíncrona
				estado_atual <= S0;
			elsif(rising_edge(clk)) then
				-- Sentença sequencial síncrona
				estado_atual <= proximo_estado;
			end if;
	end process;
	---------------------------------------------
	combinacional:
	
	process(md_lt_WT, clr, clk) is
	begin
	--w <= '0';
	--tmp0_ld <= '0';
	--tmp1_ld <= '0';
	--tmp2_ld <= '0';
	--tmp3_ld  <= '0';
	--md_ld <= '0';
			case estado_atual is
				when S0 =>   			-- Início0
					w	<= '0';
					tmp0_ld <= '1';
					proximo_estado <= S1;
				when S1 =>				-- Início1
					tmp1_ld <= '1';
					proximo_estado <= S2;
				when S2 =>				-- Início2
					tmp2_ld <= '1';
					proximo_estado <= S3;
				when S3 =>				-- Início3
					tmp3_ld <= '1';
					proximo_estado <= S4;
				when S4 => 				-- Amostra
					tmp0_ld <= '1';
					tmp1_ld <= '1';
					tmp2_ld <= '1';
					tmp3_ld <= '1';
					if (clr = '0') then
						proximo_estado <=S5;
					else
						proximo_estado <=S8;
					end if;
				when S5 => 				-- Média
					md_ld <= '1';
					if (clr = '0') then
						proximo_estado <=S6;
					else
						proximo_estado <=S8;
					end if;
				when S6 => 				-- Comparar
					if ((clr = '0') and (md_lt_WT = '0')) then
						proximo_estado <=S7;
					elsif ((clr = '0') and (md_lt_WT = '1')) then
						w <= '0';
						proximo_estado <=S4;
					else
						proximo_estado <=S8;
					end if;
				when S7 => 				-- Alerta
					w <= '1';
					if (clr = '0') then
						proximo_estado <=S4;
					else
						proximo_estado <=S8;
					end if;
				when S8 => 				-- Clear
					--w <= '0';
					proximo_estado <=S0;
				when others => 				-- Clear
					--w <= '0';
					proximo_estado <=S0;
				end case;
		end process;
	end arch_FSM;
