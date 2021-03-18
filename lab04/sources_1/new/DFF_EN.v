`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 02:42:19 PM
// Design Name: 
// Module Name: DFF_EN
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


module DFF_EN(q,clk, d, reset, en );
input clk, d, reset, en;
output reg q;

always @( posedge clk, posedge reset)

begin 
 if (reset == 1)
     q <= 0;
  else if (en == 0)
      q <=q;
      else
      q<= d;
 
end
endmodule


module Tb_EN();
 reg clk, d, reset, en;
 wire q;
 
 DFF_EN inst1(q,clk, d, reset, en );
 
 initial
begin 
#00 d = 0; clk = 0; reset = 1;  en = 0;
#10 d = 1; clk = 1; reset = 0;  en = 1;
#10 d = 1; clk = 0; reset = 0;  en = 1;
#10 d = 0; clk = 1; reset = 0;  en = 0;

#10  $finish; 

end
endmodule 