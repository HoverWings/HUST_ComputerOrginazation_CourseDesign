module branch_halt(
	beq,bne,bltz,syscall,equal,alur,
	branch,bat
    );
	input beq,bne,bltz,syscall,equal;
	input [31:0]alur;
	output branch,bat;
	assign bat = beq|bne|bltz;
	assign branch = (equal&beq)|(bne&(~equal))|
		(bltz&(alur==1));
endmodule
