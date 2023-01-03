# 19 bit CPU implementation using Verilog HDL

## Instructions

1) Move into the directory containing the source code files. Open "Command prompt" from this directory.
2) Copy and paste the following 3 lines of code in it.

```shell
iverilog -o hello add.v alu.v bit_and.v bit_not.v bit_or.v control_unit.v full_adder.v test_bench.v elongate.v combadd.v

vvp hello

# Visualizing output using GTKWave
gtkwave test.vcd &
```
