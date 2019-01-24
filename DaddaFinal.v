
module dadda_final(prod,a,b);
  input [7:0]a,b;
  output [15:0]prod;
  wire [13:0]s;
  wire s0,cout;
  wire [13:0]m,n;
  
assign s0 = a[0]&b[0];
  
assign s1=(a[6]&b[0])^(a[5]&b[1]);
assign c1=(a[6]&b[0])&(a[5]&b[1]);
 
assign s2=(a[7]&b[0])^(a[6]&b[1])^(a[5]&b[2]);
assign c2=(((a[7]&b[0])^(a[6]&b[1]))&(a[5]&b[2]))|(a[7]&b[0]&a[6]&b[1]);
 
 
assign s3=(a[4]&b[3])^(a[3]&b[4]);
assign c3=(a[4]&b[3])&(a[3]&b[4]);
 
 
assign s4=(a[7]&b[1])^(a[6]&b[2])^(a[5]&b[3]);
assign c4=(((a[7]&b[1])^(a[6]&b[2]))&(a[5]&b[3]))|(a[7]&b[1]&a[6]&b[2]);
 
assign s5=(a[4]&b[4])^(a[3]&b[5]);
assign c5=(a[4]&b[4])&(a[3]&b[5]);
 
assign s6=(a[7]&b[2])^(a[6]&b[3])^(a[5]&b[4]);
assign c6=(((a[7]&b[2])^(a[6]&b[3]))&(a[5]&b[4]))|(a[7]&b[2]&a[6]&b[3]);
 
assign s7=(a[4]&b[0])^(a[3]&b[1]);
assign c7=(a[4]&b[0])&(a[3]&b[1]);
 
 
assign s8=(a[5]&b[0])^(a[4]&b[1])^(a[3]&b[2]);
assign c8=(((a[5]&b[0])^(a[4]&b[1]))&(a[3]&b[2]))|(a[5]&b[0]&a[4]&b[1]);
 
 
assign s9=(a[2]&b[3])^(a[1]&b[4]);
assign c9=(a[2]&b[3])&(a[1]&b[4]);
 
assign s10=s1^(a[4]&b[2])^(a[3]&b[3]);
assign c10=((s1^(a[4]&b[2]))&(a[3]&b[3]))|(s1&a[4]&b[2]);
 
 
assign s11=(a[2]&b[4])^(a[1]&b[5])^(a[0]&b[6]);
assign c11=(((a[2]&b[4])^(a[1]&b[5]))&(a[0]&b[6]))|(a[2]&b[4]&a[1]&b[5]);
 
assign s12=s2^s3^(a[2]&b[5]);
assign c12=((s2^s3)&(a[2]&b[5]))|(s2&s3);
 
assign s13=(a[1]&b[6])^(a[0]&b[7])^c1;
assign c13=(((a[1]&b[6])^(a[0]&b[7]))&c1)|(a[1]&b[6]&a[0]&b[7]);
 
assign s14=s4^s5^(a[2]&b[6]);
assign c14=((s4^s5)&(a[2]&b[6]))|(s4&s5);
 
assign s15=(a[1]&b[7])^c2^c3;
assign c15=(((a[1]&b[7])^c2)&c3)|((a[1]&b[7])&c2);
 
assign s16=s6^(a[4]&b[5])^(a[3]&b[6]);
assign c16=((s6^(a[4]&b[5]))&(a[3]&b[6]))|(s6&(a[4]&b[5]));
 
assign s17=(a[2]&b[7])^c4^c5;
assign c17=(((a[2]&b[7])^c4)&c5)|((a[2]&b[7])&c4);
 
assign s18=(a[7]&b[3])^(a[6]&b[4])^(a[5]&b[5]); 
assign c18=(((a[7]&b[3])^(a[6]&b[4]))&(a[5]&b[5]))|(a[7]&b[3]&a[6]&b[4]);
 
assign s19=(a[4]&b[6])^(a[3]&b[7])^c6;
assign c19=(((a[4]&b[6])^(a[3]&b[7]))&c6)|(a[4]&b[6]&a[3]&b[7]);
 
assign s20=(a[7]&b[4])^(a[6]&b[5])^(a[5]&b[6]);
assign c20=(((a[7]&b[4])^(a[6]&b[5]))&(a[5]&b[6]))|(a[7]&b[4]&a[6]&b[5]);
 
