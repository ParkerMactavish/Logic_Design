module fourBitFA(INa, INb, CarryIn, Sum, CarryOut);
	
	input [3:0]INa;
	input [3:0]INb;
	input CarryIn;
	output [3:0]Sum;
	output CarryOut;
	
	wire FA_out[0:2];
	
	fullAdder FA0(CarryIn, INa[0], INb[0], Sum[0], FA_out[0]);
	fullAdder FA1(FA_out[0], INa[1], INb[1], Sum[1], FA_out[1]);
	fullAdder FA2(FA_out[1], INa[2], INb[2], Sum[2], FA_out[2]);
	fullAdder FA3(FA_out[2], INa[3], INb[3], Sum[3], CarryOut);
	
endmodule
