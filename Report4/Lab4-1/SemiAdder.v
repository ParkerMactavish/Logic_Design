module SemiAdder(in0, in1, sum, carry);
	input in0, in1;
	output sum, carry;
	
	assign sum=in0^in1;
	assign carry=in0*in1;

endmodule
