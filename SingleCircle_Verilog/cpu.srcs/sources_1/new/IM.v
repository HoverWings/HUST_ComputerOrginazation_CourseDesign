`timescale 1ns / 1ps
module IM(pc,data);
    input [31:0] pc;
    output [31:0] data;
    
    reg [31:0] memory [0:500];
    wire [9:0] pc1;
    
    initial begin
        $readmemh("/home/hover/Desktop/Labs/HUST_ComputerOrginazation_CourseDesign/Verilog_Test/pipeline_ccmb.hex",memory);
    end
    
    assign pc1[9:0]=pc[11:2];
    assign data[31:0]=memory[pc1][31:0];
endmodule
