module matrixCounter(clk, rst, out);
	input clk, rst;
	
	output [1:0]out;
	
	reg [9:0]cnt;
	
	assign out=cnt[9:8];
	
	always@(posedge clk or posedge rst)begin
		if(rst) cnt<=10'd0;
		else cnt<=cnt+1'b1;
	end
endmodule