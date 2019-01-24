module ha(a,b,s,c);
  input a,b;
  output s,c;
  xor sum(s,a,b);
  and car(c,a,b);
endmodule
