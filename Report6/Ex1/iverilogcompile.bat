iverilog -o fourBitALUTest.vpp fourBitALUTest.v fourBitALU.v sysFourBitALU.v

vvp fourBitALUTest.vpp

pause

gtkwave fourBitALUTest.vcd

pause