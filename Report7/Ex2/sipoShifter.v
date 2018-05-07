module sipoShifter(clk, rst, in, out);
	input in, clk, rst;
	
	output reg [5:0]out;	
	
	always@(posedge rst or posedge clk)begin
		if(rst) out<=6'b000001;
		else begin
			out<=out<<1;
			out[0]<=in;
		end
	end
	
endmodule