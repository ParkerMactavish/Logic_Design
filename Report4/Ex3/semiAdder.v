module semiAdder(in0, in1, sum, carry);
	input in0, in1;
	output sum, carry;
	
	xor XOR0(sum, in0, in1);
	and AND0(carry, in0, in1);

endmodule
