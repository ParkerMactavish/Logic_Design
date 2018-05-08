module fsm(clk, rst, in, out);
	input clk, rst;
	input [1:0] in;
	output reg [3:0] out;
	
	reg [1:0] stateNow, stateNext;
	
	parameter 	stateA=2'd0,
				stateB=2'd1, 
				stateC=2'd2, 
				stateD=2'd3;
	
	//combinatorial component to determine the next state
	always@(*)begin
		case(stateNow)
			stateA: stateNext =	(in==2'd0)?stateB:
								(in==2'd1)?stateB:
								(in==2'd2)?stateD:
								stateD;
								
			stateB: stateNext =	(in==2'd0)?stateD:
								(in==2'd1)?stateC:
								(in==2'd2)?stateA:
								stateC;
								
			stateC: stateNext =	(in==2'd0)?stateA:
								(in==2'd1)?stateD:
								(in==2'd2)?stateB:
								stateA;
								
			stateD: stateNext =	(in==2'd0)?stateC:
								(in==2'd1)?stateA:
								(in==2'd2)?stateC:
								stateB;
		
		endcase
	end
	
	
	//memory component to remember the current state
	always@(posedge clk or posedge rst)begin
		if(rst)stateNow<=stateA;
		else stateNow<=stateNext;
	end
	
	
	//combinatorial component to out put the current state
	always@(*)begin
		case(stateNow)
			stateA: out=4'b0001;
			stateB: out=4'b0010;
			stateC: out=4'b0100;
			stateD: out=4'b1000;
			default:out=4'b0000;
		endcase
	end	

endmodule