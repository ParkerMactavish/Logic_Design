module system(clk, rst, set, minSet, secSet, minTen, minOne, secTen, secOne);
	input clk, rst, set;
	input[5:0] minSet, secSet;
	
	output[6:0] minTen, minOne, secTen, secOne;
	
	wire dclk;
	wire[5:0] min, sec;
	wire[3:0] minTenBin, minOneBin, secTenBin, secOneBin;
	
	freqDevider FD(.clk(clk), .rst(rst), .dclk(dclk));
	
	timer T0(.clk(dclk), .rst(rst), .minSet(minSet), .secSet(secSet), .set(set), .min(min), .sec(sec));
	binToBCD BTBMin(.in(min), .outOne(minOneBin), .outTen(minTenBin));
	binToBCD BTBSec(.in(sec), .outOne(secOneBin), .outTen(secTenBin));
	sevenSeg minTenSS(.in(minTenBin), .out(minTen)), minOneSS(.in(minOneBin), .out(minOne)), secTenSS(.in(secTenBin), .out(secTen)), secOneSS(.in(secOneBin), .out(secOne));
	
endmodule