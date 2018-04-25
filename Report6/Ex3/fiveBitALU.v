module fiveBitALU(inA, inB, sel, out);
	input [4:0]inA, inB;
	input [2:0]sel;
	
	output[4:0]out;
	reg	  [4:0]out;

	parameter   ADD=3'b000,
				SUB=3'b001,
				AND=3'b010,
				OR =3'b011,
				XOR=3'b100,
				SHR=3'b101,
				SHL=3'b110,
				CMP=3'b111;
	
	always@(*)begin
		case(sel)
			ADD:out=inA+inB;
			SUB:out=inA-inB;
			AND:out=inA&inB;
			OR :out=inA|inB;
			XOR:out=inA^inB;
			SHR:out=inA>>inB;
			SHL:out=inA<<inB;
			CMP:out=inA>inB;
			default:out=5'b0;
		endcase
	end	
endmodule