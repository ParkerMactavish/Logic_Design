module trafficLight(clk, rst, rstType, count, lightOut, patternOut);
	input clk, rst, rstType;
	input [2:0] count;	
	
	output reg [2:0]lightOut;
	output reg patternOut;
	
	reg [1:0]stateNow, stateNext;
	
	parameter	greenOut 	=3'd1,
				yellowOut	=3'd2,
				redOut   	=3'd4,
				green    	=2'd0,
				yellow   	=2'd1,
				red      	=2'd2;
				walkMan		=1'b0;
				stopMan		=1'b1;
	
	//combinatorial component to determine the next state
	always@(*)begin
		case(stateNow)
			green:	stateNext=(count==3'd2)?yellow:green;
			yellow:	stateNext=(count==3'd1)?red:yellow;
			red:	stateNext=(count==3'd1)?green:red;
		endcase
	end
	
	//memory component to remember the current state
	always@(posedge clk or posedge rst)begin
		if(rst)begin
			if(rstType==1'b0)stateNow<=red;
			else stateNow<=green;
		end
		else	stateNow<=stateNext;
	end
	
	//combinatorial component to determine the output
	always@(*)begin
		case(stateNow)
			green:	begin lightOut=greenOut;	patternOut=walkMan;end
			yellow:	begin lightOut=yellowOut;	patternOut=walkMan;end
			red:	begin lightOut=redOut;		patternOut=stopMan;end
		endcase
	end
	
endmodule