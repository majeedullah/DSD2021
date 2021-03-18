`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2021 07:07:54 PM
// Design Name: 
// Module Name: Carry_LookAhead_Adder
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

//Malak MAjeed Ullah khan
module Carry_LookAhead_Adder( sum, cout, a, b, cin );
input [3:0] a, b;
input cin;
output [3:0] sum;

output cout;

wire g0, g1, g2, g3, p0, p1, p2, p3, c1, c2, c3 ;

assign g0 = a[0] & b[0]; 
assign p0 = a[0] ^ b[0];
assign c1 = g0 | (p0 & cin);


assign g1 = a[1] & b[1]; 
assign p1 = a[1] ^ b[1];
assign c2 = g1 | (p1 & c1);

assign g2 = a[2] & b[2]; 
assign p2 = a[2] ^ b[2];
assign c3 = g2 | (p2 & c2) ;

assign g3 = a[3] & b[3]; 
assign p3 = a[3] ^ b[3];
assign cout = g3 | (p3 & c3) ;


assign sum[0] = a[0]  ^ b[0] ^ cin;
assign sum[1] = a[1]  ^ b[1] ^ c1;
assign sum[2] = a[2]  ^ b[2] ^ c2;
assign sum[3] = a[3]  ^ b[3] ^ c3;


endmodule
