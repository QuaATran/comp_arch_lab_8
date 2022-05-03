module RegFile (rs1, rs2, rd, wr, Din, rOut1, rOut2, CLK, reset);

 input [4:0] rs1, rs2, rd;
 input wr, CLK, reset;
 input [31:0] Din;
 output [31:0] rOut1, rOut2;
 
 wire [31:0] A;
 
 wire [31:0] out0, out1, out2, out3, out4, out5, out6, out7, out8, out9,
				 out10, out11, out12, out13, out14, out15, out16, out17, out18, out19,
				 out20, out21, out22, out23, out24, out25, out26, out27, out28, out29,
				 out30, out31;
				 
 registerDecoder d1 (A, rd, wr);
 
 register r0 (out0, Din, A[0], CLK, reset);
 register r1 (out1, Din, A[1], CLK, reset);
 register r2 (out2, Din, A[2], CLK, reset);
 register r3 (out3, Din, A[3], CLK, reset);
 register r4 (out4, Din, A[4], CLK, reset);
 register r5 (out5, Din, A[5], CLK, reset);
 register r6 (out6, Din, A[6], CLK, reset);
 register r7 (out7, Din, A[7], CLK, reset);
 register r8 (out8, Din, A[8], CLK, reset);
 register r9 (out9, Din, A[9], CLK, reset);
 register r10 (out10, Din, A[10], CLK, reset);
 register r11 (out11, Din, A[11], CLK, reset);
 register r12 (out12, Din, A[12], CLK, reset);
 register r13 (out13, Din, A[13], CLK, reset);
 register r14 (out14, Din, A[14], CLK, reset);
 register r15 (out15, Din, A[15], CLK, reset);
 register r16 (out16, Din, A[16], CLK, reset);
 register r17 (out17, Din, A[17], CLK, reset);
 register r18 (out18, Din, A[18], CLK, reset);
 register r19 (out19, Din, A[19], CLK, reset);
 register r20 (out20, Din, A[20], CLK, reset);
 register r21 (out21, Din, A[21], CLK, reset);
 register r22 (out22, Din, A[22], CLK, reset);
 register r23 (out23, Din, A[23], CLK, reset);
 register r24 (out24, Din, A[24], CLK, reset);
 register r25 (out25, Din, A[25], CLK, reset);
 register r26 (out26, Din, A[26], CLK, reset);
 register r27 (out27, Din, A[27], CLK, reset);
 register r28 (out28, Din, A[28], CLK, reset);
 register r29 (out29, Din, A[29], CLK, reset);
 register r30 (out30, Din, A[30], CLK, reset);
 register r31 (out31, Din, A[31], CLK, reset); 
 
 mux32to1 m1 (rOut1, rs1, out0, out1, out2, out3, out4, out5, out6, out7, out8, out9,
								  out10, out11, out12, out13, out14, out15, out16, out17, out18, out19,
								  out20, out21, out22, out23, out24, out25, out26, out27, out28, out29,
								  out30, out31);
 
  mux32to1 m2 (rOut2, rs2, out0, out1, out2, out3, out4, out5, out6, out7, out8, out9,
								  out10, out11, out12, out13, out14, out15, out16, out17, out18, out19,
								  out20, out21, out22, out23, out24, out25, out26, out27, out28, out29,
								  out30, out31);
 
 
endmodule 


