iverilog -o test.vpp test.v system.v coinCounter.v vendingMachine.v binToBCD.v freqDevider.v sevenSeg.v

pause

vvp test.vpp

pause

gtkwave test.vcd

pause