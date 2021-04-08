`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2021 01:21:52 PM
// Design Name: 
// Module Name: Fbit_Adder_Gate
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


module Fbit_Adder_Gate(sum, carry, cin, a, b );
input [3:0]a, b;
input cin;
output [3:0] sum;
output carry;

wire w1, w2, w3;

full_adder a1(sum[0],  w1,   cin, a[0],  b[0] );
full_adder a2(sum[1],  w2,   w1,  a[1],  b[1] );
full_adder a3(sum[2],  w3,   w2, a[2],   b[2] );
full_adder a4(sum[3], carry, w3, a[3],   b[3]);


endmodule 

module full_adder(sum, carry, cin, a, b );
input a, b, cin;
output sum, carry;

wire s1, c1, c2;


xor xor1(s1, a, b);
xor xor2(sum, s1, cin);

and and1(c1, s1, cin);
and and2(c2, a, b);

or or1(carry, c1, c2);


endmodule
