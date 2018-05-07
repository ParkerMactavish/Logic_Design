module timer(clk, rst, minSet, secSet, set, min, sec);
	input clk, rst, set;
	input [5:0]minSet, secSet;
	
	output reg [5:0]min, sec;
	
	always@(posedge clk or posedge rst or posedge set)begin
		if(rst) begin min<=6'b0; sec<=6'b0;end
		
		else if(set) begin
			if(minSet<6'd60&&secSet<6'd60)begin min<=minSet;sec<=secSet;end
			else if(minSet<6'd60)begin min<=minSet;sec<=secSet-6'd60;end
			else if(secSet<6'd60)begin min<=(minSet-6'd60); sec<=secSet;end
			else begin min<=minSet-6'd60; sec<=secSet-6'd60;end
		end
		
		else begin
			if(sec==6'd59) begin
				if(min!=6'd59) begin min<=min+6'd1; sec<=6'd0; end
				else begin min<=6'b0; sec<=6'b0;end
			end
			
			else begin min<=min; sec<=sec+6'd1;end
			
		end
	end
	
endmodule