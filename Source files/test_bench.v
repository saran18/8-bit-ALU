`timescale 1ns/1ps

module test_bench();

	// Test bench for the control_unit. 

	reg [18:0] incode;
	wire [7:0] ans;

	control_unit c(.incode(incode), .ans(ans));

	initial begin

		$dumpfile("test1.vcd");
		$dumpvars(0,test_bench);

		incode = 19'b0010010001100010110; #20;
		incode = 19'b0100010001100010110; #20;
		incode = 19'b0110010001100010110; #20;
		incode = 19'b1000010001100010110; #20;
		incode = 19'b1010010001100010110; #20;
		incode = 19'b1100010001100010110; #20;
		incode = 19'b1110010001100010110; #20;

	end

endmodule