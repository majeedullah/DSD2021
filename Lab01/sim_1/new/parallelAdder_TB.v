`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2021 06:13:12 PM
// Design Name: 
// Module Name: parallelAdder_TB
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


// Malak Majeed Ullah khan 
module Parallel_Adder_TB();
reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;

initial
begin
    #00 a = 10; b = 12; cin =0;
    #10 a = 13; b = 8;
    #10 a = 7;  b = 15;
    #10 a = 5;  b = 3;
    #10 $finish;
end

initial
$monitor($time, "ns, a = %d, b = %d, sum = %d", a, b, {cout, sum});

Carry_LookAhead_Adder CLA0( sum, cout, a, b, cin );


endmodule
