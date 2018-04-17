iverilog -o testFourBitCLAFA.vpp fourBitCLAFA.v testFourBitCLAFA.v
vvp testFourBitCLAFA.vpp
pause
gtkwave testFourBitFA.vcd