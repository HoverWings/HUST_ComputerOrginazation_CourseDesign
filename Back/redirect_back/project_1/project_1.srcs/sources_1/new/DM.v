//module DM(
//	clk,addr,DMwrite,mode,Din,visin,
//	Dout,visout
//	);
//	// DMwrite=sh | sw
////    assign mode = sh ? 4'b0001:
////        (sw | lw)? 4'b0000: 4'b0010;
//	input clk,DMwrite;
//	input [31:0]addr,Din;
//	input [3:0] visin;
//	input [3:0]mode;
//	output [31:0]Dout;
//	output [31:0] visout;
	
	
//    wire SH_sel=addr[1];
    
////    wire addr
//    reg [31:0] memory [0:1023];
//    wire [9:0] addr1;//字地址
//    wire [31:0]data;
//    wire [7:0]bytes;
//    wire [15:0]half;
////24'h000000, bytes
//    always @(posedge clk) begin
//    	if(DMwrite) begin
//    	    memory[addr1] = (mode==0) ? Din :              //sw
//    	                    (mode==1) ? {SH_sel?{Din[31:16],16'h0000}:{16'h0000,Din[15:0]}}:0;  //sh
////    	                    (mode==2) ? Din : 0;     //lw
////    		memory[addr1] <= Din;
    		
//    	end
//    	else begin
//    		memory[addr1] <= memory[addr1];
//    	end
//    end
//    assign addr1 = addr[11:2];
//    assign visout = memory[visin];
    
//    assign data = memory[addr1];
    
    
//    // bytes sel
//    assign bytes = (addr[1:0]==0) ? data[7:0] :
//        (addr[1:0]==1) ? data[15:8] :
//        (addr[1:0]==2) ? data[23:16]:
//        (addr[1:0]==3) ? data[31:24] : 0;
        
        
//    assign half = (addr[1]) ? data[31:16] :
//        (addr[1]==0) ? data[15:0] : 0;
        
//    assign Dout = (mode==0) ? data :       //sw
//    	(mode==1) ? {24'h000000, bytes} :  //sh
//    	(mode==2) ? {16'h0000, half} : 0;  //lw
    	
    	
    	
//endmodule



// module DM(clk,addr,visin,Din,mode,DMwrite,Dout,visout);
//     input clk,DMwrite;
//     input [31:0] addr;
//     input [3:0] visin;
//     input [31:0] Din;
//     input [3:0] mode;
//     output reg [31:0] Dout;
//     output [31:0] visout;
    
//     reg [31:0] memory [0:1023];
//     integer i;
//     wire str1,str2,str3,str4;
//     wire [9:0] addr1;

//     always @(posedge clk) begin
//         //if(str4==0&str3==0&&str2==1&&str1==1)
//        /* if(str4) memory[addr1][31:24]=Din[31:24];
//         else memory[addr1][31:24] = memory[addr1][31:24];
//         if(str3) memory[addr1][23:16]=Din[23:16];
//         else  memory[addr1][23:16] =  memory[addr1][23:16];
//         if(str2) memory[addr1][15:8]=Din[15:8];
//         else  memory[addr1][15:8] =  memory[addr1][15:8];
//         if(str1) memory[addr1][7:0]=Din[7:0];
//         else  memory[addr1][7:0] =  memory[addr1][7:0];*/
//         // judge the seltect signal of the DATA Manager to choose Byte LOCATION 
//          if(str4==1&&str3==1&&str2==1&&str1==1)
//          begin
//          memory[addr1][31:24]=Din[31:24];
//          memory[addr1][23:16]=Din[23:16];
//          memory[addr1][15:8]=Din[15:8];
//          memory[addr1][7:0]=Din[7:0];
//          end
//          if(str4==0&&str3==0&&str2==0&&str1==0)
//          begin
//          memory[addr1][31:24] = memory[addr1][31:24];
//          memory[addr1][23:16] =  memory[addr1][23:16];
//          memory[addr1][15:8] =  memory[addr1][15:8];
//          memory[addr1][7:0] =  memory[addr1][7:0];
//          end
//          if(str4==0&&str3==0&&str2==1&&str1==1&&addr[1]==0)
//          begin
//           memory[addr1][15:8]=Din[15:8];
//           memory[addr1][7:0]=Din[7:0];
//           memory[addr1][31:24] = memory[addr1][31:24];
//           memory[addr1][23:16] =  memory[addr1][23:16];
//          end
//           if(str4==0&&str3==0&&str2==1&&str1==1&&addr[1]==1)
//           begin
//            memory[addr1][31:24]=Din[15:8];
//            memory[addr1][23:16]=Din[7:0];
//            memory[addr1][15:8] =  memory[addr1][15:8];
//            memory[addr1][7:0] =  memory[addr1][7:0];
//           end
//     end 
    
//      always @(*) begin
//             if(mode[3])  Dout[31:24]=memory[addr1][31:24];
//             else Dout[31:24]=8'b00000000;
//             if(mode[2])  Dout[23:16]=memory[addr1][23:16];
//             else Dout[23:16]=8'b00000000;
//             if(mode[1])  Dout[15:8]=memory[addr1][15:8];
//             else Dout[15:8]=8'b00000000;
//             if(mode[0])  Dout[7:0]=memory[addr1][7:0];
//             else Dout[7:0]=8'b00000000;
//      end
//     assign str4=DMwrite & mode[3];
//     assign str3=DMwrite & mode[2];
//     assign str2=DMwrite & mode[1];
//     assign str1=DMwrite & mode[0];
//     assign addr1[9:0]=addr[11:2];
//     assign visout=memory[visin];
// endmodule


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
    wire [9:0] addr1;//字地�?
    wire [31:0]data;
    wire [15:0]bytes;//two bytes
    wire [15:0]half;
    wire str1,str2,str3,str4;
    
    assign str4= DMwrite & mode[3];
    assign str3= DMwrite & mode[2];
    assign str2= DMwrite & mode[1];
    assign str1= DMwrite & mode[0];

    assign addr1 = addr[11:2];
    assign visout = memory[visin];
    assign data = memory[addr1];
    assign half = (addr[1]) ? data[31:16] :
         (addr[1]==0) ? data[15:0] : 0;

    //out
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
        
     //in
     always @(posedge clk) begin
            /*ֻ�����������*/
                if(str4==1 && str3 == 1 && str2 == 1 && str1 == 1) begin //sw
                    memory[addr1][31:24]=Din[31:24];
                    memory[addr1][23:16]=Din[23:16];
                    memory[addr1][15:8]=Din[15:8];
                    memory[addr1][7:0]=Din[7:0];
                  end
                  else if(str4==0 && str3 == 0 && str2 == 0 && str1 == 0) begin //�������
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

