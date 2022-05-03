module RegFile_tb ();

 reg  [4:0] rs1, rs2, rd;
 reg  wr, CLK, reset;
 reg  [31:0] Din;
 wire [31:0] rOut1, rOut2;

 RegFile d1 (rs1, rs2, rd, wr, Din, rOut1, rOut2, CLK, reset);
 
 always #5 CLK = ~CLK;
 
 initial begin
  CLK = 0;
  reset = 0;
 end
 
 always begin
	   #10 reset <= 1'b0;
		#10 wr <= 1;
		
		#10 rd <= 5'd1;
		Din <= 32'd39;
	
		#10 rd <= 5'd2;
		Din <= 32'd47;
		
		#10 rs1 <= 5'd1;
		#10 rs2 <= 5'd2;
		
		wr <= 0;
		
		//
		
		#10 reset <= 1'b0;
		#10 wr <= 1;
		
		#10 rd <= 5'd4;
		Din <= 32'd11111;
		
		#10 rd <= 5'd5;
		Din <= 32'd3;
		
		#10 rs1 <= 5'd4;
		#10 rs2 <= 5'd5;
		
		wr <= 0;
		
		//
		
		#10 reset <= 1'b0;
		#10 wr <= 1;
		
		#10 rd <= 5'd8;
		Din <= 32'd121;
		
		#10 rd <= 5'd9;
		Din <= 32'd28;
		
		#10 rs1 <= 5'd8;
		#10 rs2 <= 5'd9;
		
		wr <= 0;
		
		//
		
		#10 reset <= 1'b0;
		#10 wr <= 1;
		
		#10 rd <= 5'd18;
		Din <= 32'd1000;
		
		#10 rd <= 5'd22;
		Din <= 32'd1190;
		
		#10 rs1 <= 5'd18;
		#10 rs2 <= 5'd22;
		
		wr <= 0;
	
		//
		
		#10 reset <= 1'b0;
		#10 wr <= 1;
		
		#10 rd <= 5'd25;
		Din <= 32'd267;
		
		#10 rd <= 5'd31;
		Din <= 32'd1728;
		
		#10 rs1 <= 5'd25;
		#10 rs2 <= 5'd31;
		
		wr <= 0;
		
		#40 $stop;
	end
 
endmodule 