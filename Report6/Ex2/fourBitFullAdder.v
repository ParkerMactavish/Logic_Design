module fourBitFullAdder(inA, inB, out);
	input [3:0]inA, inB;
	
	output[3:0]out;
	reg [3:0]out;
	
	always@(*)begin
		out=inA+inB;
	end
	
endmodule