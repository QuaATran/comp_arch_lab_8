module fullDatapath_tb ();

 reg clk, rst, PCsrc, ALUsrc, MemRW, WB, RegRW;
 reg [1:0] immSel;
 reg [2:0] ALUop;

 wire zero;
 wire [3:0] status;
 wire [6:0] control;
 wire [3:0] aluControl;
 wire [31:0] out;
	
	fullDatapath dut (clk, rst, PCsrc, ALUsrc, MemRW, WB, RegRW, immSel, ALUop, status, control, aluControl, out, zero);
	
	initial begin
		clk = 0;
		rst = 1;
	end
	
	always #15 clk <= ~clk;
	always #30 rst <= 0;
	
	always begin
		#15 //inst 01
			immSel = 2'b01;
			ALUsrc = 2'b1;
			ALUop = 3'b000;
			MemRW = 1'b0;
			WB = 1'b1;
			PCsrc = 1'b0;
			RegRW = 1'b1;
			#5;
		#25 //inst 02
			immSel = 2'b01;
			ALUsrc = 1'b1;
			ALUop = 3'b000;
			MemRW = 1'b0;
			WB = 1'b1;
			PCsrc = 1'b0;
			RegRW = 1'b1;
			#5;
		#25 //inst 03
			immSel = 2'b01;
			ALUsrc = 1'b1;
			ALUop = 3'b000;
			MemRW = 1'b0;
			WB = 1'b1;
			PCsrc = 1'b0;
			RegRW = 1'b1;
			#5;
		#25 //inst 04
			immSel = 2'b11;
			ALUsrc = 1'b0;
			ALUop = 3'b011;
			MemRW = 1'b0;
			WB = 1'b1;
			PCsrc = 1'b0;
			RegRW = 1'b0;
			#5;
		#25 // inst 05
			immSel = 2'b00;
			ALUsrc = 1'b0;
			ALUop = 3'b001;
			MemRW = 1'b0;
			WB = 1'b1;
			PCsrc = 1'b0;
			RegRW = 1'b1;
			#5;
		#25 //inst 06
			immSel = 2'b01;
			ALUsrc = 1'b1;
			ALUop = 3'b010;
			MemRW = 1'b0;
			WB = 1'b1;
			PCsrc = 1'b0;
			RegRW = 1'b1;
			#5;
		#25 //inst 07
			immSel = 2'b10;
			ALUsrc = 1'b1;
			ALUop = 3'b000;
			MemRW = 1'b1;
			WB = 1'b0;
			PCsrc = 1'b0;
			RegRW = 1'b0;
			#5;
		#25 //inst 08
			immSel = 2'b01;
			ALUsrc = 1'b1;
			ALUop = 3'b000;
			MemRW = 1'b0;
			WB = 1'b0;
			PCsrc = 1'b0;
			RegRW = 1'b1;
			#5;
		#25 //inst 09
			immSel = 2'b11;
			ALUsrc = 1'b0;
			ALUop = 3'b011;
			MemRW = 1'b0;
			WB = 1'b1;
			PCsrc = 1'b1;
			RegRW = 1'b0;
			#5;
		#25 //inst 11 (branch skips 10)
			immSel = 2'b01;
			ALUsrc = 2'b1;
			ALUop = 3'b000;
			MemRW = 1'b0;
			WB = 1'b1;
			PCsrc = 1'b0;
			RegRW = 1'b1;
			#5;
		#25 //inst 12
			immSel = 2'b10;
			ALUsrc = 1'b1;
			ALUop = 3'b000;
			MemRW = 1'b1;
			WB = 1'b0;
			PCsrc = 1'b0;
			RegRW = 1'b0;
			#5;
	end
	
	initial #500 $stop;
	
endmodule