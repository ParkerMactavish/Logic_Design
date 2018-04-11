module test;
	reg [3:0]in;
	reg [1:0] sel;
	
	wire out;
	
	mux_4to1 M4T1(in, sel, out);
	
	initial begin
		for(sel=2'd0; sel<3; sel=sel+1) begin
			for(in=2'd0; in<15; in=in+1) begin
				#1;
			end
			#1 in=in+1;
		end
		
		for(in=2'd0; in<15; in=in+1) begin
				#1 ;
		end
	end
	
	initial begin
		$monitor($time, "in= %d, sel=%d, in0=%b, in1=%b, in2=%b, in3=%b, out=%b", in, sel, in[0], in[1], in[2], in[3], out);
	end
	
	initial begin
		$dumpfile("Test.vcd");
		$dumpvars;
	end
	
endmodule
