
module fullAdder (A, B, cin, s0, sum, cout);

	input logic A, B, cin, s0;
	output logic sum, cout;
	
    logic A_xor_B;
    logic A_and_B;
    logic A_xor_B_and_Cin;
	 logic bNot;
	 
	 not n1(bNot, B);
	
	 mux2_1 mux1 (.i0(B), .i1(bNot), .sel(s0), .out(muxOut));

    xor (A_xor_B, A, muxOut);


    xor (sum, A_xor_B, cin);

    and (A_and_B, A, muxOut);
    and (A_xor_B_and_Cin, A_xor_B, cin);

    or (cout, A_and_B, A_xor_B_and_Cin);
	
endmodule

module fullAdder_testbench();

	logic A, B, cin, s0, sum, cout;
	
	fullAdder dut(.A, .B, .cin, .s0, .sum, .cout);
	
	integer i;
	initial begin
	
		for (i=0; i<2**4; i++) begin
			{A, B, cin, s0} = i; #10;
		end //for loop

	end // initial
	
endmodule
