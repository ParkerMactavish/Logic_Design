module counter(clk, rst, out);
	input clk, rst;
	
	output reg [3:0]out=4'd0;
	
	always@(posedge clk, posedge rst)begin
		if(rst) out<=4'd0;
		else out<=out+4'd1;
	end	
endmodule