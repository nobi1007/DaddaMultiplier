module csa14bit(cout,s,a,b,cin);
	input [13:0]a,b;
	input cin;
	wire c2,c3,c4;
	output [13:0]s;
	output cout;

	fa2bit fa2b(c2,s[0],s[1],a[0],a[1],b[0],b[1],cin);
	fa3bit fa3b(c3,s[2],s[3],s[4],a[2],a[3],a[4],b[2],b[3],b[4],c2);
	fa4bit fa4b(c4,s[5],s[6],s[7],s[8],a[5],a[6],a[7],a[8],b[5],b[6],b[7],b[8],c3);
	fa5bit fa5b(cout,s[9],s[10],s[11],s[12],s[13],a[9],a[10],a[11],a[12],a[13],b[9],b[10],b[11],b[12],b[13],c4);

endmodule
