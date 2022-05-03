module fullDatapath (clk, rst, PCsrc, ALUsrc, memReadWrite, memToReg, RegWrite, immSel, ALUop, status, control, aluControl, out, zero);

 input clk, rst, PCsrc, ALUsrc, memReadWrite, memToReg, RegWrite;
 input [1:0] immSel;
 input [3:0] ALUop;

 output zero;
 output [3:0] status;
 output [6:0] control;
 output [3:0] aluControl;
 output [31:0] out;

 wire [7:0] muxtoPCWire, PCout, counterOut, sum;
 wire [31:0] imOut, rOut1, rOut2, WriteData,  genOut, data2mux, ALUresult, readData,idOut;
 
 wire [4:0] rs1, rs2, rd;
 
 PC pc (clk, rst, muxtoPCWire, PCout);
 counter counter (clk, rst, PCout, counterOut);
 IM im (PCout, clk, imOut);
 ID id (imOut, rd, rs1, rs2, idOut);
 
 assign control = idOut[6:0];
 assign aluControl = {idOut[30], idOut[14:12]};
 
 adder adder (sum, PCout, genOut);
 mux2to1 mux3 (muxtoPCWire, sum, counterOut, PCsrc); // pc mux
 
 RegFile register (rs1, rs2, rd, RegWrite, WriteData, rOut1, rOut2, clk, rst);
 immGen immgen (genOut, idOut, immSel);
 
 mux2to1 mux1 (data2mux, genOut, rOut2, ALUsrc); // read data 2 mux
 ALU alu (ALUresult, rOut1, data2mux, ALUop, status);
 
 assign zero = (status[2] == 1) ? 1 : 0;
 
 RAM ram (readData, rOut2, ALUresult, clk, memReadWrite);
 mux2to1 mux2 (writeData, readData, ALUresult, memToReg); // data memory mux
 
 assign out = writeData;

 
 
endmodule 