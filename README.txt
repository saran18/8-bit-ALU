How to run the code:

1) The folder contains 10 '.v' files, which are the modules used in the assignment and 1 'README.txt' file.
2) Go inside the folder. Now fro, this directory/location open "Command prompt" by typing 'cmd' in the File Explorer bar.
3) Once "Command prompt" opens, copy and paste the following 3 lines of code, one after another.

	iverilog -o hello add.v alu.v bit_and.v bit_not.v bit_or.v control_unit.v full_adder.v test_bench.v elongate.v combadd.v
	
	vvp hello

	gtkwave test.vcd &