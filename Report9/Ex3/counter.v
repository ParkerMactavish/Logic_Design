module counter(clk, rst, out);
	input clk, rst;
	
	output reg [1:0]out;
	
	reg [7:0]cnt;
	
	always@(posedge clk or posedge rst)begin
		if(rst)begin
			out<=2'b00;
			cnt<=8'd0;
		end
		else if(cnt==8'b10000000)begin
			cnt<=8'd0;
			out<=out+1'b1;
		end
		else cnt<=cnt+1'b1;
	end
endmodule