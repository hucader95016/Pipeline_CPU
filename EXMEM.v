
moudule EXMEM( clk, RegWriteIn, MemtoRegIn, MemReadIn, MemWriteIn, b_tgtIn, BranchIn, ZeroIn, alu_In, rfile_rd2In, rfile_wnIn,
                    RegWriteOut, MemtoRegOut, MemReadOut, MemWriteOut, b_tgtOut, BranchOut, ZeroOut, alu_out, rfile_rd2Out, rfile_wnOut ) ;
  always @ ( negedge clk ) begin
    RegWriteOut = RegWriteIn ;
	MemtoRegOut = MemtoRegIn ;
	MemReadOut = MemReadIn ;
	MemWriteOut = MemWriteIn ;
	b_tgtOut = b_tgtIn ;
	BranchOut = BranchIn ;
	ZeroOut = ZeroIn ;
	alu_Out = alu_In ;
	rfile_rd2Out = rfile_rd2In ;
	rfile_wnOut = rfile_wnIn ;
  end
endmodule