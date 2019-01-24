module fa2bit(cout,s0,s1,a0,a1,b0,b1,cin);
	input a0,a1,b0,b1,cin;
	output cout,s0,s1;
	wire s00,s01,s10,s11,c00,c01,c10,c11,w0,w1;
	assign x0=1'b0;
	assign x1=1'b1;

	fa f00(s00,c00,a0,b0,x0);
	fa f01(s01,c01,a0,b0,x1);
	fa f10(s10,c10,a1,b1,c00);
	fa f11(s11,c11,a1,b1,c01);

	mux42 m0(s0,w0,s00,s01,c00,c01,cin);
	mux42 m1(s1,w1,s10,s11,c10,c11,w0);

	mux21 m3(cout,c10,c11,w1);
endmodule