module test;
	reg clk=1'b0, rst=1'b0;
	reg[2:0]buy;
	reg[3:0]insert;
	
	wire [2:0]LEDout;
	wire [6:0]SSTen, SSOne;
	
	integer count=32'd0;
	
	system S0(.clk(clk), .rst(rst), .buy(buy), .insert(insert), .LEDout(LEDout), .Ten(SSTen), .One(SSOne));
	
	initial begin
		rst=1'b1;#1 rst=1'b0;
		for(count=32'd0; count < 32'd1000; count=count+1)begin
			#1 clk=~clk;
			if(count==32'd10||count==32'd11) insert=4'b1000;
			else if(count==32'd12) insert=4'b0000;
			else if(count==32'd20||count==32'd21) buy=3'b010;
			else if(count==32'd22) buy=3'b000;
		end
	end
	
	initial $monitor("LED:%b, SSOne:%b, SSTen:%b, Cnt: %d", LEDout, SSOne, SSTen, count);
	
	initial begin
		$dumpfile("test.vcd");
		$dumpvars;
	end

endmodule