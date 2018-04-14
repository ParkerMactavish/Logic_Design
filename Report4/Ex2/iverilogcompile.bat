iverilog -o testFullAdder.vpp testFullAdder.v fullAdder.v semiAdder.v
vvp testFullAdder.vpp
pause
gtkwave testFullAdder.vcd