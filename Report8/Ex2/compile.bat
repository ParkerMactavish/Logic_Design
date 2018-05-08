iverilog -o test.vpp test.v system.v counter.v trafficLight.v freqDevider.v sevenSeg.v

pause

vvp test.vpp

pause

gtkwave test.vcd

pause