module mux2_1 (
	input logic i0,    // 64-bit input 0
   input logic i1,    // 64-bit input 1
   input logic sel,         // select line
   output logic out    // 64-bit output
);
	logic i0_sel;  // Result of ANDing 'a' with ~sel
   logic i1_sel;  // Result of ANDing 'b' with sel
   logic sel_not;       // Inverted select line

   // NOT of the select signal
   not not1 (sel_not, sel);

   // AND i0 and i1 with their corresponding select lines
	and and1 (i0_sel, i0, sel_not);  // a AND ~sel
	and and2 (i1_sel, i1, sel);      // b AND sel
	or or1 (out, i0_sel, i1_sel);  // Final OR operation
		
endmodule

module mux2_1_testbench ();
	logic i0, i1, out;
	logic sel;
	
	mux2_1 dut (.i0, .i1, .sel, .out);
	
	initial begin
		i0=64'd64357; i1=64'd26000; #10;
		sel=2'b00; #10;
		sel=2'b01; #10;
	end
endmodule