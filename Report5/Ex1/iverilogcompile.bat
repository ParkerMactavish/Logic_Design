iverilog -o testFourBitFA.vpp fourBitFA.v testFourBitFA.v
vvp testFourBitFA.vpp
pause
gtkwave testFourBitFA.vcd