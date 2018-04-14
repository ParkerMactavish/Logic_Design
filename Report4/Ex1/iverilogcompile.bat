iverilog -o testM4T1.vpp mux2to1.v mux4to1.v testM4T1.v
vvp testM4T1.vpp
pause
gtkwave testM4T1.vcd