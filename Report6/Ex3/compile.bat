iverilog -o testSystem.vpp absVal.v binToBCD.v fiveBitALU.v fourBitBCD.v system.v testSystem.v

vvp testSystem.vpp

pause

gtkwave testSystem.vcd

pause