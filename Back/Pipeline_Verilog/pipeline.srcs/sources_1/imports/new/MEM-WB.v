module MEM_WB(
	clk,rst,halt,
	rw,ctrl,DMout,pc4,aluR,
	DMout_out,pc4_out,aluR_out,ctrl_out,rw_out,
	lui,ins16,lui_out,ins16_out
    );
	input clk,rst,halt;
	input [21:0]ctrl;
	input [4:0]rw;
	input [31:0]DMout,pc4,aluR;
	input lui;
    input [15:0] ins16;
    output reg lui_out;
    output reg [15:0] ins16_out;
	output reg [4:0]rw_out;
	output reg [21:0]ctrl_out;
	output reg [31:0]DMout_out,pc4_out,aluR_out;
	always @(posedge clk) begin
		if(halt) begin//停机信号�?0时忽略时�?
			if(rst) begin
				rw_out <= 0;
				ctrl_out <= 0;
				pc4_out <= 0;
				aluR_out <= 0;
				DMout_out <= 0;
				lui_out <= 0;
                ins16_out <= 0;
			end
			else begin
				rw_out <= rw;
				ctrl_out <= ctrl;
				pc4_out <= pc4;
				aluR_out <= aluR;
				DMout_out <= DMout;
				lui_out <= lui;
                ins16_out <= ins16;
			end
		end
		else begin
			rw_out <= rw_out;
			ctrl_out <= ctrl_out;
			pc4_out <= pc4_out;
			aluR_out <= aluR_out;
			DMout_out <= DMout_out;
			lui_out <= lui_out;
            ins16_out <= ins16_out;
		end
	end
endmodule
