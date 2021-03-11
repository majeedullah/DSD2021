`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 02:57:33 PM
// Design Name: 
// Module Name: 4_bit_mux
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


module Four_bit_mux(out, D0, D1, D2, D3, s);
input wire  D0, D1, D2, D3;
input wire [1:0] s;
output reg out;

always@ (s, D0, D1, D2, D3)
 begin
        case(s)
        2'b00: out = D0;
        2'b01: out = D1;
        2'b10: out = D2;
        2'b11: out = D3;
        
        default: out = 1'bz;
        endcase
 
 
 
 end

endmodule
module tb();

wire out;
reg  D0, D1, D2, D3;
reg [1:0] s

Four_bit_mux inst0(out, D0, D1, D2, D3, s);

initial 
begin 

#00 s = 2'b00 ; { D0, D1, D2, D3} = 4'b1000;
#10 s = 2'b01 ; { D0, D1, D2, D3} = 4'b0010;
#10 s = 2'b10 ; { D0, D1, D2, D3} = 4'b0010;
#10 s = 2'b11 ; { D0, D1, D2, D3} = 4'b1001;
#10 $stop;

end

initial
$monitor($time, " ns -- switch = %b, Data = %b, Out = %b", s , {D3,D2,D1,D0}, out);





endmodule
