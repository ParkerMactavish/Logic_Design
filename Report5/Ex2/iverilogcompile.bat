iverilog -o fourBitALUTest.vpp fourBitALUTest.v fourBitALU.v

vvp fourBitALUTest.vpp

pause

gtkwave fourBitALUTest.vcd

pause