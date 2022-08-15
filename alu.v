/*
	Title:	ALU
	Author: Garfield (Computer System and Architecture Lab, ICE, CYCU)
	Input Port
		1. ctl: ��alu_ctl�ѽX��������T��
		2. a:   inputA,�Ĥ@���n�B�z�����
		3. b:   inputB,�ĤG���n�B�z�����
	Output Port
		1. result: �̫�B�z�������G
		2. zero:   branch���O�һݭn����X
*/


module alu(ctl, a, b, result, zero);
  input [2:0] ctl;
  input [31:0] a, b;
  output [31:0] result;
  output zero;

  reg [31:0] result;
  reg zero;

  always @(a or b or ctl)
  begin
    case (ctl)
      3'b000 : result = a & b; // AND
      3'b001 : result = a | b; // OR
      3'b010 : result = a + b; // ADD
      3'b110 : result = a - b; // SUBTRACT  
      default : result = 32'hzzzzzzzz;
   endcase
   if (result == 32'd0) zero = 1;
   else zero = 0;
 end
endmodule

