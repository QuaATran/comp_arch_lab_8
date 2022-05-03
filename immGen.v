module immGen (immOut, immIn, S);

 input 	   [1:0] S;
 input 	   [31:0] immIn;
 output reg [31:0] immOut;
	
	always @ (immIn or S) begin
		case (S)
		
			00: immOut [31:0] = {{20{immIn[31]}},12'b0}; //R-type
			01: immOut [31:0] = {{20{immIn[31]}},immIn [31:20]}; //I-type
			10: immOut [31:0] = {{20{immIn[31]}},{{immIn[31:25]}, {immIn[11:7]}}}; //S-type
			11: immOut [31:0] = {{20{immIn[31]}},{immIn[31], immIn[7], {immIn[31:25]}, {immIn[11:8]}}}; //B-type
			default: immOut = 32'bx;
		endcase
	end
	
endmodule
