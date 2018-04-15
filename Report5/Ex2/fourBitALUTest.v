module fourBitALUTest;
	reg [3:0]in0, in1;
	reg [2:0]sel;
	reg [4:0]i;
	
	wire[3:0]out;
	
	fourBitALU ALU0(in0, in1, sel, out);
	
	initial begin
		in0=4'b1100;
		in1=4'b0001;
		sel=3'd0;
		for(i=5'd0; i<7; i=i+1)begin
			#1 sel=sel+1;
		end
	end
	
	initial begin
		$monitor("in0=%b, in1=%b, out=%b, sel=%b", in0, in1, out, sel);
	end
	
endmodule