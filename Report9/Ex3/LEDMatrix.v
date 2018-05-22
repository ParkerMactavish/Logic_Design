module LEDMatrix(clk, rst, sel, row, col);
	input clk, rst;
	input [1:0]sel;
	
	output reg[7:0]row, col;
	
	always@(posedge clk or posedge rst)begin
		if(rst) row<=8'b00000001;
		else if(row==8'b10000000) row<=8'b00000001;
		else row=row<<1'b1;
	end
	
	always@(*)begin
		case(sel)
			2'b00:begin
				case(row)
					8'b00000001:col=8'b00111000;
					8'b00000010:col=8'b00111000;
					8'b00000100:col=8'b10010000;
					8'b00001000:col=8'b01111110;
					8'b00010000:col=8'b00010000;
					8'b00100000:col=8'b00110100;
					8'b01000000:col=8'b01001000;
					8'b10000000:col=8'b10000000;
				endcase
			end
			2'b01:begin
				case(row)
					8'b00000001:col=8'b00111000;
					8'b00000010:col=8'b00111000;
					8'b00000100:col=8'b01010000;
					8'b00001000:col=8'b00111100;
					8'b00010000:col=8'b00010010;
					8'b00100000:col=8'b00110000;
					8'b01000000:col=8'b01001100;
					8'b10000000:col=8'b01000000;
				endcase
			end
			2'b10:begin
				case(row)
					8'b00000001:col=8'b00111000;
					8'b00000010:col=8'b00111000;
					8'b00000100:col=8'b00010000;
					8'b00001000:col=8'b01011000;
					8'b00010000:col=8'b00110100;
					8'b00100000:col=8'b00010000;
					8'b01000000:col=8'b00101000;
					8'b10000000:col=8'b00100100;
				endcase
			end
			2'b11:begin
				case(row)
					8'b00000001:col=8'b00111000;
					8'b00000010:col=8'b00111000;
					8'b00000100:col=8'b01010000;
					8'b00001000:col=8'b00111100;
					8'b00010000:col=8'b00010010;
					8'b00100000:col=8'b00110000;
					8'b01000000:col=8'b01001100;
					8'b10000000:col=8'b01000000;
				endcase
			end
		endcase
	end
	
endmodule