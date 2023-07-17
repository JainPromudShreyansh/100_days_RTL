vsim up_down_tb.v
vlog tb
add wave -position insterpoint sim:/dut/*
run -all
