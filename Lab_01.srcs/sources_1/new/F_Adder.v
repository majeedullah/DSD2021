`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2021 11:40:36 PM
// Design Name: 
// Module Name: F_Adder
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


//Malak Majeed Ullah khan  0344-8952407
module Full_Adder(c_out, sum, A, B, c_in);
//dimensions and sizes
input  A;
input  B;
input c_in;
output c_out;
output sum;

//wires
wire w1,w2,w3;

//logic development
xor xor1(w1, A, B);
xor xor2(sum, w1, c_in);
and and1(w2, A, B);
and and2(w3, w1, c_in);
or or1(c_out, w2, w3);
endmodule



//module F_AdderTB();
//reg a, b, c_in;
//wire sum, c_out;

//initial
//begin
//  #00  a = 2; b = 3; c_in = 0;
//  #10  a = 3; b =1; //c_in = 1;
//  #10  a = 4; b = 1; //c_in = 0;
//  #10  a = 5; b = 3; //c_in = 1;
// // #10  a = 1; b = 0; //c_in = 0;
// // #10  a = 1; b = 0; //c_in = 1;
// // #10  a = 1; b = 1; //c_in = 0;
// // #10  a = 1; b = 1; //c_in = 1;
//end

//initial
//$monitor ($time, "ns, inputs = %  outputs = %d" , {a, b, c_in}, {c_out, sum});


//Full_Adder FA0(sum, c_out, a, b, c_in);

//endmodule
