`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2021 11:44:54 PM
// Design Name: 
// Module Name: DEC_BCD
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

module DEC_BCD(out, SW);
//Dimension and sizes
input wire [9:0] SW;
output reg [3:0] out;

//logic development using behavioral modelling
always@(*)
begin
    if(SW[0] == 1)
    out = 4'b0000;
    else if(SW[1] == 1)
    out = 4'b0001;
    else if(SW[2] == 1)
    out = 4'b0010;
    else if(SW[3] == 1)
    out = 4'b0011;
    else if(SW[4] == 1)
    out = 4'b0100;
    else if(SW[5] == 1)
    out = 4'b0101;
    else if(SW[6] == 1)
    out = 4'b0110;
    else if(SW[7] == 1)
    out = 4'b0111;
    else if(SW[8] == 1)
    out = 4'b1000;
    else if(SW[9] == 1)
    out = 4'b1001;
    else 
    out = 4'bzzzz;
end

endmodule



module DEC_BCD_TB();
//Dimension and sizes
reg [9:0] SW;
wire [3:0] out;

//setting up data for simualtion
initial
begin
    #00 SW = 10'b0000000000;
    #10 SW = 10'b0000000001;
    #10 SW = 10'b0000000010;
    #10 SW = 10'b0000000100;
    #10 SW = 10'b0000001000;
    #10 SW = 10'b0000010000;
    #10 SW = 10'b0000100000;
    #10 SW = 10'b0001000000;
    #10 SW = 10'b0010000000;
    #10 SW = 10'b0100000000;
    #10 SW = 10'b1000000000;
    #10 $finish;
end

//displaying data on TCL console
initial
begin
$display("Author: Malak Majeed Ullah khan\n");
$monitor($time,"ns  input = %b, BCD output = %b",SW,out);
end

//instantiation
DEC_BCD DB0(out, SW);
endmodule
