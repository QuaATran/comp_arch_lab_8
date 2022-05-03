module lab_5_decoder (adr, cs);

 input      [1:0] adr;
 output reg [3:0] cs;
 
 always @ (adr) begin
  case (adr)
   2'b00 : cs = 4'b0001;
	2'b01 : cs = 4'b0010;	
	2'b10 : cs = 4'b0100;	
	2'b11 : cs = 4'b1000;
  endcase
 end
 
endmodule 