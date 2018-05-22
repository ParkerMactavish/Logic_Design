iverilog -o test.vpp system.v LEDMatrix.v freqDevider.v counter.v test.v

pause

vvp test.vpp

pause

gtkwave test.vcd

pause