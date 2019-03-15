module EX_MEM(
	clk,rst,halt,
	rw,ctrl,aluR,reg2,pc4,
	aluR_out,reg2_out,pc4_out,
	rw_out,ctrl_out,
	lui,ins16,lui_out,ins16_out
    );
	input clk,rst,halt;
	input [4:0]rw;
	input [21:0]ctrl;
	input [31:0]aluR,reg2,pc4;
	input lui;
    input [15:0] ins16;
    output reg lui_out;
    output reg [15:0] ins16_out;
	output reg [31:0]aluR_out,reg2_out,pc4_out;
	output reg [4:0]rw_out;
	output reg [21:0]ctrl_out;
	always @(posedge clk) begin
		if(halt) begin//停机信号�?0时忽略时�?
			if(rst) begin
				aluR_out <= 0;
				reg2_out <= 0;
				pc4_out <= 0;
				rw_out <= 0;
				ctrl_out <= 0;
				lui_out <= 0;
                ins16_out <= 0;
			end
			else begin
				aluR_out <= aluR;
				reg2_out <= reg2;
				pc4_out <= pc4;
				rw_out <= rw;
				ctrl_out <= ctrl;
				lui_out <= lui;
                ins16_out <= ins16;
			end
		end
		else begin
			aluR_out <= aluR_out;
			reg2_out <= reg2_out;
			pc4_out <= pc4_out;
			rw_out <= rw_out;
			ctrl_out <= ctrl_out;
			lui_out <= lui_out;
            ins16_out <= ins16_out;
		end
	end
endmodule
