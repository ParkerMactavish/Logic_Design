module system(clk, rst, LEDOut0, LEDOut1, sevenSegOut0, sevenSegOut1, matrixRow0, matrixCol0, matrixRow1, matrixCol1);
	input clk, rst;
	
	output	[2:0]LEDOut0, LEDOut1;
	output	[6:0]sevenSegOut0, sevenSegOut1;
	output	[7:0]matrixRow0, matrixCol0, matrixRow1, matrixCol1;
	
	wire dclk1, dclk1000, pattern0, pattern1, count0, count1, sel0, sel1;
	
	freqDevider1 FD1(.clk(clk), .rst(rst), .dclk(dclk1));
	
	freqDevider1000 FD1000(.clk(clk), .rst(rst), .dclk(dclk1000));
	
	
	trafficLight TL0(.clk(dclk1), .rst(rst), .rstType(1'b0), .count(count0), .lightOut(LEDOut0), .patternOut(pattern0));	
	trafficLight TL1(.clk(dclk1), .rst(rst), .rstType(1'b1), .count(count1), .lightOut(LEDOut1), .patternOut(pattern1));
	
	trafficLightCounter TLC0(.clk(dclk1), .rst(rst), .count(count0));	
	trafficLightCounter TLC1(.clk(dclk1), .rst(rst), .count(count1));
	
	
	sevenSeg SS0(.in(count0), .out(sevenSegOut0));	
	sevenSeg SS1(.in(count1), .out(sevenSegOut1));
	
	
	matrixCounter MC0(.clk(dclk1000), .rst(rst), .out(sel0));
	matrixCounter MC1(.clk(dclk1000), .rst(rst), .out(sel1));
	
	
	LEDMatrix LM0(.clk(dclk1000), .rst(rst), .sel(sel0), .pattern(pattern0), .row(matrixRow0), .col(matrixCol0));
	LEDMatrix LM1(.clk(dclk1000), .rst(rst), .sel(sel1), .pattern(pattern1), .row(matrixRow1), .col(matrixCol1));
	
endmodule