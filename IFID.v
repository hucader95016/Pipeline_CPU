
module IF/ID( clk, pc_incr, instr, opcode, rs, rt, rd, immed );
	input clk ;
	input [31:0] pc_incr, instr ;
	output [5:0] opcode ;
	output [4:0] rs, rt, rd ;
	output [15:0] immed ;
	
	
	always @( negedge clk ) begin
		opcode = instr[31:26] ; 
		rs = instr[25:21];
		rt = instr[20:16];
		rd = instr[15:11];
		immed = instr[15:0];
	end
	

endmodule