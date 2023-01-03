`timescale 1ns/1ps

module combadd(input[7:0] op1, input[7:0] op2, input[7:0] d, output[7:0] ans);

	// For optimization

	// Combined addition module -> Uses adder module once for 
	// all four operations - ADD,SUBTRACT,INCREMENT,DECREMENT

	// We create a 4x1 multiplexer to identify what op2 to select
	wire[7:0] t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11;
	wire[7:0] alt_op2;

	// Calculation of 2's complement of op2 is done here.
	bit_not g1(.op1(op2), .ans(t5));
	add g2(.op1(t5), .op2(8'b00000000), .cin(1'b1), .ans(t6));

	wire[7:0] d1e,d2e,d3e,d4e;
	elongate g14(d[1],d1e);
	elongate g11(d[2],d2e);
	elongate g12(d[3],d3e);
	elongate g13(d[4],d4e);

	// Multiplexer to determine op2, based on which line is active in 'd'.
	bit_and g3(d1e,op2,t1);
	bit_and g4(d2e,t6,t2);
	bit_and g5(d3e,8'b00000001,t3);
	bit_and g6(d4e,8'b11111111,t4);
	bit_or g7(t1,t2,t7);
	bit_or g8(t3,t4,t8);
	bit_or g9(t7,t8,alt_op2);

	// Defining 'enable' to ensure atleast one line in d[4:1] is active.
	wire[7:0] enable, tempans;
	bit_or g15(d1e,d2e,t9);
	bit_or g16(d3e,d4e,t10);
	bit_or g17(t9,t10,enable);

	// Here, we are using the 'add' module only ONCE to add op1 and the op2
	// which we found above, and store it as 'temporary answer'
	add g10(.op1(op1),.op2(alt_op2),.cin(1'b0),.ans(tempans));

	// We want the output of the module to be 8'b00000000, if no line in d[4:1] is active.
	// Hence we 'AND' our 'temporary answer' with the 'enable' we defined. This ensures our 'temporary answer' is returned only if atleast one line in d[4:1] is active.
	bit_and g18(enable,tempans,ans);

endmodule