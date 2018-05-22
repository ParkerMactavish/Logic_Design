module test;
	reg clk, rst;	
	
	wire[7:0]row, col;
	
	integer cnt=0;
	
	system S(.clk(clk), .rst(rst), .row(row), .col(col));
	
	initial begin
		rst=1'b1;#1 rst=1'b0;
		clk=1'd0;
		for(cnt=0; cnt<32'd100; cnt=cnt+1)begin
			clk=~clk;
			#1;
		end
	end
	
	initial begin
		$monitor("row:%b, col:%b", row, col);
	end
	
	initial begin
		$dumpfile("test.vcd");
		$dumpvars;
	end	
endmodule