module mux_4to1(in, sel, out);
	
	input [3:0]in;
	input [1:0]sel;
	output out;
	
	wire M2T1_out[0:1];
	
	mux_2to1 M2T1_0(in[0], in[1], sel[0], M2T1_out[0]);
	mux_2to1 M2T1_1(in[2], in[3], sel[0], M2T1_out[1]);
	mux_2to1 M2T1_2(M2T1_out[0], M2T1_out[1], sel[1], out);
	

endmodule
