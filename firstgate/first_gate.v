module first_gate(input a,b, output y);
	assign y = a & b; // a and b next or with c
	// assign y = (a) ? b: c; // MUX 
	// assign y = ~a & ~b & ~c | a & ~b & ~c | a & ~b & ~c;
endmodule