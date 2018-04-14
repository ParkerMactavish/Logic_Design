iverilog -o testFourBitFA.vpp semiAdder.v fullAdder.v fourBitFA.v testFourBitFA.v
vvp testFourBitFA.vpp
pause
gtkwave testFourBitFA.vcd