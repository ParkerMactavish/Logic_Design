

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:10:35 04/11/2018
// Design Name:   FullAdder
// Module Name:   C:/Users/10310/Desktop/Logic_Design/Report4/Lab4-1/Test_FullAdder.v
// Project Name:  Lab4-1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_FullAdder;

	// Inputs
	reg [2:0] in;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	FullAdder uut (
		.in(in), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		for(in=3'd0; in<7; in=in+1)begin
			#1;
		end
		#1;
	end
      
	initial begin
		$monitor($time, "in0=%b, in1=%b, in2=%b, sum=%b, carry=%b", in[0], in[1], in[2], sum, carry);
	end
	
	initial begin
		$dumpfile("test_fulladder.vcd");
		$dumpvars;
	end
		
endmodule

