`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 07:26:38 PM
// Design Name: 
// Module Name: Enc_BCD_7seg
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


module Enc_BCD_7seg (decimal, cathode, anode);
input [9:0] decimal;
output [6:0] cathode;
output anode;

wire [3:0] bcd;

Dec_to_BCD_Encoder inst0(bcd, decimal);
seven_segment inst1(cathode, bcd, anode );

endmodule

module seven_segment(outt, in, cc);
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

module Dec_to_BCD_Encoder(out, in);
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




