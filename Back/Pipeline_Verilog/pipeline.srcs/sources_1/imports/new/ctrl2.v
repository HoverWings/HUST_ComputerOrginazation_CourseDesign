module ctrl2(
	jump,jal,ret,beq,bne,bltz,
	RegDst,RegDin,RegWrite,DMWrite,aluB,shift,
	syscall,mode,aluop,
	ctrl2
    );
	input jump,jal,ret,beq,bne,bltz;
	input RegDst,RegDin,RegWrite,DMWrite;
	input aluB,shift,syscall;
	input [3:0]mode,aluop;
	output [20:0]ctrl2;
	assign ctrl2 = {aluop,mode,syscall,shift,
		aluB,DMWrite,RegWrite,RegDin,RegDst,bltz,
		bne,beq,ret,jal,jump};
endmodule
