`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2021 01:06:09 PM
// Design Name: 
// Module Name: FBit_Adder
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


module FBit_Adder(sum, carry, a, b, cin );
input  wire [3:0] a;
input  wire [3:0] b;
input cin;
output reg [3: 0] sum;
output  reg carry;

always@(*)

begin

{carry, sum} = a + b + cin;

end
endmodule


