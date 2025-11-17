transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Maitreyee/Desktop/Digital_Lab/Endsem_UART/uart_tx.vhd}

vcom -93 -work work {C:/Users/Maitreyee/Desktop/Digital_Lab/Endsem_UART/uart_tx_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  uart_tx_tb

add wave *
view structure
view signals
run -all
