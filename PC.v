module PC (clock, rst, Din, Dout);

 input  		clock, rst;
 input  		[7:0] Din;
 output reg [7:0] Dout;

 always @(posedge clock) begin
 
  if (rst == 0)
   Dout = Din;
  else
	Dout = 8'b0;
 
 end

endmodule 