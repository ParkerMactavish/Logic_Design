module trafficLightCounter(clk, rst, count);
	input clk, rst;
	
	output reg [2:0]count;
	
	reg[2:0] countNext;
				
	//combinatorial component to determine the next state
	always@(*)begin
		if(count==3'd1) countNext=3'd5;
		else countNext=count-3'd1;
	end
	
	//memory component to remember the current state
	always@(posedge clk or posedge rst)begin
		if(rst) count<=3'd5;
		else	count<=countNext;
	end
	
endmodule