module mux42(sout,cout,s0,s1,c0,c1,s);
	input s0,s1,c0,c1,s;
	output sout,cout;
	mux21 ms(sout,s0,s1,s);
	mux21 mc(cout,c0,c1,s);
endmodule
