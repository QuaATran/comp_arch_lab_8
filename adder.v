module adder (Dout, Din1, Din2);

 input  [7:0] Din1, Din2;
 output [7:0] Dout;
 
 assign Dout = Din1 + Din2;

endmodule 