module test;
	reg[3:0]inA, inB;
	
	wire[6:0]out;
	
	wire [3:0]adderOut;
	
	integer i, j;
	
	system SYS0(.inA(inA), .inB(inB), .out(out));
	
	initial begin
		for(i=0; i<8; i=i+1)begin
			for(j=0; j<8; j=j+1)begin
				inA=i; inB=j;#1;
			end
		end	
	end
	
	initial begin
		$monitor("%d, %d, %b", inA, inB, out);
	end
	
endmodule