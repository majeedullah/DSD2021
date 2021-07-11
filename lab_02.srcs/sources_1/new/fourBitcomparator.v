`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2021 03:26:12 PM
// Design Name: 
// Module Name: fourBitcomparator
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

// Malak Majeedullah khan

module fourBitcomparator(A_lt_B, A_gt_B, A_eq_B, A, B); //declaring module
input [3:0] A, B; // declaring aray input
output A_lt_B, A_gt_B, A_eq_B; // declaring array output
assign A_lt_B = A < B; // less than operator
assign A_gt_B = A > B; // greater than operator
assign A_eq_B = A == B; // equal to operator
endmodule



//module Comparator_4bit_TB();
//reg [3:0] A, B;
//wire A_lt_B, A_gt_B, A_eq_B;
//// instantiation
//fourBitcomparator inst(A_lt_B, A_gt_B, A_eq_B, A, B);
////
//initial
//begin
//#00 A = 2; B = 3; // A < B condition
//#10 A = 7; B = 6 ; // A > B condition
//#10 A = 5; B = 5; // A = B condition
//#10 $stop;
//end
//initial
//begin
//$display("Author:Malak Majeedullah khan Khan\n");

//$monitor($time,"ns -- A=%d, B=%d, A_lt_B=%b, A_gt_B=%b,A_eq_B=%b" , A,B,A_lt_B, A_gt_B, A_eq_B);
//end
//endmodule