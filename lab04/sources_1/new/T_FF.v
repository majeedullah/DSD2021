`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 03:19:01 PM
// Design Name: 
// Module Name: T_FF
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


module T_FF(q, clk, t, reset, en );
input clk, t, reset, en ;
output reg q;

always @(posedge clk, posedge reset)
  begin 
  if( reset)
    q <= 0;
    
    else if (en == 1)
    q <= q;
    
    else if (t == 0)
    q <= q;
    
    else if ( t==1)
    q<= ~q;
    
    else 
    q <= q;
    
    
  end

endmodule
