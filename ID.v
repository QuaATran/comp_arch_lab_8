module ID (Din, rd, rs1, rs2, imm);

 input  [31:0] Din;
 output [4:0] rd, rs1, rs2;
 output [31:0] imm;
 
 assign rd = Din[11:7];
 assign rs2 = Din[19:15];
 assign rs1 = Din[24:20];
 assign imm = Din;

endmodule 