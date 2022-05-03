module ALU (Dout, Din1, Din2, S, status);

 input  [31:0] Din1, Din2;
 input  [2:0] S;
 output [3:0] status;
 output reg [31:0] Dout;
 
 wire carry; 
 wire [31:0] sum;
 
 ALU_adder a1 (sum, carry, Din1, Din2);
 
	always @ (*) begin
		case (S)
			3'b000: Dout <= sum; 
			3'b001: Dout <= Din1 | Din2;
			3'b010: Dout <= Din1 << Din2[4:0]; 
			3'b011: begin if (Din1 == Din2) Dout = 32'b1; else Dout = 32'b0; end
			default: Dout = 32'bx;
		endcase
	end
  
  assign status[3] = ((~Din1[31]) & (~Din2[31]) & Dout[31]) | (Din1[31] & Din2[31] & (~Dout[31]));
  assign status[2] = (Dout == 0) ? 1 : 0;
  assign status[1] = Dout[31];
  assign status[0] = carry;

endmodule 