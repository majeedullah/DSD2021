`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 02:18:57 PM
// Design Name: 
// Module Name: shift_reg
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


module shift_reg(q0, q1, q2, q3, d, clk  );

input d, clk;
output reg q0, q1, q2, q3;

always @ (posedge clk)
begin 
   q0 <= d;
   q1 <= q0;
   q2 <= q1;
   q3 = q2 ;
   
   end 
endmodule
