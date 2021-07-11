`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2020 04:10:13 PM
// Design Name: 
// Module Name: MUX_4_Bit
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


// Malak Majeed ullah khan
module Mux_4_1(out, s1, s2, D);

//defining ports
input [3:0] D; //4 input data
input s1,s2; // two selector switches 
output out;   // output 

//defining wires
wire w1,w2,w3,w4,w5,w6;

//gate level logic for mux 
not not1(w1, s1);  // no gate 
not not2(w2, s2);
and and1(w3, D[0], w1, w2);  // and gate logic
and and2(w4, D[1], w1, s2);
and and3(w5, D[2], s1, w2);
and and4(w6, D[3], s1, s2);

or or1(out, w3, w4, w5, w6); // output from the wires is given to out

endmodule // end of the module 
