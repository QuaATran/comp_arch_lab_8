module IM (adr, clock, Dout);

 input      [7:0] adr;
 input      clock;
 output reg [31:0] Dout;
 
  always @(posedge clock) begin
   case(adr)
  
   8'h00 : Dout = 32'h00450693; 
	8'h04 : Dout = 32'h00100713;  
	8'h08 : Dout = 32'h00b76463;  
	8'h0c : Dout = 32'h00008067;  
	8'h10 : Dout = 32'h0006a803;  
	8'h14 : Dout = 32'h00068613;  
	8'h18 : Dout = 32'h00070793;  
	8'h1c : Dout = 32'hffc62883;  
	8'h20 : Dout = 32'h01185a63;  
	8'h24 : Dout = 32'h01162023;  
	8'h28 : Dout = 32'hfff78793;  
	8'h2c : Dout = 32'hffc60613;  
	8'h30 : Dout = 32'hfe0796e3;  
	8'h34 : Dout = 32'h00279793;  
	8'h38 : Dout = 32'h00f507b3;  
	8'h3c : Dout = 32'h0107a023;  
	8'h40 : Dout = 32'h00170713;  
	8'h44 : Dout = 32'h00468693; 
	8'h48 : Dout = 32'hfc1ff06f; 
	
   endcase
  end

endmodule 