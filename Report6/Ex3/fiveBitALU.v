module fiveBitALU(inA, inB, sel, out);
	input [3:0]inA, inB;
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
			ADD:out={1'b0, inA}+{1'b0, inB};
			SUB:out={1'b0, inA}-{1'b0, inB};
			AND:out={1'b0, inA}&{1'b0, inB};
			OR :out={1'b0, inA}|{1'b0, inB};
			XOR:out={1'b0, inA}^{1'b0, inB};
			SHR:out={1'b0, inA}>>{1'b0, inB};
			SHL:out={1'b0, inA}<<{1'b0, inB};
			CMP:out={1'b0, inA}>{1'b0, inB};
			default:out=5'b0;
		endcase
	end	
endmodule;