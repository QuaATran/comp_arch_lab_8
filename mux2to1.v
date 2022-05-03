module mux2to1 (Dout, Din1, Din2, S);

 input S;
 input  [31:0] Din1, Din2;
 output [31:0] Dout;
 
 assign Dout = (S == 1) ? Din1 : Din2;
 
endmodule 