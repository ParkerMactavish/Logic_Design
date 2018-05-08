module system(clk, rst, in, out);
	input clk, rst;
	input [1:0]in;
	
	output [3:0]out;
	
	wire dclk;
	
	freqDevider FD(.clk(clk), .rst(rst), .dclk(dclk));
	fsm fsm1(.clk(clk), .rst(rst), .in(in), .out(out));	
	
endmodule