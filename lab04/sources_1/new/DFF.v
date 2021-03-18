`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 01:25:27 PM
// Design Name: 
// Module Name: DFF
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


module DFF(q, d, clk );
input d, clk;
output reg q;

always @(posedge clk)
  begin 
    q <= d;
    
  end

endmodule



module Tb_DFF();
 reg clk, d, q;
 wire q;
 
 DFF_EN inst1(q, d, clk);
 
 initial
begin 
#00 d = 0; clk = 0; 
#10 d = 1; clk = 1;
#10 d = 1; clk = 0; 
#10 d = 0; clk = 1; 

#10  $finish; 

end
endmodule 


