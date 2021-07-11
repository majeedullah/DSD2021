`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2021 03:52:57 PM
// Design Name: 
// Module Name: SixteenBitCompar
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

// malak Majeedullah khan

module SixteenBitCompar(A_lt_B1, A_gt_B1, A_eq_B1, A, B); //declaring module

input [15:0] A, B; // declaring aray input
output A_lt_B1, A_gt_B1, A_eq_B1; // declaring array output
wire [3:0] A_lt_B, A_gt_B, A_eq_B ;


// instantiating the five fourbitComparartor functions
fourBitcomparator inst1(A_lt_B[0], A_gt_B[0], A_eq_B[0], A[3:0], B[3:0]);
fourBitcomparator inst2(A_lt_B[1], A_gt_B[1], A_eq_B[1], A[7:4], B[7:4]);
fourBitcomparator inst3(A_lt_B[2], A_gt_B[2], A_eq_B[2], A[11:8], B[11:8]);
fourBitcomparator inst4(A_lt_B[3], A_gt_B[3], A_eq_B[3], A[15:12], B[15:12]);


 assign A_eq_B1 =(A_eq_B[0] & A_eq_B[1] & A_eq_B[2] & A_eq_B[3]);
 assign A_lt_B1 = ( ( ( ( ((A_lt_B[0]& A_eq_B[1]) | (A_lt_B[1])) & A_eq_B[2] ) | (A_lt_B[2]) ) & (A_eq_B[3])) | (A_lt_B[3]) );
 assign A_gt_B1 = ( ( ( ( ((A_gt_B[0]& A_eq_B[1]) | (A_gt_B[1])) & A_eq_B[2] ) | (A_gt_B[2]) ) & (A_eq_B[3])) | (A_gt_B[3]) );


endmodule







module sixteenBitTb();
reg [15:0] A, B;
wire A_lt_B, A_gt_B, A_eq_B;
// instantiation
SixteenBitCompar insttt(A_lt_B, A_gt_B, A_eq_B, A, B);
//
initial
begin
// #00 A = 16'b1000110011011101; B = 16'b1000110011011111; // A < B condition
// #10 A = 16'b1000110011011111; B = 16'b1000110011011101; // A > B condition
// #10 A = 16'b1000110011011111; B = 16'b1000110011011111;; // A = B condition
#00 A = 55; B = 100; // A < B condition
#10 A = 45; B = 34; // A > B condition
#10 A = 56; B = 56;; // A = B condition
#10 $stop;
end
initial
begin
$display("Author:Malak Majeedullah khan\n");
$monitor($time,"ns -- A=%d, B=%d, A_lt_B=%b, A_gt_B=%b,A_eq_B=%b" , A,B,A_lt_B, A_gt_B, A_eq_B);
end
endmodule