module system(clk, sel, inA, inB, out);
	input clk;
	input[2:0]sel;
	input[3:0]inA, inB;
	output[3:0]out;
	
	fourBitALU ALU0(.inA(inA), .inB(inB), .sel(sel), .out(out));
	
endmodule