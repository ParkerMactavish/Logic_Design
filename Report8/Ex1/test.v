module test;
	reg [1:0] in=2'd0;
	reg clk, rst;
	wire [3:0]out;	
	
	integer cnt=0;
	
	system S(.clk(clk), .rst(rst), .in(in), .out(out));
	
	initial begin
		rst=1'b1;#1 rst=1'b0;
		clk=1'd0;
		for(cnt=0; cnt<32'd100; cnt=cnt+1)begin
			if(cnt==32'd0) in=2'd0;
			else if(cnt==32'd25) in=2'd1;
			else if(cnt==32'd50) in=2'd2;
			else if(cnt==32'd75) in=2'd3;
			else in=in;
			clk=~clk;
			#1;
		end
	end
	
	initial begin
		$monitor("in:%b, out:%b, cnt:%d", in, out, cnt);
	end
	
	initial begin
		$dumpfile("test.vcd");
		$dumpvars;
	end	
endmodule