module fourBitAheadAdder(inA, inB, carryIn, sum, carryOut);
	input [3:0]inA, inB;
	input carryIn;
	output [3:0]sum;
	output carryOut;
	
	s[1]=inA[1]^inB[1]^(inA[0]^inB[0]^carryIn)
	p[1]=
	g[1]=inA[1]&inB[1]
	c[1]=
	
	assign {carryOut, sum}={inA[0]^inB[0]^carryIn, 
							sum[1]=inA[1]^inB[1]^(inA[0]^inB[0]^carryIn)}

endmodule