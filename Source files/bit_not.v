`timescale 1ns/1ps

module bit_not(input[7:0] op1, output[7:0] ans);

	// Bitwise NOT of an 8-bit binary number

	not(ans[0], op1[0]);
	not(ans[1], op1[1]);
	not(ans[2], op1[2]);
	not(ans[3], op1[3]);
	not(ans[4], op1[4]);
	not(ans[5], op1[5]);
	not(ans[6], op1[6]);
	not(ans[7], op1[7]);
	
endmodule