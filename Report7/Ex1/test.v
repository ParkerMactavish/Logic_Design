module test;
	reg clk=1'b0;
	reg rst=1'b0;
	
	wire [6:0]out;
	
	integer cnt;
	
	system S1(clk, rst, out);
	
	initial begin
		for (cnt=0; cnt<32'd15; cnt=cnt+1)begin
			#1 clk=~clk;
			#1 clk=~clk;
		end
		rst=1'b1; rst=1'b0;
		for (cnt=0; cnt<32'd15; cnt=cnt+1)begin
			#1 clk=~clk;
			#1 clk=~clk;
		end
	end
	
	initial $monitor("count: %h 7seg:%b", cnt, out);
	
	initial begin
		$dumpfile("test.vcd");
		$dumpvars;
	end
	
endmodule