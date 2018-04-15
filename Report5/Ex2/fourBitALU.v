module fourBitALU(in0, in1, sel, out);
	input [3:0]in0, in1;
	input [2:0]sel;
	
	output[3:0]out;
	
	assign out = sel[2]?(sel[1]?(sel[0]?in0>in1:in0<<in1):(sel[0]?in0>>in1:in0^in1)):(sel[1]?(sel[0]?in0|in1:in0&in1):(sel[0]?in0-in1:in0+in1));

endmodule