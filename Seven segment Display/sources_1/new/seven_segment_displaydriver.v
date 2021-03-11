`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 03:07:08 PM
// Design Name: 
// Module Name: seven_segment_displaydriver
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


module seven_segment_displaydriver(in, outt, cc);
input wire [3:0] in;
output [6:0] outt;
output reg [7:0] cc;
reg [6:0] out;

always@(*)
begin
cc = 8'b01111111;
    case(in)
    4'b0000: out = 7'b0111111;
    4'b0001: out = 7'b0110000;
    4'b0010: out = 7'b1011011;
    4'b0011: out = 7'b1001111;
    4'b0100: out = 7'b1100110;
    4'b0101: out = 7'b1101101;
    4'b0110: out = 7'b1111101;
    4'b0111: out = 7'b0000111;
    4'b1000: out = 7'b1111111;
    4'b1001: out = 7'b1100111; 
    default: out = 7'bzzzzzzz;
    
    
    endcase 



end 

assign outt = ~(out);
endmodule
