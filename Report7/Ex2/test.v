module test;
	reg clk=1'b0;
	reg rst=1'b0;
	
	wire[5:0]outLED;
	wire[6:0]outOne, outTen;
	
	integer cnt;
	
	system S0(clk, rst, outLED, outOne, outTen);
	
	initial begin
		rst=1'b1;#1rst=1'b0;
		for (cnt=0; cnt<32'd100; cnt=cnt+1)begin
			#1 clk=~clk;
			#1 clk=~clk;
		end
	end
	
	initial $monitor("CNT:%d LED:%b One:%b Ten:%b", cnt, outLED, outOne, outTen);
	
	initial begin
		$dumpfile("test.vcd");
		$dumpvars;
	end

endmodule