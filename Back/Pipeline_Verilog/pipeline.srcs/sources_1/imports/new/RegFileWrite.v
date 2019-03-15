module RegFileWrite(
    RegDin5,jal5,aluR5,DMout5,pc4_5,RegW_out,lui5,ins16_5
  );
    input RegDin5,jal5,lui5;
    input [31:0]aluR5,DMout5,pc4_5;
    input [15:0] ins16_5;
    output [31:0]RegW_out;
    assign RegW_out = lui5 ? {ins16_5,16'h0000}:
        jal5 ? pc4_5 :
      RegDin5 ? DMout5 : aluR5;
endmodule