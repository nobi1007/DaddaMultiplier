module encoder(din,a,b,c,d);
  output a,b,c,d;
  input [0:15]din;
  assign a=din[8]|din[9]|din[10]|din[11]|din[12]|din[13]|din[14]|din[15];
  assign b=din[4]|din[5]|din[6]|din[7]|din[12]|din[13]|din[14]|din[15];
  assign c=din[2]|din[3]|din[6]|din[7]|din[10]|din[11]|din[14]|din[15];
  assign d=din[1]|din[3]|din[5]|din[7]|din[9]|din[11]|din[13]|din[15];
endmodule