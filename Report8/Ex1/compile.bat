iverilog -o test.vpp system.v fsm.v freqDevider.v test.v

pause

vvp test.vpp

pause

gtkwave test.vcd

pause