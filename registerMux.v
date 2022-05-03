module registerMux (Dout, ALUsrc, readData, imm);

 input  ALUsrc;
 input  [31:0] readData, imm;
 output [31:0] Dout;
 
 assign Dout = (ALUsrc)? readData : imm;

endmodule 