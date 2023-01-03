`timescale 1ns/1ps

/* Inputs to the ALU: 
a) 8 bit operand-1
b) 8 bit operand-2
c) 3 bit opcode
d) 8 bit selection lines */

// Output by the ALU: 8 bit binary number (answer)

module alu(input[7:0] op1, input[7:0] op2, input[7:0] d, output[7:0] ans);

	wire[7:0] f1,f2,f3,f4;

	// Using a combined addition module 'combadd' which reduces the
	// number of instances of using the 'add' module - it's more efficient
	combadd g4(op1,op2,d,f1);

	// Storing the outputs for AND,OR,NOT operations
	bit_and g5(op1,op2,f2);
	bit_or g6(op1,op2,f3);
	bit_not g7(op1,f4);

	// 8 multiplexers to determine each bit of the output
	wire[4:1] t0;
	assign t0[1] = f1[0];
	and(t0[2],f2[0],d[5]);
	and(t0[3],f3[0],d[6]);
	and(t0[4],f4[0],d[7]);
	or(ans[0],t0[1],t0[2],t0[3],t0[4]);

	wire[4:1] t1;
	assign t1[1] = f1[1];
	and(t1[2],f2[1],d[5]);
	and(t1[3],f3[1],d[6]);
	and(t1[4],f4[1],d[7]);
	or(ans[1],t1[1],t1[2],t1[3],t1[4]);

	wire[4:1] t2;
	assign t2[1] = f1[2];
	and(t2[2],f2[2],d[5]);
	and(t2[3],f3[2],d[6]);
	and(t2[4],f4[2],d[7]);
	or(ans[2],t2[1],t2[2],t2[3],t2[4]);

	wire[4:1] t3;
	assign t3[1] = f1[3];
	and(t3[2],f2[3],d[5]);
	and(t3[3],f3[3],d[6]);
	and(t3[4],f4[3],d[7]);
	or(ans[3],t3[1],t3[2],t3[3],t3[4]);

	wire[4:1] t4;
	assign t4[1] = f1[4];
	and(t4[2],f2[4],d[5]);
	and(t4[3],f3[4],d[6]);
	and(t4[4],f4[4],d[7]);
	or(ans[4],t4[1],t4[2],t4[3],t4[4]);

	wire[4:1] t5;
	assign t5[1] = f1[5];
	and(t5[2],f2[5],d[5]);
	and(t5[3],f3[5],d[6]);
	and(t5[4],f4[5],d[7]);
	or(ans[5],t5[1],t5[2],t5[3],t5[4]);

	wire[4:1] t6;
	assign t6[1] = f1[6];
	and(t6[2],f2[6],d[5]);
	and(t6[3],f3[6],d[6]);
	and(t6[4],f4[6],d[7]);
	or(ans[6],t6[1],t6[2],t6[3],t6[4]);

	wire[4:1] t7;
	assign t7[1] = f1[7];
	and(t7[2],f2[7],d[5]);
	and(t7[3],f3[7],d[6]);
	and(t7[4],f4[7],d[7]);
	or(ans[7],t7[1],t7[2],t7[3],t7[4]);

endmodule