iverilog -o test.vpp counter.v freqDevider.v 7seg.v system.v test.v 

pause

vvp test.vpp

pause

gtkwave test.vcd