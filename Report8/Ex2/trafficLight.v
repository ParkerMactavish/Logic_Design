module trafficLight(clk, rst, count, stateNow, stateNext, out);
	input clk, rst;
	input [2:0] count;
	
	output reg [1:0]stateNow, stateNext;
	output reg [2:0]out;
	
	parameter	greenOut =3'd1,
				yellowOut=3'd2,
				redOut   =3'd4,
				green    =2'd0,
				yellow   =2'd1,
				red      =2'd2;
	
	//combinatorial component to determine the next state
	always@(*)begin
		case(stateNow)
			green:	stateNext=(count==3'd4)?yellow:green;
			yellow:	stateNext=(count==3'd1)?red:yellow;
			red:	stateNext=(count==3'd5)?green:red;
		endcase
	end
	
	//memory component to remember the current state
	always@(posedge clk or posedge rst)begin
		if(rst) stateNow<=red;
		else	stateNow<=stateNext;
	end
	
	//combinatorial component to determine the output
	always@(*)begin
		case(stateNow)
			green:out=greenOut;
			yellow:out=yellowOut;
			red:out=redOut;
		endcase
	end
	
endmodule