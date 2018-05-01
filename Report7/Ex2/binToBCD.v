module binToBCD(in, outOne, outTen);
	input [5:0]in;
	output reg [3:0]outTen, outOne;
	
	always@(*)begin
		outTen<=in/10;
		outOne<=in%10;
	end

endmodule