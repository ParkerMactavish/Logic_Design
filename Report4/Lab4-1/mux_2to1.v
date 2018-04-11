module mux_2to1(in0, in1, sel, out);

	input in0, in1, sel;
	output out;

	wire Not_Out0, And_Out0, And_Out1;//Not_Out0 is the ~sel, And_Out0 is ~sel*in0, And_Out1 is sel*in1

	not NOT0(Not_Out0, sel);
	and AND0(And_Out0, in0, Not_Out0);
	and AND1(And_Out1, in1, sel);
	or	 OR0(out, And_Out0, And_Out1);

endmodule