transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Usuario/Desktop/SD/Aula 15/continua��o/final/FSM.vhd}
vcom -93 -work work {C:/Users/Usuario/Desktop/SD/Aula 15/continua��o/final/Final.vhd}
vcom -93 -work work {C:/Users/Usuario/Desktop/SD/Aula 15/continua��o/final/RegistradorCargaParalela.vhd}
vcom -93 -work work {C:/Users/Usuario/Desktop/SD/Aula 15/continua��o/final/datapath.vhd}

vcom -93 -work work {C:/Users/Usuario/Desktop/SD/Aula 15/continua��o/final/tb_Final.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_Final

add wave *
view structure
view signals
run 500 ns