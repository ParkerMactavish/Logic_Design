module testFullAdder;

	reg [2:0] in;

	wire sum;
	wire carry;

	fullAdder FA0 (.in0(in[0]),.in1(in[1]),.in2(in[2]),.sum(sum),.carry(carry));

	initial begin
		for(in=3'd0; in<7; in=in+1)begin
			#1;
		end
		#1;
	end
      
	initial begin
		$monitor("in0=%b, in1=%b, in2=%b, sum=%b, carry=%b", in[0], in[1], in[2], sum, carry);
	end
	
	initial begin
		$dumpfile("testFullAdder.vcd");
		$dumpvars;
	end
		
endmodule

