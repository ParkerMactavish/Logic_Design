module FullAdder(in, sum, carry);
	
	input [2:0]in;
	output sum, carry;
	
	wire carry0, carry1, sum0;
	
	SemiAdder SA0(in[0], in[1], sum0, carry0);
	SemiAdder SA1(in[2], sum0, sum, carry1);
	assign carry=carry0+carry1;
	
endmodule
