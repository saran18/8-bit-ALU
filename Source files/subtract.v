`timescale 1ns/1ps

module subtract(input[7:0] op1, input[7:0] op2, output[7:0] ans);

	// Subtraction of op2 from op1.

	// top2: 2s complement of op2
	wire[7:0] t1;
	wire[7:0] top2;

	// First, I am finding the 1's complement of op2.
	bit_not g1(.op1(op2), .ans(t1));
	// Adding 1 to above answer to get the 2's complement
	add g2(.op1(t1), .op2(8'b0), .cin(1'b1), .ans(top2));

	wire c1,c2,c3,c4,c5,c6,c7,c8;

	add g3(.op1(op1), .op2(top2), .cin(1'b0), .ans(ans));
	

endmodule