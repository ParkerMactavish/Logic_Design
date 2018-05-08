module vendingMachine(clk, rst, coin, LEDout);
	input clk, rst;
	input [5:0]coin;
	
	output reg[2:0]LEDout;
	
	reg [1:0]stateNow, stateNext;

	parameter	LEDinsert=3'd0,
				LEDcandy =3'd1,
				LEDdrink =3'd3, 
				LEDsnack =3'd7,
				insert   =2'd0,
				candy    =2'd1, 
				drink    =2'd2,
				snack    =2'd3;
				
	//combinatorial component to determine the next state
	always@(*)begin
		if(coin>=6'd0&&coin<6'd15) stateNext=insert;
		else if(coin>=6'd15&&coin<6'd30) stateNext=candy;
		else if(coin>=6'd30&&coin<6'd60) stateNext=drink;
		else if(coin>=6'd60&&coin<=6'd63) stateNext=snack;
		else stateNext=2'b00;
	end
	
	
	//memory component to remember the current state
	always@(posedge clk or posedge rst)begin
		if(rst) stateNow<=insert;
		else stateNow<=stateNext;
	end
	
	
	//combinatorial component to determine the output
	always@(*)begin
		case(stateNow)
			insert: LEDout=LEDinsert;
			candy:  LEDout=LEDcandy;
			drink:  LEDout=LEDdrink;
			snack:  LEDout=LEDsnack;
		endcase
	end	
				
endmodule