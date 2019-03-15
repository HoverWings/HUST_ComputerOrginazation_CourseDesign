module control(
	op,func,
	jump,jal,jr,beq,bne,unsign,
	RegDst,RegDin,RegWrite,store,AluB,
	shift,syscall,mode,aluop,ra_r,rb_r,lui,bltz
    );
	input [5:0]op,func;
	//input [15:0] ins16;
	output jump,jal,jr,beq,bne,unsign;
	output RegDst,RegDin,RegWrite,store,AluB;
	output shift,syscall,ra_r,rb_r;
	output [3:0]mode,aluop;
	output lui,bltz;
	//output [31:0] luiData;
    wire r;
    wire addi;
    wire addiu;
    wire andi;
    wire ori;
    wire slti;
    wire xori;
    wire sltiu;
    wire lw;
    wire lbu;
    wire j;
    wire add;
    wire addu;
    wire And;
    wire sll;
    wire sra;
    wire srl;
    wire sub;
    wire Or;
    wire Nor;
    wire slt;
    wire sltu;
    wire tmpsys;
    wire r1,r2,r3;
    wire LUI;
    wire sw ,sh;
    
    assign store = sw | sh;//具体的区分依靠mode
    
    assign r = (op==6'h00);
    assign addi = (op==6'h08);
    assign addiu = (op==6'h09);
    assign andi = (op==6'h0c);
    assign ori = (op==6'h0d);
    assign slti = (op==6'h0a);
    assign xori = (op==6'h0e);
    assign sltiu = (op==6'h0b);
    assign lw = (op==6'h23);
    assign sw = (op==6'h2b);
    assign lbu = (op==6'h24);
    assign beq = (op==6'h04);
    assign bne = (op==6'h05);
    assign j = (op==6'h02);
    assign jal = (op==6'h03);
    assign LUI = (op==6'h0f);
    assign sh = (op==6'h29);
    assign bltz = (op==6'h01);

    assign add = (func==6'h20)& r;
    assign addu = (func==6'h21)& r;
    assign And = (func==6'h24)& r;
    assign sll = (func==6'h00)& r;
    assign sra = (func==6'h03)& r;
    assign srl = (func==6'h02)& r;
    assign sub = (func==6'h22)& r;
    assign Or = (func==6'h25)& r;
    assign Nor = (func==6'h27)& r;
    assign slt = (func==6'h2a)& r;
    assign sltu = (func==6'h2b)& r;
    assign jr = (func==6'h08)& r;
    assign syscall = (func==6'h0c)& r;
    
    assign lui = LUI;
    assign jump = j|jal;
    assign RegDst = addi|addiu|andi|ori|slti|xori|sltiu|lw|lbu|lui;
    assign RegDin = lw|lbu;
    assign AluB = addi|addiu|andi|ori|slti|xori|sll|sltiu|lw|sra|sw|lbu|srl;
    assign tmpsys = r & (~(jr | syscall));
    assign RegWrite = tmpsys|addi|addiu|andi|ori|slti|xori|sltiu|jal|lw|lbu|lui;
    assign shift = sll | sra | srl;
    assign unsign = ori | xori | lbu | andi;

    assign r1 = add|addu|And|sub|Or|Nor|sw|beq|bne  // R1_used and R2_used
    			|slt|syscall|bltz|sw|sh; //delete sltiu
    assign r2 = addi|addiu|andi|ori|slti|xori|sltiu|  // only R1_used
    		      lw|jr;
    assign ra_r = r1 | r2;
    assign rb_r = r1 | shift;

    assign mode = sh ? 4'b0011:
            (sw | lw)? 4'b1111: 4'b0000;//只有三只情况sw,lw,sh,其余的都不涉及mem存储
    assign aluop = sll ? 4'h00:
                    sra ? 4'h01:
                    srl ? 4'h02:
                    (add|addi|addiu|addu|lw|sw|sh)? 4'h05:
                    sub? 4'h06:
                    (And|andi)? 4'h07:
                    (Or|ori)? 4'h08:
                    xori? 4'h09:
                    Nor? 4'h0a:
                    (slt|slti|bltz)? 4'h0b:
                    (sltu|sltiu)? 4'h0c:4'h00;
endmodule
