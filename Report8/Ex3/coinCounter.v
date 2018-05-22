module coinCounter(clk, rst, buy, insertCoin, coin);
	input clk, rst;
	input [2:0]buy;//snack, drink, candy
	input [3:0]insertCoin;//50, 10, 5, 1
	
	output reg [5:0]coin;
	
	reg [5:0]coinNext;
	
	//combinatorial component to determine the next state
	always@(*)begin
		if(buy[2]) coinNext=(coin>6'd60)?coin-6'd60:coin;
		else if(buy[1]) coinNext=(coin>6'd30)?coin-6'd30:coin;
		else if(buy[0]) coinNext=(coin>6'd15)?coin-6'd15:coin;
		else if(insertCoin[3])coinNext=(coin<=6'd13)?coin+6'd50:coin;
		else if(insertCoin[2])coinNext=(coin<=6'd53)?coin+6'd10:coin;
		else if(insertCoin[1])coinNext=(coin<=6'd58)?coin+6'd05:coin;
		else if(insertCoin[0])coinNext=(coin<=6'd62)?coin+6'd01:coin;
		else coinNext=coin;
	end
	
	
	//memory component to remember current state
	always@(posedge clk or posedge rst)begin
		if(rst)coin<=6'd0;
		else coin<=coinNext;
	end
	

endmodule