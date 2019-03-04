module extend(_16,sha,ra,shift,v,out1,out2,notext);
  input [15:0] _16;
  input [4:0] sha;
  input [31:0] ra;
  input shift;
  input v;
  input notext;
  output [31:0] out1;
  output [31:0] out2;
  reg [31:0] out1;
  reg [31:0] out2;
  reg [31:0] temp;
  always @(_16,sha,shift,notext) begin
    case (notext)
    0:begin
        case (_16[15])
        1:begin
            out1={16'b1111111111111111,_16[15:0]};
            temp={16'b1111111111111111,_16[15:0]};
        end
        0:begin
            out1={16'b0000000000000000,_16[15:0]};
            temp={16'b0000000000000000,_16[15:0]};
        end
        default:begin
            out1=0;
            temp=0;
        end
        endcase
    end
    1:begin
        out1={16'b0000000000000000,_16[15:0]};
        temp={16'b0000000000000000,_16[15:0]};
    end
  	endcase
    /////////////////////
    case (shift)
    1:begin
    if(v==0)
    begin
    	out2={27'b000000000000000000000000000,sha[4:0]};
    end
     if(v==1)
       begin
           out2={27'b000000000000000000000000000,ra[4:0]};
       end
    end
    0:begin
    	out2=temp;
    end
    default:begin
    	out2=0;
    end
    endcase
  end
endmodule
