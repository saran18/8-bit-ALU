`timescale 1ns/1ps

module add(input[7:0] op1, input[7:0] op2, input cin, output[7:0] ans);

	// Returns the value of addition of op1 and op2
	// I have created an 8 bit Ripple Carry Adder using 8 Full Adder modules.

	wire c1,c2,c3,c4,c5,c6,c7,c8;

	full_adder f1(.a(op1[0]), .b(op2[0]), .cin(cin), .s(ans[0]), .cout(c1));
	full_adder f2(.a(op1[1]), .b(op2[1]), .cin(c1), .s(ans[1]), .cout(c2));
	full_adder f3(.a(op1[2]), .b(op2[2]), .cin(c2), .s(ans[2]), .cout(c3));
	full_adder f4(.a(op1[3]), .b(op2[3]), .cin(c3), .s(ans[3]), .cout(c4));
	full_adder f5(.a(op1[4]), .b(op2[4]), .cin(c4), .s(ans[4]), .cout(c5));
	full_adder f6(.a(op1[5]), .b(op2[5]), .cin(c5), .s(ans[5]), .cout(c6));
	full_adder f7(.a(op1[6]), .b(op2[6]), .cin(c6), .s(ans[6]), .cout(c7));
	full_adder f8(.a(op1[7]), .b(op2[7]), .cin(c7), .s(ans[7]), .cout(c8));
	
endmodule