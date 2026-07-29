onerror {exit -code 1}
vlib work
vlog -work work TrabajoIntegrador.vo
vlog -work work REG4_ASR.01.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.REG4_ASR_vlg_vec_tst -voptargs="+acc"
vcd file -direction TrabajoIntegrador.msim.vcd
vcd add -internal REG4_ASR_vlg_vec_tst/*
vcd add -internal REG4_ASR_vlg_vec_tst/i1/*
run -all
quit -f
