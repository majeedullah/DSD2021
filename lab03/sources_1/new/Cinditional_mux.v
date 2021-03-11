`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 12:54:00 PM
// Design Name: 
// Module Name: Cinditional_mux
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


module Cinditional_mux(Out, D0, D1, D2, D3, s0, s1);
input s0, s1, D0, D1, D2, D3;
output Out;

assign Out = s0?(s1 ? D3 : D2):(s1? D1 : D0);
 


endmodule

module tb();

wire Out;
reg s0, s1, D0, D1, D2, D3;

Cinditional_mux inst0(Out, D0, D1, D2, D3, s0, s1);

initial 
begin 

#00 {s0,s1} = 2'b00 ; { D0, D1, D2, D3} = 4'b1000;
#10 {s0,s1} = 2'b01 ; { D0, D1, D2, D3} = 4'b0010;
#10 {s0,s1} = 2'b10 ; { D0, D1, D2, D3} = 4'b0010;
#10 {s0,s1} = 2'b11 ; { D0, D1, D2, D3} = 4'b1001;
#10 $stop;

end

endmodule