module decoder(x,y,z,w,e,d);
  input x,y,z,w,e;
  output [15:0]d;
  assign d[0]=(~x)&(~y)&(~z)&(~w)&(e);
  assign d[1]=(~x)&(~y)&(~z)&(w)&(e);
  assign d[2]=(~x)&(~y)&(z)&(~w)&(e);
  assign d[3]=(~x)&(~y)&(z)&(w)&(e);
  assign d[4]=(~x)&(y)&(~z)&(~w)&(e);
  assign d[5]=(~x)&(y)&(~z)&(w)&(e);
  assign d[6]=(~x)&(y)&(z)&(~w)&(e);
  assign d[7]=(~x)&(y)&(z)&(w)&(e);
  
  
  
  
  
  
  
  
endmodule