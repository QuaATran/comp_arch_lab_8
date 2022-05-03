module pcMux (Dout, Din1, Din2, PCsrc);

 input  PCsrc;
 input  [7:0] Din1, Din2;
 output [7:0] Dout;
 
 assign Dout = (PCsrc)? Din1 : Din2; 

endmodule 