`timescale 1ns/1ps

// Input to the control unit: 19 bit instruction code
// Output by the control unit: 8 bit binary number (answer)
module control_unit(input[18:0] incode, output[7:0] ans);

	wire [7:0] op1;
	wire [7:0] op2;

	// I am slicing the instruction code into three parts
	//- opcode, op1 (operand-1), op2 (operand-2).
	assign op2 = incode[7:0];
	assign op1 = incode[15:8];

	// Decoding the opcode using a 3x8 decoder.
	/*  *ADD - 001
		SUBTRACT - 010
		INCREMENT - 011
		DECREMENT - 100
		AND - 101
		OR - 110
		NOT - 111 */
	// The decoder sets the active line to 1.
	wire[7:0] d;

	// 3x8 decoder
	wire x,y,z;
	not g1(z,incode[16]);
	not g2(y,incode[17]);
	not g3(x,incode[18]);
	and g4(d[0],x,y,z);
	and g5(d[1],x,y,incode[16]);
	and g6(d[2],x,incode[17],z);
	and g7(d[3],x,incode[17],incode[16]);
	and g8(d[4],incode[18],y,z);
	and g9(d[5],incode[18],y,incode[16]);
	and g10(d[6],incode[18],incode[17],z);
	and g11(d[7],incode[18],incode[17],incode[16]);

	// Returns the output from ALU
	alu a1(.op1(op1),.op2(op2), .d(d), .ans(ans));

endmodule