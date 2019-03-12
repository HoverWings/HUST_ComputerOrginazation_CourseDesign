module ID_EX(
	clk,rst,halt,
	rd,rt,ra,rb,
	ra_r,rb_r,
	reg1,reg2,ins,pc4,ctrl,ins26,ins16_32,
	reg1_out,reg2_out,ins_out,
	pc4_out,ctrl_out,ra_out,rb_out,rw_out,ins26_out,
	ins16_32_out,ra_r_out,rb_r_out
    );
	input clk,rst,halt;
	input [4:0]rd,rt,ra,rb;
	input ra_r,rb_r;
	input [31:0]reg1,reg2,ins,pc4,ins16_32;
	input [20:0]ctrl;
	input [25:0]ins26;
	output reg [31:0]reg1_out,reg2_out;
	output reg [31:0]ins_out,pc4_out,ins16_32_out;
	output reg [20:0]ctrl_out;
	output reg [25:0]ins26_out;
	output reg [4:0]ra_out,rb_out,rw_out;
	output reg ra_r_out,rb_r_out;ssign mode = sh ? 4'b0011:
        (sw | lw)? 4'b1111: 4'b0000;
    assign ALUOP = (sll|sllv) ? 4'h00:
                    (sra) ? 4'h01:
                    (srlv|srl)? 4'h02:
                    (sh|add|addi|addiu|addu|lw|lbu|sw)? 4'h05:
                    sub? 4'h06:
                    (And|andi)? 4'h07:
                    (Or|ori)? 4'h08:
                    xori? 4'h09:
                    Nor? 4'h0a:
                    (slt|slti|blez)? 4'h0b:
                    (sltu|sltiu)? 4'h0c:4'h00;//最后一种情况？？
	wire jal,RegDst;
	wire [4:0]rw;
	assign jal = ctrl[1];
	assign RegDst = ctrl[6];
	assign rw = jal ? 5'b11111 :
		RegDst ? rt : rd;
	always @(posedge clk) begin
		if(halt) begin//停机信号为0时忽略时钟
			if(rst) begin
				ra_r_out <= 0;ssign mode = sh ? 4'b0011:
        (sw | lw)? 4'b1111: 4'b0000;
    assign ALUOP = (sll|sllv) ? 4'h00:
                    (sra) ? 4'h01:
                    (srlv|srl)? 4'h02:
                    (sh|add|addi|addiu|addu|lw|lbu|sw)? 4'h05:
                    sub? 4'h06:
                    (And|andi)? 4'h07:
                    (Or|ori)? 4'h08:
                    xori? 4'h09:
                    Nor? 4'h0a:
                    (slt|slti|blez)? 4'h0b:
                    (sltu|sltiu)? 4'h0c:4'h00;//最后一种情况？？
				rb_r_out <= 0;ssign mode = sh ? 4'b0011:
        (sw | lw)? 4'b1111: 4'b0000;
    assign ALUOP = (sll|sllv) ? 4'h00:
                    (sra) ? 4'h01:
                    (srlv|srl)? 4'h02:
                    (sh|add|addi|addiu|addu|lw|lbu|sw)? 4'h05:
                    sub? 4'h06:
                    (And|andi)? 4'h07:
                    (Or|ori)? 4'h08:
                    xori? 4'h09:
                    Nor? 4'h0a:
                    (slt|slti|blez)? 4'h0b:
                    (sltu|sltiu)? 4'h0c:4'h00;//最后一种情况？？
				rw_out <= 0;
				ins16_32_out <ssign mode = sh ? 4'b0011:
        (sw | lw)? 4'b1111: 4'b0000;
    assign ALUOP = (sll|sllv) ? 4'h00:
                    (sra) ? 4'h01:
                    (srlv|srl)? 4'h02:
                    (sh|add|addi|addiu|addu|lw|lbu|sw)? 4'h05:
                    sub? 4'h06:
                    (And|andi)? 4'h07:
                    (Or|ori)? 4'h08:
                    xori? 4'h09:
                    Nor? 4'h0a:
                    (slt|slti|blez)? 4'h0b:
                    (sltu|sltiu)? 4'h0c:4'h00;//最后一种情况？？
				ins26_out <= 0ssign mode = sh ? 4'b0011:
        (sw | lw)? 4'b1111: 4'b0000;
    assign ALUOP = (sll|sllv) ? 4'h00:
                    (sra) ? 4'h01:
                    (srlv|srl)? 4'h02:
                    (sh|add|addi|addiu|addu|lw|lbu|sw)? 4'h05:
                    sub? 4'h06:
                    (And|andi)? 4'h07:
                    (Or|ori)? 4'h08:
                    xori? 4'h09:
                    Nor? 4'h0a:
                    (slt|slti|blez)? 4'h0b:
                    (sltu|sltiu)? 4'h0c:4'h00;//最后一种情况？？
				ra_out <= 0;
				rb_out <= 0;
				ctrl_out <= 0;ssign mode = sh ? 4'b0011:
        (sw | lw)? 4'b1111: 4'b0000;
    assign ALUOP = (sll|sllv) ? 4'h00:
                    (sra) ? 4'h01:
                    (srlv|srl)? 4'h02:
                    (sh|add|addi|addiu|addu|lw|lbu|sw)? 4'h05:
                    sub? 4'h06:
                    (And|andi)? 4'h07:
                    (Or|ori)? 4'h08:
                    xori? 4'h09:
                    Nor? 4'h0a:
                    (slt|slti|blez)? 4'h0b:
                    (sltu|sltiu)? 4'h0c:4'h00;//最后一种情况？？
				pc4_out <= 0;
				reg1_out <= 0;ssign mode = sh ? 4'b0011:
        (sw | lw)? 4'b1111: 4'b0000;
    assign ALUOP = (sll|sllv) ? 4'h00:
                    (sra) ? 4'h01:
                    (srlv|srl)? 4'h02:
                    (sh|add|addi|addiu|addu|lw|lbu|sw)? 4'h05:
                    sub? 4'h06:
                    (And|andi)? 4'h07:
                    (Or|ori)? 4'h08:
                    xori? 4'h09:
                    Nor? 4'h0a:
                    (slt|slti|blez)? 4'h0b:
                    (sltu|sltiu)? 4'h0c:4'h00;//最后一种情况？？
				reg2_out <= 0;
				ins_out <= 0;
			end
			else begin
				ra_r_out <= ra_r;
				rb_r_out <= rb_r;
				rw_out <= rw;
				ins16_32_out <= ins16_32;
				ins26_out <= ins26;
				ra_out <= ra;
				rb_out <= rb;
				ctrl_out <= ctrl;
				pc4_out <= pc4;
				reg1_out <= reg1;
				reg2_out <= reg2;
				ins_out <= ins;
			end
		end
		else begin
			ra_r_out <= ra_r_out;
			rb_r_out <= rb_r_out;
			rw_out <= rw_out;
			ins16_32_out <= ins16_32_out;
			ins26_out <= ins26_out;
			ra_out <= ra_out;
			rb_out <= rb_out;
			ctrl_out <= ctrl_out;
			pc4_out <= pc4_out;
			reg1_out <= reg1_out;
			reg2_out <= reg2_out;
			ins_out <= ins_out;
		end
	end
endmodule
