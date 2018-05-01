module system(clk, rst, out);
	input clk, rst;
	
	output [6:0]out;
	
	wire dclk;
	wire [3:0]cntOut;
	
	freqDevider FD(.clk(clk), .rst(rst), .dclk(dclk));
	counter CNT(.clk(dclk), .rst(rst), .out(cntOut));
	sevenSeg SS(.in(cntOut), .out(out));
	
endmodule