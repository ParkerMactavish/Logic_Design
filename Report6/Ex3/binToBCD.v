module binToBCD(in, outA, outB);
	input [3:0]in;
	
	output[3:0]outA, outB;
	reg[3:0]outA, outB;
	
	always@(*)begin
		if(in>4'b1001)begin
			outA=1;
			outB=in-'d10;
		end
		else begin
			outA=0;
			outB=in;
		end
	end	
	
endmodule