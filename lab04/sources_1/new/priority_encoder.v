`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 04:52:30 PM
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(q, d );
input  [7:0] d;
output  [2:0] q;

 
 assign q[0] = d[1] || d[3] || d[5] || d[7];
 assign q[1] = d[2] || d[3] || d[6] || d[7];
 assign q[2] = d[4] || d[5] || d[6] || d[7];



endmodule




//module priority_Encoder(out, in);
//input [7:0] in;
//output reg [2:0] out;

//always@ (*)
//begin  
//    casex(in)
//    8'b00000001: out = 3'b0000;
//    8'b0000001x: out = 4'b0001;
//    8'b000001xx: out = 4'b0010;
//    8'b00001xxx: out = 4'b0011;
//    8'b0001xxxx: out = 4'b0100;
//    8'b001xxxxx: out = 4'b0101;
//    8'b01xxxxxx: out = 4'b0110;
//    8'b1xxxxxxx: out = 4'b0111;
  
//    default : out = 4'bzzzz; 
//endcase
//end
 
//endmodule




//module TB_PE();
// wire [7:0] d;
// reg  [2:0] q;

//priority_encoder PE1(q, d );

//initial 
//begin

//#00 d[7:0] = 8'b00000000;
//#10 d[7:0] = 8'b00000010;
//#10 d[7:0] = 8'b00000100;
//#10 d[7:0] = 8'b00001000;
//#10 d[7:0] = 8'b00010000;
//#10 d[7:0] = 8'b00100000;
//#10 d[7:0] = 8'b01000000;
//#10 d[7:0] = 8'b10000000;

//#10 $finish;

//end
//endmodule
