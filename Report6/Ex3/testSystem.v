module testSystem;
	reg [4:0]inA, inB;
	reg [2:0]sel;
	
	wire[6:0]SevenSegA, SevenSegB, SevenSegOne, SevenSegTen;
	wire signal;
	
	integer A, B;
	
	system s0(.inA(inA), .inB(inB), .sel(sel), .SevenSegA(SevenSegA), .SevenSegB(SevenSegB), .SevenSegOne(SevenSegOne), .SevenSegTen(SevenSegTen), .signal(signal));
	
	initial begin
		for(A=0; A<16; A=A+1)begin
			for(B=0; B<16; B=B+1)begin
				inA=A; inB=B; sel=0;
				#1 inA=A; inB=B; sel=1;
				#1;
			end
		end
	end
	
	initial begin
		$monitor("A:%d, AS:%b, B:%d, BS:%b, neg:%b, Ten:%b, One:%b", inA, SevenSegA, inB, SevenSegB, signal, SevenSegTen, SevenSegTen);
	end
	
	initial begin
		$dumpfile("testSystem.vcd");
		$dumpvars;
	end
	
endmodule