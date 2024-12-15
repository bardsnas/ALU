# ALU Details:
### alu.sv: Top-level module which handles the computation of the ALU's inputs and returns the result. Also assigs the zero, carry-out, overflow, and negative flags.
### alustim.sv: Top-level testbench.
### fullAdder.sv: Performs an add or subtract on two inputs (1-bit each) with purely gate logic.
### bitslice.sv: Configures the ALU operations that can be performed on two adjacent bits (add, sub, pass, AND, OR, XOR).
### mux2_1_alu.sv: 2:1 MUX module that handles two, 1-bit inputs. Built from gate logic.
### mux4_1_alu.sv: 4:1 MUX that is built from three, 2:1 MUX modules.
### mux8_1_alu.sv: 8:1 MUX that is built from two 4:1 MUX and one 2:1 MUX modules.
