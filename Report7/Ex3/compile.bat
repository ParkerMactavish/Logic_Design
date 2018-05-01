iverilog -o test.vpp test.v system.v timer.v 7seg.v binToBCD.v

pause

vvp test.vpp

pause

gtkwave test.vcd