module register (Dout, Din, en, CLK, reset);

 input  		en, CLK, reset;
 input 		[31:0]Din;
 output reg [31:0]Dout;
	
	initial begin Dout[31:0] =32'b0; end
	
  always @(*) begin
    if (reset)
	  Dout[31:0] <= 0;
	else if (en)
	  Dout[31:0] <= Din[31:0];
	else
	  Dout[31:0] <= Dout[31:0];
	
  end
  
endmodule
