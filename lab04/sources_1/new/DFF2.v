`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 02:31:03 PM
// Design Name: 
// Module Name: DFF2
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


module DFF2(q,clk, d, reset );
input clk, d, reset;
output reg q;

always @( posedge clk, posedge reset)

begin 
 if (reset == 1)
     q <= 0;
  else 
      q <=d;
 
end
endmodule


module Tb();
 reg clk, d, reset;
 wire q;
 
 DFF2 inst1(q,clk, d, reset );
 
 initial
begin 
#00 d = 0; clk = 0; reset = 1;
#10 d = 1; clk = 1; reset = 0;
#10 d = 1; clk = 0; reset = 0;
#10 d = 0; clk = 1; reset = 0;

#10  $stop; 

end
endmodule 