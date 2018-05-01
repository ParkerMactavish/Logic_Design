module timer(clk, rst, minSet, secSet, set, min, sec);
	input clk, rst, set;
	input [5:0]minSet, secSet;
	
	output reg [5:0]min, sec;
	
	always@(posedge clk or posedge rst or posedge set)begin
		if(rst) {min, sec}<=12'b0;
		
		else if(set) begin
			if(minSet<6'd60&&secSet<6'd60) {min, sec}<={minSet, secSet};
			else if(minSet<6'd60) {min, sec}<={minSet, (secSet-6'd60)};
			else if(secSet<6'd60) {min, sec}<={(minSet-6'd60), secSet};
			else {min, sec}<={(minSet-6'd60), (secSet-6'd60)};
		end
		
		else begin
			if(sec==6'd59) begin
				if(min!=6'd59) {min, sec}<={(min+6'd1), 6'd0};
				else {min, sec}<=12'd0;
			end
			
			else {min, sec}<={min, (sec+6'd1)};
		end
	end
	
endmodule