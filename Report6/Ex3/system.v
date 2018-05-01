module system(clk, inA, inB, sel, SevenSegA, SevenSegB, SevenSegOne, SevenSegTen, signal);
	
	input clk;
	input[4:0] inA, inB;
	input[2:0] sel;
	
	output[6:0]SevenSegA, SevenSegB, SevenSegOne, SevenSegTen;
	output signal;
	
	wire [4:0]ALUOut0;
	wire [3:0]absValOut0, BCDOutA, BCDOutB;
	
	fourBitBCD SS0(.in(inA[3:0]), .out(SevenSegA));
	fourBitBCD SS1(.in(inB[3:0]), .out(SevenSegB));
	
	fiveBitALU ALU0(.inA(inA), .inB(inB), .sel(sel), .out(ALUOut0));
	
	absVal ABS0(.in(ALUOut0), .out(absValOut0));
	
	assign signal=ALUOut0[4];
	
	binToBCD BTB0(.in(absValOut0), .outA(BCDOutA), .outB(BCDOutB));
	
	fourBitBCD SS2(.in(BCDOutA), .out(SevenSegOne));
	fourBitBCD SS3(.in(BCDOutB), .out(SevenSegTen));

endmodule