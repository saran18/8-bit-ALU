`timescale 1ns/1ps

module elongate(input x, output[7:0] out);

	// Creates an 8-bit binary number xxxxxxxx from a single bit input x.
	
	assign out[0] = x;
	assign out[1] = x;
	assign out[2] = x;
	assign out[3] = x;
	assign out[4] = x;
	assign out[5] = x;
	assign out[6] = x;
	assign out[7] = x;

endmodule