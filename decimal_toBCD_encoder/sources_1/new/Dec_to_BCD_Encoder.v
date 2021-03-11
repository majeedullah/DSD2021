`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 05:57:14 PM
// Design Name: 
// Module Name: Dec_to_BCD_Encoder
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


module Dec_to_BCD_Encoder(in , out);
input [9:0] in;
output reg [3:0] out;

always@ (*)
begin  
    case(in)
    0: out = 4'b0000;
    1: out = 4'b0001;
    2: out = 4'b0010;
    3: out = 4'b0011;
    4: out = 4'b0100;
    5: out = 4'b0101;
    6: out = 4'b0110;
    7: out = 4'b0111;
    8: out = 4'b1000;
    9: out = 4'b1001;
    default : out = 4'bzzzz; 
endcase
end
 
endmodule





