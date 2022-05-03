module ALU_adder (c, carry, a, b);

 input signed [31:0] a, b;
 output [31:0] c;
 output carry;
 
 wire [32:0] x, y, z;
 assign x = a;
 assign y = b;
 assign c = z;
 
 assign z = x + y;
 
 assign carry = z[32];
 
endmodule 