assign s21=(a[3]&b[0])^(a[2]&b[1]);
assign c21=(a[3]&b[0])&(a[2]&b[1]);

assign s22=s7^(a[3]&b[1])^(a[1]&b[3]);
assign c22=((s7^(a[3]&b[1]))&(a[1]&b[3]))|(s7&(a[3]&b[1]));
 
assign s23=s8^s9^(a[0]&b[5]);
assign c23=((s8^s9)&(a[0]&b[5]))|(s8&s9);
 
assign s24=s10^s11^c8; 
assign c24=((s10^s11)&c8)|(s10&s11);
 
assign s25=s12^s13^c10;
assign c25=((s12^s13)&c10)|(s12&s13);
 
assign s26=s14^s15^c12;
assign c26=((s14^s15)&c12)|(s14&s15);
 
assign s27=s16^s17^c14;
assign c27=((s16^s17)&c14)|(s16&s17);
 
assign s28=s18^s19^c16;
assign c28=((s18^s19)&c16)|(s18&s19);
 
assign s29=s20^(a[4]&b[7])^c18;
assign c29=((s20^(a[4]&b[7]))&c18)|(s20&(a[4]&b[7]));
 
assign s30=(a[7]&b[5])^(a[6]&b[6])^(a[5]&b[7]);
assign c30=(((a[7]&b[5])^(a[6]&b[6]))&(a[5]&b[7]))|(a[7]&b[5]&a[6]&b[6]);
 
 
assign s31=(a[2]&b[0])^(a[1]&b[1]);
assign c31=(a[2]&b[0])&(a[1]&b[1]);
 
 
assign s32=s21^(a[1]&b[2])^(a[0]&b[3]);
assign c32=((s21^(a[1]&b[2]))&(a[0]&b[3]))|(s21&(a[1]&b[2]));
 
 
assign s33=s22^(a[0]&b[4])^c21;
assign c33=((s22^(a[0]&b[4]))&c21)|(s22&(a[0]&b[4]));
 
 
assign s34=s23^c7^c22;
assign c34=((s23^c7)&c22)|(s23&c7);

 
assign s35=s24^c9^c23;
assign c35=((s24^c9)&c23)|(s24&c9);

 
assign s36=s25^c11^c24;
assign c36=((s25^c11)&c24)|(s25&c11);

 
assign s37=s26^c13^c25;
assign c37=((s26^c13)&c25)|(s26&c13);
 
 
assign s38=s27^c15^c26;
assign c38=((s27^c15)&c26)|(s27&c15);

 
assign s39=s28^c17^c27;
assign c39=((s28^c17)&c27)|(s28&c17);

 
assign s40=s29^c19^c28;
assign c40=((s29^c19)&c28)|(s29&c19);
 
 
assign s41=s30^c20^c29;
assign c41=((s30^c20)&c29)|(s30&c20);
 
 
assign s42=(a[7]&b[6])^(a[6]&b[7])^c30;
assign c42=(((a[7]&b[6])^(a[6]&b[7]))&c30)|((a[7]&b[6])&(a[6]&b[7]));
 
assign m[0]=a[1]&b[0];
assign n[0]=a[0]&b[1];
 
assign m[1]=s31;
assign n[1]=a[0]&b[2];
 
assign m[2]=s32;
assign n[2]=c31;
 
assign m[3]=s33;
assign n[3]=c32;
 
 
assign m[4]=s34;
assign n[4]=c33;
 
 
assign m[5]=s35;
assign n[5]=c34;
  
assign m[6]=s36;
assign n[6]=c35;
 
assign m[7]=s37;
assign n[7]=c36;
 
assign m[8]=s38;
assign n[8]=c37;
  
assign m[9]=s39;
assign n[9]=c38;
 
assign m[10]=s40;
assign n[10]=c39;
 
assign m[11]=s41;
assign n[11]=c40;
 
assign m[12]=s42;
assign n[12]=c41;
 
assign m[13]=a[7]&b[7];
assign n[13]=c42;
  
assign cin=1'b0;
 
csa14bit mod(cout,s,m,n,cin);

assign prod = {cout,s,s0};
 
 
 endmodule


