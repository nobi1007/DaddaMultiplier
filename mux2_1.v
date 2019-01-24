module mux21(out,i0,i1,s);
	input i0,i1,s;
	output out;
	assign out=s?i1:i0;
endmodule
