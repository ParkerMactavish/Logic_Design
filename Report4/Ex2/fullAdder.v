module fullAdder(in0, in1, in2, sum, carry);
	
	input in0, in1, in2;
	output sum, carry;
	
	wire carry0, carry1, sum0;
	
	semiAdder SA0(in0, in1, sum0, carry0);
	semiAdder SA1(in2, sum0, sum, carry1);
	or OR0(carry, carry0, carry1);
	
endmodule
