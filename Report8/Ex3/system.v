module system(clk, rst, buy, insert, LEDout, Ten, One);
	input clk, rst;
	input [2:0]buy;
	input [3:0]insert;
	
	output [2:0]LEDout;
	output [6:0]Ten, One;
	
	wire dclk;
	wire [5:0]coin;
	wire [3:0]SStenIn, SSoneIn;
	
	freqDevider FD(.clk(clk), .rst(rst), .dclk(dclk));
	vendingMachine VM(.clk(clk), .rst(rst), .coin(coin), .LEDout(LEDout));
	coinCounter CC(.clk(clk), .rst(rst), .buy(buy), .insertCoin(insert), .coin(coin));
	binToBCD BTB(.in(coin), .outOne(SSoneIn), .outTen(SStenIn));
	sevenSeg SSTen(.in(SStenIn), .out(Ten));
	sevenSeg SSOne(.in(SSoneIn), .out(One));
	
endmodule