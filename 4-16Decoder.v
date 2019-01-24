module decoder(c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,i0,i1,i2,i3);
  input i0,i1,i2,i3;
  output c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15;
  
  assign c0=~i0&~i1&~i2&~i3;
  assign c1=~i0&~i1&~i2&i3;
  assign c2=~i0&~i1&i2&~i3;
  assign c3=~i0&~i1&i2&i3;
  assign c4=~i0&i1&~i2&~i3;
  assign c5=~i0&i1&~i2&i3;
  assign c6=~i0&i1&i2&~i3;
  assign c7=~i0&i1&i2&i3;
  assign c8=i0&~i1&~i2&~i3;
  assign c9=i0&~i1&~i2&i3;
  assign c10=i0&~i1&i2&~i3;
  assign c11=i0&~i1&i2&i3;
  assign c12=i0&i1&~i2&~i3;
  assign c13=i0&i1&~i2&i3;
  assign c14=i0&i1&i2&~i3;
  assign c15=i0&i1&i2&i3;
  
endmodule

