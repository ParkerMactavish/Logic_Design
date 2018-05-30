module system(clk, rst, row, col, sel);
	input clk, rst, sel;
	
	output[7:0]row, col;
	
	wire dclk;
	
	freqDevider FD(.clk(clk), .dclk(dclk));
	LEDMatrix LM(.clk(dclk), .rst(rst), .row(row), .col(col), .sel(sel));
	
endmodule