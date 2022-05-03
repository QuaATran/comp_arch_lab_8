module RAM (Dout, Din, adr, clock, wr);

 //variable declaration
 input  clock, wr;
 input  [7:0] adr;
 input  [31:0] Din;
 output [31:0] Dout;
 
 // address [7:6] assigned to decoder and [5:0] to rom
 wire [1:0] decoder_adr;
 wire [5:0] rom_adr;
 
 assign decoder_adr = adr[7:6];
 assign rom_adr = adr[5:0];
  
 // wire to connect the decoded cs to the corresponding rom
 wire [3:0] cs;
 wire cs0, cs1, cs2, cs3;
 
 assign cs0 = cs[0];
 assign cs1 = cs[1];
 assign cs2 = cs[2];
 assign cs3 = cs[3];
 
  //decoder
 lab_5_decoder decoder (.adr(decoder_adr), .cs(cs));
 
 // Din wires
 wire [7:0] Din0, Din1, Din2, Din3;
 
 assign Din0 = Din[7:0];
 assign Din1 = Din[15:8];
 assign Din2 = Din[23:16];
 assign Din3 = Din[31:24];
 
 // Dout wires
 wire [7:0] Dout0, Dout1, Dout2, Dout3;
 
 assign Dout = {Dout3, Dout2, Dout1, Dout0};
 
 //small rom call row 1
 small_rom rom11 (.Dout(Dout0), .Din(Din0), .adr(rom_adr), .clock(clock), .cs(cs0), .wr(wr));
  small_rom rom12 (.Dout(Dout1), .Din(Din1), .adr(rom_adr), .clock(clock), .cs(cs0), .wr(wr));
   small_rom rom13 (.Dout(Dout2), .Din(Din2), .adr(rom_adr), .clock(clock), .cs(cs0), .wr(wr));
	 small_rom rom14 (.Dout(Dout3), .Din(Din3), .adr(rom_adr), .clock(clock), .cs(cs0), .wr(wr));

 //small rom call row 2
 small_rom rom21 (.Dout(Dout0), .Din(Din0), .adr(rom_adr), .clock(clock), .cs(cs1), .wr(wr));
  small_rom rom22 (.Dout(Dout1), .Din(Din1), .adr(rom_adr), .clock(clock), .cs(cs1), .wr(wr));
   small_rom rom23 (.Dout(Dout2), .Din(Din2), .adr(rom_adr), .clock(clock), .cs(cs1), .wr(wr));
	 small_rom rom24 (.Dout(Dout3), .Din(Din3), .adr(rom_adr), .clock(clock), .cs(cs1), .wr(wr));

 //small rom call row 3
 small_rom rom31 (.Dout(Dout0), .Din(Din0), .adr(rom_adr), .clock(clock), .cs(cs2), .wr(wr));
  small_rom rom32 (.Dout(Dout1), .Din(Din1), .adr(rom_adr), .clock(clock), .cs(cs2), .wr(wr));
   small_rom rom33 (.Dout(Dout2), .Din(Din2), .adr(rom_adr), .clock(clock), .cs(cs2), .wr(wr));
	 small_rom rom34 (.Dout(Dout3), .Din(Din3), .adr(rom_adr), .clock(clock), .cs(cs2), .wr(wr));

 //small rom call row 4
 small_rom rom41 (.Dout(Dout0), .Din(Din0), .adr(rom_adr), .clock(clock), .cs(cs3), .wr(wr));
  small_rom rom42 (.Dout(Dout1), .Din(Din1), .adr(rom_adr), .clock(clock), .cs(cs3), .wr(wr));
   small_rom rom43 (.Dout(Dout2), .Din(Din2), .adr(rom_adr), .clock(clock), .cs(cs3), .wr(wr));
	 small_rom rom44 (.Dout(Dout3), .Din(Din3), .adr(rom_adr), .clock(clock), .cs(cs3), .wr(wr));


endmodule 