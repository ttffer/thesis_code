`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2022 03:41:33 PM
// Design Name: 
// Module Name: A59_decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module A59_decoder(
    input clk,
    input       signed          [29-1:0]    codeword,
    output  reg signed          [24-1:0]    message
    
    );
    parameter A =59;
    wire  [5:0]  residue;
    //assign residue = codeword %A; // THIS IS DIFFERENT FROM PYTHON % OPERATOR 
    wire [28:0]   inverse_msg ;
    assign inverse_msg = ~(codeword/A)+1'b1;
    assign residue =   codeword[28] ? (codeword+inverse_msg*A+1):
                                      (codeword-(codeword/A)*A);
    //input 29bit
    always@(posedge clk)
//always@(codeword)
        begin
            case(residue)
6'd1: message = ((codeword) -2**0)/(A);
6'd58: message = ((codeword) +2**0)/(A);
6'd2: message = ((codeword) -2**1)/(A);
6'd57: message = ((codeword) +2**1)/(A);
6'd4: message = ((codeword) -2**2)/(A);
6'd55: message = ((codeword) +2**2)/(A);
6'd8: message = ((codeword) -2**3)/(A);
6'd51: message = ((codeword) +2**3)/(A);
6'd16: message = ((codeword) -2**4)/(A);
6'd43: message = ((codeword) +2**4)/(A);
6'd32: message = ((codeword) -2**5)/(A);
6'd27: message = ((codeword) +2**5)/(A);
6'd5: message = ((codeword) -2**6)/(A);
6'd54: message = ((codeword) +2**6)/(A);
6'd10: message = ((codeword) -2**7)/(A);
6'd49: message = ((codeword) +2**7)/(A);
6'd20: message = ((codeword) -2**8)/(A);
6'd39: message = ((codeword) +2**8)/(A);
6'd40: message = ((codeword) -2**9)/(A);
6'd19: message = ((codeword) +2**9)/(A);
6'd21: message = ((codeword) -2**10)/(A);
6'd38: message = ((codeword) +2**10)/(A);
6'd42: message = ((codeword) -2**11)/(A);
6'd17: message = ((codeword) +2**11)/(A);
6'd25: message = ((codeword) -2**12)/(A);
6'd34: message = ((codeword) +2**12)/(A);
6'd50: message = ((codeword) -2**13)/(A);
6'd9: message = ((codeword) +2**13)/(A);
6'd41: message = ((codeword) -2**14)/(A);
6'd18: message = ((codeword) +2**14)/(A);
6'd23: message = ((codeword) -2**15)/(A);
6'd36: message = ((codeword) +2**15)/(A);
6'd46: message = ((codeword) -2**16)/(A);
6'd13: message = ((codeword) +2**16)/(A);
6'd33: message = ((codeword) -2**17)/(A);
6'd26: message = ((codeword) +2**17)/(A);
6'd7: message = ((codeword) -2**18)/(A);
6'd52: message = ((codeword) +2**18)/(A);
6'd14: message = ((codeword) -2**19)/(A);
6'd45: message = ((codeword) +2**19)/(A);
6'd28: message = ((codeword) -2**20)/(A);
6'd31: message = ((codeword) +2**20)/(A);
6'd56: message = ((codeword) -2**21)/(A);
6'd3: message = ((codeword) +2**21)/(A);
6'd53: message = ((codeword) -2**22)/(A);
6'd6: message = ((codeword) +2**22)/(A);
6'd47: message = ((codeword) -2**23)/(A);
6'd12: message = ((codeword) +2**23)/(A);
6'd35: message = ((codeword) -2**24)/(A);
6'd24: message = ((codeword) +2**24)/(A);
6'd11: message = ((codeword) -2**25)/(A);
6'd48: message = ((codeword) +2**25)/(A);
6'd22: message = ((codeword) -2**26)/(A);
6'd37: message = ((codeword) +2**26)/(A);
6'd44: message = ((codeword) -2**27)/(A);
6'd15: message = ((codeword) +2**27)/(A);
6'd29: message = ((codeword) -2**28)/(A);
6'd30: message = ((codeword) +2**28)/(A);

 default:begin message = $signed((codeword)/(A));      end     
            
            endcase
        end
    
    
endmodule
