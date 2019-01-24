module fa(a,b,c,s,c0);
  input a,b,c;
  output s,c0;
  wire s1,a1,a2;
  xor xor1(s1,a,b);
  xor xor2(s,s1,c);
  and and1(a1,c,s1);
  and and2(a2,a,b);
  or or1(c0,a1,a2);
endmodule