module LEDMatrix(clk, rst, sel, row, col);
	input clk, rst, sel;
	
	output reg[7:0]row, col;
	
	always@(posedge clk or posedge rst)begin
		if(rst) row<=8'b00000001;
		else if(row==8'b10000000) row<=8'b00000001;
		else row=row<<1'b1;
	end
	
	always@(*)begin
		if(sel==1'b0)begin
			case(row)
				8'b00000001:col=8'b01100110;
				8'b00000010:col=8'b10011001;
				8'b00000100:col=8'b10000001;
				8'b00001000:col=8'b10000001;
				8'b00010000:col=8'b10000001;
				8'b00100000:col=8'b01000010;
				8'b01000000:col=8'b00100100;
				8'b10000000:col=8'b00011000;
			endcase
		end
		else begin
			case(row)
				8'b00000001:col=8'b01100110;
				8'b00000010:col=8'b10011001;
				8'b00000100:col=8'b10001001;
				8'b00001000:col=8'b10010001;
				8'b00010000:col=8'b10001001;
				8'b00100000:col=8'b01010010;
				8'b01000000:col=8'b00100100;
				8'b10000000:col=8'b00011000;
			endcase
		end
	end
	
endmodule