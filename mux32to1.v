module mux32to1 (mux_out, selector, reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7,
										 reg8,reg9,reg10,reg11,reg12,reg13,reg14,reg15,
										 reg16,reg17,reg18,reg19,reg20,reg21,reg22,reg23,
										 reg24,reg25,reg26,reg27,reg28,reg29,reg30,reg31);
 
 input      [31:0] reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7,
				       reg8,reg9,reg10,reg11,reg12,reg13,reg14,reg15,
					    reg16,reg17,reg18,reg19,reg20,reg21,reg22,reg23,
					    reg24,reg25,reg26,reg27,reg28,reg29,reg30,reg31;

 input      [4:0]  selector;
 output reg [31:0] mux_out;

 always @(*) begin
 case (selector)
 
  5'b00000 : mux_out =  reg0;
  5'b00001 : mux_out =  reg1;
  5'b00010 : mux_out =  reg2;
  5'b00011 : mux_out =  reg3;
  5'b00100 : mux_out =  reg4;
  5'b00101 : mux_out =  reg5;
  5'b00110 : mux_out =  reg6;
  5'b00111 : mux_out =  reg7;
  5'b01000 : mux_out =  reg8;
  5'b01001 : mux_out =  reg9;
  5'b01010 : mux_out = reg10;
  5'b01011 : mux_out = reg11;
  5'b01100 : mux_out = reg12;
  5'b01101 : mux_out = reg13;
  5'b01110 : mux_out = reg14;
  5'b01111 : mux_out = reg15;
  5'b10000 : mux_out = reg16;
  5'b10001 : mux_out = reg17;
  5'b10010 : mux_out = reg18;
  5'b10011 : mux_out = reg19;
  5'b10100 : mux_out = reg20;
  5'b10101 : mux_out = reg21;
  5'b10110 : mux_out = reg22;
  5'b10111 : mux_out = reg23;
  5'b11000 : mux_out = reg24;
  5'b11001 : mux_out = reg25;
  5'b11010 : mux_out = reg26;
  5'b11011 : mux_out = reg27;
  5'b11100 : mux_out = reg28;
  5'b11101 : mux_out = reg29;
  5'b11110 : mux_out = reg30;
  5'b11111 : mux_out = reg31;
 endcase
 end
 
endmodule 