`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2021 02:33:34 PM
// Design Name: 
// Module Name: FourBit_Adder
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


module FourBit_Adder(sum, carry, a, b, cin );
// defining input and output 
input [3:0] a, b;
input cin;
output [3:0] sum;
output carry;

// defining wires
wire  c1, c2, c3;

// logic designing for carry 

assign c1    = (a[0] & b[0] ) | {(a[0] ^ b[0]) & cin};
assign c2    = (a[1] & b[1] ) | {(a[1] ^ b[1]) & c1};
assign c3    = (a[2] & b[2] ) | {(a[2] ^ b[2]) & c2};
assign carry = (a[3] & b[3] ) | {(a[3] ^ b[3]) & c3};

//logic designing for sum
//sum = a +b+ cin

assign sum [0]= a[0] ^ b[0]^ cin;
assign sum [1]= a[1] ^ b[1]^ cin;
assign sum [2]= a[2] ^ b[2]^ cin;
assign sum [3]= a[3] ^ b[3]^ cin;

//end module 
endmodule
