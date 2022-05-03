module small_rom (Dout, Din, adr, clock, cs, wr);

 // variable declaration
 input  clock, cs, wr;
 input  [5:0] adr;
 input  [7:0] Din;
 output reg [7:0] Dout;
 
 // memory array (64x8)
 reg [7:0] mem_array [63:0];
 
 always @ (posedge clock) begin
  // write instruction
  if (cs && wr)
   mem_array[adr] = Din;
	
  // read instruction
  else if (cs)
   Dout = mem_array[adr];

  else
   Dout = 8'bz;
 end
 
 
endmodule
