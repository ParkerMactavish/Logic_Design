module test;
	reg clk=1'b0, rst;
	wire [2:0]outLED;
	wire [6:0]outSS;
	
	integer cnt=0;
	
	system S(.clk(clk), .rst(rst), .outLED(outLED), .outSS(outSS));
	
	initial begin
		rst=1'b1; #1 rst=1'b0;
		for(cnt=0; cnt<1000; cnt=cnt+1)begin
			#1 clk=~clk;
		end
	end
	
	initial $monitor("LED: %b, SS: %b", outLED, outSS);
	
	initial begin
		$dumpfile("test.vcd");
		$dumpvars;
	end

endmodule