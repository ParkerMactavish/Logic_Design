iverilog -o test.vpp 7seg.v binToBCD.v freqDevider.v sipoShifter.v system.v test.v

pause

vvp test.vpp

pause

gtkwave test.vcd