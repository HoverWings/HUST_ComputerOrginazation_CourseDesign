module IR_Extern(
	instru,shift,unsign,v,
	rs,rt,rd,op,func,
	ins16_32,ins26,ins,ra
    );
    input [31:0]instru;
    input shift,unsign;
    input v;    //srlv
    input [31:0]ra;
    
    output [5:0] op,func;
    output [4:0] rs,rt,rd;
    output [31:0] ins16_32,ins;
    output [25:0] ins26;
    
    
//    reg
    
    wire [4:0]shamt;
    wire [15:0]ins16;
    assign op = instru[31:26];
    assign rs = instru[25:21];
    assign rt = instru[20:16];
    assign rd = instru[15:11];
    assign shamt = instru[10:6];
    assign func = instru[5:0];
    assign ins16 = instru[15:0];
    assign ins26 = instru[25:0];
    assign ins16_32 = unsign ? {16'h0000,ins16}:
    	ins16[15] ? {16'hffff,ins16} : {16'h0000,ins16};
    	
//    assign ins = shift ? {27'h0000000,shamt} : ins16_32;
    assign ins = shift ? {v?{27'h0000000,ra[4:0]}:{27'h0000000,shamt}} : ins16_32;

    
    
endmodule
