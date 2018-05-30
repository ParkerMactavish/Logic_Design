module system(clk, rst, row, col);
	input clk, rst;
	
	output[7:0]row, col;
	
	wire dclk;
	wire[1:0]sel;
	
	freqDevider FD(.clk(clk), .dclk(dclk));
	counter CNT(.clk(dclk), .rst(rst), .out(sel));
	LEDMatrix LM(.clk(dclk), .rst(rst), .row(row), .col(col), .sel(sel));
	
endmodule