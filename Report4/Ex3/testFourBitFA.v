module testFourBitFA;

	reg [0:3] INa;
	reg [0:3] INb;
	reg CarryIn;

	wire [0:3] Sum;
	wire CarryOut;

	fourBitFA fourBitFA0 (.INa(INa),.INb(INb),.CarryIn(CarryIn),.Sum(Sum),.CarryOut(CarryOut));

	initial begin
		for(INa=0; INa<15; INa=INa+1)begin
			for(INb=0; INb<15; INb=INb+1)begin
				CarryIn=0;
				#1 CarryIn=1;
				#1;
			end
			CarryIn=0;
			#1 CarryIn=1;
			#1;
		end
		for(INb=0; INb<15; INb=INb+1)begin
				CarryIn=0;
				#1 CarryIn=1;
				#1;
		end
		CarryIn=0;
		#1 CarryIn=1;
		#1;
	end
	
	initial begin
		$monitor(" CarryIn=%b, INa=%b, INb=%b, Sum=%b, CarryOut=%b", CarryIn, INa, INb, Sum, CarryOut);
	end
	
	initial begin
		$dumpfile("testFourBitFA.vcd");
		$dumpvars;
	end
      
endmodule

