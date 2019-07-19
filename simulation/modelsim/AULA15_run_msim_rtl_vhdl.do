transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Usuario/Desktop/SD/Aula 15/continuação/final/FSM.vhd}
vcom -93 -work work {C:/Users/Usuario/Desktop/SD/Aula 15/continuação/final/Final.vhd}
vcom -93 -work work {C:/Users/Usuario/Desktop/SD/Aula 15/continuação/final/RegistradorCargaParalela.vhd}
vcom -93 -work work {C:/Users/Usuario/Desktop/SD/Aula 15/continuação/final/datapath.vhd}

vcom -93 -work work {C:/Users/Usuario/Desktop/SD/Aula 15/continuação/final/tb_Final.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_Final

add wave *
view structure
view signals
run 500 ns
