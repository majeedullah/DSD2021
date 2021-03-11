`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 07:08:39 PM
// Design Name: 
// Module Name: seixteen_bit_adder
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


module sixteen_bit_adder( sum, cout, a, b, cin);
parameter N = 16;
input [N-1 : 0] a, b;
input cin;
output reg [N-1 : 0] sum;
output reg cout;

always@(*)

begin

{cout, sum} = a + b + cin;

end
endmodule

module tb();
parameter N = 16;
reg [N-1 : 0] a, b;
reg cin;
wire [N-1 : 0] sum;
wire cout;

sixteen_bit_adder inst0( sum, cout, a, b, cin);

initial 
begin 
#00 a = 32; b =16; cin = 0;
#00 a = 32; b =56; cin = 1;
#00 a = 32; b =26; cin = 1;
#00 a = 32; b =36; cin = 1;
#00 a = 32; b =6; cin = 1;


end


endmodule 

