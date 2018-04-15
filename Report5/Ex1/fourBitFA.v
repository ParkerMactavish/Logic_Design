module fourBitFA(inA, inB, carryIn, sum, carryOut);
	input [3:0]inA, inB;
	input carryIn;
	output [3:0]sum;
	output carryOut;
	
	assign {carryOut, sum}=inA+inB+carryIn;

endmodule