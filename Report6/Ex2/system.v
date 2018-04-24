module system(clk, inA, inB, out);
	input clk;
	input[3:0]inA, inB;
	
	output[6:0]out;
	
	wire [3:0]adderOut;
	
	fourBitFullAdder FA0(.inA(inA), .inB(inB), .out(adderOut));
	
	fourBitBCD BCD0(.in(adderOut), .out(out));
	
endmodule