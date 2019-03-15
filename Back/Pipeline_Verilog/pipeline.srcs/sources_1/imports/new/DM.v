module DM(
	clk,addr,DMwrite,mode,Din,visin,
	Dout,visout
	);
	input clk,DMwrite;
	input [31:0]addr,Din;
	input [3:0] visin;
	input [3:0]mode;
	output reg [31:0]Dout;
	output [31:0] visout;
    
    reg [31:0] memory [0:1023];
    wire [9:0] addr1;//瀛楀湴鍧?
    wire [31:0]data;
    wire [15:0]bytes;//two bytes
    wire [15:0]half;
    wire str1,str2,str3,str4;
    
    assign str4= DMwrite & mode[3];
    assign str3=DMwrite & mode[2];
    assign str2=DMwrite & mode[1];
    assign str1= DMwrite & mode[0];

    assign addr1 = addr[11:2];
    assign visout = memory[visin];
    assign data = memory[addr1];
    assign half = (addr[1]) ? data[31:16] :
         (addr[1]==0) ? data[15:0] : 0;

    always @(*) begin
            if(mode[3])  Dout[31:24]=memory[addr1][31:24];
            else Dout[31:24]=8'b00000000;
            if(mode[2])  Dout[23:16]=memory[addr1][23:16];
            else Dout[23:16]=8'b00000000;
            if(mode[1])  Dout[15:8]=memory[addr1][15:8];
            else Dout[15:8]=8'b00000000;
            if(mode[0])  Dout[7:0]=memory[addr1][7:0];
            else Dout[7:0]=8'b00000000;
        end
     always @(posedge clk) begin
            /*只有这四种情况*/
                if(str4==1 && str3 == 1 && str2 == 1 && str1 == 1) begin //sw
                    memory[addr1][31:24]=Din[31:24];
                    memory[addr1][23:16]=Din[23:16];
                    memory[addr1][15:8]=Din[15:8];
                    memory[addr1][7:0]=Din[7:0];
                  end
                  else if(str4==0 && str3 == 0 && str2 == 0 && str1 == 0) begin //其余情况
                        memory[addr1][31:24] = memory[addr1][31:24];
                          memory[addr1][23:16] =  memory[addr1][23:16];
                          memory[addr1][15:8] =  memory[addr1][15:8];
                          memory[addr1][7:0] =  memory[addr1][7:0];
                   end
                   else if(str4==0 && str3 == 0 && str2 == 1 && str1 == 1 && addr[1] == 1) begin // sh
                         memory[addr1][31:24]=Din[15:8];
                         memory[addr1][23:16]=Din[7:0];
                         memory[addr1][15:8] =  memory[addr1][15:8];
                         memory[addr1][7:0] =  memory[addr1][7:0];
                      end
                     else if(str4==0 && str3 == 0 && str2 == 1 && str1 == 1 && addr[1] == 0) begin//sh
                            memory[addr1][31:24] = memory[addr1][31:24];
                            memory[addr1][23:16] =  memory[addr1][23:16];
                            memory[addr1][15:8]=Din[15:8];
                            memory[addr1][7:0]=Din[7:0];
                      end
            end
endmodule
