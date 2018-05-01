module system(clk, rst, outLED, outOne, outTen);
	input clk, rst;
	
	output [5:0]outLED;
	output [6:0]outOne, outTen;
	
	wire dclk;
	wire [5:0]SIPOout;
	wire [3:0]BCDoutTen, BCDoutOne;
	wire [6:0]SSOne, SSTen;
	
	freqDevider FD(.clk(clk), .rst(rst), .dclk(dclk));
	sipoShifter SIPO(.clk(dclk), .rst(rst), .in(outLED[5]), .out(outLED));	
	binToBCD BTB(.in(SIPOout), .outOne(BCDoutOne), .outTen(BCDoutTen));
	sevenSeg SS0(.in(BCDoutOne), .out(outOne));
	sevenSeg SS1(.in(BCDoutTen), .out(outTen));
	
	assign SIPOout=outLED;
	
endmodule