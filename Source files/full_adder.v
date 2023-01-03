`timescale 1ns/1ps

module full_adder(input a, input b, input cin, output s, output cout);

	// 1-bit Full Adder module

	wire t1,t2,t3;
	xor (t1,a,b);
	xor (s,t1,cin);
 
	and(t2,t1,cin);
	and(t3,a,b);
	or(cout,t2,t3);

endmodule