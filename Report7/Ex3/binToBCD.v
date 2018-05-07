module binToBCD(in, outOne, outTen);
	input [5:0]in;
	output reg [3:0]outTen, outOne;
	
	always@(*)begin
		outTen<=in/4'd10;
		outOne<=in%4'd10;
	end

endmodule