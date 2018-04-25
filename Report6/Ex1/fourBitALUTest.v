module fourBitALUTest;
	reg [3:0]in0, in1;
	reg [2:0]sel;
	
	integer i;
	
	wire[3:0]out;
	
	system ALU0(.sel(sel), .inA(in0), .inB(in1), .out(out));
	
	initial begin
		in0=4'b1100;
		in1=4'b0001;
		sel=3'd0;
		for(i=5'd0; i<7; i=i+1)begin
			#1 sel=sel+1;
		end
		#1;
		in0=4'b0001;
		in1=4'b1101;
		sel=3'd0;
		for(i=5'd0; i<7; i=i+1)begin
			#1 sel=sel+1;
		end
	end
	
	initial begin
		$monitor("in0=%b, in1=%b, out=%b, sel=%b", in0, in1, out, sel);
	end
	
	initial begin
		$dumpfile("fourBitALUTest.vcd");
		$dumpvars;	
	end
	
endmodule