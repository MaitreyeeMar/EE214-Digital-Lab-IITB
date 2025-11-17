transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Maitreyee/Desktop/Digital_Lab/pascal_triangle/pascal_triangle.vhd}

vcom -93 -work work {C:/Users/Maitreyee/Desktop/Digital_Lab/pascal_triangle/tb_pascal_triangle.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_pascal_triangle

add wave *
view structure
view signals
run -all
