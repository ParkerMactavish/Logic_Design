module fourBitAheadAdder(inA, inB, carryIn, sum, carryOut);
	input [3:0]inA, inB;
	input carryIn;
	output [3:0]sum;
	output carryOut;
	
	assign {carryOut, sum}={((inA[3]&inB[3])|(inA[3]^inB[3])&((inA[2]&inB[2])|((inA[2]^inB[2])&((inA[1]&inB[1])|((inA[1]^inB[1])&((inA[0]&inB[0])|((inA[0]^inB[0])&carryIn)))))))
							, inA[3]^inB[3]^((inA[2]&inB[2])|((inA[2]^inB[2])&((inA[1]&inB[1])|((inA[1]^inB[1])&((inA[0]&inB[0])|((inA[0]^inB[0])&carryIn))))))
							, inA[2]^inB[2]^((inA[1]&inB[1])|((inA[1]^inB[1])&((inA[0]&inB[0])|((inA[0]^inB[0])&carryIn))))
							, inA[1]^inB[1]^((inA[0]&inB[0])|((inA[0]^inB[0])&carryIn))
							, inA[0]^inB[0]^carryIn};

endmodule