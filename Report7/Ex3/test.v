module test;
	reg clk=1'b0, rst, set=1'b0;
	reg[5:0] minSet, secSet;
	
	wire [6:0] minTen, minOne, secTen, secOne;
	
	integer cnt;
	
	system S0(.clk(clk), .rst(rst), .set(set), .minSet(minSet), .secSet(secSet), .minTen(minTen), .minOne(minOne), .secTen(secTen), .secOne(secOne));
	
	initial begin
		rst=1'b1;#1 rst=1'b0;
		for (cnt=0; cnt<32'd1000; cnt=cnt+1)begin
			#1 clk=~clk;
			#1 clk=~clk;
			if(cnt==32'd100)begin
				{minSet, secSet}={6'd30, 6'd30};
				set=1'd1;
				#1 set=1'd0;
			end
		end
	end
	
	initial $monitor("CNT:%d sec:%b, %b min:%b, %b", cnt, secTen, secOne, minOne, minTen);
	
	initial begin
		$dumpfile("test.vcd");
		$dumpvars;
	end
	

endmodule