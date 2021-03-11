`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 02:09:57 PM
// Design Name: 
// Module Name: four_to_1Mux
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


module four_to_1Mux(out, D0, D1, D2, D3, s0, s1);
input wire s0, s1, D0, D1, D2, D3;
output reg out;

always@ (s0, s1, D0, D1, D2, D3)
 begin
   if (s0 == 1'b0 && s1 == 1'b0)
        out = D0;
   else  if (s0 == 1'b0 && s1 == 1'b1)
        out = D1;
   else  if (s0 == 1'b1 && s1 == 1'b0)
        out = D2;
   else  if (s0 == 1'b1 && s1 == 1'b1)
            out = D3;
     
   else 
    out = 1'bZ;
     
   
 end
endmodule

module tb();

wire out;
reg s0, s1, D0, D1, D2, D3;

four_to_1Mux inst0(out, D0, D1, D2, D3, s0, s1);

initial 
begin 

#00 {s0,s1} = 2'b00 ; { D0, D1, D2, D3} = 4'b1000;
#10 {s0,s1} = 2'b01 ; { D0, D1, D2, D3} = 4'b0010;
#10 {s0,s1} = 2'b10 ; { D0, D1, D2, D3} = 4'b0010;
#10 {s0,s1} = 2'b11 ; { D0, D1, D2, D3} = 4'b1001;
#10 $stop;

end

initial
$monitor($time, " ns -- switch = %b, Data = %b, Out = %b", {s0,s1}, {D3,D2,D1,D0}, out);





endmodule
