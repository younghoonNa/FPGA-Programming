`timescale 1ns/1ps

module first_gate_tb();

	reg a,b,c; // input
	wire d; // output
	first_gate mygate(a,b,c,d);  // 객체 생성
	
	initial
	begin
		a = 0; b = 0; c = 0;
		#100; 
		c = 1;
		#100;
		a = 1;
		#100;
	end

endmodule