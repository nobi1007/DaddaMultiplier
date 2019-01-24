module fa5bit(cout,s0,s1,s2,s3,s4,a0,a1,a2,a3,a4,b0,b1,b2,b3,b4,cin);
	input a0,a1,a2,a3,a4,b0,b1,b2,b3,b4,cin;
	output cout,s0,s1,s2,s3,s4;
	wire s00,s01,s10,s11,s20,s21,s30,s31,s40,s41,c00,c01,c10,c11,c20,c21,c30,c31,c40,c41,w0,w1,w2,w3,w4;
	assign x0=1'b0;
	assign x1=1'b1;

	fa f00(s00,c00,a0,b0,x0);
	fa f01(s01,c01,a0,b0,x1);
	fa f10(s10,c10,a1,b1,c00);
	fa f11(s11,c11,a1,b1,c01);
	fa f20(s20,c20,a2,b2,c10);
	fa f21(s21,c21,a2,b2,c11);
	fa f30(s30,c30,a3,b3,c20);
	fa f31(s31,c31,a3,b3,c21);
	fa f40(s40,c40,a4,b4,c30);
	fa f41(s41,c41,a4,b4,c31);


	mux42 m0(s0,w0,s00,s01,c00,c01,cin);
	mux42 m1(s1,w1,s10,s11,c10,c11,w0);
	mux42 m2(s2,w2,s20,s21,c20,c21,w1);
	mux42 m3(s3,w3,s30,s31,c30,c31,w2);
	mux42 m4(s4,w4,s40,s41,c40,c41,w3);

	mux21 m5(cout,c40,c41,w4);
endmodule

