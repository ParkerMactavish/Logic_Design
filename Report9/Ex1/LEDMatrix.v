module LEDMatrix(clk, rst, row, col);
	input clk, rst;
	
	output reg[7:0]row, col;
	
	always@(posedge clk or posedge rst)begin
		if(rst) row<=8'b00000001;
		else if(row==8'b10000000) row<=8'b00000001;
		else row<=row<<1'b1;
	end
	
	always@(*)begin
		case(row)
			8'b00000001:col=8'b00011000;
			8'b00000010:col=8'b00100100;
			8'b00000100:col=8'b01000010;
			8'b00001000:col=8'b11011011;
			8'b00010000:col=8'b01011010;
			8'b00100000:col=8'b01000010;
			8'b01000000:col=8'b01000010;
			8'b10000000:col=8'b01111110;
		endcase
	end
	
endmodule