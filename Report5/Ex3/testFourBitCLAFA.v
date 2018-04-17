module fourBitLACTest;
	reg [3:0]inA, inB;
	reg carryIn;
	wire [3:0]sum;
	wire carryOut;
	
	fourBitAheadAdder FA0(inA, inB, carryIn, sum, carryOut);
	
	initial begin
		for(inA=0; inA<15; inA=inA+1)begin
			for(inB=0; inB<15; inB=inB+1)begin
				carryIn=0;
				#1 carryIn=1;
				#1;
			end
			carryIn=0;
			#1 carryIn=1;
			#1;
		end
		for(inB=0; inB<15; inB=inB+1)begin
				carryIn=0;
				#1 carryIn=1;
				#1;
		end
		carryIn=0;
		#1 carryIn=1;
		#1;
	end
	
	initial begin
		$monitor(" carryIn=%b, inA=%b, inB=%b, Sum=%b, CarryOut=%b", carryIn, inA, inB, sum, carryOut);
	end
	
	initial begin
		$dumpfile("testFourBitFA.vcd");
		$dumpvars;
	end
	
endmodule