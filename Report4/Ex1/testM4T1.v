module test;
	reg [3:0]in;
	reg [1:0] sel;
	
	wire out;
	
	mux_4to1 M4T1(in, sel, out);
	
	initial begin
		for(in=4'd0; in<15; in=in+1)begin
			for(sel=2'd0; sel<3; sel=sel+1)begin
				#1;
			end
			#1 sel=sel+1;
		end
		
		for(sel=2'd0; sel<3; sel=sel+1)begin
			#1;
		end
		#1 sel=sel+1;
	end
	
	initial begin
		$monitor("in[3:0]= %b, sel=%b, out=%b", in, sel, out);
	end
	
	initial begin
		$dumpfile("testM4T1.vcd");
		$dumpvars;
	end
	
endmodule
