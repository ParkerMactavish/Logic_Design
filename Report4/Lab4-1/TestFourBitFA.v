module TestFourBitFA;

	// Inputs
	reg [0:3] INa;
	reg [0:3] INb;
	reg CarryIn;

	// Outputs
	wire [0:3] Sum;
	wire CarryOut;

	// Instantiate the Unit Under Test (UUT)
	four_bit_FA uut (
		.INa(INa), 
		.INb(INb), 
		.CarryIn(CarryIn), 
		.Sum(Sum), 
		.CarryOut(CarryOut)
	);

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
		$monitor($time, " CarryIn=%b, INa=%d, INb=%d, Sum=%d, CarryOut=%b", CarryIn, INa, INb, Sum, CarryOut);
	end
      
endmodule

