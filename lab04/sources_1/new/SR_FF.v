`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 03:02:19 PM
// Design Name: 
// Module Name: SR_FF
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


module SR_FF(q,clk, d, reset, en , s, r);
input clk, d, reset, en, s, r;
output reg q;

always @( posedge clk, posedge reset)

begin 
 if (reset == 1)
     q <= 0;
  else if (en == 0)
      q <=q;
      else if ( s==0 && r== 0)
       q <= q;
       else if ( s==0 && r== 1)
         q <= 0;
       else if ( s==1&& r== 0)
         q <= 1;
        else if ( s== 1 && r== 1)
        q <= 1'bx;
          else 
          q <= q;                             
 
end
endmodule


module Tb_SR();
 reg clk, d, reset, en, s, r;
 wire q;
 
  SR_FF inst1(q,clk, d, reset, en , s, r);
 
 initial
begin 
#00 d = 0; clk = 0; reset = 1;  en = 0;  s= 0; r = 0;
#10 d = 1; clk = 1; reset = 0;  en = 1;  s= 1; r = 0;
#10 d = 1; clk = 0; reset = 0;  en = 1;  s= 0; r = 1;
#10 d = 0; clk = 1; reset = 0;  en = 0;  s= 1; r = 1;

#10  $finish; 

end
endmodule 