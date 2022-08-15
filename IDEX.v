module ID/EX( RegDst, ALUSrc, MemtoReg, RegWrite, 
			  MemRead, MemWrite, Branch, Jump, ALUOp, 
			  rfile_rd1, rfile_rd2, extend_immed, rt, rd,
			  RegDstPipe, ALUSrcPipe, MemtoRegPipe, RegWritePipe, 
			  MemReadPipe, MemWritePipe, BranchPipe, JumpPipe, ALUOpPipe,
			  rfile_rd1Pipe, rfile_rd2Pipe, extend_immedPipe, rtPipe, rdPipe) ;
		
	input RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Jump ;
	input [1:0] ALUOp ;
	input [4:0] rt, rd ;
	input [31:0] rfile_rd1, rfile_rd2, extend_immed ;
		
	output RegDstPipe, ALUSrcPipe, MemtoRegPipe, RegWritePipe, MemReadPipe, MemWritePipe, BranchPipe, JumpPipe ;
	output [1:0] ALUOpPipe ;
	output [4:0] rtPipe, rdPipe ;
	output [31:0] rfile_rd1Pipe, rfile_rd2Pipe, extend_immedPipe ;
		
		
	always @( negedge clk ) begin
		RegDstPipe = RegDst ; 
		ALUSrcPipe = ALUSrc;
		MemtoRegPipe = MemtoReg ;
		RegWritePipe = RegWrite ;
		MemReadPipe = MemRead ;
		MemWritePipe = MemWrite ;
		BranchPipe = Branch ;
		JumpPipe = Jump ;
		ALUOpPipe = ALUOp ;
		rtPipe = rt ;
		rdPipe = rd ;
		rfile_rd1Pipe = rfile_rd1 ;
		rfile_rd2Pipe = rfile_rd2 ;
		extend_immedPipe = extend_immed ;
	end
		
endmodule