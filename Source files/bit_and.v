`timescale 1ns/1ps

module bit_and(input[7:0] op1, input[7:0] op2, output[7:0] ans);

	// Bitwise AND of two 8-bit binary numbers

	and(ans[0], op1[0], op2[0]);
	and(ans[1], op1[1], op2[1]);
	and(ans[2], op1[2], op2[2]);
	and(ans[3], op1[3], op2[3]);
	and(ans[4], op1[4], op2[4]);
	and(ans[5], op1[5], op2[5]);
	and(ans[6], op1[6], op2[6]);
	and(ans[7], op1[7], op2[7]);

endmodule