module absVal(in, out);
	input [4:0]in;
	
	output[3:0]out;
	reg[3:0]out;
	
	always@(*)begin
		if(in[4]==1'b1)out=(~in[3:0])+1;
		else out=in[3:0];
	end
endmodule